package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p061m.AbstractC1286a;
import com.callapp.contacts.widget.recyclerviewext.CardRecyclerView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/RecorderTestFragmentBinding.class */
public final class RecorderTestFragmentBinding implements AbstractC1286a {

    /* renamed from: a */
    public final CardRecyclerView f25092a;

    /* renamed from: b */
    public final TextView f25093b;

    /* renamed from: c */
    private final ConstraintLayout f25094c;

    private RecorderTestFragmentBinding(ConstraintLayout constraintLayout, CardRecyclerView cardRecyclerView, TextView textView) {
        this.f25094c = constraintLayout;
        this.f25092a = cardRecyclerView;
        this.f25093b = textView;
    }

    /* renamed from: a */
    public static RecorderTestFragmentBinding m29055a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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

    @Override // androidx.p061m.AbstractC1286a
    public final ConstraintLayout getRoot() {
        return this.f25094c;
    }
}
