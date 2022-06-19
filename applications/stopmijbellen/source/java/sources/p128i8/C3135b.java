package p128i8;

import p267v8.EnumC4656c;
import p299y8.C5015a;
/* renamed from: i8.b */
/* loaded from: classes2-dex2jar.jar:i8/b.class */
public class C3135b extends C5015a {

    /* renamed from: e */
    public final /* synthetic */ int f10575e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3135b(Class cls, int i) {
        super(cls);
        this.f10575e = i;
    }

    @Override // p299y8.AbstractC5016b, p299y8.AbstractC5017c
    /* renamed from: c */
    public void mo133c() {
        switch (this.f10575e) {
            case 0:
                m136d(EnumC4656c.INTEGER, "category");
                return;
            case 1:
                m136d(EnumC4656c.INTEGER, "set_second_call");
                return;
            case 2:
                EnumC4656c enumC4656c = EnumC4656c.INTEGER;
                m136d(enumC4656c, "isDefaultPhoneApp");
                m136d(enumC4656c, "defaultPhoneAppOption");
                return;
            case 3:
                m136d(EnumC4656c.INTEGER, "invisible");
                return;
            default:
                EnumC4656c enumC4656c2 = EnumC4656c.INTEGER;
                m136d(enumC4656c2, "set_block_all_except_whitelist");
                m136d(enumC4656c2, "preset");
                m136d(enumC4656c2, "set_use_calendar");
                m136d(EnumC4656c.TEXT, "calendar");
                return;
        }
    }
}
