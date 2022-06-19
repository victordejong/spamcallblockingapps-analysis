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
/* renamed from: com.unknownphone.callblocker.tutorial_other.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/c.class */
public class View$OnClickListenerC5392c extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22440a;

    /* renamed from: b */
    private ViewPager f22441b;

    /* renamed from: c */
    private AppCompatImageView f22442c;

    /* renamed from: d */
    private RelativeLayout f22443d;

    /* renamed from: e */
    private int f22444e;

    /* renamed from: f */
    private int f22445f;

    /* renamed from: a */
    public static View$OnClickListenerC5392c m859a(ViewPager viewPager) {
        View$OnClickListenerC5392c view$OnClickListenerC5392c = new View$OnClickListenerC5392c();
        view$OnClickListenerC5392c.f22441b = viewPager;
        return view$OnClickListenerC5392c;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22440a = layoutInflater.inflate(2131492956, viewGroup, false);
        this.f22443d = (RelativeLayout) this.f22440a.findViewById(2131296614);
        this.f22442c = (AppCompatImageView) this.f22440a.findViewById(2131296492);
        return this.f22440a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22442c.setImageResource(((String) C5287g.m1088a(view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getString("language_code", Locale.getDefault().getLanguage())).first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131230889 : 2131230888);
        this.f22444e = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22445f = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22440a.setOnClickListener(this);
        this.f22443d.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_other.c.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5392c.this.f22443d.getWidth() / View$OnClickListenerC5392c.this.f22445f, View$OnClickListenerC5392c.this.f22443d.getHeight() / View$OnClickListenerC5392c.this.f22444e);
                View$OnClickListenerC5392c.this.f22443d.setScaleX(min);
                View$OnClickListenerC5392c.this.f22443d.setScaleY(min);
                View$OnClickListenerC5392c.this.f22443d.setPivotX(View$OnClickListenerC5392c.this.f22443d.getWidth() / 2);
                View$OnClickListenerC5392c.this.f22443d.setPivotY(View$OnClickListenerC5392c.this.f22443d.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22441b != null) {
            this.f22441b.m18104a(3, true);
        }
    }
}
