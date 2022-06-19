package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.TypedValue;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.inbox.CTInboxMessage;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
/* renamed from: e.h.a.c.r0.b$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/b$b.class */
public class b$b implements ViewPager.AbstractC0396i {

    /* renamed from: a */
    public final Context f63272a;

    /* renamed from: b */
    public final ImageView[] f63273b;

    /* renamed from: c */
    public final CTInboxMessage f63274c;

    /* renamed from: d */
    public final b f63275d;

    public b$b(b bVar, Context context, b bVar2, ImageView[] imageViewArr, CTInboxMessage cTInboxMessage) {
        this.f63272a = context;
        this.f63275d = bVar2;
        this.f63273b = imageViewArr;
        this.f63274c = cTInboxMessage;
        ImageView imageView = imageViewArr[0];
        Resources resources = context.getResources();
        int i = C0868R.C0869drawable.ct_selected_dot;
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        imageView.setImageDrawable(resources.getDrawable(i, null));
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: a */
    public void mo7749a(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: b */
    public void mo1514b(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0396i
    /* renamed from: g */
    public void mo7748g(int i) {
        ImageView[] imageViewArr;
        for (ImageView imageView : this.f63273b) {
            Resources resources = this.f63272a.getResources();
            int i2 = C0868R.C0869drawable.ct_unselected_dot;
            ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
            imageView.setImageDrawable(resources.getDrawable(i2, null));
        }
        ImageView imageView2 = this.f63273b[i];
        Resources resources2 = this.f63272a.getResources();
        int i3 = C0868R.C0869drawable.ct_selected_dot;
        ThreadLocal<TypedValue> threadLocal2 = C26488h.f74265a;
        imageView2.setImageDrawable(resources2.getDrawable(i3, null));
        this.f63275d.s.setText(this.f63274c.f2380j.get(i).f2398k);
        this.f63275d.s.setTextColor(Color.parseColor(this.f63274c.f2380j.get(i).f2399l));
        this.f63275d.t.setText(this.f63274c.f2380j.get(i).f2395h);
        this.f63275d.t.setTextColor(Color.parseColor(this.f63274c.f2380j.get(i).f2396i));
    }
}
