package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.LegacyFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$f.class */
public class LegacyFragment$f extends BaseAdapter {

    /* renamed from: a */
    public final /* synthetic */ LegacyFragment f3054a;

    public LegacyFragment$f(LegacyFragment legacyFragment) {
        this.f3054a = legacyFragment;
    }

    public /* synthetic */ LegacyFragment$f(LegacyFragment legacyFragment, LegacyFragment$a legacyFragment$a) {
        this(legacyFragment);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return LegacyFragment.x().length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return LegacyFragment.x()[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(LegacyFragment.K(this.f3054a)).inflate(2131558624, (ViewGroup) null);
        }
        LegacyFragment$e legacyFragment$e = LegacyFragment.x()[i];
        int m4787a = legacyFragment$e.m4787a();
        if (legacyFragment$e == LegacyFragment$e.COMMUNITY) {
            m4787a = (!r71.EnumC1638a.f7909M0.m695a() || !r71.EnumC1638a.f7950g.m695a()) ? 2131231169 : 2131231168;
        }
        ((ImageView) view2.findViewById(2131362581)).setImageResource(m4787a);
        ((TextView) view2.findViewById(2131363404)).setText(legacyFragment$e.m4786b());
        return view2;
    }
}
