package com.unknownphone.callblocker.tutorial_other;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.tutorial_other.d */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/d.class */
public class View$OnClickListenerC5394d extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22447a;

    /* renamed from: b */
    private ViewPager f22448b;

    /* renamed from: c */
    private AppCompatImageView f22449c;

    /* renamed from: d */
    private RelativeLayout f22450d;

    /* renamed from: e */
    private int f22451e;

    /* renamed from: f */
    private int f22452f;

    /* renamed from: a */
    public static View$OnClickListenerC5394d m855a(ViewPager viewPager) {
        View$OnClickListenerC5394d view$OnClickListenerC5394d = new View$OnClickListenerC5394d();
        view$OnClickListenerC5394d.f22448b = viewPager;
        return view$OnClickListenerC5394d;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22447a = layoutInflater.inflate(2131492957, viewGroup, false);
        this.f22450d = (RelativeLayout) this.f22447a.findViewById(2131296614);
        this.f22449c = (AppCompatImageView) this.f22447a.findViewById(2131296492);
        return this.f22447a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22449c.setImageResource(((String) C5287g.m1088a(view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getString("language_code", Locale.getDefault().getLanguage())).first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131230889 : 2131230888);
        this.f22451e = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22452f = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22447a.setOnClickListener(this);
        this.f22450d.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_other.d.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5394d.this.f22450d.getWidth() / View$OnClickListenerC5394d.this.f22452f, View$OnClickListenerC5394d.this.f22450d.getHeight() / View$OnClickListenerC5394d.this.f22451e);
                View$OnClickListenerC5394d.this.f22450d.setScaleX(min);
                View$OnClickListenerC5394d.this.f22450d.setScaleY(min);
                View$OnClickListenerC5394d.this.f22450d.setPivotX(View$OnClickListenerC5394d.this.f22450d.getWidth() / 2);
                View$OnClickListenerC5394d.this.f22450d.setPivotY(View$OnClickListenerC5394d.this.f22450d.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22448b != null) {
            this.f22448b.m18104a(4, true);
        }
    }
}
