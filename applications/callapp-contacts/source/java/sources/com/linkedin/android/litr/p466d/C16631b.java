package com.linkedin.android.litr.p466d;

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
/* renamed from: com.linkedin.android.litr.d.b */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/b.class */
public class C16631b implements AbstractC16636e {

    /* renamed from: d */
    private static final String f58532d = "b";

    /* renamed from: a */
    LinkedList<C16633a> f58533a;

    /* renamed from: b */
    boolean f58534b;

    /* renamed from: c */
    MediaMuxer f58535c;

    /* renamed from: e */
    private MediaFormat[] f58536e;

    /* renamed from: f */
    private ParcelFileDescriptor f58537f;

    /* renamed from: g */
    private String f58538g;

    /* renamed from: h */
    private int f58539h;

    /* renamed from: i */
    private int f58540i;

    /* renamed from: com.linkedin.android.litr.d.b$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/b$a.class */
    public final class C16633a {

        /* renamed from: a */
        int f58541a;

        /* renamed from: b */
        ByteBuffer f58542b;

        /* renamed from: c */
        MediaCodec.BufferInfo f58543c;

        private C16633a(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            C16631b.this = r8;
            this.f58541a = i;
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            this.f58543c = bufferInfo2;
            bufferInfo2.set(0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity());
            this.f58542b = allocate;
            allocate.put(byteBuffer);
            this.f58542b.flip();
        }
    }

    public C16631b(Context context, Uri uri, int i, int i2, int i3) throws MediaTargetException {
        MediaMuxer mediaMuxer;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "rwt");
                this.f58537f = openFileDescriptor;
                if (openFileDescriptor == null) {
                    throw new IOException("Inaccessible URI ".concat(String.valueOf(uri)));
                }
                mediaMuxer = new MediaMuxer(this.f58537f.getFileDescriptor(), i3);
            } else if (!"file".equalsIgnoreCase(uri.getScheme()) || uri.getPath() == null) {
                throw new MediaTargetException(MediaTargetException.EnumC16645a.UNSUPPORTED_URI_TYPE, uri, i3, new Throwable());
            } else {
                mediaMuxer = new MediaMuxer(uri.getPath(), i3);
            }
            m6862a(mediaMuxer, i, i2);
        } catch (IOException e) {
            m6861c();
            throw new MediaTargetException(MediaTargetException.EnumC16645a.IO_FAILUE, uri, i3, e);
        } catch (IllegalArgumentException e2) {
            throw new MediaTargetException(MediaTargetException.EnumC16645a.INVALID_PARAMS, uri, i3, e2);
        }
    }

    public C16631b(String str, int i, int i2, int i3) throws MediaTargetException {
        this.f58538g = str;
        try {
            m6862a(new MediaMuxer(str, i3), i, i2);
        } catch (IOException e) {
            throw new MediaTargetException(MediaTargetException.EnumC16645a.IO_FAILUE, str, i3, e);
        } catch (IllegalArgumentException e2) {
            throw new MediaTargetException(MediaTargetException.EnumC16645a.INVALID_PARAMS, str, i3, e2);
        }
    }

    /* renamed from: a */
    private void m6862a(MediaMuxer mediaMuxer, int i, int i2) throws IllegalArgumentException {
        this.f58540i = i;
        this.f58535c = mediaMuxer;
        mediaMuxer.setOrientationHint(i2);
        this.f58539h = 0;
        this.f58534b = false;
        this.f58533a = new LinkedList<>();
        this.f58536e = new MediaFormat[i];
    }

    /* renamed from: c */
    private void m6861c() {
        try {
            ParcelFileDescriptor parcelFileDescriptor = this.f58537f;
            if (parcelFileDescriptor == null) {
                return;
            }
            parcelFileDescriptor.close();
            this.f58537f = null;
        } catch (IOException e) {
        }
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16636e
    /* renamed from: a */
    public final int mo6846a(MediaFormat mediaFormat, int i) {
        this.f58536e[i] = mediaFormat;
        int i2 = this.f58539h + 1;
        this.f58539h = i2;
        if (i2 == this.f58540i) {
            StringBuilder sb = new StringBuilder("All tracks added, starting MediaMuxer, writing out ");
            sb.append(this.f58533a.size());
            sb.append(" queued samples");
            for (MediaFormat mediaFormat2 : this.f58536e) {
                this.f58535c.addTrack(mediaFormat2);
            }
            this.f58535c.start();
            this.f58534b = true;
            while (!this.f58533a.isEmpty()) {
                C16633a removeFirst = this.f58533a.removeFirst();
                this.f58535c.writeSampleData(removeFirst.f58541a, removeFirst.f58542b, removeFirst.f58543c);
            }
        }
        return i;
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16636e
    /* renamed from: a */
    public final void mo6848a() {
        this.f58535c.release();
        m6861c();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16636e
    /* renamed from: a */
    public final void mo6847a(int i, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (!this.f58534b) {
            this.f58533a.addLast(new C16633a(i, byteBuffer, bufferInfo));
        } else if (byteBuffer == null) {
            Log.e(f58532d, "Trying to write a null buffer, skipping");
        } else {
            this.f58535c.writeSampleData(i, byteBuffer, bufferInfo);
        }
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16636e
    /* renamed from: b */
    public final String mo6845b() {
        String str = this.f58538g;
        return str != null ? str : "";
    }
}
