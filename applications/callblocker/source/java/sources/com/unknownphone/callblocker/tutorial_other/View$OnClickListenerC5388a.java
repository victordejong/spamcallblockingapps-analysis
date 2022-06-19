package com.unknownphone.callblocker.tutorial_other;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.tutorial_other.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/a.class */
public class View$OnClickListenerC5388a extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22425a;

    /* renamed from: b */
    private ViewPager f22426b;

    /* renamed from: c */
    private AppCompatTextView f22427c;

    /* renamed from: d */
    private AppCompatImageView f22428d;

    /* renamed from: e */
    private RelativeLayout f22429e;

    /* renamed from: f */
    private int f22430f;

    /* renamed from: g */
    private int f22431g;

    /* renamed from: a */
    public static View$OnClickListenerC5388a m867a(ViewPager viewPager) {
        View$OnClickListenerC5388a view$OnClickListenerC5388a = new View$OnClickListenerC5388a();
        view$OnClickListenerC5388a.f22426b = viewPager;
        return view$OnClickListenerC5388a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22425a = layoutInflater.inflate(2131492954, viewGroup, false);
        this.f22429e = (RelativeLayout) this.f22425a.findViewById(2131296614);
        this.f22428d = (AppCompatImageView) this.f22425a.findViewById(2131296492);
        this.f22427c = (AppCompatTextView) this.f22425a.findViewById(2131296708);
        return this.f22425a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        boolean equals = ((String) C5287g.m1088a(view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getString("language_code", Locale.getDefault().getLanguage())).first).equals(C5287g.m1079b((String) C5282b.f22118b.first));
        this.f22427c.setText(C5287g.m1093a(view.getContext(), equals ? 2131755216 : 2131755215, 200, 20000));
        this.f22428d.setImageResource(equals ? 2131230889 : 2131230888);
        this.f22430f = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22431g = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22425a.setOnClickListener(this);
        this.f22429e.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_other.a.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5388a.this.f22429e.getWidth() / View$OnClickListenerC5388a.this.f22431g, View$OnClickListenerC5388a.this.f22429e.getHeight() / View$OnClickListenerC5388a.this.f22430f);
                View$OnClickListenerC5388a.this.f22429e.setScaleX(min);
                View$OnClickListenerC5388a.this.f22429e.setScaleY(min);
                View$OnClickListenerC5388a.this.f22429e.setPivotX(View$OnClickListenerC5388a.this.f22429e.getWidth() / 2);
                View$OnClickListenerC5388a.this.f22429e.setPivotY(View$OnClickListenerC5388a.this.f22429e.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22426b != null) {
            this.f22426b.m18104a(1, true);
        }
    }
}
