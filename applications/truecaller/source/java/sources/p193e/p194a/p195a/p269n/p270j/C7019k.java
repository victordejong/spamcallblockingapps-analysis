package p193e.p194a.p195a.p269n.p270j;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.messaging.mediamanager.SortOption;
import com.truecaller.messaging.mediaviewer.MediaViewerActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import o3.a;
import o3.c.b;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1111o2.AbstractC18893b;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p269n.AbstractC6999e;
import p193e.p194a.p195a.p269n.C6988a;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.d0.i;
import s1.d0.j;
import s1.g;
import s1.s;
import s1.u.z;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Í\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f*\u0001S\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\b\u008e\u0001\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0013J\u001f\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0013J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0013J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0013J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0013J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0013J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u001fH\u0016¢\u0006\u0004\b,\u0010-J'\u00104\u001a\u00020\u00052\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u001f\u00109\u001a\u00020\u001f2\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020&H\u0016¢\u0006\u0004\b9\u0010:J\u001f\u0010>\u001a\u00020\u00052\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020\u001fH\u0016¢\u0006\u0004\b>\u0010?J\u001f\u0010C\u001a\u00020\u00052\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@H\u0016¢\u0006\u0004\bC\u0010DJ\u0017\u0010G\u001a\u00020\u00052\u0006\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bG\u0010HJ\u001d\u0010L\u001a\u00020\u00052\f\u0010K\u001a\b\u0012\u0004\u0012\u00020J0IH\u0016¢\u0006\u0004\bL\u0010MJ\u0017\u0010O\u001a\u00020\u00052\u0006\u0010N\u001a\u00020EH\u0016¢\u0006\u0004\bO\u0010HJ\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010P\u001a\u00020&H\u0016¢\u0006\u0004\bQ\u0010)J\u000f\u0010R\u001a\u00020\u0005H\u0016¢\u0006\u0004\bR\u0010\u0013R\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR(\u0010_\u001a\b\u0012\u0004\u0012\u00020X0W8��@��X\u0081.¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u0016\u0010c\u001a\u00020`8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\ba\u0010bR\"\u0010j\u001a\u00020d8��@��X\u0081.¢\u0006\u0012\n\u0004\bO\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR(\u0010n\u001a\b\u0012\u0004\u0012\u00020X0W8��@��X\u0081.¢\u0006\u0012\n\u0004\bk\u0010Z\u001a\u0004\bl\u0010\\\"\u0004\bm\u0010^R%\u0010t\u001a\n o*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bp\u0010q\u001a\u0004\br\u0010sR%\u0010y\u001a\n o*\u0004\u0018\u00010u0u8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bv\u0010q\u001a\u0004\bw\u0010xR%\u0010|\u001a\n o*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bz\u0010q\u001a\u0004\b{\u0010sR(\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020X0W8��@��X\u0081.¢\u0006\u0012\n\u0004\b%\u0010Z\u001a\u0004\b}\u0010\\\"\u0004\b~\u0010^R\u001b\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b$\u0010\u0081\u0001R*\u0010\u008a\u0001\u001a\u00030\u0083\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u0084\u0001\u0010\u0085\u0001\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001\"\u0006\b\u0088\u0001\u0010\u0089\u0001R+\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020X0W8��@��X\u0081.¢\u0006\u0014\n\u0004\bQ\u0010Z\u001a\u0005\b\u008b\u0001\u0010\\\"\u0005\b\u008c\u0001\u0010^¨\u0006\u008f\u0001"}, d2 = {"Le/a/a/n/j/k;", "Landroidx/fragment/app/Fragment;", "Le/a/a/n/j/t;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onResume", "onPause", "onStart", "onStop", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "c0", "finish", "g", "e", "", "title", "T0", "(Ljava/lang/String;)V", "u1", "visible", "A1", "(Z)V", "Lcom/truecaller/messaging/data/types/BinaryEntity;", "entity", "Lcom/truecaller/messaging/data/types/Message;", "message", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "br", "(Lcom/truecaller/messaging/data/types/BinaryEntity;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Conversation;)V", "Landroid/net/Uri;", "uri", "type", "w6", "(Landroid/net/Uri;Ljava/lang/String;)Z", "Lcom/truecaller/messaging/mediamanager/SortOption;", AnalyticsConstants.SELECTED, "showSortBySize", "Dc", "(Lcom/truecaller/messaging/mediamanager/SortOption;Z)V", "", "conversationId", "messageId", "y3", "(JJ)V", "", "messageCount", "Mw", "(I)V", "", "Lcom/truecaller/messaging/ForwardContentItem;", "items", "mk", "(Ljava/util/List;)V", "res", "a", "url", C22021b.f61237c, "o3", "e/a/a/n/j/k$a", "l", "Le/a/a/n/j/k$a;", "actionModeCallback", "Lo3/a;", "", "d", "Lo3/a;", "getAudioItemPresenter$truecaller_googlePlayRelease", "()Lo3/a;", "setAudioItemPresenter$truecaller_googlePlayRelease", "(Lo3/a;)V", "audioItemPresenter", "Le/a/o2/f;", "f", "Le/a/o2/f;", "adapter", "Le/a/a/n/j/s;", "Le/a/a/n/j/s;", "PA", "()Le/a/a/n/j/s;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/n/j/s;)V", "presenter", AbstractC2405c.f7629a, "getDocumentItemPresenter$truecaller_googlePlayRelease", "setDocumentItemPresenter$truecaller_googlePlayRelease", "documentItemPresenter", "kotlin.jvm.PlatformType", "k", "Ls1/g;", "getEmptyText", "()Landroid/view/View;", "emptyText", "Landroidx/recyclerview/widget/RecyclerView;", "i", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "j", "getEmptyImage", "emptyImage", "getLinkItemPresenter$truecaller_googlePlayRelease", "setLinkItemPresenter$truecaller_googlePlayRelease", "linkItemPresenter", "Ln3/b/e/a;", "Ln3/b/e/a;", "actionMode", "Lcom/truecaller/messaging/mediamanager/AttachmentType;", "h", "Lcom/truecaller/messaging/mediamanager/AttachmentType;", "getAttachmentType", "()Lcom/truecaller/messaging/mediamanager/AttachmentType;", "setAttachmentType", "(Lcom/truecaller/messaging/mediamanager/AttachmentType;)V", "attachmentType", "getMediaItemPresenter$truecaller_googlePlayRelease", "setMediaItemPresenter$truecaller_googlePlayRelease", "mediaItemPresenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.n.j.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k.class */
public final class C7019k extends Fragment implements AbstractC7039t {
    @Inject

    /* renamed from: a */
    public AbstractC7038s f22678a;
    @Inject

    /* renamed from: b */
    public a<Object> f22679b;
    @Inject

    /* renamed from: c */
    public a<Object> f22680c;
    @Inject

    /* renamed from: d */
    public a<Object> f22681d;
    @Inject

    /* renamed from: e */
    public a<Object> f22682e;

    /* renamed from: f */
    public C18898f f22683f;

    /* renamed from: g */
    public AbstractC25450a f22684g;

    /* renamed from: h */
    public AttachmentType f22685h;

    /* renamed from: i */
    public final g f22686i = C19286f.m13659t(this, 2131365378);

    /* renamed from: j */
    public final g f22687j = C19286f.m13659t(this, C2752R.C2754id.emptyImage);

    /* renamed from: k */
    public final g f22688k = C19286f.m13659t(this, C2752R.C2754id.emptyText);

    /* renamed from: l */
    public final C7020a f22689l = new C7020a();

    /* renamed from: e.a.a.n.j.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$a.class */
    public static final class C7020a implements AbstractC25450a.AbstractC25451a {
        public C7020a() {
            C7019k.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            l.e(abstractC25450a, AnalyticsConstants.MODE);
            l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.media_manager_action_mode, menu);
            C7019k.this.f22684g = abstractC25450a;
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            l.e(abstractC25450a, AnalyticsConstants.MODE);
            l.e(menu, "menu");
            i j = j.j(0, menu.size());
            ArrayList<MenuItem> arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (it.hasNext()) {
                arrayList.add(menu.getItem(it.a()));
            }
            for (MenuItem menuItem : arrayList) {
                l.d(menuItem, "it");
                menuItem.setVisible(C7019k.this.m30305PA().mo30239u(menuItem.getItemId()));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            l.e(abstractC25450a, AnalyticsConstants.MODE);
            l.e(menuItem, "item");
            C7019k.this.m30305PA().mo30244d(menuItem.getItemId());
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            l.e(abstractC25450a, AnalyticsConstants.MODE);
            C7019k.this.m30305PA().mo30236z();
            C7019k.this.f22684g = null;
        }
    }

    /* renamed from: e.a.a.n.j.k$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$b.class */
    public static final class C7021b extends m implements s1.z.b.l<View, C7018j> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7021b() {
            super(1);
            C7019k.this = r4;
        }

        /* renamed from: d */
        public Object m30303d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            return new C7018j(view, C7019k.m30306OA(C7019k.this));
        }
    }

    /* renamed from: e.a.a.n.j.k$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$c.class */
    public static final class C7022c extends m implements s1.z.b.l<C7018j, AbstractC7036q> {

        /* renamed from: b */
        public static final C7022c f22692b = new C7022c();

        public C7022c() {
            super(1);
        }

        /* renamed from: d */
        public Object m30302d(Object obj) {
            C7018j c7018j = (C7018j) obj;
            l.e(c7018j, "it");
            return c7018j;
        }
    }

    /* renamed from: e.a.a.n.j.k$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$d.class */
    public static final class C7023d extends m implements s1.z.b.l<View, C7014f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7023d() {
            super(1);
            C7019k.this = r4;
        }

        /* renamed from: d */
        public Object m30301d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            return new C7014f(view, C7019k.m30306OA(C7019k.this));
        }
    }

    /* renamed from: e.a.a.n.j.k$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$e.class */
    public static final class C7024e extends m implements s1.z.b.l<C7014f, AbstractC7033n> {

        /* renamed from: b */
        public static final C7024e f22694b = new C7024e();

        public C7024e() {
            super(1);
        }

        /* renamed from: d */
        public Object m30300d(Object obj) {
            C7014f c7014f = (C7014f) obj;
            l.e(c7014f, "it");
            return c7014f;
        }
    }

    /* renamed from: e.a.a.n.j.k$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$f.class */
    public static final class C7025f extends m implements s1.z.b.l<View, C7008b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7025f() {
            super(1);
            C7019k.this = r4;
        }

        /* renamed from: d */
        public Object m30299d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            return new C7008b(view, C7019k.m30306OA(C7019k.this));
        }
    }

    /* renamed from: e.a.a.n.j.k$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$g.class */
    public static final class C7026g extends m implements s1.z.b.l<C7008b, AbstractC7032m> {

        /* renamed from: b */
        public static final C7026g f22696b = new C7026g();

        public C7026g() {
            super(1);
        }

        /* renamed from: d */
        public Object m30298d(Object obj) {
            C7008b c7008b = (C7008b) obj;
            l.e(c7008b, "it");
            return c7008b;
        }
    }

    /* renamed from: e.a.a.n.j.k$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$h.class */
    public static final class C7027h extends m implements s1.z.b.l<View, C7016h> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7027h() {
            super(1);
            C7019k.this = r4;
        }

        /* renamed from: d */
        public Object m30297d(Object obj) {
            View view = (View) obj;
            l.e(view, "it");
            return new C7016h(view, C7019k.m30306OA(C7019k.this));
        }
    }

    /* renamed from: e.a.a.n.j.k$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$i.class */
    public static final class C7028i extends m implements s1.z.b.l<C7016h, AbstractC7035p> {

        /* renamed from: b */
        public static final C7028i f22698b = new C7028i();

        public C7028i() {
            super(1);
        }

        /* renamed from: d */
        public Object m30296d(Object obj) {
            C7016h c7016h = (C7016h) obj;
            l.e(c7016h, "it");
            return c7016h;
        }
    }

    /* renamed from: e.a.a.n.j.k$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$j.class */
    public static final class C7029j extends m implements s1.z.b.l<SortOption, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7029j() {
            super(1);
            C7019k.this = r4;
        }

        /* renamed from: d */
        public Object m30295d(Object obj) {
            SortOption sortOption = (SortOption) obj;
            l.e(sortOption, "it");
            C7019k.this.m30305PA().mo30246Ze(sortOption);
            return s.a;
        }
    }

    /* renamed from: e.a.a.n.j.k$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/k$k.class */
    public static final class DialogInterface$OnClickListenerC7030k implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC7030k() {
            C7019k.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C7019k.this.m30305PA().mo30242me();
        }
    }

    /* renamed from: OA */
    public static final /* synthetic */ C18898f m30306OA(C7019k c7019k) {
        C18898f c18898f = c7019k.f22683f;
        if (c18898f != null) {
            return c18898f;
        }
        l.l("adapter");
        throw null;
    }

    /* renamed from: QA */
    public static final C7019k m30304QA(Conversation conversation, AttachmentType attachmentType, boolean z) {
        l.e(conversation, "conversation");
        l.e(attachmentType, "type");
        C7019k c7019k = new C7019k();
        Bundle bundle = new Bundle();
        bundle.putParcelable("conversation", conversation);
        bundle.putSerializable("attachment_type", attachmentType);
        bundle.putBoolean("is_delete_mode", z);
        c7019k.setArguments(bundle);
        return c7019k;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: A1 */
    public void mo30268A1(boolean z) {
        View view = (View) this.f22687j.getValue();
        l.d(view, "emptyImage");
        C19286f.m13683U(view, z);
        View view2 = (View) this.f22688k.getValue();
        l.d(view2, "emptyText");
        C19286f.m13683U(view2, z);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [e.a.a.n.j.y, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: Dc */
    public void mo30267Dc(SortOption sortOption, boolean z) {
        l.e(sortOption, AnalyticsConstants.SELECTED);
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        new C7048y(requireContext, sortOption, z, new C7029j()).show();
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: Mw */
    public void mo30266Mw(int i) {
        g$a g_a = new g$a(requireContext());
        g_a.f70854a.f154d = getResources().getQuantityString(C2752R.plurals.media_manager_delete_confirmation_title, i);
        g_a.f70854a.f156f = getResources().getQuantityString(C2752R.plurals.media_manager_delete_confirmation_message, i, Integer.valueOf(i));
        g_a.m3662g(2131887867, null);
        g_a.m3660i(2131887879, new DialogInterface$OnClickListenerC7030k());
        g_a.m3652q();
    }

    /* renamed from: PA */
    public final AbstractC7038s m30305PA() {
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s != null) {
            return abstractC7038s;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: T0 */
    public void mo30265T0(String str) {
        l.e(str, "title");
        AbstractC25450a abstractC25450a = this.f22684g;
        if (abstractC25450a != null) {
            abstractC25450a.mo3507o(str);
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: a */
    public void mo30264a(int i) {
        Toast.makeText(requireContext(), i, 0).show();
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: b */
    public void mo30263b(String str) {
        l.e(str, "url");
        C8613t.m28203i(requireContext(), str);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: br */
    public void mo30262br(BinaryEntity binaryEntity, Message message, Conversation conversation) {
        View findViewWithTag;
        ImageView imageView;
        ActivityOptions makeSceneTransitionAnimation;
        l.e(binaryEntity, "entity");
        l.e(message, "message");
        l.e(conversation, "conversation");
        String m34952qa = MediaViewerActivity.m34952qa(binaryEntity.f13306a);
        View view = getView();
        Bundle bundle = (view == null || (findViewWithTag = view.findViewWithTag(m34952qa)) == null || (imageView = (ImageView) findViewWithTag.findViewById(2131364277)) == null || (makeSceneTransitionAnimation = ActivityOptions.makeSceneTransitionAnimation(requireActivity(), imageView, m34952qa)) == null) ? null : makeSceneTransitionAnimation.toBundle();
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        startActivity(MediaViewerActivity.m34953pa(requireContext, binaryEntity, message, conversation, false), bundle);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: c0 */
    public void mo30261c0() {
        C18898f c18898f = this.f22683f;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: e */
    public void mo30260e() {
        AbstractC25450a abstractC25450a = this.f22684g;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: g */
    public void mo30259g() {
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f22689l);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: mk */
    public void mo30258mk(List<ForwardContentItem> list) {
        l.e(list, "items");
        Intent intent = new Intent(requireContext(), NewConversationActivity.class);
        intent.setAction("android.intent.action.SEND");
        intent.putParcelableArrayListExtra("forward_content", new ArrayList<>(list));
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: o3 */
    public void mo30257o3() {
        C6988a parentFragment = getParentFragment();
        Fragment fragment = parentFragment;
        if (!(parentFragment instanceof C6988a)) {
            fragment = null;
        }
        C6988a c6988a = fragment;
        if (c6988a != null) {
            AbstractC6999e abstractC6999e = c6988a.f22582d;
            if (abstractC6999e != null) {
                abstractC6999e.mo30318o3();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onCreate(Bundle bundle) {
        Conversation conversation;
        C18910r c18910r;
        C7019k.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (conversation = (Conversation) arguments.getParcelable("conversation")) == null) {
            return;
        }
        Bundle arguments2 = getArguments();
        AttachmentType serializable = arguments2 != null ? arguments2.getSerializable("attachment_type") : null;
        AttachmentType attachmentType = serializable;
        if (!(serializable instanceof AttachmentType)) {
            attachmentType = null;
        }
        AttachmentType attachmentType2 = attachmentType;
        if (attachmentType2 == null) {
            attachmentType2 = AttachmentType.MEDIA;
        }
        this.f22685h = attachmentType2;
        Bundle arguments3 = getArguments();
        if (arguments3 == null) {
            return;
        }
        boolean z = arguments3.getBoolean("is_delete_mode", false);
        AttachmentType attachmentType3 = this.f22685h;
        if (attachmentType3 == null) {
            l.l("attachmentType");
            throw null;
        }
        C7031l c7031l = new C7031l(conversation, attachmentType3, z);
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c7031l, C7031l.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C7010d c7010d = new C7010d(c7031l, mo10154s, null);
        this.f22678a = (AbstractC7038s) c7010d.f22638f.get();
        this.f22679b = b.a(c7010d.f22640h);
        this.f22680c = b.a(c7010d.f22642j);
        this.f22681d = b.a(c7010d.f22644l);
        this.f22682e = b.a(c7010d.f22646n);
        AttachmentType attachmentType4 = this.f22685h;
        if (attachmentType4 == null) {
            l.l("attachmentType");
            throw null;
        }
        int ordinal = attachmentType4.ordinal();
        if (ordinal == 0) {
            a<Object> aVar = this.f22679b;
            if (aVar == null) {
                l.l("mediaItemPresenter");
                throw null;
            }
            Object obj = aVar.get();
            l.d(obj, "mediaItemPresenter.get()");
            c18910r = new C18910r((AbstractC18893b) obj, C2752R.layout.item_media_manager_media, new C7021b(), C7022c.f22692b);
        } else if (ordinal == 1) {
            a<Object> aVar2 = this.f22680c;
            if (aVar2 == null) {
                l.l("documentItemPresenter");
                throw null;
            }
            Object obj2 = aVar2.get();
            l.d(obj2, "documentItemPresenter.get()");
            c18910r = new C18910r((AbstractC18893b) obj2, C2752R.layout.item_media_manager_document, new C7023d(), C7024e.f22694b);
        } else if (ordinal == 2) {
            a<Object> aVar3 = this.f22681d;
            if (aVar3 == null) {
                l.l("audioItemPresenter");
                throw null;
            }
            Object obj3 = aVar3.get();
            l.d(obj3, "audioItemPresenter.get()");
            c18910r = new C18910r((AbstractC18893b) obj3, C2752R.layout.item_media_manager_document, new C7025f(), C7026g.f22696b);
        } else if (ordinal != 3) {
            throw new s1.i();
        } else {
            a<Object> aVar4 = this.f22682e;
            if (aVar4 == null) {
                l.l("linkItemPresenter");
                throw null;
            }
            Object obj4 = aVar4.get();
            l.d(obj4, "linkItemPresenter.get()");
            c18910r = new C18910r((AbstractC18893b) obj4, C2752R.layout.item_media_manager_link, new C7027h(), C7028i.f22698b);
        }
        this.f22683f = new C18898f(c18910r);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        l.e(menu, "menu");
        l.e(menuInflater, "inflater");
        C7019k.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.media_manager, menu);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        l.e(layoutInflater, "inflater");
        AttachmentType attachmentType = this.f22685h;
        if (attachmentType == null) {
            l.l("attachmentType");
            throw null;
        }
        int ordinal = attachmentType.ordinal();
        if (ordinal == 0) {
            i = 2131558853;
        } else if (ordinal == 1) {
            i = 2131558851;
        } else if (ordinal == 2) {
            i = 2131558850;
        } else if (ordinal != 3) {
            throw new s1.i();
        } else {
            i = 2131558852;
        }
        return layoutInflater.inflate(i, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s == null) {
            l.l("presenter");
            throw null;
        }
        abstractC7038s.mo9806c();
        C7019k.super.onDestroyView();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            AbstractC7038s abstractC7038s = this.f22678a;
            if (abstractC7038s != null) {
                abstractC7038s.mo30238v7();
                return true;
            }
            l.l("presenter");
            throw null;
        } else if (itemId != 2131362024) {
            C7019k.super.onOptionsItemSelected(menuItem);
            return true;
        } else {
            AbstractC7038s abstractC7038s2 = this.f22678a;
            if (abstractC7038s2 != null) {
                abstractC7038s2.mo30249Lg();
                return true;
            }
            l.l("presenter");
            throw null;
        }
    }

    public void onPause() {
        C7019k.super.onPause();
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s != null) {
            abstractC7038s.onPause();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C7019k.super.onResume();
        setHasOptionsMenu(true);
    }

    public void onStart() {
        C7019k.super.onStart();
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s != null) {
            abstractC7038s.onStart();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C7019k.super.onStop();
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s != null) {
            abstractC7038s.onStop();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7019k.super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) this.f22686i.getValue();
        l.d(recyclerView, "recyclerView");
        C18898f c18898f = this.f22683f;
        if (c18898f == null) {
            l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC7038s abstractC7038s = this.f22678a;
        if (abstractC7038s != null) {
            abstractC7038s.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: u1 */
    public void mo30256u1() {
        AbstractC25450a abstractC25450a = this.f22684g;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: w6 */
    public boolean mo30255w6(Uri uri, String str) {
        l.e(uri, "uri");
        l.e(str, "type");
        boolean z = true;
        try {
            startActivity(new Intent("android.intent.action.VIEW").setDataAndType(uri, str).setFlags(1));
        } catch (ActivityNotFoundException e) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7039t
    /* renamed from: y3 */
    public void mo30254y3(long j, long j2) {
        Intent putExtra = new Intent(requireContext(), ConversationActivity.class).putExtra("conversation_id", j).putExtra("message_id", j2).putExtra("launch_source", "mediaManager").putExtra(AnalyticsConstants.MODE, ConversationMode.DEFAULT);
        l.d(putExtra, "Intent(requireContext(),…ConversationMode.DEFAULT)");
        startActivity(putExtra);
    }
}
