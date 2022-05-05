package p081h.p119d.p120a.p124s.p126i.p128o;

import android.content.Context;
import java.io.File;
import p081h.p119d.p120a.p124s.p126i.p128o.C5878d;
/* renamed from: h.d.a.s.i.o.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/f.class */
public final class C5881f extends C5878d {

    /* renamed from: h.d.a.s.i.o.f$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/f$a.class */
    public class C5882a implements C5878d.AbstractC5879a {

        /* renamed from: a */
        public final /* synthetic */ Context f14808a;

        /* renamed from: b */
        public final /* synthetic */ String f14809b;

        public C5882a(Context context, String str) {
            this.f14808a = context;
            this.f14809b = str;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p128o.C5878d.AbstractC5879a
        /* renamed from: a */
        public File mo24183a() {
            File cacheDir = this.f14808a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            String str = this.f14809b;
            return str != null ? new File(cacheDir, str) : cacheDir;
        }
    }

    public C5881f(Context context) {
        this(context, "image_manager_disk_cache", 262144000);
    }

    public C5881f(Context context, int i) {
        this(context, "image_manager_disk_cache", i);
    }

    public C5881f(Context context, String str, int i) {
        super(new C5882a(context, str), i);
    }
}
