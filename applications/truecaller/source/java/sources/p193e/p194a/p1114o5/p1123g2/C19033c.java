package p193e.p194a.p1114o5.p1123g2;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.VideoEntity;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p193e.p194a.p1114o5.AbstractC19101s0;
import p193e.p194a.p1114o5.C19134z1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.y.h;
import s1.z.c.l;
import s3.b.a.a;
/* renamed from: e.a.o5.g2.c */
/* loaded from: classes15-dex2jar.jar:e/a/o5/g2/c.class */
public final class C19033c implements AbstractC19032b {

    /* renamed from: a */
    public final ConcurrentMap<Long, Future<Void>> f53153a = new ConcurrentHashMap();

    /* renamed from: b */
    public final Context f53154b;

    /* renamed from: c */
    public final AbstractC19101s0 f53155c;

    /* renamed from: e.a.o5.g2.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/g2/c$a.class */
    public static final class C19034a implements a.c {
        /* renamed from: a */
        public void m14222a() {
        }

        /* renamed from: b */
        public void m14221b(Exception exc) {
            l.e(exc, "exception");
        }

        /* renamed from: c */
        public void m14220c() {
        }

        /* renamed from: d */
        public void m14219d(double d) {
        }
    }

    public C19033c(Context context, AbstractC19101s0 abstractC19101s0) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19101s0, "mediaInfoFetcher");
        this.f53154b = context;
        this.f53155c = abstractC19101s0;
    }

    @Override // p193e.p194a.p1114o5.p1123g2.AbstractC19032b
    /* renamed from: a */
    public VideoEntity mo14225a(BinaryEntity binaryEntity) {
        VideoEntity videoEntity;
        File m13677b;
        l.e(binaryEntity, "binaryEntity");
        Uri uri = binaryEntity.f13173i;
        File a = h.a("Video", ".mp4", this.f53154b.getCacheDir());
        try {
            ParcelFileDescriptor openFileDescriptor = this.f53154b.getContentResolver().openFileDescriptor(uri, "r");
            try {
                try {
                    Future<Void> b = a.a().b(openFileDescriptor != null ? openFileDescriptor.getFileDescriptor() : null, a.getAbsolutePath(), new C19031a(), new C19034a());
                    this.f53153a.put(Long.valueOf(binaryEntity.f13306a), b);
                    b.get();
                    String path = a.getPath();
                    l.d(path, "outputFile.path");
                    videoEntity = m14223c(path, binaryEntity.f13306a);
                } catch (CancellationException e) {
                    a.delete();
                    throw new CancellationException();
                } catch (ExecutionException e2) {
                    m13677b = C19286f.m13677b(uri, this.f53154b, null);
                    if (m13677b == null) {
                        this.f53153a.remove(Long.valueOf(binaryEntity.f13306a));
                        return null;
                    }
                    String path2 = m13677b.getPath();
                    l.d(path2, "tempFile.path");
                    videoEntity = m14223c(path2, binaryEntity.f13306a);
                }
                this.f53153a.remove(Long.valueOf(binaryEntity.f13306a));
                return videoEntity;
            } catch (Throwable th) {
                this.f53153a.remove(Long.valueOf(binaryEntity.f13306a));
                throw th;
            }
        } catch (FileNotFoundException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
            return null;
        }
    }

    @Override // p193e.p194a.p1114o5.p1123g2.AbstractC19032b
    /* renamed from: b */
    public void mo14224b(BinaryEntity binaryEntity) {
        l.e(binaryEntity, "binaryEntity");
        Future<Void> future = this.f53153a.get(Long.valueOf(binaryEntity.f13306a));
        if (future != null) {
            future.cancel(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [com.truecaller.messaging.data.types.BinaryEntity] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* renamed from: c */
    public final VideoEntity m14223c(String str, long j) {
        Uri fromFile = Uri.fromFile(new File(str));
        l.d(fromFile, "uri");
        C19134z1 mo14098d = this.f53155c.mo14098d(fromFile);
        Long m13697G = C19286f.m13697G(fromFile, this.f53154b);
        ?? longValue = m13697G != null ? m13697G.longValue() : true;
        VideoEntity videoEntity = null;
        if (mo14098d != null) {
            String str2 = mo14098d.f53360d;
            videoEntity = null;
            if (str2 != null) {
                VideoEntity m35041b = Entity.C4195a.m35041b(Entity.f13305h, j, str2, 0, fromFile, mo14098d.f53357a, mo14098d.f53358b, mo14098d.f53359c, longValue == true ? 1L : 0L, false, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 261892);
                if (!(m35041b instanceof VideoEntity)) {
                    m35041b = null;
                }
                videoEntity = m35041b;
            }
        }
        return videoEntity;
    }
}
