package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.m.a;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/RecorderTestFragmentBinding.class */
public final class RecorderTestFragmentBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final CardRecyclerView f14349a;

    /* renamed from: b  reason: collision with root package name */
    public final TextView f14350b;

    /* renamed from: c  reason: collision with root package name */
    private final ConstraintLayout f14351c;

    private RecorderTestFragmentBinding(ConstraintLayout constraintLayout, CardRecyclerView cardRecyclerView, TextView textView) {
        this.f14351c = constraintLayout;
        this.f14349a = cardRecyclerView;
        this.f14350b = textView;
    }

    public static RecorderTestFragmentBinding a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558991, viewGroup, false);
        int i = 2131363635;
        CardRecyclerView cardRecyclerView = (CardRecyclerView) inflate.findViewById(2131363635);
        if (cardRecyclerView != null) {
            TextView textView = (TextView) inflate.findViewById(2131363637);
            if (textView != null) {
                return new RecorderTestFragmentBinding((ConstraintLayout) inflate, cardRecyclerView, textView);
            }
            i = 2131363637;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final ConstraintLayout getRoot() {
        return this.f14351c;
    }
}
