package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Reaction;
import e.m.d.y.n;
import java.util.Map;
import java.util.concurrent.FutureTask;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.C12864a2;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.c.n7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n7.class */
public final class C5587n7 extends RecyclerView.AbstractC0317g<C5588a> {

    /* renamed from: a */
    public final Context f18829a;

    /* renamed from: b */
    public final AbstractC19233h0 f18830b;

    /* renamed from: c */
    public final AbstractC6392i0 f18831c;

    /* renamed from: d */
    public final Map<Reaction, Participant> f18832d;

    /* renamed from: e.a.a.c.n7$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/n7$a.class */
    public static final class C5588a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final AvatarXView f18833a;

        /* renamed from: b */
        public final TextView f18834b;

        /* renamed from: c */
        public final ImageView f18835c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5588a(View view) {
            super(view);
            l.e(view, "itemView");
            View findViewById = view.findViewById(2131362231);
            l.d(findViewById, "itemView.findViewById(R.id.avatar)");
            this.f18833a = (AvatarXView) findViewById;
            View findViewById2 = view.findViewById(2131364874);
            l.d(findViewById2, "itemView.findViewById(R.id.name)");
            this.f18834b = (TextView) findViewById2;
            View findViewById3 = view.findViewById(C2752R.C2754id.emoji);
            l.d(findViewById3, "itemView.findViewById(R.id.emoji)");
            this.f18835c = (ImageView) findViewById3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C5587n7(Context context, AbstractC19233h0 abstractC19233h0, AbstractC6392i0 abstractC6392i0, Map<Reaction, ? extends Participant> map) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC6392i0, "messageSettings");
        l.e(map, "items");
        this.f18829a = context;
        this.f18830b = abstractC19233h0;
        this.f18831c = abstractC6392i0;
        this.f18832d = map;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f18832d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C5588a c5588a, int i) {
        C20309d c20309d;
        int i2;
        C20311f c20311f;
        C5588a c5588a2 = c5588a;
        l.e(c5588a2, "viewHolder");
        Reaction reaction = (Reaction) i.u(this.f18832d.keySet(), i);
        Participant participant = this.f18832d.get(reaction);
        String str = reaction.f13454d;
        if (str != null) {
            l.e(str, "value");
            if (!(str.length() == 0)) {
                FutureTask<C20311f> futureTask = C20314i.f57127a;
                if (futureTask == null || (c20311f = futureTask.get()) == null) {
                    throw new IllegalStateException("Emoji data loader has not been set");
                }
                C20308c c20308c = c20311f.f57124a;
                int i3 = 0;
                do {
                    int codePointAt = str.codePointAt(i3);
                    i3 += Character.charCount(codePointAt);
                    if (i3 >= str.length()) {
                        c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                        break;
                    }
                    c20308c = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                } while (c20308c != null);
                c20309d = null;
            } else {
                c20309d = null;
            }
            if (c20309d != null) {
                View view = c5588a2.itemView;
                l.d(view, "viewHolder.itemView");
                Context context = view.getContext();
                l.d(context, "viewHolder.itemView.context");
                i2 = n.D(c20309d, context);
            } else {
                i2 = 0;
            }
            c5588a2.f18835c.setImageResource(i2);
        }
        if (participant != null) {
            AbstractC8247c presenter = c5588a2.f18833a.getPresenter();
            AbstractC8247c abstractC8247c = presenter;
            if (!(presenter instanceof C8243a)) {
                abstractC8247c = null;
            }
            C8243a c8243a = (C8243a) abstractC8247c;
            if (c8243a == null) {
                c8243a = new C8243a(this.f18830b);
            }
            l.e(participant, "$this$buildAvatarConfig");
            Uri m22593A = C12864a2.m22593A(participant.f11582o, participant.f11580m, true);
            String str2 = participant.f11579l;
            String M = str2 != null ? n.M(str2) : null;
            C8243a.m28739ok(c8243a, new AvatarXConfig(m22593A, participant.f11572e, null, M, participant.m35446n(), false, participant.f11569b == 1, false, C19103t.m14107f(participant.f11585r, participant.f11588u) == 4, C19103t.m14107f(participant.f11585r, participant.f11588u) == 32, C19103t.m14107f(participant.f11585r, participant.f11588u) == 128, C19103t.m14107f(participant.f11585r, participant.f11588u) == 256, C19103t.m14107f(participant.f11585r, participant.f11588u) == 16, false, null, false, 57476), false, 2, null);
            c5588a2.f18833a.setPresenter(c8243a);
            String mo31078f = this.f18831c.mo31078f();
            c5588a2.f18834b.setText(((mo31078f == null || mo31078f.length() == 0) || !l.a(this.f18831c.mo31078f(), participant.f11570c)) ? participant.f11579l : this.f18830b.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C5588a onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(this.f18829a).inflate(C2752R.layout.reaction_participant_item, viewGroup, false);
        l.d(inflate, "LayoutInflater.from(cont…pant_item, parent, false)");
        return new C5588a(inflate);
    }
}
