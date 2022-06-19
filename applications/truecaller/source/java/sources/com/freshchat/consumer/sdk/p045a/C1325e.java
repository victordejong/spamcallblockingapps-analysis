package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p061k.C1740e;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/e.class */
public class C1325e extends RecyclerView.AbstractC0317g<C1327b> {
    private final Context context;

    /* renamed from: cr */
    private final LayoutInflater f3608cr;

    /* renamed from: mX */
    private final List<MessageFragment> f3609mX;

    /* renamed from: mY */
    private final AbstractC1326a f3610mY;
    private final long originalMessageId;

    /* renamed from: com.freshchat.consumer.sdk.a.e$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/e$a.class */
    public interface AbstractC1326a {
        /* renamed from: a */
        void mo41167a(QuickReplyButtonFragment quickReplyButtonFragment, long j);
    }

    /* renamed from: com.freshchat.consumer.sdk.a.e$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/e$b.class */
    public class C1327b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: nb */
        private final TextView f3612nb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1327b(View view) {
            super(view);
            C1325e.this = r5;
            this.f3612nb = (TextView) view.findViewById(C1298R.C1300id.drop_down_list_item_text);
        }

        /* renamed from: gX */
        public TextView m41466gX() {
            return this.f3612nb;
        }
    }

    public C1325e(Context context, List<MessageFragment> list, AbstractC1326a abstractC1326a, long j) {
        this.f3609mX = list;
        this.f3610mY = abstractC1326a;
        this.f3608cr = LayoutInflater.from(context);
        this.originalMessageId = j;
        this.context = context;
    }

    /* renamed from: F */
    private MessageFragment m41472F(int i) {
        if (C1716k.isEmpty(this.f3609mX)) {
            return null;
        }
        return this.f3609mX.get(i);
    }

    /* renamed from: a */
    public void onBindViewHolder(C1327b c1327b, int i) {
        TextView m41466gX = c1327b.m41466gX();
        MessageFragment m41472F = m41472F(i);
        if (m41472F instanceof QuickReplyButtonFragment) {
            QuickReplyButtonFragment quickReplyButtonFragment = (QuickReplyButtonFragment) m41472F;
            C1740e c1740e = new C1740e(this.context);
            c1740e.m39751b(quickReplyButtonFragment);
            m41466gX.setText(c1740e.m39749jL());
            c1327b.m41466gX().setOnClickListener(new View$OnClickListenerC1328f(this, m41472F));
        }
    }

    /* renamed from: b */
    public C1327b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C1327b(this.f3608cr.inflate(C1298R.layout.freshchat_listitem_dropdown, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C1716k.m39900b(this.f3609mX);
    }
}
