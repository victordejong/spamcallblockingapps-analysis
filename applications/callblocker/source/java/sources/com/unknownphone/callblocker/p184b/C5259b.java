package com.unknownphone.callblocker.p184b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Map;
/* renamed from: com.unknownphone.callblocker.b.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/b/b.class */
public class C5259b extends Fragment {

    /* renamed from: a */
    private AppCompatImageButton f22060a;

    /* renamed from: ae */
    private AppCompatTextView f22061ae;

    /* renamed from: af */
    private AbstractC5281a f22062af;

    /* renamed from: ag */
    private View f22063ag;

    /* renamed from: ah */
    private View f22064ah;

    /* renamed from: ai */
    private View f22065ai;

    /* renamed from: b */
    private AppCompatTextView f22066b;

    /* renamed from: c */
    private AppCompatTextView f22067c;

    /* renamed from: d */
    private AbstractC5281a f22068d;

    /* renamed from: e */
    private AbstractC5281a f22069e;

    /* renamed from: f */
    private AppCompatTextView f22070f;

    /* renamed from: g */
    private AppCompatTextView f22071g;

    /* renamed from: h */
    private AppCompatTextView f22072h;

    /* renamed from: i */
    private AppCompatTextView f22073i;

    /* renamed from: a */
    public static C5259b m1142a(AbstractC5281a abstractC5281a, AbstractC5281a abstractC5281a2, AbstractC5281a abstractC5281a3) {
        C5259b c5259b = new C5259b();
        c5259b.f22068d = abstractC5281a;
        c5259b.f22069e = abstractC5281a2;
        c5259b.f22062af = abstractC5281a3;
        return c5259b;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22065ai = layoutInflater.inflate(2131492960, viewGroup, false);
        this.f22060a = (AppCompatImageButton) this.f22065ai.findViewById(2131296460);
        this.f22066b = (AppCompatTextView) this.f22065ai.findViewById(2131296719);
        this.f22063ag = this.f22065ai.findViewById(2131296718);
        this.f22067c = (AppCompatTextView) this.f22065ai.findViewById(2131296581);
        this.f22064ah = this.f22065ai.findViewById(2131296580);
        this.f22070f = (AppCompatTextView) this.f22065ai.findViewById(2131296513);
        this.f22071g = (AppCompatTextView) this.f22065ai.findViewById(2131296514);
        this.f22072h = (AppCompatTextView) this.f22065ai.findViewById(2131296516);
        this.f22073i = (AppCompatTextView) this.f22065ai.findViewById(2131296517);
        this.f22061ae = (AppCompatTextView) this.f22065ai.findViewById(2131296518);
        return this.f22065ai;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22065ai.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5259b.this.m19922r() != null) {
                    C5259b.this.m19922r().finish();
                }
            }
        });
        this.f22070f.setText(m19998a(2131755434));
        this.f22071g.setText(m19998a(2131755435));
        this.f22072h.setText(m19998a(2131755436));
        this.f22073i.setText(m19998a(2131755448));
        this.f22061ae.setText(m19998a(2131755437));
        this.f22060a.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.b.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5259b.this.f22062af != null) {
                    C5259b.this.f22062af.mo892a();
                }
            }
        });
        this.f22063ag.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.b.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5259b.this.f22069e != null) {
                    C5259b.this.f22069e.mo892a();
                }
            }
        });
        this.f22064ah.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.b.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5259b.this.f22068d != null) {
                    C5259b.this.f22068d.mo892a();
                }
            }
        });
        Map<Integer, String> m1074d = C5287g.m1074d(view.getContext());
        this.f22067c.setText(m1074d.get(1));
        this.f22066b.setText(m1074d.get(3));
    }
}
