package p128i8;

import p267v8.EnumC4656c;
import p299y8.C5015a;
/* renamed from: i8.d */
/* loaded from: classes2-dex2jar.jar:i8/d.class */
public class C3137d extends C5015a {

    /* renamed from: e */
    public final /* synthetic */ int f10577e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3137d(Class cls, int i) {
        super(cls);
        this.f10577e = i;
    }

    @Override // p299y8.AbstractC5016b, p299y8.AbstractC5017c
    /* renamed from: c */
    public void mo133c() {
        switch (this.f10577e) {
            case 0:
                EnumC4656c enumC4656c = EnumC4656c.INTEGER;
                m136d(enumC4656c, "blockmethod");
                m136d(enumC4656c, "dnd");
                m136d(enumC4656c, "system_vibrate");
                return;
            case 1:
                m136d(EnumC4656c.TEXT, "alternativeName");
                EnumC4656c enumC4656c2 = EnumC4656c.INTEGER;
                m136d(enumC4656c2, "checked");
                m136d(enumC4656c2, "nameType");
                return;
            case 2:
                EnumC4656c enumC4656c3 = EnumC4656c.INTEGER;
                m136d(enumC4656c3, "set_block_all_except_contacts");
                m136d(enumC4656c3, "set_silence_ringer");
                return;
            default:
                EnumC4656c enumC4656c4 = EnumC4656c.INTEGER;
                m136d(enumC4656c4, "set_use_sim1");
                m136d(enumC4656c4, "set_use_sim2");
                return;
        }
    }
}
