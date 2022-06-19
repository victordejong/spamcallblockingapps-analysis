package p193e.p194a.p195a.p271o.p272a;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.calling.recorder.CallRecordingsListMvp$ActionType;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import e.m.d.y.n;
import java.util.Objects;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.o.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/a.class */
public final class C7051a extends RecyclerView.AbstractC0313c0 implements AbstractC7054c {

    /* renamed from: a */
    public final ListItemX f22747a;

    /* renamed from: b */
    public final C8243a f22748b;

    /* renamed from: c */
    public final C19235i0 f22749c;

    /* renamed from: d */
    public final C17408d f22750d;

    /* renamed from: e */
    public final AbstractC18905m f22751e;

    /* renamed from: e.a.a.o.a.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/o/a/a$a.class */
    public static final class C7052a extends m implements l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ int f22752b;

        /* renamed from: c */
        public final /* synthetic */ Object f22753c;

        /* renamed from: d */
        public final /* synthetic */ Object f22754d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7052a(int i, Object obj, Object obj2) {
            super(1);
            this.f22752b = i;
            this.f22753c = obj;
            this.f22754d = obj2;
        }

        /* renamed from: d */
        public final Object m30218d(Object obj) {
            s sVar = s.a;
            int i = this.f22752b;
            if (i == 0) {
                s1.z.c.l.e((View) obj, "it");
                ((C7051a) this.f22753c).f22751e.mo14327t(new C18900h(CallRecordingsListMvp$ActionType.PLAY_CALL_RECORDING.getEventAction(), (C7051a) this.f22754d, (View) null, (Object) null, 12));
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                View view = (View) obj;
                s1.z.c.l.e(view, "it");
                ((C7051a) this.f22753c).f22751e.mo14327t(new C18900h(CallRecordingsListMvp$ActionType.DELETE_CALL_RECORDING.getEventAction(), (C7051a) this.f22754d, view, (Object) null, 8));
                return sVar;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7051a(View view, AbstractC18905m abstractC18905m, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "eventReceiver");
        s1.z.c.l.e(abstractC17405c, "availabilityManager");
        s1.z.c.l.e(abstractC19222c, "clock");
        this.f22751e = abstractC18905m;
        View findViewById = view.findViewById(C2752R.C2754id.list_item_x);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type com.truecaller.common.ui.listitem.ListItemX");
        ListItemX listItemX = (ListItemX) findViewById;
        this.f22747a = listItemX;
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f22748b = c8243a;
        Context context2 = listItemX.getContext();
        s1.z.c.l.d(context2, "listItem.context");
        C19235i0 c19235i0 = new C19235i0(context2);
        this.f22749c = c19235i0;
        C17408d c17408d = new C17408d(c19235i0, abstractC17405c, abstractC19222c);
        this.f22750d = c17408d;
        listItemX.setAvatarPresenter(c8243a);
        listItemX.setAvailabilityPresenter((C8329a) c17408d);
        listItemX.m35650i1(C2752R.C2753drawable.ic_play_rec, new C7052a(0, this, this));
        listItemX.m35647l1(2131232409, new C7052a(1, this, this));
        n.d1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7054c
    /* renamed from: a */
    public void mo30217a(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, "avatar");
        C8243a.m28739ok(this.f22748b, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7054c
    /* renamed from: b */
    public void mo30216b(boolean z) {
        this.f22747a.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7054c
    /* renamed from: c */
    public void mo30215c(String str) {
        s1.z.c.l.e(str, "subtitle");
        ListItemX.m35644o1(this.f22747a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7054c
    /* renamed from: p */
    public void mo30214p(String str) {
        s1.z.c.l.e(str, "timestamp");
        ListItemX.m35639v1(this.f22747a, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7054c
    public void setTitle(String str) {
        s1.z.c.l.e(str, "title");
        ListItemX.m35637x1(this.f22747a, str, false, 0, 0, 14, null);
    }
}
