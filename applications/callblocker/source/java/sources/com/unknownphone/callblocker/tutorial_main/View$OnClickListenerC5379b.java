package com.unknownphone.callblocker.tutorial_main;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.tutorial_main.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/b.class */
public class View$OnClickListenerC5379b extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22388a;

    /* renamed from: b */
    private ViewPager f22389b;

    /* renamed from: c */
    private RelativeLayout f22390c;

    /* renamed from: d */
    private int f22391d;

    /* renamed from: e */
    private int f22392e;

    /* renamed from: a */
    public static View$OnClickListenerC5379b m887a(ViewPager viewPager) {
        View$OnClickListenerC5379b view$OnClickListenerC5379b = new View$OnClickListenerC5379b();
        view$OnClickListenerC5379b.f22389b = viewPager;
        return view$OnClickListenerC5379b;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22388a = layoutInflater.inflate(2131492950, viewGroup, false);
        this.f22390c = (RelativeLayout) this.f22388a.findViewById(2131296614);
        return this.f22388a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22391d = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22392e = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22388a.setOnClickListener(this);
        this.f22390c.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_main.b.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5379b.this.f22390c.getWidth() / View$OnClickListenerC5379b.this.f22392e, View$OnClickListenerC5379b.this.f22390c.getHeight() / View$OnClickListenerC5379b.this.f22391d);
                View$OnClickListenerC5379b.this.f22390c.setScaleX(min);
                View$OnClickListenerC5379b.this.f22390c.setScaleY(min);
                View$OnClickListenerC5379b.this.f22390c.setPivotX(View$OnClickListenerC5379b.this.f22390c.getWidth() / 2);
                View$OnClickListenerC5379b.this.f22390c.setPivotY(View$OnClickListenerC5379b.this.f22390c.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f22389b != null) {
            this.f22389b.m18104a(2, true);
        }
    }
}
