package com.truecaller.timezone;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000f\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R%\u0010\u001c\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001f\u0010)\u001a\u0004\u0018\u00010%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0019\u001a\u0004\b'\u0010(R%\u0010.\u001a\n \u0017*\u0004\u0018\u00010*0*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010\u0019\u001a\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b/\u0010\u0014R\u0016\u00102\u001a\u00020\f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b1\u0010\u0014R\u001f\u00105\u001a\u0004\u0018\u00010%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\u0019\u001a\u0004\b4\u0010(¨\u00066"}, d2 = {"Lcom/truecaller/timezone/AddressTimezoneView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/util/AttributeSet;", "attrs", "Ls1/s;", "setAttributes", "(Landroid/util/AttributeSet;)V", "", AnalyticsConstants.TIMEZONE, "address", "f1", "(Ljava/lang/String;Ljava/lang/String;)V", "", "timezoneForegroundColor", "backgroundRes", "g1", "(II)V", "addressForegroundColor", "h1", "z", "I", "timezoneTextColor", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "", "x", "F", "textSize", "", "B", "Z", "singleLine", "Landroid/graphics/drawable/Drawable;", "v", "getSunIcon", "()Landroid/graphics/drawable/Drawable;", "sunIcon", "Landroid/widget/TextView;", "u", "getTitle", "()Landroid/widget/TextView;", "title", "A", "addressTextColor", "y", "timezoneIconColor", "w", "getMoonIcon", "moonIcon", "timezone_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/timezone/AddressTimezoneView.class */
public final class AddressTimezoneView extends ConstraintLayout {

    /* renamed from: A */
    public int f15375A;

    /* renamed from: B */
    public boolean f15376B;

    /* renamed from: t */
    public final g f15377t = C19286f.m13660s(this, C4631R.C4633id.icon);

    /* renamed from: u */
    public final g f15378u = C19286f.m13660s(this, C4631R.C4633id.title);

    /* renamed from: v */
    public final g f15379v;

    /* renamed from: w */
    public final g f15380w;

    /* renamed from: x */
    public float f15381x;

    /* renamed from: y */
    public int f15382y;

    /* renamed from: z */
    public int f15383z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressTimezoneView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f15379v = C25225a.m3978P1(new C27617p2(1, context));
        this.f15380w = C25225a.m3978P1(new C27617p2(0, context));
        C17422k.m16099S(this, C4631R.layout.layout_address_timezone_view, true, false, 4);
        setAttributes(attributeSet);
    }

    private final ImageView getIcon() {
        return (ImageView) this.f15377t.getValue();
    }

    private final Drawable getMoonIcon() {
        return (Drawable) this.f15380w.getValue();
    }

    private final Drawable getSunIcon() {
        return (Drawable) this.f15379v.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f15378u.getValue();
    }

    private final void setAttributes(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C4631R.styleable.AddressTimezoneView);
        l.d(obtainStyledAttributes, "context.obtainStyledAttr…able.AddressTimezoneView)");
        this.f15381x = obtainStyledAttributes.getDimensionPixelSize(C4631R.styleable.AddressTimezoneView_android_textSize, getResources().getDimensionPixelSize(C4631R.dimen.address_timezone_default_text_size));
        int i = C4631R.styleable.AddressTimezoneView_timezoneIconColor;
        Context context = getContext();
        int i2 = C4631R.color.address_timezone_default_icon_color;
        Object obj = C26467a.f74235a;
        this.f15382y = obtainStyledAttributes.getColor(i, C26467a.C26471d.m1787a(context, i2));
        this.f15383z = obtainStyledAttributes.getColor(C4631R.styleable.AddressTimezoneView_timezoneTextColor, C26467a.C26471d.m1787a(getContext(), i2));
        this.f15375A = obtainStyledAttributes.getColor(C4631R.styleable.AddressTimezoneView_addressTextColor, C26467a.C26471d.m1787a(getContext(), C4631R.color.address_timezone_default_address_text_color));
        this.f15376B = obtainStyledAttributes.getBoolean(C4631R.styleable.AddressTimezoneView_singleLine, false);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: f1 */
    public final void m34615f1(String str, String str2) {
        l.e(str2, "address");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str2);
        getTitle().setTextColor(this.f15375A);
        getTitle().setTextSize(0, this.f15381x);
        TextView title2 = getTitle();
        l.d(title2, "title");
        title2.setSingleLine(this.f15376B);
        if (str == null) {
            ImageView icon = getIcon();
            l.d(icon, RemoteMessageConst.Notification.ICON);
            C19286f.m13689O(icon);
            return;
        }
        TimeZone timeZone = TimeZone.getTimeZone("GMT" + str);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("haa", Locale.getDefault());
        simpleDateFormat.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance(timeZone);
        l.d(calendar, "calendar");
        String format = simpleDateFormat.format(calendar.getTime());
        int i = calendar.get(11);
        getIcon().setImageDrawable(6 <= i && 17 >= i ? getSunIcon() : getMoonIcon());
        ImageView icon2 = getIcon();
        l.d(icon2, RemoteMessageConst.Notification.ICON);
        icon2.setImageTintList(ColorStateList.valueOf(this.f15382y));
        SpannableString spannableString = new SpannableString(C22128a.m8725C2(format, " · ", str2));
        spannableString.setSpan(new ForegroundColorSpan(this.f15383z), 0, format.length(), 33);
        TextView title3 = getTitle();
        l.d(title3, "title");
        title3.setText(spannableString);
    }

    /* renamed from: g1 */
    public final void m34614g1(int i, int i2) {
        m34613h1(i, this.f15375A);
        setBackgroundResource(i2);
    }

    /* renamed from: h1 */
    public final void m34613h1(int i, int i2) {
        ImageView icon = getIcon();
        l.d(icon, RemoteMessageConst.Notification.ICON);
        icon.setImageTintList(ColorStateList.valueOf(i));
        this.f15382y = i;
        this.f15383z = i;
        this.f15375A = i2;
    }
}
