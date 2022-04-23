package com.linkedin.android.litr.d;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.linkedin.android.litr.exception.MediaTargetException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.LinkedList;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/b.class */
public class b implements e {

    /* renamed from: d  reason: collision with root package name */
    private static final String f33702d = "b";

    /* renamed from: a  reason: collision with root package name */
    LinkedList<a> f33703a;

    /* renamed from: b  reason: collision with root package name */
    boolean f33704b;

    /* renamed from: c  reason: collision with root package name */
    MediaMuxer f33705c;
    private MediaFormat[] e;
    private ParcelFileDescriptor f;
    private String g;
    private int h;
    private int i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/b$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        int f33706a;

        /* renamed from: b  reason: collision with root package name */
        ByteBuffer f33707b;

        /* renamed from: c  reason: collision with root package name */
        MediaCodec.BufferInfo f33708c;

        private a(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            this.f33706a = i;
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            this.f33708c = bufferInfo2;
            bufferInfo2.set(0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity());
            this.f33707b = allocate;
            allocate.put(byteBuffer);
            this.f33707b.flip();
        }
    }

    public b(Context context, Uri uri, int i, int i2, int i3) throws MediaTargetException {
        MediaMuxer mediaMuxer;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "rwt");
                this.f = openFileDescriptor;
                if (openFileDescriptor != null) {
                    mediaMuxer = new MediaMuxer(this.f.getFileDescriptor(), i3);
                } else {
                    throw new IOException("Inaccessible URI ".concat(String.valueOf(uri)));
                }
            } else if (!"file".equalsIgnoreCase(uri.getScheme()) || uri.getPath() == null) {
                throw new MediaTargetException(MediaTargetException.a.UNSUPPORTED_URI_TYPE, uri, i3, new Throwable());
            } else {
                mediaMuxer = new MediaMuxer(uri.getPath(), i3);
            }
            a(mediaMuxer, i, i2);
        } catch (IOException e) {
            c();
            throw new MediaTargetException(MediaTargetException.a.IO_FAILUE, uri, i3, e);
        } catch (IllegalArgumentException e2) {
            throw new MediaTargetException(MediaTargetException.a.INVALID_PARAMS, uri, i3, e2);
        }
    }

    public b(String str, int i, int i2, int i3) throws MediaTargetException {
        this.g = str;
        try {
            a(new MediaMuxer(str, i3), i, i2);
        } catch (IOException e) {
            throw new MediaTargetException(MediaTargetException.a.IO_FAILUE, str, i3, e);
        } catch (IllegalArgumentException e2) {
            throw new MediaTargetException(MediaTargetException.a.INVALID_PARAMS, str, i3, e2);
        }
    }

    private void a(MediaMuxer mediaMuxer, int i, int i2) throws IllegalArgumentException {
        this.i = i;
        this.f33705c = mediaMuxer;
        mediaMuxer.setOrientationHint(i2);
        this.h = 0;
        this.f33704b = false;
        this.f33703a = new LinkedList<>();
        this.e = new MediaFormat[i];
    }

    private void c() {
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.f;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
                this.f = null;
            }
        } catch (IOException e) {
        }
    }

    @Override // com.linkedin.android.litr.d.e
    public final int a(MediaFormat mediaFormat, int i) {
        this.e[i] = mediaFormat;
        int i2 = this.h + 1;
        this.h = i2;
        if (i2 == this.i) {
            StringBuilder sb = new StringBuilder("All tracks added, starting MediaMuxer, writing out ");
            sb.append(this.f33703a.size());
            sb.append(" queued samples");
            for (MediaFormat mediaFormat2 : this.e) {
                this.f33705c.addTrack(mediaFormat2);
            }
            this.f33705c.start();
            this.f33704b = true;
            while (!this.f33703a.isEmpty()) {
                a removeFirst = this.f33703a.removeFirst();
                this.f33705c.writeSampleData(removeFirst.f33706a, removeFirst.f33707b, removeFirst.f33708c);
            }
        }
        return i;
    }

    @Override // com.linkedin.android.litr.d.e
    public final void a() {
        this.f33705c.release();
        c();
    }

    @Override // com.linkedin.android.litr.d.e
    public final void a(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (!this.f33704b) {
            this.f33703a.addLast(new a(i, byteBuffer, bufferInfo));
        } else if (byteBuffer == null) {
            Log.e(f33702d, "Trying to write a null buffer, skipping");
        } else {
            this.f33705c.writeSampleData(i, byteBuffer, bufferInfo);
        }
    }

    @Override // com.linkedin.android.litr.d.e
    public final String b() {
        String str = this.g;
        return str != null ? str : "";
    }
}
