package p128i8;

import p267v8.EnumC4656c;
import p299y8.C5015a;
/* renamed from: i8.g */
/* loaded from: classes2-dex2jar.jar:i8/g.class */
public class C3140g extends C5015a {

    /* renamed from: e */
    public final /* synthetic */ int f10580e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3140g(Class cls, int i) {
        super(cls);
        this.f10580e = i;
    }

    @Override // p299y8.AbstractC5016b, p299y8.AbstractC5017c
    /* renamed from: c */
    public void mo133c() {
        switch (this.f10580e) {
            case 0:
                m136d(EnumC4656c.TEXT, "feedbackName");
                return;
            default:
                m136d(EnumC4656c.INTEGER, "feedbackChecked");
                return;
        }
    }
}
