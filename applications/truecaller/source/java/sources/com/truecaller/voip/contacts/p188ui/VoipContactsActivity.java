package com.truecaller.voip.contacts.p188ui;

import android.animation.Animator;
import android.app.Activity;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18157e1;
import p193e.p194a.p1059m3.C18160g;
import p193e.p194a.p1059m3.C18162h;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18899g;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p372b0.p430q.C8615v;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p619d.p643d.C11691b;
import p193e.p194a.p619d.p643d.p644a.AbstractC11682s;
import p193e.p194a.p619d.p643d.p644a.AbstractC11684u;
import p193e.p194a.p619d.p643d.p644a.C11666c;
import p193e.p194a.p619d.p643d.p644a.C11667d;
import p193e.p194a.p619d.p643d.p644a.C11668e;
import p193e.p194a.p619d.p643d.p644a.C11669f;
import p193e.p194a.p619d.p643d.p644a.C11670g;
import p193e.p194a.p619d.p643d.p644a.C11671h;
import p193e.p194a.p619d.p643d.p644a.C11672i;
import p193e.p194a.p619d.p643d.p644a.C11673j;
import p193e.p194a.p619d.p643d.p644a.C11674k;
import p193e.p194a.p619d.p643d.p644a.C11675l;
import p193e.p194a.p619d.p643d.p644a.C11676m;
import p193e.p194a.p619d.p643d.p644a.C11680q;
import p193e.p194a.p619d.p643d.p644a.C11681r;
import p193e.p194a.p619d.p643d.p644a.RunnableC11679p;
import p193e.p194a.p619d.p643d.p644a.View$OnClickListenerC11677n;
import p193e.p194a.p619d.p643d.p644a.ViewTreeObserver$OnGlobalLayoutListenerC11678o;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.AbstractC11646b;
import p193e.p194a.p619d.p643d.p644a.p645a.p646a.C11640a;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11648a;
import p193e.p194a.p619d.p643d.p644a.p645a.p647b.C11651d;
import p193e.p194a.p619d.p643d.p644a.p645a.p648c.AbstractC11652a;
import p193e.p194a.p619d.p643d.p644a.p645a.p648c.C11654c;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11655a;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11660d;
import p193e.p194a.p619d.p643d.p644a.p645a.p649d.C11657c;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p916i5.C15314a;
import s1.d0.i;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018�� Û\u00012\u00020\u00012\u00020\u0002:\u0001!B\b¢\u0006\u0005\bÚ\u0001\u0010\u0014J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0014J\u0019\u0010\u001a\u001a\u00020\b2\b\b\u0001\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b!\u0010\u001fJ\u000f\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b\"\u0010\u0014J\u000f\u0010#\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010\u0014J\u000f\u0010$\u001a\u00020\bH\u0017¢\u0006\u0004\b$\u0010\u0014J\u000f\u0010%\u001a\u00020\bH\u0017¢\u0006\u0004\b%\u0010\u0014J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u0014J\u0017\u0010(\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0018H\u0016¢\u0006\u0004\b(\u0010\u001bJ\u001f\u0010,\u001a\u00020\b2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u001cH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\b2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00101\u001a\u00020\b2\b\b\u0001\u00100\u001a\u00020\u0018H\u0016¢\u0006\u0004\b1\u0010\u001bJ\u0017\u00103\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u00104J\u0017\u00106\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u00104J\u0017\u00107\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u00104J\u0017\u00108\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u00104J\u0017\u00109\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b9\u00104J\u0017\u0010:\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b:\u00104J\u0017\u0010;\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u00104J\u0017\u0010<\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u00104J\u0017\u0010=\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u00104J\u0017\u0010?\u001a\u00020\b2\u0006\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u00104J\u000f\u0010@\u001a\u00020\bH\u0016¢\u0006\u0004\b@\u0010\u0014J\u000f\u0010A\u001a\u00020\bH\u0016¢\u0006\u0004\bA\u0010\u0014J\u000f\u0010B\u001a\u00020\bH\u0016¢\u0006\u0004\bB\u0010\u0014J\u000f\u0010C\u001a\u00020\bH\u0016¢\u0006\u0004\bC\u0010\u0014J\u000f\u0010D\u001a\u00020\bH\u0016¢\u0006\u0004\bD\u0010\u0014J\u001d\u0010G\u001a\u00020\b2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020\u001c0EH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\bH\u0016¢\u0006\u0004\bI\u0010\u0014J\u000f\u0010J\u001a\u00020\bH\u0016¢\u0006\u0004\bJ\u0010\u0014J\u000f\u0010K\u001a\u00020\bH\u0016¢\u0006\u0004\bK\u0010\u0014R\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR)\u0010V\u001a\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020Q0P8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u001c\u0010Z\u001a\b\u0012\u0004\u0012\u00020X0W8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b3\u0010YR\"\u0010b\u001a\u00020[8��@��X\u0081.¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\u001d\u0010f\u001a\u00020c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010S\u001a\u0004\bd\u0010eR\"\u0010n\u001a\u00020g8��@��X\u0081.¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bp\u0010qR\u001d\u0010v\u001a\u00020s8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010S\u001a\u0004\bt\u0010uR(\u0010\u007f\u001a\u00020w8��@��X\u0081.¢\u0006\u0018\n\u0004\bx\u0010y\u0012\u0004\b~\u0010\u0014\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R\u0018\u0010\u0081\u0001\u001a\u00020o8\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010qR\"\u0010\u0086\u0001\u001a\u00030\u0082\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0083\u0001\u0010S\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R \u0010\u0089\u0001\u001a\u00020s8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0087\u0001\u0010S\u001a\u0005\b\u0088\u0001\u0010uR!\u0010\u008b\u0001\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008a\u0001\u0010S\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R!\u0010\u0090\u0001\u001a\u00020\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008d\u0001\u0010S\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R*\u0010\u0098\u0001\u001a\u00030\u0091\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R*\u0010 \u0001\u001a\u00030\u0099\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009a\u0001\u0010\u009b\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0006\b\u009e\u0001\u0010\u009f\u0001R*\u0010¨\u0001\u001a\u00030¡\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001R*\u0010°\u0001\u001a\u00030©\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bª\u0001\u0010«\u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010³\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001R-\u0010¶\u0001\u001a\u0010\u0012\u0005\u0012\u00030´\u0001\u0012\u0005\u0012\u00030´\u00010P8B@\u0002X\u0082\u0084\u0002¢\u0006\r\n\u0004\b!\u0010S\u001a\u0005\bµ\u0001\u0010UR\u001a\u0010º\u0001\u001a\u00030·\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001a\u0010¾\u0001\u001a\u00030»\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¼\u0001\u0010½\u0001R!\u0010Á\u0001\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b¿\u0001\u0010S\u001a\u0006\bÀ\u0001\u0010\u008c\u0001R*\u0010É\u0001\u001a\u00030Â\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÃ\u0001\u0010Ä\u0001\u001a\u0006\bÅ\u0001\u0010Æ\u0001\"\u0006\bÇ\u0001\u0010È\u0001R.\u0010Í\u0001\u001a\u0010\u0012\u0005\u0012\u00030Ê\u0001\u0012\u0005\u0012\u00030Ê\u00010P8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bË\u0001\u0010S\u001a\u0005\bÌ\u0001\u0010UR.\u0010Ñ\u0001\u001a\u0010\u0012\u0005\u0012\u00030Î\u0001\u0012\u0005\u0012\u00030Î\u00010P8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bÏ\u0001\u0010S\u001a\u0005\bÐ\u0001\u0010UR*\u0010Ù\u0001\u001a\u00030Ò\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÓ\u0001\u0010Ô\u0001\u001a\u0006\bÕ\u0001\u0010Ö\u0001\"\u0006\b×\u0001\u0010Ø\u0001¨\u0006Ü\u0001"}, d2 = {"Lcom/truecaller/voip/contacts/ui/VoipContactsActivity;", "Ln3/b/a/h;", "Le/a/d/d/a/u;", "Landroid/view/View;", "viewToShow", "viewToHide", "", "hideOnEnd", "Ls1/s;", "pa", "(Landroid/view/View;Landroid/view/View;Z)V", "", "slideOffset", "xa", "(F)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onPause", "onDestroy", "onBackPressed", "", "drawable", "N9", "(I)V", "", "title", "setTitle", "(Ljava/lang/String;)V", "subtitle", AbstractC2405c.f7629a, "fa", "J1", "m1", "D0", "X1", "position", "P8", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, AnalyticsConstants.CONTEXT, "f4", "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V", "x2", "(Lcom/truecaller/data/entity/Contact;)V", "textRes", "d", "visible", "i", "(Z)V", "b4", "p7", "A2", "P3", "Y9", "h4", "j3", "W1", "G2", "draggable", "c9", "q2", "Z7", "C1", "e0", "l0", "", "numbersToAdd", "q8", "([Ljava/lang/String;)V", "t", "Y3", "o7", "Landroid/content/BroadcastReceiver;", "a", "Landroid/content/BroadcastReceiver;", "closeScreenBroadcast", "Le/a/o2/r;", "Le/a/d/d/a/a/c/c;", "e", "Ls1/g;", "getCreateGroupBannerAdapterDelegate", "()Le/a/o2/r;", "createGroupBannerAdapterDelegate", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "bottomSheetBehavior", "Le/a/d/d/a/a/b/a;", "l", "Le/a/d/d/a/a/b/a;", "getGroupSelectedContactsAdapterPresenter$truecaller_googlePlayRelease", "()Le/a/d/d/a/a/b/a;", "setGroupSelectedContactsAdapterPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/a/b/a;)V", "groupSelectedContactsAdapterPresenter", "Le/a/m3/h;", "ta", "()Le/a/m3/h;", "bindingContent", "Le/a/d/d/a/s;", "k", "Le/a/d/d/a/s;", "wa", "()Le/a/d/d/a/s;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/s;)V", "presenter", "Ls1/d0/i;", "w", "Ls1/d0/i;", "topGuidelineRange", "Le/a/o2/f;", "va", "()Le/a/o2/f;", "groupSelectedContactsAdapter", "Le/a/l4/c;", "q", "Le/a/l4/c;", "ra", "()Le/a/l4/c;", "setAvailabilityManager$truecaller_googlePlayRelease", "(Le/a/l4/c;)V", "getAvailabilityManager$truecaller_googlePlayRelease$annotations", "availabilityManager", "v", "translationRange", "Le/a/m3/g;", "s", "sa", "()Le/a/m3/g;", "binding", "h", "qa", "adapter", "z", "isLightTheme", "()Z", "x", "getIconSize", "()I", "iconSize", "Le/a/d/d/a/a/d/a;", "n", "Le/a/d/d/a/a/d/a;", "getSuggestedBarPresenter$truecaller_googlePlayRelease", "()Le/a/d/d/a/a/d/a;", "setSuggestedBarPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/a/d/a;)V", "suggestedBarPresenter", "Le/a/p5/c;", "r", "Le/a/p5/c;", "ua", "()Le/a/p5/c;", "setClock$truecaller_googlePlayRelease", "(Le/a/p5/c;)V", "clock", "Le/a/d/d/a/a/d/d;", "o", "Le/a/d/d/a/a/d/d;", "getSuggestedBarAdapterPresenter$truecaller_googlePlayRelease", "()Le/a/d/d/a/a/d/d;", "setSuggestedBarAdapterPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/a/d/d;)V", "suggestedBarAdapterPresenter", "Le/a/d/d/a/a/a/b;", "p", "Le/a/d/d/a/a/a/b;", "getContactsAdapterPresenter$truecaller_googlePlayRelease", "()Le/a/d/d/a/a/a/b;", "setContactsAdapterPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/a/a/b;)V", "contactsAdapterPresenter", "A", "Z", "isStatusBarSupported", "Le/a/d/d/a/a/b/d;", "getGroupSelectedContactsDelegate", "groupSelectedContactsDelegate", "Le/a/b0/q/v;", "y", "Le/a/b0/q/v;", "showBottomSheetOnce", "Landroid/view/animation/AccelerateInterpolator;", "u", "Landroid/view/animation/AccelerateInterpolator;", "accelerateInterpolator", C22021b.f61237c, "getShouldForceDarkTheme", "shouldForceDarkTheme", "Le/a/d/d/a/a/c/a;", "m", "Le/a/d/d/a/a/c/a;", "getGroupBannerPresenter$truecaller_googlePlayRelease", "()Le/a/d/d/a/a/c/a;", "setGroupBannerPresenter$truecaller_googlePlayRelease", "(Le/a/d/d/a/a/c/a;)V", "groupBannerPresenter", "Le/a/d/d/a/a/a/a;", "g", "getContactsDelegate", "contactsDelegate", "Le/a/d/d/a/a/d/c;", "f", "getSuggestedContactsAdapterDelegate", "suggestedContactsAdapterDelegate", "Le/a/d/c0/s1;", "j", "Le/a/d/c0/s1;", "getVoipUtil$truecaller_googlePlayRelease", "()Le/a/d/c0/s1;", "setVoipUtil$truecaller_googlePlayRelease", "(Le/a/d/c0/s1;)V", "voipUtil", "<init>", "B", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@DeepLink({"truecaller://voicelauncher"})
/* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity.class */
public final class VoipContactsActivity extends h implements AbstractC11684u {

    /* renamed from: B */
    public static final C4794c f16301B = new C4794c(null);

    /* renamed from: i */
    public BottomSheetBehavior<ConstraintLayout> f16311i;
    @Inject

    /* renamed from: j */
    public AbstractC11476s1 f16312j;
    @Inject

    /* renamed from: k */
    public AbstractC11682s f16313k;
    @Inject

    /* renamed from: l */
    public AbstractC11648a f16314l;
    @Inject

    /* renamed from: m */
    public AbstractC11652a f16315m;
    @Inject

    /* renamed from: n */
    public AbstractC11655a f16316n;
    @Inject

    /* renamed from: o */
    public AbstractC11660d f16317o;
    @Inject

    /* renamed from: p */
    public AbstractC11646b f16318p;
    @Inject

    /* renamed from: q */
    public AbstractC17405c f16319q;
    @Inject

    /* renamed from: r */
    public AbstractC19222c f16320r;

    /* renamed from: a */
    public final BroadcastReceiver f16303a = new C4798g();

    /* renamed from: b */
    public final g f16304b = C25225a.m3978P1(new C4805n());

    /* renamed from: c */
    public final g f16305c = C25225a.m3978P1(new C4801j());

    /* renamed from: d */
    public final g f16306d = C25225a.m3978P1(new C4792a(1, this));

    /* renamed from: e */
    public final g f16307e = C25225a.m3978P1(new C4800i());

    /* renamed from: f */
    public final g f16308f = C25225a.m3978P1(new C4807p());

    /* renamed from: g */
    public final g f16309g = C25225a.m3978P1(new C4799h());

    /* renamed from: h */
    public final g f16310h = C25225a.m3978P1(new C4792a(0, this));

    /* renamed from: s */
    public final g f16321s = C25225a.m3982O1(s1.h.c, new C4793b(this));

    /* renamed from: t */
    public final g f16322t = C25225a.m3978P1(new C4797f());

    /* renamed from: u */
    public final AccelerateInterpolator f16323u = new AccelerateInterpolator();

    /* renamed from: v */
    public final i f16324v = new i(0, 1);

    /* renamed from: w */
    public final i f16325w = new i(0, 8);

    /* renamed from: x */
    public final g f16326x = C25225a.m3978P1(new C4802k());

    /* renamed from: y */
    public final C8615v f16327y = new C8615v(new C4806o());

    /* renamed from: z */
    public final g f16328z = C25225a.m3978P1(C4803l.f16341b);

    /* renamed from: A */
    public final boolean f16302A = true;

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$a.class */
    public static final class C4792a extends m implements a<C18898f> {

        /* renamed from: b */
        public final /* synthetic */ int f16329b;

        /* renamed from: c */
        public final /* synthetic */ Object f16330c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4792a(int i, Object obj) {
            super(0);
            this.f16329b = i;
            this.f16330c = obj;
        }

        public final Object invoke() {
            int i = this.f16329b;
            if (i == 0) {
                C18898f c18898f = new C18898f(((C18910r) ((VoipContactsActivity) this.f16330c).f16309g.getValue()).mo14330f((C18910r) ((VoipContactsActivity) this.f16330c).f16308f.getValue(), new C18899g(0, 1)).mo14330f((C18910r) ((VoipContactsActivity) this.f16330c).f16307e.getValue(), new C18899g(0, 1)));
                c18898f.setHasStableIds(true);
                return c18898f;
            } else if (i != 1) {
                throw null;
            } else {
                C18898f c18898f2 = new C18898f((C18910r) ((VoipContactsActivity) this.f16330c).f16305c.getValue());
                c18898f2.setHasStableIds(true);
                return c18898f2;
            }
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$b.class */
    public static final class C4793b extends m implements a<C18160g> {

        /* renamed from: b */
        public final /* synthetic */ h f16331b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4793b(h hVar) {
            super(0);
            this.f16331b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f16331b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C2752R.layout.activity_voip_contacts, (ViewGroup) null, false);
            int i = 2131362262;
            View findViewById = inflate.findViewById(2131362262);
            if (findViewById != null) {
                i = 2131362368;
                View findViewById2 = inflate.findViewById(C2752R.C2754id.bottomShadowView);
                if (findViewById2 != null) {
                    i = 2131362369;
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.bottomSheet);
                    if (constraintLayout != null) {
                        i = 2131362486;
                        Button button = (Button) inflate.findViewById(C2752R.C2754id.buttonCreateGroupCall);
                        if (button != null) {
                            i = 2131362600;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.callButtonContainer);
                            if (constraintLayout2 != null) {
                                i = 2131363600;
                                FloatingActionButton findViewById3 = inflate.findViewById(C2752R.C2754id.fabGroupCall);
                                if (findViewById3 != null) {
                                    i = 2131366073;
                                    View findViewById4 = inflate.findViewById(C2752R.C2754id.statusBarDummyView);
                                    if (findViewById4 != null) {
                                        CoordinatorLayout coordinatorLayout = inflate;
                                        return new C18160g(coordinatorLayout, findViewById, findViewById2, constraintLayout, button, constraintLayout2, findViewById3, findViewById4, coordinatorLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$c.class */
    public static final class C4794c {
        public C4794c(f fVar) {
        }

        /* renamed from: c */
        public static void m34336c(C4794c c4794c, Activity activity, int i, VoipContactsScreenParams voipContactsScreenParams, boolean z, int i2) {
            if ((i2 & 2) != 0) {
                i = -1;
            }
            l.e(activity, "activity");
            l.e(voipContactsScreenParams, "params");
            activity.startActivityForResult(c4794c.m34337b(activity, voipContactsScreenParams, z), i);
        }

        /* renamed from: a */
        public final Intent m34338a(Context context, Set<String> set, boolean z, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(set, "peers");
            l.e(str, "analyticsContext");
            Intent m34337b = m34337b(context, new VoipContactsScreenParams(true, null, true, set, str, 2, null), z);
            m34337b.putExtra("ARG_UNLOCK_SCREEN", true);
            return m34337b;
        }

        /* renamed from: b */
        public final Intent m34337b(Context context, VoipContactsScreenParams voipContactsScreenParams, boolean z) {
            Intent intent = new Intent(context, VoipContactsActivity.class);
            intent.putExtra("ARG_FORCE_DARK_THEME", z);
            intent.putExtra("ARG_VOIP_SCREEN_PARAMS", voipContactsScreenParams);
            return intent;
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$d.class */
    public static final class C4795d implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ View f16332a;

        public C4795d(View view, AccelerateInterpolator accelerateInterpolator) {
            this.f16332a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f16332a.setAlpha(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$e.class */
    public static final class C4796e implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ View f16333a;

        /* renamed from: b */
        public final /* synthetic */ boolean f16334b;

        public C4796e(View view, boolean z, AccelerateInterpolator accelerateInterpolator) {
            this.f16333a = view;
            this.f16334b = z;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View view = this.f16333a;
            view.setAlpha(0.0f);
            if (this.f16334b) {
                C19286f.m13689O(view);
            } else {
                C19286f.m13687Q(view);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$f.class */
    public static final class C4797f extends m implements a<C18162h> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4797f() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            VoipContactsActivity voipContactsActivity = VoipContactsActivity.this;
            C4794c c4794c = VoipContactsActivity.f16301B;
            C18160g m34344sa = voipContactsActivity.m34344sa();
            l.d(m34344sa, "binding");
            CoordinatorLayout coordinatorLayout = m34344sa.f51226a;
            int i = 2131362292;
            Barrier barrier = (Barrier) coordinatorLayout.findViewById(C2752R.C2754id.barrierGroupContainer);
            if (barrier != null) {
                i = 2131362300;
                Barrier barrier2 = (Barrier) coordinatorLayout.findViewById(C2752R.C2754id.barrierText);
                if (barrier2 != null) {
                    i = 2131362826;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) coordinatorLayout.findViewById(C2752R.C2754id.closeSearchImageView);
                    if (appCompatImageView != null) {
                        i = 2131362922;
                        ShimmerLoadingView shimmerLoadingView = (ShimmerLoadingView) coordinatorLayout.findViewById(C2752R.C2754id.contactsShimmerLoadingView);
                        if (shimmerLoadingView != null) {
                            i = 2131363502;
                            View findViewById = coordinatorLayout.findViewById(2131363502);
                            if (findViewById != null) {
                                int i2 = 2131363491;
                                TextView textView = (TextView) findViewById.findViewById(C2752R.C2754id.emptyScreenDescription);
                                if (textView != null) {
                                    i2 = 2131363492;
                                    TextView textView2 = (TextView) findViewById.findViewById(C2752R.C2754id.emptyScreenTitle);
                                    if (textView2 != null) {
                                        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById;
                                        i2 = 2131364318;
                                        ImageView imageView = (ImageView) findViewById.findViewById(C2752R.C2754id.img_empty_contacts);
                                        if (imageView != null) {
                                            C18157e1 c18157e1 = new C18157e1(constraintLayout, textView, textView2, constraintLayout, imageView);
                                            i = 2131364055;
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) coordinatorLayout.findViewById(C2752R.C2754id.groupPlaceHolderTextView);
                                            if (appCompatTextView != null) {
                                                i = 2131364085;
                                                Guideline guideline = (Guideline) coordinatorLayout.findViewById(C2752R.C2754id.guidelineTitle);
                                                if (guideline != null) {
                                                    i = 2131364206;
                                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) coordinatorLayout.findViewById(C2752R.C2754id.iconImageView);
                                                    if (appCompatImageView2 != null) {
                                                        i = 2131365379;
                                                        RecyclerView recyclerView = (RecyclerView) coordinatorLayout.findViewById(C2752R.C2754id.recyclerViewContacts);
                                                        if (recyclerView != null) {
                                                            i = 2131365381;
                                                            RecyclerView recyclerView2 = (RecyclerView) coordinatorLayout.findViewById(C2752R.C2754id.recyclerViewSelectedGroupContacts);
                                                            if (recyclerView2 != null) {
                                                                i = 2131365566;
                                                                CardView cardView = (CardView) coordinatorLayout.findViewById(2131365566);
                                                                if (cardView != null) {
                                                                    i = 2131365570;
                                                                    AppCompatEditText appCompatEditText = (AppCompatEditText) coordinatorLayout.findViewById(C2752R.C2754id.searchFieldEditText);
                                                                    if (appCompatEditText != null) {
                                                                        i = 2131365572;
                                                                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) coordinatorLayout.findViewById(C2752R.C2754id.searchImageView);
                                                                        if (appCompatImageView3 != null) {
                                                                            i = 2131365575;
                                                                            MaterialToolbar findViewById2 = coordinatorLayout.findViewById(C2752R.C2754id.searchToolbar);
                                                                            if (findViewById2 != null) {
                                                                                i = 2131366512;
                                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) coordinatorLayout.findViewById(2131366512);
                                                                                if (constraintLayout2 != null) {
                                                                                    i = 2131366513;
                                                                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) coordinatorLayout.findViewById(C2752R.C2754id.toolbarBottomSheet);
                                                                                    if (constraintLayout3 != null) {
                                                                                        i = 2131366521;
                                                                                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) coordinatorLayout.findViewById(C2752R.C2754id.toolbar_navigation_icon_image_view);
                                                                                        if (appCompatImageView4 != null) {
                                                                                            i = 2131366517;
                                                                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) coordinatorLayout.findViewById(C2752R.C2754id.toolbarSubtitleTextView);
                                                                                            if (appCompatTextView2 != null) {
                                                                                                i = 2131366519;
                                                                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) coordinatorLayout.findViewById(C2752R.C2754id.toolbarTitleTextView);
                                                                                                if (appCompatTextView3 != null) {
                                                                                                    i = 2131366534;
                                                                                                    View findViewById3 = coordinatorLayout.findViewById(C2752R.C2754id.topShadowView);
                                                                                                    if (findViewById3 != null) {
                                                                                                        return new C18162h(coordinatorLayout, barrier, barrier2, appCompatImageView, shimmerLoadingView, c18157e1, appCompatTextView, guideline, appCompatImageView2, recyclerView, recyclerView2, cardView, appCompatEditText, appCompatImageView3, findViewById2, constraintLayout2, constraintLayout3, appCompatImageView4, appCompatTextView2, appCompatTextView3, findViewById3);
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(coordinatorLayout.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$g.class */
    public static final class C4798g extends BroadcastReceiver {
        public C4798g() {
            VoipContactsActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            VoipContactsActivity.this.m34340wa().mo24232fi();
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$h.class */
    public static final class C4799h extends m implements a<C18910r<? super C11640a, ? super C11640a>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4799h() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            AbstractC11646b abstractC11646b = VoipContactsActivity.this.f16318p;
            if (abstractC11646b != null) {
                return new C18910r(abstractC11646b, C2752R.layout.item_voip_contact, new C11666c(this), C11667d.f34236b);
            }
            l.l("contactsAdapterPresenter");
            throw null;
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$i */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$i.class */
    public static final class C4800i extends m implements a<C18910r<? super C11654c, ? super C11654c>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4800i() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            AbstractC11652a abstractC11652a = VoipContactsActivity.this.f16315m;
            if (abstractC11652a != null) {
                return new C18910r(abstractC11652a, C2752R.layout.item_voip_create_group_call_banner, new C11668e(this), C11669f.f34238b);
            }
            l.l("groupBannerPresenter");
            throw null;
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$j */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$j.class */
    public static final class C4801j extends m implements a<C18910r<? super C11651d, ? super C11651d>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4801j() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            AbstractC11648a abstractC11648a = VoipContactsActivity.this.f16314l;
            if (abstractC11648a != null) {
                return new C18910r(abstractC11648a, C2752R.layout.item_voip_frequently_called, new C11670g(this), C11671h.f34240b);
            }
            l.l("groupSelectedContactsAdapterPresenter");
            throw null;
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$k */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$k.class */
    public static final class C4802k extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4802k() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.voip.contacts.ui.VoipContactsActivity] */
        public Object invoke() {
            return Integer.valueOf(C19291g.m13645A(VoipContactsActivity.this, 48));
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$l */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$l.class */
    public static final class C4803l extends m implements a<Boolean> {

        /* renamed from: b */
        public static final C4803l f16341b = new C4803l();

        public C4803l() {
            super(0);
        }

        public Object invoke() {
            C15314a c15314a = C15314a.f43582g;
            return Boolean.valueOf(!C15314a.m18933f());
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$m */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$m.class */
    public static final class View$OnClickListenerC4804m implements View.OnClickListener {
        public View$OnClickListenerC4804m() {
            VoipContactsActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            VoipContactsActivity.this.m34340wa().mo24230m();
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$n */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$n.class */
    public static final class C4805n extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4805n() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.voip.contacts.ui.VoipContactsActivity, android.app.Activity] */
        public Object invoke() {
            return Boolean.valueOf(VoipContactsActivity.this.getIntent().getBooleanExtra("ARG_FORCE_DARK_THEME", false));
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$o */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$o.class */
    public static final class C4806o extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4806o() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            VoipContactsActivity voipContactsActivity = VoipContactsActivity.this;
            C4794c c4794c = VoipContactsActivity.f16301B;
            voipContactsActivity.m34344sa().f51229d.postDelayed(new RunnableC11679p(this), 100L);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.voip.contacts.ui.VoipContactsActivity$p */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/VoipContactsActivity$p.class */
    public static final class C4807p extends m implements a<C18910r<? super C11657c, ? super C11657c>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4807p() {
            super(0);
            VoipContactsActivity.this = r4;
        }

        public Object invoke() {
            AbstractC11655a abstractC11655a = VoipContactsActivity.this.f16316n;
            if (abstractC11655a != null) {
                return new C18910r(abstractC11655a, C2752R.layout.item_voip_frequently_called_bar, new C11680q(this), C11681r.f34251b);
            }
            l.l("suggestedBarPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: A2 */
    public void mo24290A2(boolean z) {
        RecyclerView recyclerView = m34343ta().f51245i;
        l.d(recyclerView, "bindingContent.recyclerViewSelectedGroupContacts");
        C19286f.m13683U(recyclerView, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: C1 */
    public void mo24289C1() {
        C18162h m34343ta = m34343ta();
        CardView cardView = m34343ta.f51246j;
        l.d(cardView, "searchContainer");
        if (C19286f.m13663p(cardView)) {
            ConstraintLayout constraintLayout = m34343ta.f51249m;
            l.d(constraintLayout, "toolbarBottomSheet");
            CardView cardView2 = m34343ta.f51246j;
            l.d(cardView2, "searchContainer");
            m34347pa(constraintLayout, cardView2, true);
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: D0 */
    public void mo24288D0() {
        m34346qa().notifyDataSetChanged();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: G2 */
    public void mo24287G2(boolean z) {
        C18162h m34343ta = m34343ta();
        if (z) {
            AppCompatImageView appCompatImageView = m34343ta.f51248l;
            l.d(appCompatImageView, "searchImageView");
            C19286f.m13684T(appCompatImageView);
            return;
        }
        AppCompatImageView appCompatImageView2 = m34343ta.f51248l;
        l.d(appCompatImageView2, "searchImageView");
        C19286f.m13687Q(appCompatImageView2);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: J1 */
    public void mo24286J1() {
        m34343ta().f51244h.scrollToPosition(0);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: N9 */
    public void mo24285N9(int i) {
        m34343ta().f51250n.setImageResource(i);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: P3 */
    public void mo24284P3(boolean z) {
        AppCompatTextView appCompatTextView = m34343ta().f51241e;
        l.d(appCompatTextView, "bindingContent.groupPlaceHolderTextView");
        C19286f.m13683U(appCompatTextView, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: P8 */
    public void mo24283P8(int i) {
        m34346qa().notifyItemChanged(((C18910r) this.f16309g.getValue()).f53035f.mo14329j(i));
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: W1 */
    public void mo24282W1(boolean z) {
        View view = m34344sa().f51228c;
        l.d(view, "binding.bottomShadowView");
        C19286f.m13683U(view, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: X1 */
    public void mo24281X1() {
        m34346qa().notifyItemChanged(((C18910r) this.f16308f.getValue()).mo14329j(0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: Y3 */
    public void mo24280Y3() {
        finish();
        VoipContactsScreenParams voipContactsScreenParams = new VoipContactsScreenParams(true, GroupPickerMode.CREATE_GROUP, true, null, "voiceLauncherCreateGroup", 8, null);
        int i = true & true ? -1 : 0;
        l.e(this, "activity");
        l.e(voipContactsScreenParams, "params");
        Intent intent = new Intent((Context) this, (Class<?>) VoipContactsActivity.class);
        intent.putExtra("ARG_FORCE_DARK_THEME", false);
        intent.putExtra("ARG_VOIP_SCREEN_PARAMS", voipContactsScreenParams);
        startActivityForResult(intent, i);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: Y9 */
    public void mo24279Y9(boolean z) {
        View view = m34343ta().f51253q;
        l.d(view, "bindingContent.topShadowView");
        C19286f.m13683U(view, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: Z7 */
    public void mo24278Z7() {
        C18162h m34343ta = m34343ta();
        CardView cardView = m34343ta.f51246j;
        l.d(cardView, "searchContainer");
        ConstraintLayout constraintLayout = m34343ta.f51249m;
        l.d(constraintLayout, "toolbarBottomSheet");
        m34347pa(cardView, constraintLayout, false);
        AppCompatEditText appCompatEditText = m34343ta.f51247k;
        l.d(appCompatEditText, "searchFieldEditText");
        C19286f.m13679Y(appCompatEditText, true, 0L, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: b4 */
    public void mo24277b4(boolean z) {
        C18157e1 c18157e1 = m34343ta().f51240d;
        TextView textView = c18157e1.f51215a;
        l.d(textView, "emptyScreenDescription");
        textView.setText(getString(C2752R.string.voip_contact_empty_state_description, new Object[]{getString(2131890378)}));
        ConstraintLayout constraintLayout = c18157e1.f51216b;
        l.d(constraintLayout, "emptyViewContainer");
        C19286f.m13683U(constraintLayout, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: c */
    public void mo24276c(String str) {
        l.e(str, "subtitle");
        AppCompatTextView appCompatTextView = m34343ta().f51251o;
        l.d(appCompatTextView, "bindingContent.toolbarSubtitleTextView");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: c9 */
    public void mo24275c9(boolean z) {
        if (z) {
            m34344sa().f51234i.setOnClickListener(new View$OnClickListenerC4804m());
        } else {
            m34344sa().f51234i.setOnClickListener(null);
        }
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.f16311i;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.E = z;
        } else {
            l.l("bottomSheetBehavior");
            throw null;
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: d */
    public void mo24274d(int i) {
        Snackbar k = Snackbar.k(m34344sa().f51234i, i, 0);
        FloatingActionButton floatingActionButton = m34344sa().f51232g;
        View view = k.f6769f;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = k.f6770g;
        if (view != null) {
            view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
        k.f6769f = floatingActionButton;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener2 = k.f6770g;
        if (floatingActionButton != null) {
            floatingActionButton.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener2);
        }
        k.n();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: e0 */
    public void mo24273e0() {
        AppCompatEditText appCompatEditText = m34343ta().f51247k;
        l.d(appCompatEditText, "bindingContent.searchFieldEditText");
        C19286f.m13679Y(appCompatEditText, false, 0L, 2);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: f4 */
    public void mo24272f4(Contact contact, String str) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(str, AnalyticsConstants.CONTEXT);
        AbstractC11476s1 abstractC11476s1 = this.f16312j;
        if (abstractC11476s1 != null) {
            abstractC11476s1.mo24616h(this, contact, str);
        } else {
            l.l("voipUtil");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: fa */
    public void mo24271fa() {
        C27062a.m968b(this).m967c(this.f16303a, new IntentFilter("com.truecaller.voip.contacts.ui.VoipContactsActivity#CLOSE"));
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: h4 */
    public void mo24270h4(boolean z) {
        if (z) {
            m34344sa().f51232g.p();
        } else {
            m34344sa().f51232g.i();
        }
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: i */
    public void mo24269i(boolean z) {
        ShimmerLoadingView shimmerLoadingView = m34343ta().f51239c;
        l.d(shimmerLoadingView, "bindingContent.contactsShimmerLoadingView");
        C19286f.m13683U(shimmerLoadingView, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: j3 */
    public void mo24268j3(boolean z) {
        Button button = m34344sa().f51230e;
        l.d(button, "binding.buttonCreateGroupCall");
        C19286f.m13683U(button, z);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: l0 */
    public void mo24267l0() {
        m34343ta().f51247k.setText("");
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: m1 */
    public void mo24266m1() {
        m34341va().notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: o7 */
    public void mo24265o7() {
        finish();
        VoipContactsScreenParams voipContactsScreenParams = new VoipContactsScreenParams(false, null, false, null, "voiceLauncherOneToOne", 14, null);
        int i = true & true ? -1 : 0;
        l.e(this, "activity");
        l.e(voipContactsScreenParams, "params");
        Intent intent = new Intent((Context) this, (Class<?>) VoipContactsActivity.class);
        intent.putExtra("ARG_FORCE_DARK_THEME", false);
        intent.putExtra("ARG_VOIP_SCREEN_PARAMS", voipContactsScreenParams);
        startActivityForResult(intent, i);
    }

    public void onBackPressed() {
        AbstractC11682s abstractC11682s = this.f16313k;
        if (abstractC11682s != null) {
            abstractC11682s.mo24243P8();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        if (((Boolean) this.f16304b.getValue()).booleanValue()) {
            Resources.Theme theme = getTheme();
            C15314a c15314a = C15314a.f43582g;
            theme.applyStyle(C15314a.m18937b().f43588d, false);
        } else {
            Resources.Theme theme2 = getTheme();
            l.d(theme2, "theme");
            C17422k.m16067m(theme2, true);
        }
        VoipContactsActivity.super.onCreate(bundle);
        C18160g m34344sa = m34344sa();
        l.d(m34344sa, "binding");
        setContentView(m34344sa.f51226a);
        overridePendingTransition(0, 0);
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C11691b c11691b = new C11691b(mo10154s, null);
        AbstractC11476s1 mo12679J6 = mo10154s.mo12679J6();
        Objects.requireNonNull(mo12679J6, "Cannot return null from a non-@Nullable component method");
        this.f16312j = mo12679J6;
        this.f16313k = (AbstractC11682s) c11691b.f34309p.get();
        this.f16314l = (AbstractC11648a) c11691b.f34305l.get();
        this.f16315m = (AbstractC11652a) c11691b.f34301h.get();
        this.f16316n = (AbstractC11655a) c11691b.f34303j.get();
        this.f16317o = (AbstractC11660d) c11691b.f34299f.get();
        this.f16318p = (AbstractC11646b) c11691b.f34297d.get();
        this.f16319q = (AbstractC17405c) c11691b.f34307n.get();
        AbstractC19222c mo11637k = c11691b.f34294a.mo11637k();
        Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
        this.f16320r = mo11637k;
        ConstraintLayout constraintLayout = m34344sa().f51229d;
        l.d(constraintLayout, "binding.bottomSheet");
        constraintLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC11678o(constraintLayout, this));
        C26614s.m1563r(m34344sa().f51234i, new C11674k(this));
        BottomSheetBehavior<ConstraintLayout> H = BottomSheetBehavior.H(m34344sa().f51229d);
        l.d(H, "BottomSheetBehavior.from(binding.bottomSheet)");
        this.f16311i = H;
        H.M(5);
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.f16311i;
        if (bottomSheetBehavior == null) {
            l.l("bottomSheetBehavior");
            throw null;
        }
        C11673j c11673j = new C11673j(this);
        if (!bottomSheetBehavior.P.contains(c11673j)) {
            bottomSheetBehavior.P.add(c11673j);
        }
        RecyclerView recyclerView = m34343ta().f51244h;
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new C13338z0(this, C2752R.layout.view_list_header_voice_launcher, C19291g.m13612L(this, 2130970356)));
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(m34346qa());
        recyclerView.addOnScrollListener(new C11672i(this));
        RecyclerView recyclerView2 = m34343ta().f51245i;
        recyclerView2.setItemAnimator(null);
        recyclerView2.setNestedScrollingEnabled(false);
        recyclerView2.setLayoutManager(new LinearLayoutManager(this, 0, false));
        recyclerView2.setAdapter(m34341va());
        CardView cardView = m34343ta().f51246j;
        l.d(cardView, "bindingContent.searchContainer");
        C19286f.m13689O(cardView);
        m34343ta().f51238b.setOnClickListener(new View$OnClickListenerC11677n(this));
        AppCompatEditText appCompatEditText = m34343ta().f51247k;
        appCompatEditText.setOnEditorActionListener(new C11675l(this));
        appCompatEditText.addTextChangedListener(new C11676m(this));
        m34343ta().f51250n.setOnClickListener(new y0(0, this));
        m34343ta().f51248l.setOnClickListener(new y0(1, this));
        m34344sa().f51232g.setOnClickListener(new y0(2, this));
        m34344sa().f51230e.setOnClickListener(new y0(3, this));
        m34344sa().f51234i.setOnClickListener(new y0(4, this));
        m34339xa(0.0f);
        if (getIntent().getBooleanExtra(DeepLink.IS_DEEP_LINK, false)) {
            Intent intent = getIntent();
            l.d(intent, "intent");
            Bundle extras = intent.getExtras();
            if ((extras != null ? extras.getString(AbstractC2405c.f7629a) : null) != null) {
                AbstractC11682s abstractC11682s = this.f16313k;
                if (abstractC11682s == null) {
                    l.l("presenter");
                    throw null;
                }
                abstractC11682s.mo24227x9(extras.getString(AbstractC2405c.f7629a));
            }
        }
        AbstractC11682s abstractC11682s2 = this.f16313k;
        if (abstractC11682s2 == null) {
            l.l("presenter");
            throw null;
        }
        VoipContactsScreenParams voipContactsScreenParams = (VoipContactsScreenParams) getIntent().getParcelableExtra("ARG_VOIP_SCREEN_PARAMS");
        if (voipContactsScreenParams == null) {
            voipContactsScreenParams = new VoipContactsScreenParams(false, null, false, null, null, 31, null);
        }
        abstractC11682s2.mo24231h9(voipContactsScreenParams);
        abstractC11682s2.mo9029Y0(this);
        if (!getIntent().getBooleanExtra("ARG_UNLOCK_SCREEN", false)) {
            return;
        }
        if (Build.VERSION.SDK_INT < 26) {
            getWindow().addFlags(4194304);
            return;
        }
        Object systemService = getSystemService("keyguard");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        ((KeyguardManager) systemService).requestDismissKeyguard(this, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        VoipContactsActivity.super.onDestroy();
        C27062a.m968b(this).m965e(this.f16303a);
        AbstractC11682s abstractC11682s = this.f16313k;
        if (abstractC11682s != null) {
            abstractC11682s.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        overridePendingTransition(0, 0);
        VoipContactsActivity.super.onPause();
    }

    public void onResume() {
        VoipContactsActivity.super.onResume();
        this.f16327y.m28195a();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: p7 */
    public void mo24264p7(boolean z) {
        RecyclerView recyclerView = m34343ta().f51244h;
        l.d(recyclerView, "bindingContent.recyclerViewContacts");
        C19286f.m13683U(recyclerView, z);
    }

    /* renamed from: pa */
    public final void m34347pa(View view, View view2, boolean z) {
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        C19286f.m13684T(view);
        view.setAlpha(0.0f);
        ViewPropertyAnimator animate = view.animate();
        animate.setListener(new C4795d(view2, accelerateInterpolator));
        animate.setInterpolator(accelerateInterpolator);
        animate.setDuration(150L);
        animate.alpha(1.0f);
        animate.start();
        C19286f.m13684T(view2);
        view2.setAlpha(1.0f);
        ViewPropertyAnimator animate2 = view2.animate();
        animate2.setListener(new C4796e(view2, z, accelerateInterpolator));
        animate2.setInterpolator(accelerateInterpolator);
        animate2.setDuration(150L);
        animate2.alpha(0.0f);
        animate2.start();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: q2 */
    public void mo24263q2() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.f16311i;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.M(3);
        } else {
            l.l("bottomSheetBehavior");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: q8 */
    public void mo24262q8(String[] strArr) {
        l.e(strArr, "numbersToAdd");
        Intent intent = new Intent();
        intent.putExtra("ARG_RESULT_NUMBERS", strArr);
        setResult(-1, intent);
    }

    /* renamed from: qa */
    public final C18898f m34346qa() {
        return (C18898f) this.f16310h.getValue();
    }

    /* renamed from: ra */
    public final AbstractC17405c m34345ra() {
        AbstractC17405c abstractC17405c = this.f16319q;
        if (abstractC17405c != null) {
            return abstractC17405c;
        }
        l.l("availabilityManager");
        throw null;
    }

    /* renamed from: sa */
    public final C18160g m34344sa() {
        return (C18160g) this.f16321s.getValue();
    }

    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    public void setTitle(String str) {
        l.e(str, "title");
        AppCompatTextView appCompatTextView = m34343ta().f51252p;
        l.d(appCompatTextView, "bindingContent.toolbarTitleTextView");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: t */
    public void mo24261t() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.f16311i;
        if (bottomSheetBehavior == null) {
            l.l("bottomSheetBehavior");
            throw null;
        } else if (bottomSheetBehavior.F == 5) {
            finish();
        } else if (bottomSheetBehavior != null) {
            bottomSheetBehavior.M(5);
        } else {
            l.l("bottomSheetBehavior");
            throw null;
        }
    }

    /* renamed from: ta */
    public final C18162h m34343ta() {
        return (C18162h) this.f16322t.getValue();
    }

    /* renamed from: ua */
    public final AbstractC19222c m34342ua() {
        AbstractC19222c abstractC19222c = this.f16320r;
        if (abstractC19222c != null) {
            return abstractC19222c;
        }
        l.l("clock");
        throw null;
    }

    /* renamed from: va */
    public final C18898f m34341va() {
        return (C18898f) this.f16306d.getValue();
    }

    /* renamed from: wa */
    public final AbstractC11682s m34340wa() {
        AbstractC11682s abstractC11682s = this.f16313k;
        if (abstractC11682s != null) {
            return abstractC11682s;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p619d.p643d.p644a.AbstractC11684u
    /* renamed from: x2 */
    public void mo24260x2(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        C20940n c20940n = C20940n.f58889a;
        c20940n.m10483e(this, C20940n.m10485c(c20940n, this, contact, SourceType.Contacts, false, true, null, null, 96));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: xa */
    public final void m34339xa(float f) {
        float interpolation = this.f16323u.getInterpolation(f);
        float f2 = 1 - interpolation;
        if (this.f16302A) {
            boolean z = interpolation > 0.95f;
            View view = m34344sa().f51233h;
            l.d(view, "binding.statusBarDummyView");
            C19286f.m13683U(view, z);
            if (((Boolean) this.f16328z.getValue()).booleanValue() && !((Boolean) this.f16304b.getValue()).booleanValue()) {
                Window window = getWindow();
                l.d(window, "window");
                C17422k.m16073j(window, z);
            }
        }
        i iVar = this.f16324v;
        i iVar2 = this.f16325w;
        m34343ta().f51242f.setGuidelineBegin(C19291g.m13645A(this, (int) ((f2 / (iVar.g().intValue() - iVar.h().intValue())) * (((s1.d0.g) iVar2).b - ((s1.d0.g) iVar2).a))));
        AppCompatImageView appCompatImageView = m34343ta().f51243g;
        appCompatImageView.setAlpha(f2);
        ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
        layoutParams.width = (int) (((Number) this.f16326x.getValue()).intValue() * f2);
        layoutParams.height = (int) (((Number) this.f16326x.getValue()).intValue() * f2);
        appCompatImageView.setLayoutParams(layoutParams);
        AppCompatImageView appCompatImageView2 = m34343ta().f51250n;
        appCompatImageView2.setAlpha(interpolation);
        C19286f.m13683U(appCompatImageView2, interpolation > ((float) 0));
    }
}
