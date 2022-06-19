package com.unknownphone.callblocker.tutorial_main;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.tutorial_main.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/a.class */
public class View$OnClickListenerC5377a extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22382a;

    /* renamed from: b */
    private ViewPager f22383b;

    /* renamed from: c */
    private RelativeLayout f22384c;

    /* renamed from: d */
    private int f22385d;

    /* renamed from: e */
    private int f22386e;

    /* renamed from: a */
    public static View$OnClickListenerC5377a m891a(ViewPager viewPager) {
        View$OnClickListenerC5377a view$OnClickListenerC5377a = new View$OnClickListenerC5377a();
        view$OnClickListenerC5377a.f22383b = viewPager;
        return view$OnClickListenerC5377a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22382a = layoutInflater.inflate(2131492949, viewGroup, false);
        this.f22384c = (RelativeLayout) this.f22382a.findViewById(2131296614);
        return this.f22382a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22385d = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22386e = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22382a.setOnClickListener(this);
        this.f22384c.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_main.a.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5377a.this.f22384c.getWidth() / View$OnClickListenerC5377a.this.f22386e, View$OnClickListenerC5377a.this.f22384c.getHeight() / View$OnClickListenerC5377a.this.f22385d);
                View$OnClickListenerC5377a.this.f22384c.setScaleX(min);
                View$OnClickListenerC5377a.this.f22384c.setScaleY(min);
                View$OnClickListenerC5377a.this.f22384c.setPivotX(View$OnClickListenerC5377a.this.f22384c.getWidth() / 2);
                View$OnClickListenerC5377a.this.f22384c.setPivotY(View$OnClickListenerC5377a.this.f22384c.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22383b != null) {
            this.f22383b.m18104a(1, true);
        }
    }
}
