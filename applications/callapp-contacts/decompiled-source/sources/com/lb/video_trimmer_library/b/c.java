package com.lb.video_trimmer_library.b;

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
import io.objectbox.model.PropertyFlags;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J*\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J@\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0003J@\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006#"}, d2 = {"Lcom/lb/video_trimmer_library/utils/TrimVideoUtils;", "", "()V", "DEFAULT_BUFFER_SIZE", "", "correctTimeToSyncSample", "", "track", "Lcom/googlecode/mp4parser/authoring/Track;", "cutHere", "next", "", "genVideoUsingMp4Parser", "filePath", "", "dst", "Ljava/io/File;", "startMs", "", "endMs", "genVideoUsingMuxer", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "dstPath", "useAudio", "useVideo", "startTrim", "", "inputVideoUri", "outputTrimmedVideoFile", "durationInMs", "callback", "Lcom/lb/video_trimmer_library/interfaces/VideoTrimmingListener;", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f33630a = new c();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/b/c$a.class */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.lb.video_trimmer_library.a.c f33631a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ab.a f33632b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f33633c;

        a(com.lb.video_trimmer_library.a.c cVar, ab.a aVar, File file) {
            this.f33631a = cVar;
            this.f33632b = aVar;
            this.f33633c = file;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f33631a.a(this.f33632b.f36776a ? Uri.parse(this.f33633c.getAbsolutePath()) : null);
        }
    }

    private c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double a(com.googlecode.mp4parser.a.g r7, double r8, boolean r10) {
        /*
            r0 = r7
            long[] r0 = r0.b()
            int r0 = r0.length
            r11 = r0
            r0 = r11
            double[] r0 = new double[r0]
            r12 = r0
            r0 = r7
            long[] r0 = r0.k()
            int r0 = r0.length
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = 0
            r17 = r0
            r0 = 0
            r19 = r0
            r0 = 0
            r21 = r0
        L_0x0027:
            r0 = r14
            r22 = r0
            r0 = r15
            r23 = r0
            r0 = r21
            r1 = r13
            if (r0 >= r1) goto L_0x0091
            r0 = r7
            long[] r0 = r0.k()
            r1 = r21
            r0 = r0[r1]
            r25 = r0
            r0 = r7
            long[] r0 = r0.b()
            r27 = r0
            r0 = r17
            r1 = 1
            long r0 = r0 + r1
            r17 = r0
            r0 = r27
            r1 = r17
            int r0 = java.util.Arrays.binarySearch(r0, r1)
            if (r0 < 0) goto L_0x0069
            r0 = r12
            r1 = r7
            long[] r1 = r1.b()
            r2 = r17
            int r1 = java.util.Arrays.binarySearch(r1, r2)
            r2 = r19
            r0[r1] = r2
        L_0x0069:
            r0 = r25
            double r0 = (double) r0
            r23 = r0
            r0 = r7
            com.googlecode.mp4parser.a.h r0 = r0.m()
            r27 = r0
            r0 = r27
            java.lang.String r1 = "track.trackMetaData"
            kotlin.jvm.internal.p.a(r0, r1)
            r0 = r19
            r1 = r23
            r2 = r27
            long r2 = r2.f33081b
            double r2 = (double) r2
            double r1 = r1 / r2
            double r0 = r0 + r1
            r19 = r0
            int r21 = r21 + 1
            goto L_0x0027
        L_0x0091:
            r0 = r22
            r1 = r11
            if (r0 >= r1) goto L_0x00ba
            r0 = r12
            r1 = r22
            r0 = r0[r1]
            r19 = r0
            r0 = r19
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x00b0
            r0 = r10
            if (r0 == 0) goto L_0x00ad
            r0 = r19
            return r0
        L_0x00ad:
            r0 = r23
            return r0
        L_0x00b0:
            int r22 = r22 + 1
            r0 = r19
            r23 = r0
            goto L_0x0091
        L_0x00ba:
            r0 = r12
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lb.video_trimmer_library.b.c.a(com.googlecode.mp4parser.a.g, double, boolean):double");
    }

    public static final void a(Context context, Uri inputVideoUri, File outputTrimmedVideoFile, long j, long j2, long j3, com.lb.video_trimmer_library.a.c callback) {
        InputStream openInputStream;
        p.c(context, "context");
        p.c(inputVideoUri, "inputVideoUri");
        p.c(outputTrimmedVideoFile, "outputTrimmedVideoFile");
        p.c(callback, "callback");
        outputTrimmedVideoFile.getParentFile().mkdirs();
        outputTrimmedVideoFile.delete();
        ab.a aVar = new ab.a();
        aVar.f36776a = false;
        if (j <= 0 && j2 >= j3) {
            try {
                InputStream openInputStream2 = context.getContentResolver().openInputStream(inputVideoUri);
                if (openInputStream2 != null) {
                    kotlin.io.a.a(openInputStream2, new FileOutputStream(outputTrimmedVideoFile), PropertyFlags.UNSIGNED);
                }
                boolean z = false;
                if (openInputStream2 != null) {
                    z = false;
                    if (outputTrimmedVideoFile.exists()) {
                        z = true;
                    }
                }
                aVar.f36776a = z;
                v vVar = v.f38654a;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        if (!aVar.f36776a) {
            try {
                b bVar = b.f33629a;
                aVar.f36776a = a(b.a(context, inputVideoUri), outputTrimmedVideoFile, j, j2);
            } catch (Exception e) {
            }
        }
        if (!aVar.f36776a) {
            String absolutePath = outputTrimmedVideoFile.getAbsolutePath();
            p.a((Object) absolutePath, "outputTrimmedVideoFile.absolutePath");
            aVar.f36776a = a(context, inputVideoUri, absolutePath, j, j2);
        }
        new Handler(Looper.getMainLooper()).post(new a(callback, aVar, outputTrimmedVideoFile));
    }

    private static final boolean a(Context context, Uri uri, String str, long j, long j2) {
        int parseInt;
        MediaExtractor mediaExtractor = new MediaExtractor();
        ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
        if (openFileDescriptor == null) {
            p.a();
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
                    p.a((Object) mime, "mime");
                    if (!kotlin.h.p.a(mime, "audio/", false) && !kotlin.h.p.a(mime, "video/", false)) {
                        z = false;
                    }
                    i = i;
                    if (z) {
                        mediaExtractor.selectTrack(i2);
                        sparseIntArray.put(i2, mediaMuxer.addTrack(trackFormat));
                        i = i;
                        if (trackFormat.containsKey("max-input-size")) {
                            int integer = trackFormat.getInteger("max-input-size");
                            i = i;
                            if (integer > i) {
                                i = integer;
                            }
                        }
                    }
                    i2++;
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
        int i3 = i;
        if (i < 0) {
            i3 = 1048576;
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
        ByteBuffer allocate = ByteBuffer.allocate(i3);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1, types: [double] */
    /* JADX WARN: Type inference failed for: r30v3 */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1, types: [double] */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [long] */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.lang.String r14, java.io.File r15, long r16, long r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lb.video_trimmer_library.b.c.a(java.lang.String, java.io.File, long, long):boolean");
    }
}
