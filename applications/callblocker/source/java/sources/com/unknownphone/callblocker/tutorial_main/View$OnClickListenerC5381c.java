package com.unknownphone.callblocker.tutorial_main;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.tutorial_main.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/c.class */
public class View$OnClickListenerC5381c extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22394a;

    /* renamed from: b */
    private ViewPager f22395b;

    /* renamed from: c */
    private AppCompatButton f22396c;

    /* renamed from: d */
    private RelativeLayout f22397d;

    /* renamed from: e */
    private AbstractC5281a f22398e;

    /* renamed from: f */
    private int f22399f;

    /* renamed from: g */
    private int f22400g;

    /* renamed from: a */
    public static View$OnClickListenerC5381c m883a(ViewPager viewPager, AbstractC5281a abstractC5281a) {
        View$OnClickListenerC5381c view$OnClickListenerC5381c = new View$OnClickListenerC5381c();
        view$OnClickListenerC5381c.f22395b = viewPager;
        view$OnClickListenerC5381c.f22398e = abstractC5281a;
        return view$OnClickListenerC5381c;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22394a = layoutInflater.inflate(2131492951, viewGroup, false);
        this.f22397d = (RelativeLayout) this.f22394a.findViewById(2131296614);
        this.f22396c = (AppCompatButton) this.f22394a.findViewById(2131296372);
        return this.f22394a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22399f = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22400g = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22396c.setOnClickListener(this);
        this.f22394a.setOnClickListener(this);
        this.f22397d.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_main.c.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5381c.this.f22397d.getWidth() / View$OnClickListenerC5381c.this.f22400g, View$OnClickListenerC5381c.this.f22397d.getHeight() / View$OnClickListenerC5381c.this.f22399f);
                View$OnClickListenerC5381c.this.f22397d.setScaleX(min);
                View$OnClickListenerC5381c.this.f22397d.setScaleY(min);
                View$OnClickListenerC5381c.this.f22397d.setPivotX(View$OnClickListenerC5381c.this.f22397d.getWidth() / 2);
                View$OnClickListenerC5381c.this.f22397d.setPivotY(View$OnClickListenerC5381c.this.f22397d.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296372) {
            if (this.f22395b == null) {
                return;
            }
            this.f22395b.m18104a(3, true);
        } else if (this.f22398e == null) {
        } else {
            this.f22398e.mo892a();
        }
    }
}
