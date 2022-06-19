package com.truecaller.bizmon.newBusiness.components;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p308b.C7646f;
import p193e.p194a.p294b.p355m.C8079k1;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001d\u0010\u000f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001c\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\f\u001a\u0004\b\u001b\u0010\u000eR\u001d\u0010\u001f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\f\u001a\u0004\b\u001e\u0010\u000eR\u001d\u0010\"\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b \u0010\f\u001a\u0004\b!\u0010\u000eR\u001d\u0010'\u001a\u00020#8@@��X\u0080\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\f\u001a\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "u", "Ljava/lang/String;", "getAttrSubtitle", "()Ljava/lang/String;", "setAttrSubtitle", "(Ljava/lang/String;)V", "attrSubtitle", "", "w", "Ls1/g;", "getEnabledSubTitleColor", "()I", "enabledSubTitleColor", "t", "getAttrTitle", "setAttrTitle", "attrTitle", "", "isViewSet", "Z", "()Z", "setViewSet", "(Z)V", "x", "getDisabledTitleColor", "disabledTitleColor", "y", "getDisabledSubTitleColor", "disabledSubTitleColor", "v", "getEnabledTitleColor", "enabledTitleColor", "Le/a/b/m/k1;", "z", "getBinding$bizmon_release", "()Le/a/b/m/k1;", "binding", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/ProfileDetailView.class */
public final class ProfileDetailView extends ConstraintLayout {

    /* renamed from: t */
    public String f10310t;

    /* renamed from: u */
    public String f10311u;

    /* renamed from: v */
    public final g f10312v;

    /* renamed from: w */
    public final g f10313w;

    /* renamed from: x */
    public final g f10314x;

    /* renamed from: y */
    public final g f10315y;

    /* renamed from: z */
    public final g f10316z = C25225a.m3978P1(new C7646f(this));

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileDetailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f10312v = C25225a.m3978P1(new o1(3, context));
        this.f10313w = C25225a.m3978P1(new o1(2, context));
        this.f10314x = C25225a.m3978P1(new o1(1, context));
        this.f10315y = C25225a.m3978P1(new o1(0, context));
        C19286f.m13668k(this, C3478R.layout.profile_detail_view, true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C3478R.styleable.ProfileDetailView, 0, 0);
        l.d(obtainStyledAttributes, "context.theme.obtainStyl….ProfileDetailView, 0, 0)");
        obtainStyledAttributes.getBoolean(C3478R.styleable.ProfileDetailView_isSet, false);
        this.f10310t = obtainStyledAttributes.getString(C3478R.styleable.ProfileDetailView_title);
        this.f10311u = obtainStyledAttributes.getString(C3478R.styleable.ProfileDetailView_subtitle);
        TextView textView = getBinding$bizmon_release().f24984e;
        l.d(textView, "binding.title");
        textView.setText(this.f10310t);
        TextView textView2 = getBinding$bizmon_release().f24983d;
        l.d(textView2, "binding.subtitle");
        textView2.setText(this.f10311u);
        getBinding$bizmon_release().f24982c.setImageDrawable(obtainStyledAttributes.getDrawable(C3478R.styleable.ProfileDetailView_iconSrc));
        obtainStyledAttributes.recycle();
        int dimensionPixelSize = getResources().getDimensionPixelSize(C3478R.dimen.pdv_padding);
        setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r7.length() == 0) goto L15;
     */
    /* renamed from: f1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m35869f1(com.truecaller.bizmon.newBusiness.components.ProfileDetailView r6, java.lang.String r7, s1.z.b.a r8, boolean r9, int r10) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.bizmon.newBusiness.components.ProfileDetailView.m35869f1(com.truecaller.bizmon.newBusiness.components.ProfileDetailView, java.lang.String, s1.z.b.a, boolean, int):void");
    }

    public final String getAttrSubtitle() {
        return this.f10311u;
    }

    public final String getAttrTitle() {
        return this.f10310t;
    }

    public final C8079k1 getBinding$bizmon_release() {
        return (C8079k1) this.f10316z.getValue();
    }

    public final int getDisabledSubTitleColor() {
        return ((Number) this.f10315y.getValue()).intValue();
    }

    public final int getDisabledTitleColor() {
        return ((Number) this.f10314x.getValue()).intValue();
    }

    public final int getEnabledSubTitleColor() {
        return ((Number) this.f10313w.getValue()).intValue();
    }

    public final int getEnabledTitleColor() {
        return ((Number) this.f10312v.getValue()).intValue();
    }

    public final void setAttrSubtitle(String str) {
        this.f10311u = str;
    }

    public final void setAttrTitle(String str) {
        this.f10310t = str;
    }

    public final void setViewSet(boolean z) {
    }
}
