package com.truecaller.common.p156ui.tag;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\b\b\u0001\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\nJ\u0017\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0013\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00042\b\b\u0001\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\nJ\r\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aR%\u0010 \u001a\n \u001c*\u0004\u0018\u00010\u001b0\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010$\u001a\n \u001c*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/truecaller/common/ui/tag/TagXView;", "Landroid/widget/LinearLayout;", "", "text", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "", RemoteMessageConst.Notification.COLOR, "setTitleColor", "(I)V", "unit", "", "size", C22021b.f61237c, "(IF)V", "resId", "setTitleTextAppearance", "iconUrl", "setIcon", "Landroid/graphics/drawable/Drawable;", "drawable", "(Landroid/graphics/drawable/Drawable;)V", "tint", "setIconTint", "a", "()V", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "Ls1/g;", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "Lcom/truecaller/common/ui/textview/GoldShineTextView;", "getTitle", "()Lcom/truecaller/common/ui/textview/GoldShineTextView;", "title", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.tag.TagXView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/tag/TagXView.class */
public final class TagXView extends LinearLayout {

    /* renamed from: a */
    public final g f11281a;

    /* renamed from: b */
    public final g f11282b;

    public TagXView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TagXView(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r7 = r0
        L9:
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r8 = r0
        L12:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.common.p156ui.C3700R.C3702id.icon
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f11281a = r1
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.common.p156ui.C3700R.C3702id.title
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f11282b = r1
            r0 = r5
            int r1 = com.truecaller.common.p156ui.C3700R.layout.layout_tcx_tag
            r2 = 1
            android.view.View r0 = p193e.p194a.p1129p5.p1132s0.C19286f.m13668k(r0, r1, r2)
            r0 = r5
            int r1 = com.truecaller.common.p156ui.C3700R.C3701drawable.background_tcx_tag
            r0.setBackgroundResource(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.tag.TagXView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final ImageView getIcon() {
        return (ImageView) this.f11281a.getValue();
    }

    private final GoldShineTextView getTitle() {
        return (GoldShineTextView) this.f11282b.getValue();
    }

    /* renamed from: a */
    public final void m35632a() {
        getTitle().m35618l();
        ImageView icon = getIcon();
        l.d(icon, RemoteMessageConst.Notification.ICON);
        Context context = getContext();
        int i = C3700R.color.tcx_lightGoldGradientStep1;
        Object obj = C26467a.f74235a;
        icon.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i)));
    }

    /* renamed from: b */
    public final void m35631b(int i, float f) {
        getTitle().setTextSize(i, f);
    }

    public final void setIcon(Drawable drawable) {
        l.e(drawable, "drawable");
        getIcon().setImageDrawable(drawable);
    }

    public final void setIcon(String str) {
        C22234h mo8414k = C17891a1.C17902k.m15664K1(getContext()).mo8414k();
        mo8414k.mo8420V(str);
        ((C21852d) mo8414k).m8427O(getIcon());
    }

    public final void setIconTint(int i) {
        ImageView icon = getIcon();
        l.d(icon, RemoteMessageConst.Notification.ICON);
        icon.setImageTintList(ColorStateList.valueOf(i));
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        GoldShineTextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }

    public final void setTitleColor(int i) {
        getTitle().setTextColor(i);
        getIcon().clearColorFilter();
    }

    public final void setTitleTextAppearance(int i) {
        getTitle().setTextAppearance(i);
    }
}
