package com.truecaller.timezone;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1010k5.C16554c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\f\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011R%\u0010\u0018\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001f\u0010\u001c\u001a\u0004\u0018\u00010\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010 \u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0015\u001a\u0004\b\u001e\u0010\u001fR%\u0010%\u001a\n \u0013*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0015\u001a\u0004\b#\u0010$R\u001f\u0010(\u001a\u0004\u0018\u00010\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0015\u001a\u0004\b'\u0010\u001b¨\u0006)"}, d2 = {"Lcom/truecaller/timezone/TimezoneView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "foregroundColor", "Ls1/s;", "setTitleAndIconColor", "(I)V", "", AnalyticsConstants.TIMEZONE, "setData", "(Ljava/lang/String;)V", "backgroundRes", "g1", "(II)V", "Landroid/graphics/drawable/Drawable;", "background", "f1", "(ILandroid/graphics/drawable/Drawable;)V", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "w", "getMoonIcon", "()Landroid/graphics/drawable/Drawable;", "moonIcon", "x", "getLocalTimeTitle", "()Ljava/lang/String;", "localTimeTitle", "Landroid/widget/TextView;", "u", "getTitle", "()Landroid/widget/TextView;", "title", "v", "getSunIcon", "sunIcon", "timezone_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/timezone/TimezoneView.class */
public final class TimezoneView extends ConstraintLayout {

    /* renamed from: t */
    public final g f15404t = C19286f.m13660s(this, C4631R.C4633id.icon);

    /* renamed from: u */
    public final g f15405u = C19286f.m13660s(this, C4631R.C4633id.title);

    /* renamed from: v */
    public final g f15406v;

    /* renamed from: w */
    public final g f15407w;

    /* renamed from: x */
    public final g f15408x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimezoneView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f15406v = C25225a.m3978P1(new y1(1, context));
        this.f15407w = C25225a.m3978P1(new y1(0, context));
        this.f15408x = C25225a.m3978P1(new C16554c(context));
        C17422k.m16099S(this, C4631R.layout.layout_timezone_view, true, false, 4);
    }

    private final ImageView getIcon() {
        return (ImageView) this.f15404t.getValue();
    }

    private final String getLocalTimeTitle() {
        return (String) this.f15408x.getValue();
    }

    private final Drawable getMoonIcon() {
        return (Drawable) this.f15407w.getValue();
    }

    private final Drawable getSunIcon() {
        return (Drawable) this.f15406v.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f15405u.getValue();
    }

    private final void setTitleAndIconColor(int i) {
        ImageView icon = getIcon();
        l.d(icon, RemoteMessageConst.Notification.ICON);
        icon.setImageTintList(ColorStateList.valueOf(i));
        getTitle().setTextColor(i);
    }

    /* renamed from: f1 */
    public final void m34612f1(int i, Drawable drawable) {
        setTitleAndIconColor(i);
        setBackground(drawable);
    }

    /* renamed from: g1 */
    public final void m34611g1(int i, int i2) {
        ImageView icon = getIcon();
        l.d(icon, RemoteMessageConst.Notification.ICON);
        ViewGroup.LayoutParams layoutParams = icon.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        c0111a.setMarginStart(C19291g.m13603O(4));
        ImageView icon2 = getIcon();
        l.d(icon2, RemoteMessageConst.Notification.ICON);
        icon2.setLayoutParams(c0111a);
        TextView title = getTitle();
        l.d(title, "title");
        ViewGroup.LayoutParams layoutParams2 = title.getLayoutParams();
        Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a2 = (ConstraintLayout.C0111a) layoutParams2;
        c0111a2.setMarginEnd(C19291g.m13603O(10));
        TextView title2 = getTitle();
        l.d(title2, "title");
        title2.setLayoutParams(c0111a2);
        setTitleAndIconColor(i);
        setBackgroundResource(i2);
    }

    public final void setData(String str) {
        l.e(str, AnalyticsConstants.TIMEZONE);
        TimeZone timeZone = TimeZone.getTimeZone("GMT" + str);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("h:mm aa", Locale.getDefault());
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance(timeZone);
        int i = calendar.get(11);
        boolean z = 6 <= i && 17 >= i;
        l.d(calendar, "calendar");
        String format = simpleDateFormat.format(calendar.getTime());
        TextView title = getTitle();
        l.d(title, "title");
        String format2 = String.format(getLocalTimeTitle(), Arrays.copyOf(new Object[]{format}, 1));
        l.d(format2, "java.lang.String.format(format, *args)");
        title.setText(format2);
        getIcon().setImageDrawable(z ? getSunIcon() : getMoonIcon());
    }
}
