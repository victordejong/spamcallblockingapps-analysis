package org.mistergroup.shouldianswer.components.p099a;

import android.content.Context;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.makeramen.roundedimageview.RoundedImageView;
import kotlin.C1775o;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.p097a.AbstractC2118ag;
import org.mistergroup.shouldianswer.utils.C3116p;
/* renamed from: org.mistergroup.shouldianswer.components.a.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/c.class */
public final class C2311c extends RecyclerView.AbstractC0977w {

    /* renamed from: a */
    private C2302a f6529a;

    /* renamed from: b */
    private final AbstractC2118ag f6530b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2311c(AbstractC2118ag abstractC2118ag, final C2314e c2314e) {
        super(abstractC2118ag.m5863d());
        C1694h.m3117b(abstractC2118ag, "binding");
        C1694h.m3117b(c2314e, "adapter");
        this.f6530b = abstractC2118ag;
        View d = this.f6530b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        d.setOnClickListener(new View.OnClickListener() { // from class: org.mistergroup.shouldianswer.components.a.c.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC1663b<C2302a, C1775o> m1631d;
                C2302a c2302a = C2311c.this.f6529a;
                if (c2302a == null || c2302a.m1659e() != C2302a.EnumC2303a.NEW_CONTACT || (m1631d = c2314e.m1631d()) == null) {
                    return;
                }
                m1631d.mo138a(c2302a);
            }
        });
    }

    /* renamed from: a */
    public final void m1649a(C2302a c2302a) {
        C1694h.m3117b(c2302a, "item");
        View d = this.f6530b.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        Context context = d.getContext();
        this.f6529a = c2302a;
        ImageView imageView = this.f6530b.f5520j;
        C1694h.m3122a((Object) imageView, "binding.imgCallType");
        imageView.setVisibility(8);
        AppCompatTextView appCompatTextView = this.f6530b.f5525o;
        C1694h.m3122a((Object) appCompatTextView, "binding.tvCaption");
        appCompatTextView.setText(context.getString(2131755256));
        AppCompatTextView appCompatTextView2 = this.f6530b.f5527q;
        C1694h.m3122a((Object) appCompatTextView2, "binding.tvDescription");
        appCompatTextView2.setText("");
        AppCompatTextView appCompatTextView3 = this.f6530b.f5527q;
        C1694h.m3122a((Object) appCompatTextView3, "binding.tvDescription");
        appCompatTextView3.setVisibility(8);
        AppCompatTextView appCompatTextView4 = this.f6530b.f5528r;
        C1694h.m3122a((Object) appCompatTextView4, "binding.tvTime");
        appCompatTextView4.setVisibility(8);
        C3116p c3116p = C3116p.f9183a;
        RoundedImageView roundedImageView = this.f6530b.f5521k;
        C1694h.m3122a((Object) roundedImageView, "binding.imgContactPhoto");
        AppCompatTextView appCompatTextView5 = this.f6530b.f5526p;
        C1694h.m3122a((Object) appCompatTextView5, "binding.tvContactPhoto");
        c3116p.m108a(null, "+", roundedImageView, appCompatTextView5);
        ImageView imageView2 = this.f6530b.f5522l;
        C1694h.m3122a((Object) imageView2, "binding.imgRatingBig");
        imageView2.setVisibility(8);
        ImageView imageView3 = this.f6530b.f5523m;
        C1694h.m3122a((Object) imageView3, "binding.imgRatingSmall");
        imageView3.setVisibility(8);
        ImageButton imageButton = this.f6530b.f5513c;
        C1694h.m3122a((Object) imageButton, "binding.butCall");
        imageButton.setVisibility(8);
    }
}
