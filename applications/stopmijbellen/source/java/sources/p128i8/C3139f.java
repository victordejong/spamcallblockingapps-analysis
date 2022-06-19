package p128i8;

import p267v8.EnumC4656c;
import p299y8.C5015a;
/* renamed from: i8.f */
/* loaded from: classes2-dex2jar.jar:i8/f.class */
public class C3139f extends C5015a {

    /* renamed from: e */
    public final /* synthetic */ int f10579e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3139f(Class cls, int i) {
        super(cls);
        this.f10579e = i;
    }

    @Override // p299y8.AbstractC5016b, p299y8.AbstractC5017c
    /* renamed from: c */
    public void mo133c() {
        switch (this.f10579e) {
            case 0:
                EnumC4656c enumC4656c = EnumC4656c.TEXT;
                m136d(enumC4656c, "inventoryPrice");
                m136d(enumC4656c, "inventoryPriceCurrencyCode");
                m136d(enumC4656c, "inventoryType");
                m136d(enumC4656c, "inventoryTitle");
                m136d(enumC4656c, "inventoryDescription");
                m136d(enumC4656c, "inventoryPriceAmountMicros");
                return;
            case 1:
                m136d(EnumC4656c.TEXT, "realCallLogName");
                return;
            default:
                m136d(EnumC4656c.INTEGER, "appvc");
                m136d(EnumC4656c.TEXT, "endcall_result");
                return;
        }
    }
}
