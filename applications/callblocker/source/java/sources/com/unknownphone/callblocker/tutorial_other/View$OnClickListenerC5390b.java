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
/* renamed from: com.unknownphone.callblocker.tutorial_other.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/b.class */
public class View$OnClickListenerC5390b extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22433a;

    /* renamed from: b */
    private ViewPager f22434b;

    /* renamed from: c */
    private AppCompatImageView f22435c;

    /* renamed from: d */
    private RelativeLayout f22436d;

    /* renamed from: e */
    private int f22437e;

    /* renamed from: f */
    private int f22438f;

    /* renamed from: a */
    public static View$OnClickListenerC5390b m863a(ViewPager viewPager) {
        View$OnClickListenerC5390b view$OnClickListenerC5390b = new View$OnClickListenerC5390b();
        view$OnClickListenerC5390b.f22434b = viewPager;
        return view$OnClickListenerC5390b;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22433a = layoutInflater.inflate(2131492955, viewGroup, false);
        this.f22436d = (RelativeLayout) this.f22433a.findViewById(2131296614);
        this.f22435c = (AppCompatImageView) this.f22433a.findViewById(2131296492);
        return this.f22433a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22435c.setImageResource(((String) C5287g.m1088a(view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getString("language_code", Locale.getDefault().getLanguage())).first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131230889 : 2131230888);
        this.f22437e = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22438f = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22433a.setOnClickListener(this);
        this.f22436d.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_other.b.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5390b.this.f22436d.getWidth() / View$OnClickListenerC5390b.this.f22438f, View$OnClickListenerC5390b.this.f22436d.getHeight() / View$OnClickListenerC5390b.this.f22437e);
                View$OnClickListenerC5390b.this.f22436d.setScaleX(min);
                View$OnClickListenerC5390b.this.f22436d.setScaleY(min);
                View$OnClickListenerC5390b.this.f22436d.setPivotX(View$OnClickListenerC5390b.this.f22436d.getWidth() / 2);
                View$OnClickListenerC5390b.this.f22436d.setPivotY(View$OnClickListenerC5390b.this.f22436d.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22434b != null) {
            this.f22434b.m18104a(2, true);
        }
    }
}
