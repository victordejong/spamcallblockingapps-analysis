package p282x1;

import p067d1.AbstractC2141b;
import p067d1.AbstractC2151f;
import p110h1.C3001f;
/* renamed from: x1.l */
/* loaded from: classes-dex2jar.jar:x1/l.class */
public final class C4824l implements AbstractC4823k {

    /* renamed from: a */
    public final AbstractC2151f f14823a;

    /* renamed from: b */
    public final AbstractC2141b<C4822j> f14824b;

    /* renamed from: x1.l$a */
    /* loaded from: classes-dex2jar.jar:x1/l$a.class */
    public class C4825a extends AbstractC2141b<C4822j> {
        public C4825a(C4824l c4824l, AbstractC2151f abstractC2151f) {
            super(abstractC2151f);
        }

        @Override // p067d1.AbstractC2160j
        /* renamed from: b */
        public String mo371b() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // p067d1.AbstractC2141b
        /* renamed from: d */
        public void mo370d(C3001f c3001f, C4822j c4822j) {
            C4822j c4822j2 = c4822j;
            String str = c4822j2.f14821a;
            if (str == null) {
                c3001f.f10100a.bindNull(1);
            } else {
                c3001f.f10100a.bindString(1, str);
            }
            String str2 = c4822j2.f14822b;
            if (str2 == null) {
                c3001f.f10100a.bindNull(2);
            } else {
                c3001f.f10100a.bindString(2, str2);
            }
        }
    }

    public C4824l(AbstractC2151f abstractC2151f) {
        this.f14823a = abstractC2151f;
        this.f14824b = new C4825a(this, abstractC2151f);
    }
}
