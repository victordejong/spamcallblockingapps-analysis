package com.unknownphone.callblocker.tutorial_other;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.tutorial_other.e */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_other/e.class */
public class View$OnClickListenerC5396e extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private AppCompatButton f22454a;

    /* renamed from: b */
    private AppCompatImageView f22455b;

    /* renamed from: c */
    private RelativeLayout f22456c;

    /* renamed from: d */
    private int f22457d;

    /* renamed from: e */
    private int f22458e;

    /* renamed from: a */
    public static View$OnClickListenerC5396e m851a() {
        return new View$OnClickListenerC5396e();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492958, viewGroup, false);
        this.f22456c = (RelativeLayout) inflate.findViewById(2131296614);
        this.f22454a = (AppCompatButton) inflate.findViewById(2131296392);
        this.f22455b = (AppCompatImageView) inflate.findViewById(2131296492);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22455b.setImageResource(((String) C5287g.m1088a(view.getContext().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0).getString("language_code", Locale.getDefault().getLanguage())).first).equals(C5287g.m1079b((String) C5282b.f22118b.first)) ? 2131230889 : 2131230888);
        this.f22457d = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22458e = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22454a.setOnClickListener(this);
        this.f22456c.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_other.e.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5396e.this.f22456c.getWidth() / View$OnClickListenerC5396e.this.f22458e, View$OnClickListenerC5396e.this.f22456c.getHeight() / View$OnClickListenerC5396e.this.f22457d);
                View$OnClickListenerC5396e.this.f22456c.setScaleX(min);
                View$OnClickListenerC5396e.this.f22456c.setScaleY(min);
                View$OnClickListenerC5396e.this.f22456c.setPivotX(View$OnClickListenerC5396e.this.f22456c.getWidth() / 2);
                View$OnClickListenerC5396e.this.f22456c.setPivotY(View$OnClickListenerC5396e.this.f22456c.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (m19922r() != null) {
            m19922r().finish();
        }
    }
}
