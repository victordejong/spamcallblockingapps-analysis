package com.freshchat.consumer.sdk.p045a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/w.class */
public class C1355w extends RecyclerView.AbstractC0317g<C1356a> {
    private final List<StaticTemplateFragment> fragments;

    /* renamed from: jA */
    private final AbstractC1357b f3657jA;

    /* renamed from: jB */
    private final String f3658jB;

    /* renamed from: com.freshchat.consumer.sdk.a.w$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/w$a.class */
    public static class C1356a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: jE */
        private final TextView f3659jE;

        /* renamed from: jF */
        private final View f3660jF;

        public C1356a(View view) {
            super(view);
            this.f3659jE = (TextView) view.findViewById(C1298R.C1300id.freshchat_label_text);
            this.f3660jF = view.findViewById(C1298R.C1300id.freshchat_bot_list_view_divider);
        }

        /* renamed from: fg */
        public TextView m41430fg() {
            return this.f3659jE;
        }

        /* renamed from: fh */
        public View m41429fh() {
            return this.f3660jF;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.w$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/w$b.class */
    public interface AbstractC1357b {
        /* renamed from: a */
        void mo39967a(View view, StaticTemplateFragment staticTemplateFragment, String str);
    }

    public C1355w(List<StaticTemplateFragment> list, AbstractC1357b abstractC1357b, String str) {
        this.fragments = list;
        this.f3657jA = abstractC1357b;
        this.f3658jB = str;
    }

    /* renamed from: w */
    private StaticTemplateFragment m41431w(int i) {
        if (C1716k.m39902a(this.fragments)) {
            return this.fragments.get(i);
        }
        return null;
    }

    /* renamed from: a */
    public C1356a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C1356a(LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_list_item_bot_faq, viewGroup, false));
    }

    /* renamed from: a */
    public void onBindViewHolder(C1356a c1356a, int i) {
        StaticTemplateFragment m41431w = m41431w(i);
        c1356a.m41430fg().setText(m41431w.getLabel());
        c1356a.itemView.setOnClickListener(new View$OnClickListenerC1358x(this, m41431w));
        if (i == this.fragments.size() - 1) {
            c1356a.m41429fh().setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C1716k.m39900b(this.fragments);
    }
}
