package com.unknownphone.callblocker.tutorial_main;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
/* renamed from: com.unknownphone.callblocker.tutorial_main.e */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/e.class */
public class View$OnClickListenerC5385e extends Fragment implements View.OnClickListener {

    /* renamed from: a */
    private RelativeLayout f22412a;

    /* renamed from: ae */
    private int f22413ae;

    /* renamed from: b */
    private AppCompatTextView f22414b;

    /* renamed from: c */
    private AppCompatTextView f22415c;

    /* renamed from: d */
    private AppCompatTextView f22416d;

    /* renamed from: e */
    private AppCompatButton f22417e;

    /* renamed from: f */
    private AbstractC5281a f22418f;

    /* renamed from: g */
    private View f22419g;

    /* renamed from: h */
    private View f22420h;

    /* renamed from: i */
    private int f22421i;

    /* renamed from: a */
    public static View$OnClickListenerC5385e m874a(AbstractC5281a abstractC5281a) {
        View$OnClickListenerC5385e view$OnClickListenerC5385e = new View$OnClickListenerC5385e();
        view$OnClickListenerC5385e.f22418f = abstractC5281a;
        return view$OnClickListenerC5385e;
    }

    /* renamed from: b */
    private void m872b(Context context) {
        if (C5287g.m1071e(context).isEmpty()) {
            this.f22419g.setVisibility(0);
            this.f22420h.setVisibility(8);
            this.f22416d.setText(m19998a(2131755600));
            this.f22417e.setText(2131755465);
            return;
        }
        this.f22419g.setVisibility(8);
        this.f22420h.setVisibility(0);
        this.f22416d.setText(m19998a(2131755599));
        this.f22417e.setText(2131755594);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: I */
    public void mo875I() {
        super.mo875I();
        if (m19924p() != null) {
            m872b(m19924p());
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492953, viewGroup, false);
        this.f22412a = (RelativeLayout) inflate.findViewById(2131296614);
        this.f22414b = (AppCompatTextView) inflate.findViewById(2131296709);
        this.f22415c = (AppCompatTextView) inflate.findViewById(2131296712);
        this.f22416d = (AppCompatTextView) inflate.findViewById(2131296708);
        this.f22419g = inflate.findViewById(2131296628);
        this.f22420h = inflate.findViewById(2131296629);
        this.f22417e = (AppCompatButton) inflate.findViewById(2131296372);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22421i = C5287g.m1094a(view.getContext(), 216.0f);
        this.f22413ae = C5287g.m1094a(view.getContext(), 128.0f);
        this.f22417e.setOnClickListener(this);
        this.f22414b.setText(2131755595);
        this.f22415c.setText(2131755598);
        this.f22412a.post(new Runnable() { // from class: com.unknownphone.callblocker.tutorial_main.e.1
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(View$OnClickListenerC5385e.this.f22412a.getWidth() / View$OnClickListenerC5385e.this.f22413ae, View$OnClickListenerC5385e.this.f22412a.getHeight() / View$OnClickListenerC5385e.this.f22421i);
                View$OnClickListenerC5385e.this.f22412a.setScaleX(min);
                View$OnClickListenerC5385e.this.f22412a.setScaleY(min);
                View$OnClickListenerC5385e.this.f22412a.setPivotX(View$OnClickListenerC5385e.this.f22412a.getWidth() / 2);
                View$OnClickListenerC5385e.this.f22412a.setPivotY(View$OnClickListenerC5385e.this.f22412a.getHeight());
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296372 || this.f22418f == null) {
            return;
        }
        this.f22418f.mo892a();
    }
}
