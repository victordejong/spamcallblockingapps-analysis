package com.unknownphone.callblocker.p184b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.fragment.app.Fragment;
import com.unknownphone.callblocker.custom.AbstractC5281a;
/* renamed from: com.unknownphone.callblocker.b.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/b/a.class */
public class C5255a extends Fragment {

    /* renamed from: a */
    private AppCompatImageButton f22052a;

    /* renamed from: b */
    private AppCompatButton f22053b;

    /* renamed from: c */
    private AbstractC5281a f22054c;

    /* renamed from: d */
    private AbstractC5281a f22055d;

    /* renamed from: e */
    private View f22056e;

    /* renamed from: a */
    public static C5255a m1145a(AbstractC5281a abstractC5281a, AbstractC5281a abstractC5281a2) {
        C5255a c5255a = new C5255a();
        c5255a.f22054c = abstractC5281a;
        c5255a.f22055d = abstractC5281a2;
        return c5255a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f22056e = layoutInflater.inflate(2131492959, viewGroup, false);
        this.f22052a = (AppCompatImageButton) this.f22056e.findViewById(2131296460);
        this.f22053b = (AppCompatButton) this.f22056e.findViewById(2131296659);
        return this.f22056e;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f22056e.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5255a.this.m19922r() != null) {
                    C5255a.this.m19922r().finish();
                }
            }
        });
        this.f22052a.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5255a.this.f22054c != null) {
                    C5255a.this.f22054c.mo892a();
                }
            }
        });
        this.f22053b.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.b.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5255a.this.f22055d != null) {
                    C5255a.this.f22055d.mo892a();
                }
            }
        });
    }
}
