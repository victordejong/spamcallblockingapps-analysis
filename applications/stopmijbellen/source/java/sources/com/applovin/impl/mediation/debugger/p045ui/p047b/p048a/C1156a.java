package com.applovin.impl.mediation.debugger.p045ui.p047b.p048a;

import android.content.Context;
import android.graphics.Color;
import android.support.p012v4.media.C0082b;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.sdk.utils.C1491f;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.b.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/a/a.class */
public class C1156a extends C1169c {

    /* renamed from: a */
    private final C1123b f4161a;

    /* renamed from: o */
    private final Context f4162o;

    public C1156a(C1123b c1123b, Context context) {
        super(C1169c.EnumC1172b.DETAIL);
        this.f4161a = c1123b;
        this.f4162o = context;
        this.f4228d = m6304q();
        this.f4229e = m6303r();
    }

    /* renamed from: q */
    private SpannedString m6304q() {
        return StringUtils.createSpannedString(this.f4161a.m6373i(), mo6255b() ? -16777216 : -7829368, 18, 1);
    }

    /* renamed from: r */
    private SpannedString m6303r() {
        if (!mo6255b()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) m6302s());
        spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
        spannableStringBuilder.append((CharSequence) m6301t());
        if (this.f4161a.m6386a() == C1123b.EnumC1124a.INVALID_INTEGRATION) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", -65536));
        }
        return new SpannedString(spannableStringBuilder);
    }

    /* renamed from: s */
    private SpannedString m6302s() {
        if (this.f4161a.m6378d()) {
            if (TextUtils.isEmpty(this.f4161a.m6372j())) {
                return StringUtils.createListItemDetailSpannedString(this.f4161a.m6377e() ? "Retrieving SDK Version..." : "SDK Found", -16777216);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f4161a.m6372j(), -16777216));
            return new SpannedString(spannableStringBuilder);
        }
        return StringUtils.createListItemDetailSpannedString("SDK Missing", -65536);
    }

    /* renamed from: t */
    private SpannedString m6301t() {
        if (this.f4161a.m6377e()) {
            if (TextUtils.isEmpty(this.f4161a.m6371k())) {
                return StringUtils.createListItemDetailSpannedString("Adapter Found", -16777216);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f4161a.m6371k(), -16777216));
            if (this.f4161a.m6376f()) {
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", Color.rgb(255, 127, 0)));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f4161a.m6370l(), -16777216));
            }
            return new SpannedString(spannableStringBuilder);
        }
        return StringUtils.createListItemDetailSpannedString("Adapter Missing", -65536);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: b */
    public boolean mo6255b() {
        return this.f4161a.m6386a() != C1123b.EnumC1124a.MISSING;
    }

    /* renamed from: d */
    public C1123b m6305d() {
        return this.f4161a;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: e */
    public int mo6251e() {
        int m6367o = this.f4161a.m6367o();
        if (m6367o <= 0) {
            m6367o = C1583R.C1585drawable.applovin_ic_mediation_placeholder;
        }
        return m6367o;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: f */
    public int mo6213f() {
        return mo6255b() ? C1583R.C1585drawable.applovin_ic_disclosure_arrow : super.mo6251e();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
    /* renamed from: g */
    public int mo6212g() {
        return C1491f.m5077a(C1583R.C1584color.applovin_sdk_disclosureButtonColor, this.f4162o);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediatedNetworkListItemViewModel{text=");
        m8752j.append((Object) this.f4228d);
        m8752j.append(", detailText=");
        m8752j.append((Object) this.f4229e);
        m8752j.append(", network=");
        m8752j.append(this.f4161a);
        m8752j.append("}");
        return m8752j.toString();
    }
}
