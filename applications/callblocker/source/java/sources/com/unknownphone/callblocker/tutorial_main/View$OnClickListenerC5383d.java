package com.unknownphone.callblocker.tutorial_main;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.p186d.C5290b;
/* renamed from: com.unknownphone.callblocker.tutorial_main.d */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/d.class */
public class View$OnClickListenerC5383d extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private View f22402a;

    /* renamed from: b */
    private ViewPager f22403b;

    /* renamed from: c */
    private AppCompatTextView f22404c;

    /* renamed from: d */
    private RelativeLayout f22405d;

    /* renamed from: e */
    private AppCompatButton f22406e;

    /* renamed from: f */
    private AppCompatButton f22407f;

    /* renamed from: g */
    private AbstractC5281a f22408g;

    /* renamed from: h */
    private int f22409h;

    /* renamed from: i */
    private int f22410i;

    /* renamed from: a */
    public static View$OnClickListenerC5383d m879a(ViewPager viewPager, AbstractC5281a abstractC5281a) {
        View$OnClickListenerC5383d view$OnClickListenerC5383d = new View$OnClickListenerC5383d();
        view$OnClickListenerC5383d.f22403b = viewPager;
        view$OnClickListenerC5383d.f22408g = abstractC5281a;
        return view$OnClickListenerC5383d;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22402a = layoutInflater.inflate(2131492952, viewGroup, false);
        this.f22405d = (RelativeLayout) this.f22402a.findViewById(2131296614);
        this.f22406e = (AppCompatButton) this.f22402a.findViewById(2131296599);
        this.f22407f = (AppCompatButton) this.f22402a.findViewById(2131296566);
        this.f22404c = (AppCompatTextView) this.f22402a.findViewById(2131296708);
        return this.f22402a;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22409h = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22410i = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22402a.setOnClickListener(this);
        this.f22406e.setOnClickListener(this);
        this.f22407f.setOnClickListener(this);
        ?? m1048c = new C5290b(view.getContext()).m1048c("spam_number");
        char c = m1048c;
        if (m1048c == 0) {
            c = 1000;
        }
        this.f22404c.setText(C5287g.m1093a(view.getContext(), 2131755369, Long.valueOf(c)));
        this.f22405d.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_main.d.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5383d.this.f22405d.getWidth() / View$OnClickListenerC5383d.this.f22410i, View$OnClickListenerC5383d.this.f22405d.getHeight() / View$OnClickListenerC5383d.this.f22409h);
                View$OnClickListenerC5383d.this.f22405d.setScaleX(min);
                View$OnClickListenerC5383d.this.f22405d.setScaleY(min);
                View$OnClickListenerC5383d.this.f22405d.setPivotX(View$OnClickListenerC5383d.this.f22405d.getWidth() / 2);
                View$OnClickListenerC5383d.this.f22405d.setPivotY(View$OnClickListenerC5383d.this.f22405d.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296372) {
            if (this.f22403b == null) {
                return;
            }
            this.f22403b.m18104a(4, true);
        } else if (this.f22408g == null) {
        } else {
            this.f22408g.mo892a();
        }
    }
}
