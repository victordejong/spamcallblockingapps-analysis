package p193e.p194a.p195a.p200c.p202b;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.chip.SimpleChipXView;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.search.SearchFilter;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.AbstractC5110b5;
import p193e.p194a.p195a.p200c.C5475l;
import p193e.p194a.p195a.p200c.C5837z6;
import p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5427n;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5429p;
import p193e.p194a.p195a.p200c.p221r8.C5700b;
import p193e.p194a.p195a.p200c.p221r8.C5703e;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import s1.f0.v;
import s1.g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\b¢\u0006\u0005\bÇ\u0001\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0013J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ!\u0010#\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b%\u0010\u0017J\u001f\u0010'\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0019H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b)\u0010\u0017J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0013J\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\u0013J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b,\u0010\u0017J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0013J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b.\u0010\u0017J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0014H\u0016¢\u0006\u0004\b0\u0010\u0017J!\u00104\u001a\u00020\u00052\u0006\u00102\u001a\u0002012\b\u00103\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0013J\u0017\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u00020!H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u00020\u00052\u0006\u0010:\u001a\u00020!H\u0016¢\u0006\u0004\b;\u00109J\u0017\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020!H\u0016¢\u0006\u0004\b=\u00109J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0013J\u001f\u0010@\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010?\u001a\u00020\u001fH\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0005H\u0016¢\u0006\u0004\bB\u0010\u0013R%\u0010I\u001a\n D*\u0004\u0018\u00010C0C8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR%\u0010N\u001a\n D*\u0004\u0018\u00010J0J8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010F\u001a\u0004\bL\u0010MR%\u0010S\u001a\n D*\u0004\u0018\u00010O0O8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010F\u001a\u0004\bQ\u0010RR\"\u0010[\u001a\u00020T8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0016\u0010^\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010b\u001a\u00020_8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b`\u0010aR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\"\u0010r\u001a\u00020k8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bl\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR%\u0010u\u001a\n D*\u0004\u0018\u00010O0O8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bs\u0010F\u001a\u0004\bt\u0010RR%\u0010z\u001a\n D*\u0004\u0018\u00010v0v8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bw\u0010F\u001a\u0004\bx\u0010yR%\u0010\u0082\u0001\u001a\u00020{8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R+\u0010\u0087\u0001\u001a\f D*\u0005\u0018\u00010\u0083\u00010\u0083\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0084\u0001\u0010F\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R*\u0010\u008f\u0001\u001a\u00030\u0088\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R+\u0010\u0094\u0001\u001a\f D*\u0005\u0018\u00010\u0090\u00010\u0090\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0091\u0001\u0010F\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R*\u0010\u0098\u0001\u001a\f D*\u0005\u0018\u00010\u0095\u00010\u0095\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0004\b8\u0010F\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001R*\u0010 \u0001\u001a\u00030\u0099\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0006\b\u009e\u0001\u0010\u009f\u0001R*\u0010¨\u0001\u001a\u00030¡\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001R+\u0010\u00ad\u0001\u001a\f D*\u0005\u0018\u00010©\u00010©\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bª\u0001\u0010F\u001a\u0006\b«\u0001\u0010¬\u0001R(\u0010°\u0001\u001a\n D*\u0004\u0018\u00010v0v8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b®\u0001\u0010F\u001a\u0005\b¯\u0001\u0010yR(\u0010³\u0001\u001a\n D*\u0004\u0018\u00010v0v8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b±\u0001\u0010F\u001a\u0005\b²\u0001\u0010yR(\u0010¶\u0001\u001a\n D*\u0004\u0018\u00010O0O8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b´\u0001\u0010F\u001a\u0005\bµ\u0001\u0010RR\u001a\u0010º\u0001\u001a\u00030·\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R(\u0010½\u0001\u001a\n D*\u0004\u0018\u00010O0O8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b»\u0001\u0010F\u001a\u0005\b¼\u0001\u0010RR+\u0010Â\u0001\u001a\f D*\u0005\u0018\u00010¾\u00010¾\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b¿\u0001\u0010F\u001a\u0006\bÀ\u0001\u0010Á\u0001R\u001a\u0010Æ\u0001\u001a\u00030Ã\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÄ\u0001\u0010Å\u0001¨\u0006È\u0001"}, d2 = {"Le/a/a/c/b/b;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/b/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "A", "()V", "", AnalyticsConstants.SHOW, "Wr", "(Z)V", RequestConfiguration.MAX_AD_CONTENT_RATING_MA, "", "position", "A3", "(I)V", "a2", "C4", "", "itemId", "", "word", "Eb", "(JLjava/lang/String;)V", "yz", "allCount", "Fh", "(II)V", "it", "m9", "Qr", "lh", "x9", "fk", "enable", "Ok", "Lcom/truecaller/messaging/conversation/search/SearchFilter;", "filter", "optionalTitle", "Um", "(Lcom/truecaller/messaging/conversation/search/SearchFilter;Ljava/lang/String;)V", "zs", "url", C22021b.f61237c, "(Ljava/lang/String;)V", AnalyticsConstants.EMAIL, "Q", "number", "X", RemoteMessageConst.f7718TO, "delay", "f3", "(ZJ)V", "onDestroyView", "Lcom/google/android/material/appbar/MaterialToolbar;", "kotlin.jvm.PlatformType", "a", "Ls1/g;", "getToolbar", "()Lcom/google/android/material/appbar/MaterialToolbar;", "toolbar", "Landroidx/recyclerview/widget/RecyclerView;", "d", "SA", "()Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Lcom/truecaller/common/ui/chip/SimpleChipXView;", "k", "OA", "()Lcom/truecaller/common/ui/chip/SimpleChipXView;", "filterDate", "Le/a/a/c/k/a/n;", "u", "Le/a/a/c/k/a/n;", "getPendingMmsItemPresenter", "()Le/a/a/c/k/a/n;", "setPendingMmsItemPresenter", "(Le/a/a/c/k/a/n;)V", "pendingMmsItemPresenter", "y", "I", "conversationFilter", "Le/a/o2/o;", "p", "Le/a/o2/o;", "messagesDelegate", "Le/a/a/c/b/k;", "r", "Le/a/a/c/b/k;", "getIncomingMessageItemPresenter", "()Le/a/a/c/b/k;", "setIncomingMessageItemPresenter", "(Le/a/a/c/b/k;)V", "incomingMessageItemPresenter", "Le/a/a/c/k/a/p;", "t", "Le/a/a/c/k/a/p;", "getStatusItemPresenter", "()Le/a/a/c/k/a/p;", "setStatusItemPresenter", "(Le/a/a/c/k/a/p;)V", "statusItemPresenter", "m", "PA", "filterMember", "Lcom/truecaller/ui/view/TintedImageView;", "f", "getBtnUp", "()Lcom/truecaller/ui/view/TintedImageView;", "btnUp", "Le/a/a/c/b/r;", "s", "Le/a/a/c/b/r;", "getOutgoingMessageItemPresenter", "()Le/a/a/c/b/r;", "setOutgoingMessageItemPresenter", "(Le/a/a/c/b/r;)V", "outgoingMessageItemPresenter", "Landroid/widget/RelativeLayout;", "e", "getResultsBar", "()Landroid/widget/RelativeLayout;", "resultsBar", "Le/a/a/c/b/g;", "q", "Le/a/a/c/b/g;", "RA", "()Le/a/a/c/b/g;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/b/g;)V", "presenter", "Landroid/widget/HorizontalScrollView;", "j", "getFiltersBar", "()Landroid/widget/HorizontalScrollView;", "filtersBar", "Landroid/widget/EditText;", "UA", "()Landroid/widget/EditText;", "txtSearch", "Le/a/a/c/r8/b;", "v", "Le/a/a/c/r8/b;", "getViewCacher$truecaller_googlePlayRelease", "()Le/a/a/c/r8/b;", "setViewCacher$truecaller_googlePlayRelease", "(Le/a/a/c/r8/b;)V", "viewCacher", "Le/a/c/a/c/h/j;", "w", "Le/a/c/a/c/h/j;", "getToolTipController$truecaller_googlePlayRelease", "()Le/a/c/a/c/h/j;", "setToolTipController$truecaller_googlePlayRelease", "(Le/a/c/a/c/h/j;)V", "toolTipController", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "i", "getBtnPageDown", "()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "btnPageDown", "g", "getBtnDown", "btnDown", AbstractC2405c.f7629a, "getBtnClear", "btnClear", "n", "TA", "selectedFilter", "Lcom/truecaller/messaging/data/types/Conversation;", "x", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "l", "QA", "filterStarred", "Landroid/widget/TextView;", "h", "getLabelCount", "()Landroid/widget/TextView;", "labelCount", "Le/a/o2/f;", "o", "Le/a/o2/f;", "adapter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.b.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b.class */
public final class C5067b extends Fragment implements AbstractC5085h {

    /* renamed from: z */
    public static final /* synthetic */ int f17351z = 0;

    /* renamed from: o */
    public C18898f f17366o;

    /* renamed from: p */
    public C18907o f17367p;
    @Inject

    /* renamed from: q */
    public AbstractC5084g f17368q;
    @Inject

    /* renamed from: r */
    public AbstractC5092k f17369r;
    @Inject

    /* renamed from: s */
    public AbstractC5102r f17370s;
    @Inject

    /* renamed from: t */
    public AbstractC5429p f17371t;
    @Inject

    /* renamed from: u */
    public AbstractC5427n f17372u;
    @Inject

    /* renamed from: v */
    public C5700b f17373v;
    @Inject

    /* renamed from: w */
    public AbstractC8852j f17374w;

    /* renamed from: x */
    public Conversation f17375x;

    /* renamed from: a */
    public final g f17352a = C19286f.m13659t(this, 2131366512);

    /* renamed from: b */
    public final g f17353b = C19286f.m13659t(this, C2752R.C2754id.txtSearch);

    /* renamed from: c */
    public final g f17354c = C19286f.m13659t(this, C2752R.C2754id.btnClear);

    /* renamed from: d */
    public final g f17355d = C19286f.m13659t(this, 2131365378);

    /* renamed from: e */
    public final g f17356e = C19286f.m13659t(this, C2752R.C2754id.resultsBar);

    /* renamed from: f */
    public final g f17357f = C19286f.m13659t(this, C2752R.C2754id.btnUp);

    /* renamed from: g */
    public final g f17358g = C19286f.m13659t(this, C2752R.C2754id.btnDown);

    /* renamed from: h */
    public final g f17359h = C19286f.m13659t(this, C2752R.C2754id.labelCount);

    /* renamed from: i */
    public final g f17360i = C19286f.m13659t(this, C2752R.C2754id.btnScrollDown);

    /* renamed from: j */
    public final g f17361j = C19286f.m13659t(this, C2752R.C2754id.filtersBar);

    /* renamed from: k */
    public final g f17362k = C19286f.m13659t(this, C2752R.C2754id.chipDate);

    /* renamed from: l */
    public final g f17363l = C19286f.m13659t(this, C2752R.C2754id.chipStarred);

    /* renamed from: m */
    public final g f17364m = C19286f.m13659t(this, C2752R.C2754id.chipMember);

    /* renamed from: n */
    public final g f17365n = C19286f.m13659t(this, C2752R.C2754id.selectedChip);

    /* renamed from: y */
    public int f17376y = 1;

    /* renamed from: e.a.a.c.b.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/b/b$a.class */
    public static final class View$OnClickListenerC5068a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17377a;

        /* renamed from: b */
        public final /* synthetic */ Object f17378b;

        public View$OnClickListenerC5068a(int i, Object obj) {
            this.f17377a = i;
            this.f17378b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17377a;
            if (i == 0) {
                ((C5067b) this.f17378b).m33903RA().mo33849uh();
            } else if (i == 1) {
                ((C5067b) this.f17378b).m33903RA().mo33857Ye();
            } else if (i != 2) {
                throw null;
            } else {
                ((C5067b) this.f17378b).m33903RA().mo33858Xg();
            }
        }
    }

    /* renamed from: e.a.a.c.b.b$b */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/b/b$b.class */
    public static final class View$OnClickListenerC5069b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17379a;

        /* renamed from: b */
        public final /* synthetic */ Object f17380b;

        public View$OnClickListenerC5069b(int i, Object obj) {
            this.f17379a = i;
            this.f17380b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17379a;
            if (i == 0) {
                ((C5067b) this.f17380b).requireActivity().onBackPressed();
            } else if (i == 1) {
                ((C5067b) this.f17380b).m33903RA().mo33863O7();
            } else if (i == 2) {
                ((C5067b) this.f17380b).m33903RA().mo33856aa();
            } else if (i == 3) {
                ((C5067b) this.f17380b).m33903RA().mo33850pd();
            } else if (i != 4) {
                throw null;
            } else {
                ((C5067b) this.f17380b).m33903RA().mo33852n5();
            }
        }
    }

    /* renamed from: e.a.a.c.b.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/c/b/b$c.class */
    public static final class C5070c extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

        /* renamed from: b */
        public final /* synthetic */ int f17381b;

        /* renamed from: c */
        public final /* synthetic */ Object f17382c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5070c(int i, Object obj) {
            super(1);
            this.f17381b = i;
            this.f17382c = obj;
        }

        /* renamed from: d */
        public final Object m33899d(Object obj) {
            int i = this.f17381b;
            if (i == 0) {
                ViewGroup viewGroup = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup, "viewGroup");
                View m13668k = C19286f.m13668k(viewGroup, C2752R.layout.item_message_status, false);
                AbstractC5429p abstractC5429p = ((C5067b) this.f17382c).f17371t;
                if (abstractC5429p != null) {
                    return new ViewTreeObserver$OnPreDrawListenerC5184d(m13668k, abstractC5429p);
                }
                s1.z.c.l.l("statusItemPresenter");
                throw null;
            } else if (i == 1) {
                ViewGroup viewGroup2 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup2, "viewGroup");
                View m13668k2 = C19286f.m13668k(viewGroup2, C2752R.layout.item_message_outgoing, false);
                AbstractC5102r abstractC5102r = ((C5067b) this.f17382c).f17370s;
                if (abstractC5102r != null) {
                    return new ViewTreeObserver$OnPreDrawListenerC5184d(m13668k2, abstractC5102r);
                }
                s1.z.c.l.l("outgoingMessageItemPresenter");
                throw null;
            } else if (i == 2) {
                ViewGroup viewGroup3 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup3, "viewGroup");
                View m13668k3 = C19286f.m13668k(viewGroup3, C2752R.layout.item_message_incoming, false);
                AbstractC5092k abstractC5092k = ((C5067b) this.f17382c).f17369r;
                if (abstractC5092k != null) {
                    return new ViewTreeObserver$OnPreDrawListenerC5184d(m13668k3, abstractC5092k);
                }
                s1.z.c.l.l("incomingMessageItemPresenter");
                throw null;
            } else if (i != 3) {
                throw null;
            } else {
                ViewGroup viewGroup4 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup4, "viewGroup");
                View m13668k4 = C19286f.m13668k(viewGroup4, C2752R.layout.item_message_incoming, false);
                AbstractC5427n abstractC5427n = ((C5067b) this.f17382c).f17372u;
                if (abstractC5427n != null) {
                    return new ViewTreeObserver$OnPreDrawListenerC5184d(m13668k4, abstractC5427n);
                }
                s1.z.c.l.l("pendingMmsItemPresenter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.a.c.b.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$d.class */
    public static final class C5071d extends AbstractC5110b5 {

        /* renamed from: e */
        public final /* synthetic */ View f17384e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5071d(View view, int i) {
            super(i);
            C5067b.this = r4;
            this.f17384e = view;
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: d */
        public int mo32393d() {
            C5067b c5067b = C5067b.this;
            int i = C5067b.f17351z;
            RecyclerView m33902SA = c5067b.m33902SA();
            s1.z.c.l.d(m33902SA, "recyclerView");
            RecyclerView.AbstractC0329o layoutManager = m33902SA.getLayoutManager();
            Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            return ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: e */
        public void mo32392e() {
            C5067b.this.mo33879it(false);
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: f */
        public void mo32391f() {
            C5067b.this.mo33879it(true);
        }
    }

    /* renamed from: e.a.a.c.b.b$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$e.class */
    public static final class C5072e extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5072e() {
            super(1);
            C5067b.this = r4;
        }

        /* renamed from: d */
        public Object m33898d(Object obj) {
            C5067b.this.m33903RA().mo33854ha(String.valueOf((Editable) obj));
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.b.b$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$f.class */
    public static final class C5073f implements TextView.OnEditorActionListener {
        public C5073f() {
            C5067b.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 3) {
                AbstractC5084g m33903RA = C5067b.this.m33903RA();
                s1.z.c.l.d(textView, "v");
                CharSequence text = textView.getText();
                s1.z.c.l.d(text, "v.text");
                m33903RA.mo33861Pd(v.g0(text).toString());
                return false;
            }
            return false;
        }
    }

    /* renamed from: e.a.a.c.b.b$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$g.class */
    public static final class RunnableC5074g implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ int f17388b;

        public RunnableC5074g(int i) {
            C5067b.this = r4;
            this.f17388b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C5067b c5067b = C5067b.this;
            int i = C5067b.f17351z;
            c5067b.m33902SA().scrollToPosition(this.f17388b);
        }
    }

    /* renamed from: e.a.a.c.b.b$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$h.class */
    public static final class C5075h extends m implements l<b, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5075h() {
            super(1);
            C5067b.this = r4;
        }

        /* renamed from: d */
        public Object m33897d(Object obj) {
            b bVar = (b) obj;
            s1.z.c.l.e(bVar, "date");
            C5067b.this.m33903RA().mo33851nb(bVar);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.b.b$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$i.class */
    public static final class C5076i extends m implements l<Participant, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5076i() {
            super(1);
            C5067b.this = r4;
        }

        /* renamed from: d */
        public Object m33896d(Object obj) {
            Participant participant = (Participant) obj;
            s1.z.c.l.e(participant, "participant");
            C5067b.this.m33903RA().mo33853l5(participant);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.b.b$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/b$j.class */
    public static final class RunnableC5077j implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ long f17392b;

        /* renamed from: c */
        public final /* synthetic */ String f17393c;

        public RunnableC5077j(long j, String str) {
            C5067b.this = r5;
            this.f17392b = j;
            this.f17393c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C5067b c5067b = C5067b.this;
            int i = C5067b.f17351z;
            RecyclerView m33902SA = c5067b.m33902SA();
            s1.z.c.l.d(m33902SA, "recyclerView");
            new C5837z6(m33902SA, this.f17392b, this.f17393c, 2000L).start();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: A */
    public void mo33895A() {
        C18898f c18898f = this.f17366o;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: A3 */
    public void mo33894A3(int i) {
        C18898f c18898f = this.f17366o;
        if (c18898f != null) {
            c18898f.notifyItemChanged(i);
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: C4 */
    public void mo33893C4(int i) {
        m33902SA().post(new RunnableC5074g(i));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Eb */
    public void mo33892Eb(long j, String str) {
        m33902SA().post(new RunnableC5077j(j, str));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Fh */
    public void mo33891Fh(int i, int i2) {
        TextView textView = (TextView) this.f17359h.getValue();
        s1.z.c.l.d(textView, "labelCount");
        textView.setText(getString((int) C2752R.string.search_conversation_results_count, new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: MA */
    public void mo33890MA() {
        EditText m33900UA = m33900UA();
        s1.z.c.l.d(m33900UA, "txtSearch");
        Editable text = m33900UA.getText();
        if (text != null) {
            text.clear();
        }
    }

    /* renamed from: OA */
    public final SimpleChipXView m33906OA() {
        return (SimpleChipXView) this.f17362k.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Ok */
    public void mo33889Ok(boolean z) {
        EditText m33900UA = m33900UA();
        s1.z.c.l.d(m33900UA, "txtSearch");
        m33900UA.setEnabled(z);
    }

    /* renamed from: PA */
    public final SimpleChipXView m33905PA() {
        return (SimpleChipXView) this.f17364m.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Q */
    public void mo33888Q(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.EMAIL);
        C8613t.m28199m(requireContext(), str);
    }

    /* renamed from: QA */
    public final SimpleChipXView m33904QA() {
        return (SimpleChipXView) this.f17363l.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Qr */
    public void mo33887Qr() {
        SimpleChipXView m33906OA = m33906OA();
        SearchFilter searchFilter = SearchFilter.DATE;
        m33906OA.setTitle(searchFilter.getText());
        SimpleChipXView.m35695f1(m33906OA(), searchFilter.getIcon(), 0, 2);
        m33906OA().setOnClickListener(new View$OnClickListenerC5068a(0, this));
        SimpleChipXView m33904QA = m33904QA();
        SearchFilter searchFilter2 = SearchFilter.STARRED;
        m33904QA.setTitle(searchFilter2.getText());
        SimpleChipXView.m35695f1(m33904QA(), searchFilter2.getIcon(), 0, 2);
        m33904QA().setOnClickListener(new View$OnClickListenerC5068a(1, this));
        SimpleChipXView m33905PA = m33905PA();
        SearchFilter searchFilter3 = SearchFilter.MEMBER;
        m33905PA.setTitle(searchFilter3.getText());
        SimpleChipXView.m35695f1(m33905PA(), searchFilter3.getIcon(), 0, 2);
        m33905PA().setOnClickListener(new View$OnClickListenerC5068a(2, this));
    }

    /* renamed from: RA */
    public final AbstractC5084g m33903RA() {
        AbstractC5084g abstractC5084g = this.f17368q;
        if (abstractC5084g != null) {
            return abstractC5084g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: SA */
    public final RecyclerView m33902SA() {
        return (RecyclerView) this.f17355d.getValue();
    }

    /* renamed from: TA */
    public final SimpleChipXView m33901TA() {
        return (SimpleChipXView) this.f17365n.getValue();
    }

    /* renamed from: UA */
    public final EditText m33900UA() {
        return (EditText) this.f17353b.getValue();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Um */
    public void mo33886Um(SearchFilter searchFilter, String str) {
        s1.z.c.l.e(searchFilter, "filter");
        SimpleChipXView m33901TA = m33901TA();
        s1.z.c.l.d(m33901TA, "selectedFilter");
        C19286f.m13684T(m33901TA);
        SimpleChipXView m33901TA2 = m33901TA();
        if (str == null) {
            str = getString(searchFilter.getText());
            s1.z.c.l.d(str, "getString(filter.text)");
        }
        m33901TA2.setTitle(str);
        SimpleChipXView.m35695f1(m33901TA(), searchFilter.getIcon(), 0, 2);
        SimpleChipXView m33901TA3 = m33901TA();
        s1.z.c.l.d(m33901TA3, "selectedFilter");
        m33901TA3.setClickable(false);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: Wr */
    public void mo33885Wr(boolean z) {
        TintedImageView tintedImageView = (TintedImageView) this.f17354c.getValue();
        s1.z.c.l.d(tintedImageView, "btnClear");
        C19286f.m13683U(tintedImageView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: X */
    public void mo33884X(String str) {
        s1.z.c.l.e(str, "number");
        C8613t.m28198n(requireContext(), C8613t.m28209c(str));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: a2 */
    public void mo33883a2(int i) {
        m33902SA().smoothScrollToPosition(i);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: b */
    public void mo33882b(String str) {
        s1.z.c.l.e(str, "url");
        C8613t.m28203i(requireContext(), str);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: f3 */
    public void mo33881f3(boolean z, long j) {
        EditText m33900UA = m33900UA();
        s1.z.c.l.d(m33900UA, "txtSearch");
        C19286f.m13680X(m33900UA, z, j);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: fk */
    public void mo33880fk(boolean z) {
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) this.f17361j.getValue();
        s1.z.c.l.d(horizontalScrollView, "filtersBar");
        C19286f.m13683U(horizontalScrollView, z);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: it */
    public void mo33879it(boolean z) {
        FloatingActionButton floatingActionButton = (FloatingActionButton) this.f17360i.getValue();
        s1.z.c.l.d(floatingActionButton, "btnPageDown");
        C19286f.m13683U(floatingActionButton, z);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: lh */
    public void mo33878lh(boolean z) {
        SimpleChipXView m33905PA = m33905PA();
        s1.z.c.l.d(m33905PA, "filterMember");
        C19286f.m13683U(m33905PA, z);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: m9 */
    public void mo33877m9() {
        Toast.makeText(requireContext(), (int) C2752R.string.search_conversation_no_results, 0).show();
    }

    public void onCreate(Bundle bundle) {
        Conversation conversation;
        C5067b.super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (conversation = (Conversation) arguments.getParcelable("conversation")) == null) {
            return;
        }
        this.f17375x = conversation;
        Bundle arguments2 = getArguments();
        this.f17376y = arguments2 != null ? arguments2.getInt("conversation_filter", 1) : 1;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Conversation conversation2 = this.f17375x;
        if (conversation2 == null) {
            s1.z.c.l.l("conversation");
            throw null;
        }
        C5083f c5083f = new C5083f(requireContext, conversation2, this.f17376y);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(c5083f, C5083f.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5078c c5078c = new C5078c(c5083f, mo10154s, null);
        this.f17368q = (AbstractC5084g) c5078c.f17415l.get();
        this.f17369r = (AbstractC5092k) c5078c.f17429z.get();
        this.f17370s = (AbstractC5102r) c5078c.f17395B.get();
        this.f17371t = (AbstractC5429p) c5078c.f17397D.get();
        this.f17372u = (AbstractC5427n) c5078c.f17399F.get();
        this.f17373v = (C5700b) c5078c.f17421r.get();
        this.f17374w = (AbstractC8852j) c5078c.f17425v.get();
        AbstractC27028u lifecycle = getLifecycle();
        AbstractC8852j abstractC8852j = this.f17374w;
        if (abstractC8852j == null) {
            s1.z.c.l.l("toolTipController");
            throw null;
        }
        lifecycle.mo988a(abstractC8852j);
        AbstractC5429p abstractC5429p = this.f17371t;
        if (abstractC5429p == null) {
            s1.z.c.l.l("statusItemPresenter");
            throw null;
        }
        C18906n c18906n = new C18906n(abstractC5429p, C2752R.C2754id.view_type_message_status, new C5070c(0, this));
        AbstractC5102r abstractC5102r = this.f17370s;
        if (abstractC5102r == null) {
            s1.z.c.l.l("outgoingMessageItemPresenter");
            throw null;
        }
        C18906n c18906n2 = new C18906n(abstractC5102r, C2752R.C2754id.view_type_message_outgoing, new C5070c(1, this));
        AbstractC5092k abstractC5092k = this.f17369r;
        if (abstractC5092k == null) {
            s1.z.c.l.l("incomingMessageItemPresenter");
            throw null;
        }
        C18906n c18906n3 = new C18906n(abstractC5092k, C2752R.C2754id.view_type_message_incoming, new C5070c(2, this));
        AbstractC5427n abstractC5427n = this.f17372u;
        if (abstractC5427n == null) {
            s1.z.c.l.l("pendingMmsItemPresenter");
            throw null;
        }
        C18907o c18907o = new C18907o(c18906n, c18906n2, c18906n3, new C18906n(abstractC5427n, C2752R.C2754id.view_type_message_mms_incoming, new C5070c(3, this)));
        this.f17367p = c18907o;
        C18898f c18898f = new C18898f(c18907o);
        this.f17366o = c18898f;
        c18898f.setHasStableIds(true);
        C5703e c5703e = new C5703e();
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        C5700b c5700b = this.f17373v;
        if (c5700b != null) {
            c5703e.m32773d(requireContext2, c5700b, null);
        } else {
            s1.z.c.l.l("viewCacher");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_search_conversation, viewGroup, false);
    }

    public void onDestroyView() {
        C5067b.super.onDestroyView();
        AbstractC5084g abstractC5084g = this.f17368q;
        if (abstractC5084g != null) {
            abstractC5084g.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5067b.super.onViewCreated(view, bundle);
        AbstractC5084g abstractC5084g = this.f17368q;
        if (abstractC5084g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5084g.mo9029Y0(this);
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar((MaterialToolbar) this.f17352a.getValue());
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3553n(true);
            }
            AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.mo3551p(false);
            }
        }
        ((MaterialToolbar) this.f17352a.getValue()).setNavigationOnClickListener(new View$OnClickListenerC5069b(0, this));
        RecyclerView m33902SA = m33902SA();
        s1.z.c.l.d(m33902SA, "recyclerView");
        C18898f c18898f = this.f17366o;
        if (c18898f == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        m33902SA.setAdapter(c18898f);
        RecyclerView m33902SA2 = m33902SA();
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        m33902SA2.addItemDecoration(new C5475l(requireContext));
        RecyclerView m33902SA3 = m33902SA();
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        m33902SA3.addOnScrollListener(new C5071d(view, C19291g.m13645A(context, 100)));
        EditText m33900UA = m33900UA();
        s1.z.c.l.d(m33900UA, "txtSearch");
        C19291g.m13542j(m33900UA, new C5072e());
        m33900UA().setOnEditorActionListener(new C5073f());
        ((TintedImageView) this.f17354c.getValue()).setOnClickListener(new View$OnClickListenerC5069b(1, this));
        ((TintedImageView) this.f17357f.getValue()).setOnClickListener(new View$OnClickListenerC5069b(2, this));
        ((TintedImageView) this.f17358g.getValue()).setOnClickListener(new View$OnClickListenerC5069b(3, this));
        ((FloatingActionButton) this.f17360i.getValue()).setOnClickListener(new View$OnClickListenerC5069b(4, this));
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: to */
    public void mo33876to() {
        Conversation conversation = this.f17375x;
        if (conversation != null) {
            new C5094m(conversation, this.f17376y, new C5076i()).show(getChildFragmentManager(), "SearchMembersBottomSheet");
        } else {
            s1.z.c.l.l("conversation");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: x9 */
    public void mo33875x9() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        new DialogC5064a(requireContext, new C5075h()).show();
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: yz */
    public void mo33874yz(boolean z) {
        RelativeLayout relativeLayout = (RelativeLayout) this.f17356e.getValue();
        s1.z.c.l.d(relativeLayout, "resultsBar");
        C19286f.m13683U(relativeLayout, z);
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5085h
    /* renamed from: zs */
    public void mo33873zs() {
        SimpleChipXView m33901TA = m33901TA();
        s1.z.c.l.d(m33901TA, "selectedFilter");
        C19286f.m13683U(m33901TA, false);
    }
}
