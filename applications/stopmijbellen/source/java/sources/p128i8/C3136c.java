package p128i8;

import p034c9.AbstractC0859f;
import p117h8.C3036l;
import p117h8.C3037m;
import p117h8.C3050w;
import p117h8.C3051x;
import p278w8.C4790q;
import p289x8.C4933b;
import p299y8.AbstractC5016b;
/* renamed from: i8.c */
/* loaded from: classes2-dex2jar.jar:i8/c.class */
public class C3136c extends AbstractC5016b {

    /* renamed from: a */
    public final /* synthetic */ int f10576a;

    public /* synthetic */ C3136c(int i) {
        this.f10576a = i;
    }

    @Override // p299y8.AbstractC5017c
    /* renamed from: b */
    public void mo134b(AbstractC0859f abstractC0859f) {
        switch (this.f10576a) {
            case 0:
                new C4790q(C3050w.class).m460a(C3051x.f10383j.m239a(0)).m480e(abstractC0859f);
                return;
            case 1:
                new C4790q(C3036l.class).m460a(C3037m.f10305y.m239a(Boolean.FALSE)).m480e(abstractC0859f);
                return;
            case 2:
                new C4790q(C3036l.class).m460a(C3037m.f10294n.m239a(0)).m480e(abstractC0859f);
                return;
            default:
                C4790q c4790q = new C4790q(C3036l.class);
                C4933b<Boolean> c4933b = C3037m.f10297q;
                Boolean bool = Boolean.FALSE;
                c4790q.m460a(c4933b.m239a(bool), C3037m.f10298r.m239a(0), C3037m.f10299s.m239a(bool)).m480e(abstractC0859f);
                return;
        }
    }
}
