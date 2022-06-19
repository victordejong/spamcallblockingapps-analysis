package p068d2;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.common.internal.ImagesContract;
import p068d2.RunnableC2290h2;
/* renamed from: d2.g1 */
/* loaded from: classes-dex2jar.jar:d2/g1.class */
public class RunnableC2270g1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2230f1 f8165a;

    /* renamed from: d2.g1$a */
    /* loaded from: classes-dex2jar.jar:d2/g1$a.class */
    public class C2271a implements RunnableC2290h2.AbstractC2291a {
        public C2271a() {
            RunnableC2270g1.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0169  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x021e -> B:16:0x0109). Please submit an issue!!! */
        @Override // p068d2.RunnableC2290h2.AbstractC2291a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo3619a(p068d2.RunnableC2290h2 r10, p068d2.C2410t0 r11, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r12) {
            /*
                Method dump skipped, instructions count: 546
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p068d2.RunnableC2270g1.C2271a.mo3619a(d2.h2, d2.t0, java.util.Map):void");
        }
    }

    public RunnableC2270g1(C2230f1 c2230f1) {
        this.f8165a = c2230f1;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, ImagesContract.URL, C2230f1.f8061X);
        C2227e4.m3744i(c2267f4, "content_type", "application/json");
        C2267f4 m3783b = this.f8165a.m3721m().m3783b(2000L);
        m3783b.m3696p("launch_metadata");
        C2227e4.m3744i(c2267f4, AppLovinEventTypes.USER_VIEWED_CONTENT, m3783b.toString());
        this.f8165a.f8087b.m3618b(new RunnableC2290h2(new C2410t0("WebServices.post", 0, c2267f4), new C2271a()));
    }
}
