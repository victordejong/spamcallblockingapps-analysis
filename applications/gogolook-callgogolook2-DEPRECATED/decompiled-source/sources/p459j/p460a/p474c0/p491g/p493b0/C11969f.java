package p459j.p460a.p474c0.p491g.p493b0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.AsyncImageView;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView;
import p459j.p460a.p474c0.p491g.AbstractC12082g;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.b0.f */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/f.class */
public class C11969f extends AbstractC12082g<C11970a> {

    /* renamed from: h */
    public final ConversationMessageView.AbstractC4767l f26836h;

    /* renamed from: i */
    public final AsyncImageView.C4678b f26837i;

    /* renamed from: j */
    public final View.OnClickListener f26838j;

    /* renamed from: k */
    public final View.OnLongClickListener f26839k;

    /* renamed from: l */
    public boolean f26840l;

    /* renamed from: j.a.c0.g.b0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/f$a.class */
    public static class C11970a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public final View f26841a;

        public C11970a(View view, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
            super(view);
            this.f26841a = view;
            this.f26841a.setOnClickListener(onClickListener);
            this.f26841a.setOnLongClickListener(onLongClickListener);
        }
    }

    public C11969f(Context context, Cursor cursor, ConversationMessageView.AbstractC4767l lVar, AsyncImageView.C4678b bVar, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        super(context, cursor, 0);
        this.f26836h = lVar;
        this.f26838j = onClickListener;
        this.f26839k = onLongClickListener;
        this.f26837i = bVar;
        setHasStableIds(true);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12082g
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C11970a mo7205a(Context context, ViewGroup viewGroup, int i) {
        ConversationMessageView conversationMessageView = (ConversationMessageView) LayoutInflater.from(context).inflate(R$layout.conversation_message_view, (ViewGroup) null);
        conversationMessageView.m27120a(this.f26836h);
        conversationMessageView.m27121a(this.f26837i);
        return new C11970a(conversationMessageView, this.f26838j, this.f26839k);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7203a(C11970a aVar, Context context, Cursor cursor) {
        C12151d.m6999b(aVar.f26841a instanceof ConversationMessageView);
        ((ConversationMessageView) aVar.f26841a).m27124a(cursor, this.f26840l);
    }

    /* renamed from: a */
    public void m7702a(boolean z, boolean z2) {
        if (this.f26840l != z) {
            this.f26840l = z;
            if (z2) {
                notifyDataSetChanged();
            }
        }
    }
}
