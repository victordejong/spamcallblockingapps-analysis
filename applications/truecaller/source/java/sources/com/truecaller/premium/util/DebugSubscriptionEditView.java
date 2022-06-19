package com.truecaller.premium.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.textfield.TextInputEditText;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1011l.p1012a.C16570e;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
import w3.b.a.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR%\u0010\u000f\u001a\n \n*\u0004\u0018\u00010\t0\t8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR%\u0010\u0014\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u0013R%\u0010\u0017\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u0013R%\u0010\u001a\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\f\u001a\u0004\b\u0019\u0010\u0013R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR%\u0010\u001f\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u0013R%\u0010\"\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\f\u001a\u0004\b!\u0010\u0013R%\u0010%\u001a\n \n*\u0004\u0018\u00010\t0\t8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\f\u001a\u0004\b$\u0010\u000eR%\u0010(\u001a\n \n*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\f\u001a\u0004\b'\u0010\u0013R%\u0010-\u001a\n \n*\u0004\u0018\u00010)0)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\f\u001a\u0004\b+\u0010,R%\u00102\u001a\n \n*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\f\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/truecaller/premium/util/DebugSubscriptionEditView;", "Landroid/widget/LinearLayout;", "Le/a/l/a/e;", "holder", "Ls1/s;", "setSubscription", "(Le/a/l/a/e;)V", "getSubscription", "()Le/a/l/a/e;", "Lcom/truecaller/premium/util/DebugPeriodView;", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "getIntroductoryPeriod", "()Lcom/truecaller/premium/util/DebugPeriodView;", "introductoryPeriod", "Lcom/google/android/material/textfield/TextInputEditText;", "e", "getIntroductoryPrice", "()Lcom/google/android/material/textfield/TextInputEditText;", "introductoryPrice", "g", "getPrice", "price", "h", "getPriceAmountMicros", "priceAmountMicros", "a", "Le/a/l/a/e;", "d", "getIntroductoryPeriodCycles", "introductoryPeriodCycles", "i", "getPriceCurrencyCode", "priceCurrencyCode", C22021b.f61237c, "getFreeTrialPeriod", "freeTrialPeriod", "f", "getIntroductoryPriceAmountMicros", "introductoryPriceAmountMicros", "Landroid/widget/TextView;", "j", "getTitle", "()Landroid/widget/TextView;", "title", "Lcom/google/android/material/checkbox/MaterialCheckBox;", "k", "getEnabledSwitch", "()Lcom/google/android/material/checkbox/MaterialCheckBox;", "enabledSwitch", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/util/DebugSubscriptionEditView.class */
public final class DebugSubscriptionEditView extends LinearLayout {

    /* renamed from: a */
    public C16570e f14362a;

    /* renamed from: b */
    public final g f14363b = C19286f.m13660s(this, C2752R.C2754id.freeTrialPeriod);

    /* renamed from: c */
    public final g f14364c = C19286f.m13660s(this, C2752R.C2754id.introductoryPeriod);

    /* renamed from: d */
    public final g f14365d = C19286f.m13660s(this, C2752R.C2754id.introductoryPeriodCycles);

    /* renamed from: e */
    public final g f14366e = C19286f.m13660s(this, C2752R.C2754id.introductoryPrice);

    /* renamed from: f */
    public final g f14367f = C19286f.m13660s(this, C2752R.C2754id.introductoryPriceAmountMicros);

    /* renamed from: g */
    public final g f14368g = C19286f.m13660s(this, 2131365235);

    /* renamed from: h */
    public final g f14369h = C19286f.m13660s(this, C2752R.C2754id.priceAmountMicros);

    /* renamed from: i */
    public final g f14370i = C19286f.m13660s(this, C2752R.C2754id.priceCurrencyCode);

    /* renamed from: j */
    public final g f14371j = C19286f.m13660s(this, 2131366469);

    /* renamed from: k */
    public final g f14372k = C19286f.m13660s(this, 2131363518);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DebugSubscriptionEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C2752R.layout.view_debug_subscription_edit, this);
        setOrientation(1);
    }

    private final MaterialCheckBox getEnabledSwitch() {
        return (MaterialCheckBox) this.f14372k.getValue();
    }

    private final DebugPeriodView getFreeTrialPeriod() {
        return (DebugPeriodView) this.f14363b.getValue();
    }

    private final DebugPeriodView getIntroductoryPeriod() {
        return (DebugPeriodView) this.f14364c.getValue();
    }

    private final TextInputEditText getIntroductoryPeriodCycles() {
        return (TextInputEditText) this.f14365d.getValue();
    }

    private final TextInputEditText getIntroductoryPrice() {
        return (TextInputEditText) this.f14366e.getValue();
    }

    private final TextInputEditText getIntroductoryPriceAmountMicros() {
        return (TextInputEditText) this.f14367f.getValue();
    }

    private final TextInputEditText getPrice() {
        return (TextInputEditText) this.f14368g.getValue();
    }

    private final TextInputEditText getPriceAmountMicros() {
        return (TextInputEditText) this.f14369h.getValue();
    }

    private final TextInputEditText getPriceCurrencyCode() {
        return (TextInputEditText) this.f14370i.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f14371j.getValue();
    }

    public final C16570e getSubscription() {
        C16570e c16570e = this.f14362a;
        if (c16570e == null) {
            l.l("holder");
            throw null;
        } else if (c16570e == null) {
            l.l("holder");
            throw null;
        } else {
            C16993f c16993f = c16570e.f46570a;
            TextInputEditText price = getPrice();
            l.d(price, "price");
            String valueOf = String.valueOf(price.getText());
            TextInputEditText priceCurrencyCode = getPriceCurrencyCode();
            l.d(priceCurrencyCode, "priceCurrencyCode");
            String valueOf2 = String.valueOf(priceCurrencyCode.getText());
            TextInputEditText priceAmountMicros = getPriceAmountMicros();
            l.d(priceAmountMicros, "priceAmountMicros");
            long parseLong = Long.parseLong(String.valueOf(priceAmountMicros.getText()));
            long j = 1000000;
            u period = getFreeTrialPeriod().getPeriod();
            TextInputEditText introductoryPrice = getIntroductoryPrice();
            l.d(introductoryPrice, "introductoryPrice");
            String valueOf3 = String.valueOf(introductoryPrice.getText());
            TextInputEditText introductoryPriceAmountMicros = getIntroductoryPriceAmountMicros();
            l.d(introductoryPriceAmountMicros, "introductoryPriceAmountMicros");
            long parseLong2 = Long.parseLong(String.valueOf(introductoryPriceAmountMicros.getText()));
            TextInputEditText introductoryPeriodCycles = getIntroductoryPeriodCycles();
            l.d(introductoryPeriodCycles, "introductoryPeriodCycles");
            C16993f m16658a = C16993f.m16658a(c16993f, null, null, valueOf, valueOf2, parseLong * j, valueOf3, j * parseLong2, period, Integer.parseInt(String.valueOf(introductoryPeriodCycles.getText())), getIntroductoryPeriod().getPeriod(), null, null, false, null, 15363);
            MaterialCheckBox enabledSwitch = getEnabledSwitch();
            l.d(enabledSwitch, "enabledSwitch");
            boolean isChecked = enabledSwitch.isChecked();
            Objects.requireNonNull(c16570e);
            l.e(m16658a, "subscription");
            return new C16570e(m16658a, isChecked);
        }
    }

    public final void setSubscription(C16570e c16570e) {
        l.e(c16570e, "holder");
        this.f14362a = c16570e;
        C16993f c16993f = c16570e.f46570a;
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(c16993f.f47663b);
        getPrice().setText(c16993f.f47664c);
        getPriceCurrencyCode().setText(c16993f.f47665d);
        TextInputEditText priceAmountMicros = getPriceAmountMicros();
        long j = c16993f.f47666e;
        long j2 = 1000000;
        priceAmountMicros.setText(String.valueOf(j / j2));
        getFreeTrialPeriod().setTitle("Free Trial Period");
        getFreeTrialPeriod().setPeriod(c16993f.f47669h);
        getIntroductoryPrice().setText(c16993f.f47667f);
        getIntroductoryPriceAmountMicros().setText(String.valueOf(c16993f.f47668g / j2));
        getIntroductoryPeriodCycles().setText(String.valueOf(c16993f.f47670i));
        getIntroductoryPeriod().setTitle("Introductory Price Period");
        getIntroductoryPeriod().setPeriod(c16993f.f47671j);
        MaterialCheckBox enabledSwitch = getEnabledSwitch();
        l.d(enabledSwitch, "enabledSwitch");
        enabledSwitch.setChecked(c16570e.f46571b);
    }
}
