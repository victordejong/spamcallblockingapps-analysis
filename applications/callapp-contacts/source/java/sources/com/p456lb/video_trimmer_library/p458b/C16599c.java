package com.p456lb.video_trimmer_library.p458b;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.SparseIntArray;
import com.googlecode.mp4parser.C16296g;
import com.googlecode.mp4parser.p414a.AbstractC16244g;
import com.googlecode.mp4parser.p414a.C16237d;
import com.googlecode.mp4parser.p414a.C16245h;
import com.googlecode.mp4parser.p414a.p415a.C16224b;
import com.googlecode.mp4parser.p414a.p416b.p417a.C16231a;
import com.googlecode.mp4parser.p414a.p419d.C16238a;
import com.googlecode.mp4parser.p414a.p419d.C16241d;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p456lb.video_trimmer_library.p457a.AbstractC16595c;
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.p533io.C18441a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J*\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J@\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0003J@\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006#"}, m4298d2 = {"Lcom/lb/video_trimmer_library/utils/TrimVideoUtils;", "", "()V", "DEFAULT_BUFFER_SIZE", "", "correctTimeToSyncSample", "", "track", "Lcom/googlecode/mp4parser/authoring/Track;", "cutHere", "next", "", "genVideoUsingMp4Parser", "filePath", "", "dst", "Ljava/io/File;", "startMs", "", "endMs", "genVideoUsingMuxer", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "dstPath", "useAudio", "useVideo", "startTrim", "", "inputVideoUri", "outputTrimmedVideoFile", "durationInMs", "callback", "Lcom/lb/video_trimmer_library/interfaces/VideoTrimmingListener;", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.b.c */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/c.class */
public final class C16599c {

    /* renamed from: a */
    public static final C16599c f58414a = new C16599c();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.b.c$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/c$a.class */
    public static final class RunnableC16600a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC16595c f58415a;

        /* renamed from: b */
        final /* synthetic */ C18490ab.C18491a f58416b;

        /* renamed from: c */
        final /* synthetic */ File f58417c;

        RunnableC16600a(AbstractC16595c abstractC16595c, C18490ab.C18491a c18491a, File file) {
            this.f58415a = abstractC16595c;
            this.f58416b = c18491a;
            this.f58417c = file;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f58415a.mo6935a(this.f58416b.f63585a ? Uri.parse(this.f58417c.getAbsolutePath()) : null);
        }
    }

    private C16599c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [double] */
    /* renamed from: a */
    private static double m6923a(AbstractC16244g abstractC16244g, double d, boolean z) {
        int i;
        char c;
        C16245h mo7563m;
        int length = abstractC16244g.mo7573b().length;
        double[] dArr = new double[length];
        int length2 = abstractC16244g.mo7565k().length;
        byte b = 0;
        char c2 = 0;
        int i2 = 0;
        while (true) {
            i = 0;
            c = 0;
            if (i2 < length2) {
                long j = abstractC16244g.mo7565k()[i2];
                byte b2 = b + 1;
                if (Arrays.binarySearch(abstractC16244g.mo7573b(), (long) b2) >= 0) {
                    dArr[Arrays.binarySearch(abstractC16244g.mo7573b(), (long) b2)] = c2 == 1 ? 1 : 0;
                }
                double d2 = j;
                C18524p.m3849a((Object) abstractC16244g.mo7563m(), "track.trackMetaData");
                c2 += d2 / mo7563m.f57318b;
                i2++;
                b = b2;
            }
        }
        while (i < length) {
            ?? r0 = dArr[i];
            if (r0 > d) {
                return z ? r0 : c;
            }
            i++;
            c = r0;
        }
        return dArr[length - 1];
    }

    /* renamed from: a */
    public static final void m6925a(Context context, Uri inputVideoUri, File outputTrimmedVideoFile, long j, long j2, long j3, AbstractC16595c callback) {
        InputStream openInputStream;
        C18524p.m3841c(context, "context");
        C18524p.m3841c(inputVideoUri, "inputVideoUri");
        C18524p.m3841c(outputTrimmedVideoFile, "outputTrimmedVideoFile");
        C18524p.m3841c(callback, "callback");
        outputTrimmedVideoFile.getParentFile().mkdirs();
        outputTrimmedVideoFile.delete();
        C18490ab.C18491a c18491a = new C18490ab.C18491a();
        c18491a.f63585a = false;
        if (j <= 0 && j2 >= j3) {
            try {
                InputStream openInputStream2 = context.getContentResolver().openInputStream(inputVideoUri);
                if (openInputStream2 != null) {
                    C18441a.m3910a(openInputStream2, new FileOutputStream(outputTrimmedVideoFile), PropertyFlags.UNSIGNED);
                }
                boolean z = false;
                if (openInputStream2 != null) {
                    z = false;
                    if (outputTrimmedVideoFile.exists()) {
                        z = true;
                    }
                }
                c18491a.f63585a = z;
                C20128v c20128v = C20128v.f66529a;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if (!c18491a.f63585a) {
            try {
                C16598b c16598b = C16598b.f58413a;
                c18491a.f63585a = m6922a(C16598b.m6927a(context, inputVideoUri), outputTrimmedVideoFile, j, j2);
            } catch (Exception e) {
            }
        }
        if (!c18491a.f63585a) {
            String absolutePath = outputTrimmedVideoFile.getAbsolutePath();
            C18524p.m3849a((Object) absolutePath, "outputTrimmedVideoFile.absolutePath");
            c18491a.f63585a = m6924a(context, inputVideoUri, absolutePath, j, j2);
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC16600a(callback, c18491a, outputTrimmedVideoFile));
    }

    /* renamed from: a */
    private static final boolean m6924a(Context context, Uri uri, String str, long j, long j2) {
        int parseInt;
        MediaExtractor mediaExtractor = new MediaExtractor();
        ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
        if (openFileDescriptor == null) {
            C18524p.m3855a();
        }
        FileDescriptor fileDescriptor = openFileDescriptor.getFileDescriptor();
        mediaExtractor.setDataSource(fileDescriptor);
        int trackCount = mediaExtractor.getTrackCount();
        MediaMuxer mediaMuxer = new MediaMuxer(str, 0);
        SparseIntArray sparseIntArray = new SparseIntArray(trackCount);
        int i = -1;
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 >= trackCount) {
                break;
            }
            try {
                try {
                    MediaFormat trackFormat = mediaExtractor.getTrackFormat(i2);
                    String mime = trackFormat.getString("mime");
                    C18524p.m3849a((Object) mime, "mime");
                    if (!C18425p.m3957a(mime, "audio/", false) && !C18425p.m3957a(mime, "video/", false)) {
                        z = false;
                    }
                    int i3 = i;
                    if (z) {
                        mediaExtractor.selectTrack(i2);
                        sparseIntArray.put(i2, mediaMuxer.addTrack(trackFormat));
                        i3 = i;
                        if (trackFormat.containsKey("max-input-size")) {
                            int integer = trackFormat.getInteger("max-input-size");
                            i3 = i;
                            if (integer > i) {
                                i3 = integer;
                            }
                        }
                    }
                    i2++;
                    i = i3;
                } catch (Exception e) {
                    e.printStackTrace();
                    mediaMuxer.release();
                    return false;
                }
            } catch (Throwable th) {
                mediaMuxer.release();
                throw th;
            }
        }
        int i4 = i;
        if (i < 0) {
            i4 = 1048576;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(fileDescriptor);
        String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
        if (extractMetadata != null && (parseInt = Integer.parseInt(extractMetadata)) >= 0) {
            mediaMuxer.setOrientationHint(parseInt);
        }
        if (j > 0) {
            mediaExtractor.seekTo(j * 1000, 2);
        }
        ByteBuffer allocate = ByteBuffer.allocate(i4);
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        mediaMuxer.start();
        while (true) {
            bufferInfo.offset = 0;
            bufferInfo.size = mediaExtractor.readSampleData(allocate, 0);
            if (bufferInfo.size < 0) {
                bufferInfo.size = 0;
                break;
            }
            bufferInfo.presentationTimeUs = mediaExtractor.getSampleTime();
            if (j2 > 0 && bufferInfo.presentationTimeUs > j2 * 1000) {
                break;
            }
            bufferInfo.flags = mediaExtractor.getSampleFlags();
            mediaMuxer.writeSampleData(sparseIntArray.get(mediaExtractor.getSampleTrackIndex()), allocate, bufferInfo);
            mediaExtractor.advance();
        }
        mediaMuxer.stop();
        mediaMuxer.release();
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v108, types: [double] */
    /* JADX WARN: Type inference failed for: r0v110, types: [double] */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [double] */
    /* renamed from: a */
    private static boolean m6922a(String str, File file, long j, long j2) throws IOException {
        C16245h mo7563m;
        String str2 = str;
        if ((str2 == null || C18425p.m3966a((CharSequence) str2)) || !new File(str).exists()) {
            return false;
        }
        C16237d movie = C16231a.m7592a(new C16296g(str));
        C18524p.m3849a((Object) movie, "movie");
        List<AbstractC16244g> list = movie.f57293b;
        movie.f57293b = new LinkedList();
        char c = j / 1000;
        char c2 = j2 / 1000;
        boolean z = false;
        for (AbstractC16244g track : list) {
            C18524p.m3849a((Object) track, "track");
            if (track.mo7573b() != null) {
                long[] mo7573b = track.mo7573b();
                C18524p.m3849a((Object) mo7573b, "track.syncSamples");
                if (!(!(mo7573b.length == 0))) {
                    continue;
                } else if (z) {
                    return false;
                } else {
                    c = m6923a(track, c, false);
                    c2 = m6923a(track, c2, true);
                    z = true;
                }
            }
        }
        for (AbstractC16244g track2 : list) {
            char c3 = 0;
            C18524p.m3849a((Object) track2, "track");
            int length = track2.mo7565k().length;
            char c4 = 65535;
            char c5 = 0;
            int i = 0;
            char c6 = 0;
            char c7 = 65535;
            while (i < length) {
                long j3 = track2.mo7565k()[i];
                int i2 = (c6 > c5 ? 1 : (c6 == c5 ? 0 : -1));
                char c8 = c7;
                if (i2 > 0) {
                    c8 = c7;
                    if (c6 <= c) {
                        c8 = c3;
                    }
                }
                char c9 = c4;
                if (i2 > 0) {
                    c9 = c4;
                    if (c6 <= c2) {
                        c9 = c3;
                    }
                }
                double d = j3;
                C18524p.m3849a((Object) track2.mo7563m(), "track.trackMetaData");
                c3++;
                i++;
                c5 = c6;
                c6 += d / mo7563m.f57318b;
                c7 = c8;
                c4 = c9;
            }
            movie.m7584a(new C16238a(new C16241d(track2, c7, c4)));
        }
        file.getParentFile().mkdirs();
        if (!file.exists()) {
            file.createNewFile();
        }
        AbstractC3487e m7609a = new C16224b().m7609a(movie);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        FileChannel channel = fileOutputStream.getChannel();
        m7609a.mo7493a(channel);
        channel.close();
        fileOutputStream.close();
        return true;
    }
}
