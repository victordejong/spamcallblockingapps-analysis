package p193e.p194a.p1011l;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.premium.PremiumAlertType;
import com.truecaller.premium.PremiumAlertView;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.PremiumType;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import com.truecaller.premium.p173ui.subscription.offerpicker.SubscriptionOfferGroup;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1022m2.C16958a;
import p193e.p194a.p1011l.p1022m2.C16962d;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.AbstractC17018f;
import p193e.p194a.p1011l.p1028q2.AbstractC17215a;
import p193e.p194a.p1011l.p1028q2.AbstractC17216b;
import p193e.p194a.p1011l.p1028q2.AbstractC17217c;
import p193e.p194a.p1011l.p1033v2.p1035g.C17264a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17282d;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.AbstractC13289n1;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n:\u0004Í\u0001½\u0001B\b¢\u0006\u0005\bÌ\u0001\u00101J-\u0010\u0013\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u00020\u00122\b\b\u0001\u0010\u001e\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J-\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b,\u0010-J!\u0010.\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0012H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104J\u0011\u00106\u001a\u0004\u0018\u000105H\u0016¢\u0006\u0004\b6\u00107J\u0011\u00108\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0012H\u0016¢\u0006\u0004\b:\u00101J\u001f\u0010?\u001a\u00020\u00122\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0012H\u0016¢\u0006\u0004\bA\u00101J\u0017\u0010C\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u000eH\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u0012H\u0016¢\u0006\u0004\bE\u00101J\u0017\u0010G\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u001bH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0012H\u0016¢\u0006\u0004\bI\u00101J\u0017\u0010K\u001a\u00020\u00122\u0006\u0010J\u001a\u00020\u001bH\u0016¢\u0006\u0004\bK\u0010HJ'\u0010P\u001a\u00020\u00122\u0006\u0010M\u001a\u00020L2\u0006\u0010N\u001a\u00020\u00102\u0006\u0010O\u001a\u00020\u001bH\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u0012H\u0016¢\u0006\u0004\bR\u00101J\u000f\u0010S\u001a\u00020\u0012H\u0016¢\u0006\u0004\bS\u00101J\u000f\u0010T\u001a\u00020\u0012H\u0016¢\u0006\u0004\bT\u00101J\u0017\u0010W\u001a\u00020\u00122\u0006\u0010V\u001a\u00020UH\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\u0012H\u0016¢\u0006\u0004\bY\u00101J\u0019\u0010[\u001a\u00020\u00122\b\u0010Z\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b[\u0010DJ\u000f\u0010\\\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\\\u00101J\u000f\u0010]\u001a\u00020\u0012H\u0016¢\u0006\u0004\b]\u00101J\u000f\u0010^\u001a\u00020\u0012H\u0016¢\u0006\u0004\b^\u00101J\u0017\u0010`\u001a\u00020\u00122\u0006\u0010_\u001a\u00020\u0010H\u0016¢\u0006\u0004\b`\u0010 J\u000f\u0010a\u001a\u00020\u0012H\u0016¢\u0006\u0004\ba\u00101J'\u0010e\u001a\u00020\u00122\u0006\u0010b\u001a\u00020U2\u0006\u0010c\u001a\u00020\u00102\u0006\u0010d\u001a\u00020\u001bH\u0016¢\u0006\u0004\be\u0010fJ\u000f\u0010g\u001a\u00020\u0012H\u0016¢\u0006\u0004\bg\u00101J\u0017\u0010i\u001a\u00020\u00122\u0006\u0010h\u001a\u00020\u000eH\u0016¢\u0006\u0004\bi\u0010DJ\u0017\u0010j\u001a\u00020\u00122\u0006\u0010b\u001a\u00020UH\u0016¢\u0006\u0004\bj\u0010XJ\u000f\u0010l\u001a\u00020kH\u0016¢\u0006\u0004\bl\u0010mJ\u000f\u0010n\u001a\u00020\u0012H\u0016¢\u0006\u0004\bn\u00101J\u000f\u0010p\u001a\u00020oH\u0016¢\u0006\u0004\bp\u0010qJ\u0017\u0010s\u001a\u00020\u00122\u0006\u0010r\u001a\u00020UH\u0016¢\u0006\u0004\bs\u0010XJ\u000f\u0010t\u001a\u00020\u0012H\u0016¢\u0006\u0004\bt\u00101J\u000f\u0010u\u001a\u00020\u0012H\u0016¢\u0006\u0004\bu\u00101J\u0017\u0010w\u001a\u00020\u00122\u0006\u0010v\u001a\u00020\u001bH\u0016¢\u0006\u0004\bw\u0010HJ\u0017\u0010z\u001a\u00020\u00122\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\bz\u0010{J\u0011\u0010}\u001a\u0004\u0018\u00010|H\u0016¢\u0006\u0004\b}\u0010~J8\u0010\u0084\u0001\u001a\u00020\u00122\u0006\u0010\u007f\u001a\u00020\u000e2\t\b\u0001\u0010\u0080\u0001\u001a\u00020\u00102\b\u0010\u0082\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0015H\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0011\u0010\u0086\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0086\u0001\u00101J\u0011\u0010\u0087\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0087\u0001\u00101J6\u0010\u0088\u0001\u001a\u00020\u00122\u0006\u0010\u007f\u001a\u00020\u000e2\u0007\u0010\u0080\u0001\u001a\u00020\u00102\b\u0010\u0082\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0083\u0001\u001a\u00020\u0015H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0085\u0001J\u0011\u0010\u0089\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0005\b\u0089\u0001\u00101R-\u0010\u0090\u0001\u001a\r \u008b\u0001*\u0005\u0018\u00010\u008a\u00010\u008a\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R!\u0010\u0095\u0001\u001a\u00020\u00108\u0016@\u0016X\u0096D¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R+\u0010\u0099\u0001\u001a\u000b \u008b\u0001*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010\u008d\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001b\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bu\u0010\u009b\u0001R+\u0010\u009f\u0001\u001a\u000b \u008b\u0001*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009d\u0001\u0010\u008d\u0001\u001a\u0006\b\u009e\u0001\u0010\u0098\u0001R+\u0010¢\u0001\u001a\u000b \u008b\u0001*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b \u0001\u0010\u008d\u0001\u001a\u0006\b¡\u0001\u0010\u0098\u0001R\u001b\u0010¥\u0001\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R-\u0010ª\u0001\u001a\r \u008b\u0001*\u0005\u0018\u00010¦\u00010¦\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b§\u0001\u0010\u008d\u0001\u001a\u0006\b¨\u0001\u0010©\u0001R)\u0010±\u0001\u001a\u00030«\u00018��@��X\u0081.¢\u0006\u0017\n\u0005\bG\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001\"\u0006\b¯\u0001\u0010°\u0001R\u0019\u0010´\u0001\u001a\u00020k8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R+\u0010¸\u0001\u001a\u000b \u008b\u0001*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bµ\u0001\u0010\u008d\u0001\u001a\u0006\b¶\u0001\u0010·\u0001R\u0019\u0010»\u0001\u001a\u00020o8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R*\u0010Ã\u0001\u001a\u00030¼\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b½\u0001\u0010¾\u0001\u001a\u0006\b¿\u0001\u0010À\u0001\"\u0006\bÁ\u0001\u0010Â\u0001R*\u0010Ë\u0001\u001a\u00030Ä\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÅ\u0001\u0010Æ\u0001\u001a\u0006\bÇ\u0001\u0010È\u0001\"\u0006\bÉ\u0001\u0010Ê\u0001¨\u0006Î\u0001"}, d2 = {"Le/a/l/b;", "Landroidx/fragment/app/Fragment;", "Le/a/l/z1;", "Le/a/l/x1;", "Le/a/l/y;", "Le/a/l/l;", "Le/a/l/z;", "Le/a/l/q2/a;", "Le/a/l/q2/c;", "Le/a/l/q2/b;", "Le/a/e/n1;", "Landroid/widget/TextView;", "disclaimerView", "", "", "disclaimerList", "", "selectedPos", "Ls1/s;", "VA", "(Landroid/widget/TextView;Ljava/util/List;I)V", "Le/a/l/v2/i/a/b;", "subscriptionButton", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", ViewAction.VIEW, "WA", "(Le/a/l/v2/i/a/b;Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;)V", "", "UA", "()Z", "stringRes", "a", "(I)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "Lcom/truecaller/premium/PremiumLaunchContext;", "k7", "()Lcom/truecaller/premium/PremiumLaunchContext;", "Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;", "rw", "()Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;", "ox", "()Ljava/lang/String;", "nm", "Le/a/l/b0;", "alert", "Lcom/truecaller/premium/PremiumAlertType;", "alertType", "q8", "(Le/a/l/b0;Lcom/truecaller/premium/PremiumAlertType;)V", "Ci", "navigationUrl", "ay", "(Ljava/lang/String;)V", "onDestroyView", "progress", "f", "(Z)V", "finish", AnalyticsConstants.SHOW, "E7", "Le/a/l/v2/i/a/d;", "subscriptionButtonGroup", "subscriptionButtonsLayout", "isThreeButtonLayoutEnabled", "nn", "(Le/a/l/v2/i/a/d;IZ)V", "wy", "Ww", "Af", "Lcom/truecaller/premium/data/PremiumType;", "selectedType", "kA", "(Lcom/truecaller/premium/data/PremiumType;)V", "gj", AnalyticsConstants.EMAIL, "Kd", "dl", "yl", "ix", "messageRes", "rl", "qo", "type", "position", "animated", "qp", "(Lcom/truecaller/premium/data/PremiumType;IZ)V", "lq", "skipNote", "i7", "rp", "Le/a/l/w1;", "tt", "()Le/a/l/w1;", "Ao", "Le/a/l/b$e;", "Oh", "()Le/a/l/b$e;", "premiumType", "R2", "y0", "j", "tabSwitched", "bx", "Landroid/content/Intent;", "intent", "Cc", "(Landroid/content/Intent;)V", "Le/a/b0/a/n;", "LA", "()Le/a/b0/a/n;", "promptText", "iconRes", "Le/a/l/n2/f;", "subscription", "button", "Qy", "(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V", "ge", "Xr", "S7", "wv", "Lcom/truecaller/premium/PremiumAlertView;", "kotlin.jvm.PlatformType", "l", "Ls1/g;", "QA", "()Lcom/truecaller/premium/PremiumAlertView;", "alertView", "r", "I", "Wy", "()I", "searchBarVisibility", "m", "RA", "()Landroid/view/View;", "buttonsShadow", "Le/a/l/d1;", "Le/a/l/d1;", "featuresFragment", "o", "getOuterContainer", "outerContainer", "n", "getContent", "content", "k", "Landroid/view/ViewGroup;", "subscriptionButtonsView", "Landroid/widget/ProgressBar;", "p", "getProgressBar", "()Landroid/widget/ProgressBar;", "progressBar", "Le/a/l/o2/f;", "Le/a/l/o2/f;", "getConsumablePurchasePrompter$truecaller_googlePlayRelease", "()Le/a/l/o2/f;", "setConsumablePurchasePrompter$truecaller_googlePlayRelease", "(Le/a/l/o2/f;)V", "consumablePurchasePrompter", "h", "Le/a/l/w1;", "component", "q", "TA", "()Landroid/widget/TextView;", "skipNoteView", "i", "Le/a/l/b$e;", "premiumFeaturesStyle", "Le/a/l/y1;", "e", "Le/a/l/y1;", "SA", "()Le/a/l/y1;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/l/y1;)V", "presenter", "Le/a/l/m2/d;", "g", "Le/a/l/m2/d;", "getBasicSubscriptionPurchasePrompter$truecaller_googlePlayRelease", "()Le/a/l/m2/d;", "setBasicSubscriptionPurchasePrompter$truecaller_googlePlayRelease", "(Le/a/l/m2/d;)V", "basicSubscriptionPurchasePrompter", "<init>", "d", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/b.class */
public final class C16614b extends AbstractC17296w implements AbstractC17307z1, AbstractC17301x1, AbstractC17302y, AbstractC16949l, AbstractC17305z, AbstractC17215a, AbstractC17217c, AbstractC17216b, AbstractC13289n1 {

    /* renamed from: s */
    public static final /* synthetic */ int f46672s = 0;
    @Inject

    /* renamed from: e */
    public AbstractC17304y1 f46673e;
    @Inject

    /* renamed from: f */
    public AbstractC17018f f46674f;
    @Inject

    /* renamed from: g */
    public C16962d f46675g;

    /* renamed from: h */
    public AbstractC17298w1 f46676h;

    /* renamed from: i */
    public C16618e f46677i;

    /* renamed from: j */
    public C16848d1 f46678j;

    /* renamed from: k */
    public ViewGroup f46679k;

    /* renamed from: l */
    public final g f46680l = C19286f.m13659t(this, C2752R.C2754id.alertView);

    /* renamed from: m */
    public final g f46681m = C19286f.m13659t(this, C2752R.C2754id.buttonsShadow);

    /* renamed from: n */
    public final g f46682n = C19286f.m13659t(this, 2131362938);

    /* renamed from: o */
    public final g f46683o = C19286f.m13659t(this, C2752R.C2754id.outerContainer);

    /* renamed from: p */
    public final g f46684p = C19286f.m13659t(this, 2131365276);

    /* renamed from: q */
    public final g f46685q = C19286f.m13659t(this, C2752R.C2754id.skipNoteView);

    /* renamed from: r */
    public final int f46686r = 8;

    /* renamed from: e.a.l.b$b */
    /* loaded from: classes3-dex2jar.jar:e/a/l/b$b.class */
    public static final class DialogInterface$OnClickListenerC16615b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46687a;

        /* renamed from: b */
        public final /* synthetic */ Object f46688b;

        public DialogInterface$OnClickListenerC16615b(int i, Object obj) {
            this.f46687a = i;
            this.f46688b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f46687a;
            if (i2 == 0) {
                ((C16614b) this.f46688b).m17178SA().mo16865Ia();
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C16614b) this.f46688b).m17178SA().mo16841f5();
            }
        }
    }

    /* renamed from: e.a.l.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/l/b$c.class */
    public static final class C16616c extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f46689b;

        /* renamed from: c */
        public final /* synthetic */ Object f46690c;

        /* renamed from: d */
        public final /* synthetic */ Object f46691d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16616c(int i, Object obj, Object obj2) {
            super(0);
            this.f46689b = i;
            this.f46690c = obj;
            this.f46691d = obj2;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f46689b;
            if (i == 0) {
                ((C16614b) this.f46690c).m17178SA().mo16868Ce((PremiumAlertType) this.f46691d);
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                ((C16614b) this.f46690c).m17178SA().mo16867Gb((PremiumAlertType) this.f46691d);
                return sVar;
            }
        }
    }

    /* renamed from: e.a.l.b$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$d.class */
    public static final class C16617d {
        /* renamed from: a */
        public static final C16614b m17172a(PremiumLaunchContext premiumLaunchContext, SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, String str, C16618e c16618e) {
            l.e(premiumLaunchContext, "launchContext");
            l.e(c16618e, "premiumFeaturesStyle");
            C16614b c16614b = new C16614b();
            Bundle bundle = new Bundle();
            bundle.putSerializable("launchContext", premiumLaunchContext);
            bundle.putParcelable("analyticsMetadata", subscriptionPromoEventMetaData);
            bundle.putString("selectedPage", str);
            bundle.putSerializable("premiumFeaturesStyle", c16618e);
            c16614b.setArguments(bundle);
            return c16614b;
        }
    }

    /* renamed from: e.a.l.b$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$e.class */
    public static final class C16618e implements Serializable {

        /* renamed from: a */
        public final Integer f46692a;

        /* renamed from: b */
        public final int f46693b;

        /* renamed from: c */
        public final boolean f46694c;

        public C16618e(Integer num, int i, boolean z) {
            this.f46692a = null;
            this.f46693b = i;
            this.f46694c = z;
        }

        public C16618e(Integer num, int i, boolean z, int i2) {
            i = (i2 & 2) != 0 ? 0 : i;
            z = (i2 & 4) != 0 ? false : z;
            this.f46692a = num;
            this.f46693b = i;
            this.f46694c = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C16618e)) {
                    return false;
                }
                C16618e c16618e = (C16618e) obj;
                return l.a(this.f46692a, c16618e.f46692a) && this.f46693b == c16618e.f46693b && this.f46694c == c16618e.f46694c;
            }
            return true;
        }

        public int hashCode() {
            Integer num = this.f46692a;
            int hashCode = num != null ? num.hashCode() : 0;
            int i = this.f46693b;
            boolean z = this.f46694c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PremiumFeaturesStyle(featuresNavigationIcon=");
            m8728C.append(this.f46692a);
            m8728C.append(", screenOffset=");
            m8728C.append(this.f46693b);
            m8728C.append(", shouldFinishOnBack=");
            return C22128a.m8590o(m8728C, this.f46694c, ")");
        }
    }

    /* renamed from: e.a.l.b$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$f.class */
    public static final class C16619f extends m implements s1.z.b.l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ SubscriptionButtonView f46695b;

        /* renamed from: c */
        public final /* synthetic */ C16614b f46696c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16619f(SubscriptionButtonView subscriptionButtonView, C16614b c16614b, C17280b c17280b) {
            super(1);
            this.f46695b = subscriptionButtonView;
            this.f46696c = c16614b;
        }

        /* renamed from: d */
        public Object m17171d(Object obj) {
            l.e((View) obj, "it");
            AbstractC17304y1 m17178SA = this.f46696c.m17178SA();
            Object tag = this.f46695b.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.premium.ui.subscription.buttons.SubscriptionButton");
            m17178SA.mo16860L3((C17280b) tag);
            return s.a;
        }
    }

    /* renamed from: e.a.l.b$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$g.class */
    public static final class C16620g extends m implements s1.z.b.l<C17290a, s> {

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f46697b;

        /* renamed from: c */
        public final /* synthetic */ C16614b f46698c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16620g(ViewGroup viewGroup, C16614b c16614b, boolean z, C17282d c17282d) {
            super(1);
            this.f46697b = viewGroup;
            this.f46698c = c16614b;
        }

        /* renamed from: d */
        public Object m17170d(Object obj) {
            C17290a c17290a = (C17290a) obj;
            l.e(c17290a, "subscriptionOffer");
            this.f46698c.m17178SA().mo16866H9(c17290a);
            return s.a;
        }
    }

    /* renamed from: e.a.l.b$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$h.class */
    public static final class C16621h extends m implements s1.z.b.l<Integer, s> {

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f46699b;

        /* renamed from: c */
        public final /* synthetic */ C16614b f46700c;

        /* renamed from: d */
        public final /* synthetic */ C17282d f46701d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16621h(ViewGroup viewGroup, C16614b c16614b, boolean z, C17282d c17282d) {
            super(1);
            this.f46699b = viewGroup;
            this.f46700c = c16614b;
            this.f46701d = c17282d;
        }

        /* renamed from: d */
        public Object m17169d(Object obj) {
            int intValue = ((Number) obj).intValue();
            C16614b c16614b = this.f46700c;
            View findViewById = this.f46699b.findViewById(2131363823);
            l.d(findViewById, "container.findViewById(R.id.freeTrialLabel)");
            TextView textView = (TextView) findViewById;
            List<String> list = this.f46701d.f48494e;
            int i = C16614b.f46672s;
            c16614b.m17175VA(textView, list, intValue);
            return s.a;
        }
    }

    /* renamed from: e.a.l.b$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$i.class */
    public static final class View$OnClickListenerC16622i implements View.OnClickListener {
        public View$OnClickListenerC16622i(boolean z) {
            C16614b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16614b.this.m17178SA().mo16267n9();
        }
    }

    /* renamed from: e.a.l.b$j */
    /* loaded from: classes12-dex2jar.jar:e/a/l/b$j.class */
    public static final class View$OnClickListenerC16623j implements View.OnClickListener {
        public View$OnClickListenerC16623j() {
            C16614b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16614b.this.m17178SA().mo16266qh();
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Af */
    public void mo16351Af() {
        g$a g_a = new g$a(requireContext());
        g_a.m3664e(C2752R.string.BillingAskMovePremium);
        g_a.f70854a.f163m = false;
        g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC16615b(0, this));
        g_a.m3662g(2131887903, new DialogInterface$OnClickListenerC16615b(1, this));
        g_a.m3668a().show();
    }

    @Override // p193e.p194a.p1011l.AbstractC17302y
    /* renamed from: Ao */
    public void mo16269Ao() {
        View m17179RA = m17179RA();
        if (m17179RA != null) {
            ViewGroup viewGroup = this.f46679k;
            m17179RA.setVisibility(viewGroup != null ? viewGroup.getVisibility() : 8);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: Cc */
    public void mo10112Cc(Intent intent) {
        l.e(intent, "intent");
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Ci */
    public void mo16350Ci() {
        if (m17176UA()) {
            return;
        }
        PremiumAlertView m17180QA = m17180QA();
        l.d(m17180QA, "alertView");
        C19286f.m13689O(m17180QA);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: E7 */
    public void mo16349E7(boolean z) {
        ViewGroup viewGroup = this.f46679k;
        if (viewGroup != null) {
            Button button = (Button) viewGroup.findViewById(C2752R.C2754id.otherSubscriptions);
            C19286f.m13683U(button, z);
            if (!z) {
                return;
            }
            button.setOnClickListener(new View$OnClickListenerC16622i(z));
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Kd */
    public void mo16348Kd(String str) {
        n3.b.a.g c16938i1 = new C16938i1(requireContext());
        c16938i1.f(-1, c16938i1.getContext().getString(C2752R.string.PremiumSendLogsPositiveButton), new DialogInterface$OnClickListenerC16936i(c16938i1, new a(0, this)));
        c16938i1.f(-2, c16938i1.getContext().getString(C2752R.string.PremiumSendLogsNegativeButton), new DialogInterface$OnClickListenerC16932h(c16938i1, new a(1, this)));
        AppCompatEditText appCompatEditText = c16938i1.f47536d;
        if (appCompatEditText != null) {
            appCompatEditText.setText(str);
        }
        c16938i1.show();
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8322o
    /* renamed from: LA */
    public C8321n mo10111LA() {
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        return new C8321n(C26467a.C26471d.m1787a(requireContext, C2752R.color.translucent_20_all_themes), false, true);
    }

    @Override // p193e.p194a.p1011l.AbstractC16949l
    /* renamed from: Oh */
    public C16618e mo16736Oh() {
        C16618e c16618e = this.f46677i;
        if (c16618e != null) {
            return c16618e;
        }
        l.l("premiumFeaturesStyle");
        throw null;
    }

    /* renamed from: QA */
    public final PremiumAlertView m17180QA() {
        return (PremiumAlertView) this.f46680l.getValue();
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Qy */
    public void mo16626Qy(String str, int i, C16993f c16993f, C17280b c17280b) {
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "button");
        AbstractC17018f abstractC17018f = this.f46674f;
        if (abstractC17018f == null) {
            l.l("consumablePurchasePrompter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.d(childFragmentManager, "childFragmentManager");
        abstractC17018f.mo16628a(childFragmentManager, str, i, c16993f, c17280b);
    }

    @Override // p193e.p194a.p1011l.AbstractC17305z
    /* renamed from: R2 */
    public void mo16265R2(PremiumType premiumType) {
        l.e(premiumType, "premiumType");
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            abstractC17304y1.mo16268R2(premiumType);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: RA */
    public final View m17179RA() {
        return (View) this.f46681m.getValue();
    }

    @Override // p193e.p194a.p1011l.p1022m2.AbstractC16963e
    /* renamed from: S7 */
    public void mo16727S7(String str, int i, C16993f c16993f, C17280b c17280b) {
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "button");
        C16962d c16962d = this.f46675g;
        if (c16962d == null) {
            l.l("basicSubscriptionPurchasePrompter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.d(childFragmentManager, "childFragmentManager");
        l.e(childFragmentManager, "fragmentManager");
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "button");
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "subscriptionButton");
        C16958a c16958a = new C16958a();
        Bundle bundle = new Bundle();
        bundle.putString("promptText", str);
        bundle.putInt("iconRes", i);
        bundle.putSerializable("subscription", c16993f);
        bundle.putSerializable("subscriptionButton", c17280b);
        c16958a.setArguments(bundle);
        c16958a.f47572a = c16962d.f47584b;
        c16962d.f47583a = c16958a;
        c16958a.show(childFragmentManager, C16958a.class.getSimpleName());
    }

    /* renamed from: SA */
    public final AbstractC17304y1 m17178SA() {
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            return abstractC17304y1;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: TA */
    public final TextView m17177TA() {
        return (TextView) this.f46685q.getValue();
    }

    /* renamed from: UA */
    public final boolean m17176UA() {
        return !isAdded() || getView() == null;
    }

    /* renamed from: VA */
    public final void m17175VA(TextView textView, List<String> list, int i) {
        if (list.size() <= i) {
            C19286f.m13689O(textView);
            return;
        }
        C19286f.m13683U(textView, list.get(i).length() > 0);
        textView.setText(list.get(i));
    }

    /* renamed from: WA */
    public final void m17174WA(C17280b c17280b, SubscriptionButtonView subscriptionButtonView) {
        subscriptionButtonView.setButton(c17280b);
        subscriptionButtonView.setTag(c17280b);
        C19286f.m13684T(subscriptionButtonView);
        C18334g0.m15196w0(subscriptionButtonView, 300L, new C16619f(subscriptionButtonView, this, c17280b));
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Ww */
    public void mo16347Ww() {
        m17173a(C2752R.string.BillingDialogNotAvailable);
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        return this.f46686r;
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Xr */
    public void mo16625Xr() {
        AbstractC17018f abstractC17018f = this.f46674f;
        if (abstractC17018f != null) {
            abstractC17018f.dismiss();
        } else {
            l.l("consumablePurchasePrompter");
            throw null;
        }
    }

    /* renamed from: a */
    public final void m17173a(int i) {
        if (isAdded()) {
            Toast.makeText(requireContext(), i, 1).show();
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: ay */
    public void mo16346ay(String str) {
        l.e(str, "navigationUrl");
        C8613t.m28197o(this, C8613t.m28205g(str));
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: bx */
    public void mo10106bx(boolean z) {
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: dl */
    public void mo16345dl() {
        m17173a(C2752R.string.PremiumLogsSent);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: f */
    public void mo16344f(boolean z) {
        if (m17176UA()) {
            return;
        }
        PremiumAlertView m17180QA = m17180QA();
        l.d(m17180QA, "alertView");
        C19286f.m13689O(m17180QA);
        View view = (View) this.f46682n.getValue();
        l.d(view, "content");
        view.setVisibility(z ? 4 : 0);
        ProgressBar progressBar = (ProgressBar) this.f46684p.getValue();
        l.d(progressBar, "progressBar");
        C19286f.m13683U(progressBar, z);
        ((ProgressBar) this.f46684p.getValue()).bringToFront();
        if (!z) {
            return;
        }
        ViewGroup viewGroup = this.f46679k;
        if (viewGroup != null) {
            C19286f.m13689O(viewGroup);
        }
        View m17179RA = m17179RA();
        l.d(m17179RA, "buttonsShadow");
        C19286f.m13689O(m17179RA);
        TextView m17177TA = m17177TA();
        l.d(m17177TA, "skipNoteView");
        C19286f.m13689O(m17177TA);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    public void finish() {
        if (isAdded()) {
            requireActivity().finish();
        }
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: ge */
    public void mo16624ge() {
        C17264a c17264a = new C17264a();
        FragmentManager parentFragmentManager = getParentFragmentManager();
        l.d(parentFragmentManager, "parentFragmentManager");
        c17264a.show(parentFragmentManager, null);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: gj */
    public void mo16343gj() {
        m17173a(C2752R.string.PremiumSubscriptionMoved);
    }

    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: i7 */
    public void mo16263i7(String str) {
        l.e(str, "skipNote");
        TextView m17177TA = m17177TA();
        l.d(m17177TA, "skipNoteView");
        C19286f.m13684T(m17177TA);
        TextView m17177TA2 = m17177TA();
        l.d(m17177TA2, "skipNoteView");
        m17177TA2.setText(str);
        m17177TA().setOnClickListener(new View$OnClickListenerC16623j());
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: ix */
    public void mo16342ix() {
        m17173a(C2752R.string.PremiumNoConnection);
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: j */
    public void mo10102j() {
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            abstractC17304y1.mo16840j();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1028q2.AbstractC17215a
    /* renamed from: k7 */
    public PremiumLaunchContext mo16363k7() {
        Bundle arguments = getArguments();
        PremiumLaunchContext serializable = arguments != null ? arguments.getSerializable("launchContext") : null;
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.premium.PremiumLaunchContext");
        return serializable;
    }

    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: kA */
    public void mo16262kA(PremiumType premiumType) {
        l.e(premiumType, "selectedType");
        if (m17176UA()) {
            return;
        }
        l.e(premiumType, "selectedType");
        Fragment c16848d1 = new C16848d1();
        Bundle bundle = new Bundle();
        bundle.putSerializable("type", premiumType);
        c16848d1.setArguments(bundle);
        C26907a c26907a = new C26907a(getChildFragmentManager());
        c26907a.m1120m(2131362938, c16848d1, null);
        c26907a.mo1124i();
        this.f46678j = c16848d1;
    }

    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: lq */
    public void mo16261lq() {
        TextView m17177TA = m17177TA();
        l.d(m17177TA, "skipNoteView");
        C19286f.m13689O(m17177TA);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: nm */
    public void mo16341nm() {
        startActivity(SingleActivity.m34591ua(getContext(), SingleActivity.FragmentSingle.FEEDBACK_FORM));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: nn */
    public void mo16260nn(C17282d c17282d, int i, boolean z) {
        View view;
        l.e(c17282d, "subscriptionButtonGroup");
        if (this.f46679k == null && (view = getView()) != null) {
            ViewStub viewStub = (ViewStub) view.findViewById(C2752R.C2754id.subscriptionButtonsStub);
            viewStub.setLayoutResource(i);
            View inflate = viewStub.inflate();
            Objects.requireNonNull(inflate, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) inflate;
            this.f46679k = viewGroup;
            ((SubscriptionButtonView) viewGroup.findViewById(2131363718)).setShineLifecycleOwner(this);
            ((SubscriptionButtonView) viewGroup.findViewById(2131365602)).setShineLifecycleOwner(this);
        }
        ViewGroup viewGroup2 = this.f46679k;
        if (viewGroup2 != null) {
            boolean z2 = false;
            if (z) {
                SubscriptionOfferGroup subscriptionOfferGroup = (SubscriptionOfferGroup) viewGroup2.findViewById(C2752R.C2754id.offerButtons);
                if (subscriptionOfferGroup != null) {
                    subscriptionOfferGroup.m34795e(c17282d.f48491b, 2);
                    subscriptionOfferGroup.setOfferActionButtonClick(new C16620g(viewGroup2, this, z, c17282d));
                    subscriptionOfferGroup.setOnOfferSelectedListener(new C16621h(viewGroup2, this, z, c17282d));
                }
                View findViewById = viewGroup2.findViewById(2131363823);
                l.d(findViewById, "container.findViewById(R.id.freeTrialLabel)");
                m17175VA((TextView) findViewById, c17282d.f48494e, 2);
            } else {
                SubscriptionButtonView subscriptionButtonView = (SubscriptionButtonView) viewGroup2.findViewById(2131363718);
                SubscriptionButtonView subscriptionButtonView2 = (SubscriptionButtonView) viewGroup2.findViewById(2131365602);
                List<C17280b> list = c17282d.f48490a;
                int size = list.size();
                if (size == 1) {
                    l.d(subscriptionButtonView, "first");
                    m17174WA(list.get(0), subscriptionButtonView);
                    l.d(subscriptionButtonView2, "second");
                    C19286f.m13689O(subscriptionButtonView2);
                } else if (size > 1) {
                    l.d(subscriptionButtonView, "first");
                    m17174WA(list.get(0), subscriptionButtonView);
                    l.d(subscriptionButtonView2, "second");
                    m17174WA(list.get(1), subscriptionButtonView2);
                }
                TextView textView = (TextView) viewGroup2.findViewById(2131363823);
                String str = c17282d.f48493d;
                C19286f.m13683U(textView, !(str == null || str.length() == 0));
                textView.setText(c17282d.f48493d);
            }
            if ((!c17282d.f48490a.isEmpty()) || (!c17282d.f48491b.isEmpty())) {
                z2 = true;
            }
            C19286f.m13683U(viewGroup2, z2);
            View m17179RA = m17179RA();
            l.d(m17179RA, "buttonsShadow");
            m17179RA.setVisibility(viewGroup2.getVisibility());
            SubscriptionOfferGroup subscriptionOfferGroup2 = (SubscriptionOfferGroup) viewGroup2.findViewById(C2752R.C2754id.offerButtons);
            if (subscriptionOfferGroup2 != null) {
                C19286f.m13683U(subscriptionOfferGroup2, z);
            }
            ConstraintLayout constraintLayout = (ConstraintLayout) viewGroup2.findViewById(C2752R.C2754id.normalButtons);
            if (constraintLayout != null) {
                C19286f.m13683U(constraintLayout, !z);
            }
            View findViewById2 = viewGroup2.findViewById(C2752R.C2754id.prorationNote);
            l.d(findViewById2, "container.findViewById<View>(R.id.prorationNote)");
            C19286f.m13683U(findViewById2, c17282d.f48492c);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17296w
    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        Object m3812z0 = C25225a.m3812z0(this, AbstractC17298w1.class);
        l.d(m3812z0, "EntryPointAccessors.from…enEntryPoint::class.java)");
        this.f46676h = (AbstractC17298w1) m3812z0;
        Bundle arguments = getArguments();
        C16618e serializable = arguments != null ? arguments.getSerializable("premiumFeaturesStyle") : null;
        Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.truecaller.premium.PremiumFragment.PremiumFeaturesStyle");
        this.f46677i = serializable;
        AbstractC17018f abstractC17018f = this.f46674f;
        if (abstractC17018f == null) {
            l.l("consumablePurchasePrompter");
            throw null;
        }
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC17018f.mo16627b(abstractC17304y1);
        C16962d c16962d = this.f46675g;
        if (c16962d == null) {
            l.l("basicSubscriptionPurchasePrompter");
            throw null;
        }
        AbstractC17304y1 abstractC17304y12 = this.f46673e;
        if (abstractC17304y12 != null) {
            c16962d.f47584b = abstractC17304y12;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium, viewGroup, false);
    }

    public void onDestroyView() {
        C16614b.super.onDestroyView();
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            abstractC17304y1.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C16614b.super.onResume();
        if (isAdded()) {
            AbstractC17304y1 abstractC17304y1 = this.f46673e;
            if (abstractC17304y1 != null) {
                abstractC17304y1.onResume();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        View view2 = (View) this.f46683o.getValue();
        l.d(view2, "outerContainer");
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        C16618e c16618e = this.f46677i;
        if (c16618e == null) {
            l.l("premiumFeaturesStyle");
            throw null;
        }
        layoutParams2.bottomMargin = c16618e.f46693b;
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            abstractC17304y1.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1028q2.AbstractC17216b
    /* renamed from: ox */
    public String mo16362ox() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("selectedPage") : null;
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: q8 */
    public void mo16340q8(C16624b0 c16624b0, PremiumAlertType premiumAlertType) {
        l.e(c16624b0, "alert");
        l.e(premiumAlertType, "alertType");
        if (m17176UA()) {
            return;
        }
        PremiumAlertView m17180QA = m17180QA();
        l.d(m17180QA, "alertView");
        C19286f.m13684T(m17180QA);
        m17180QA().setAlert(c16624b0);
        m17180QA().setPositiveListener(new C16616c(0, this, premiumAlertType));
        m17180QA().setNegativeListener(new C16616c(1, this, premiumAlertType));
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: qo */
    public void mo16339qo() {
        m17173a(C2752R.string.PremiumServerDown);
    }

    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: qp */
    public void mo16259qp(PremiumType premiumType, int i, boolean z) {
        l.e(premiumType, "type");
        if (m17176UA()) {
            return;
        }
        C26907a c26907a = new C26907a(getChildFragmentManager());
        l.d(c26907a, "childFragmentManager.beginTransaction()");
        if (z) {
            c26907a.f75322f = 4097;
        }
        l.e(premiumType, "type");
        C17022p0 c17022p0 = new C17022p0();
        Bundle bundle = new Bundle();
        bundle.putSerializable("type", premiumType);
        bundle.putInt("initial_position", i);
        c17022p0.setArguments(bundle);
        c26907a.m1131b(2131362938, c17022p0);
        c26907a.m1128e("details");
        c26907a.mo1126g();
        View m17179RA = m17179RA();
        l.d(m17179RA, "buttonsShadow");
        C19286f.m13689O(m17179RA);
        if (z) {
            return;
        }
        getChildFragmentManager().m42946G();
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: rl */
    public void mo16338rl(int i) {
        m17173a(i);
    }

    @Override // p193e.p194a.p1011l.AbstractC17307z1
    /* renamed from: rp */
    public void mo16258rp(PremiumType premiumType) {
        int i;
        l.e(premiumType, "type");
        if (m17176UA()) {
            return;
        }
        getChildFragmentManager().m42917e0("details", -1, 1);
        C16848d1 c16848d1 = this.f46678j;
        if (c16848d1 == null) {
            return;
        }
        l.e(premiumType, "type");
        AbstractC16868e1 abstractC16868e1 = c16848d1.f47237a;
        if (abstractC16868e1 == null) {
            l.l("presenter");
            throw null;
        }
        C16877f1 c16877f1 = (C16877f1) abstractC16868e1;
        l.e(premiumType, "premiumType");
        Iterator<C17228s1> it = c16877f1.f47391d.iterator();
        int i2 = 0;
        while (true) {
            i = -1;
            if (!it.hasNext()) {
                break;
            }
            if (it.next().f48350a == premiumType) {
                i = i2;
                break;
            }
            i2++;
        }
        AbstractC16930g1 abstractC16930g1 = (AbstractC16930g1) c16877f1.f57683a;
        if (abstractC16930g1 == null) {
            return;
        }
        abstractC16930g1.mo16752xw(i);
    }

    @Override // p193e.p194a.p1011l.p1028q2.AbstractC17217c
    /* renamed from: rw */
    public SubscriptionPromoEventMetaData mo16361rw() {
        Bundle arguments = getArguments();
        return arguments != null ? (SubscriptionPromoEventMetaData) arguments.getParcelable("analyticsMetadata") : null;
    }

    @Override // p193e.p194a.p1011l.AbstractC17301x1
    /* renamed from: tt */
    public AbstractC17298w1 mo16270tt() {
        AbstractC17298w1 abstractC17298w1 = this.f46676h;
        if (abstractC17298w1 != null) {
            return abstractC17298w1;
        }
        l.l("component");
        throw null;
    }

    @Override // p193e.p194a.p1011l.p1022m2.AbstractC16963e
    /* renamed from: wv */
    public void mo16726wv() {
        C16962d c16962d = this.f46675g;
        if (c16962d == null) {
            l.l("basicSubscriptionPurchasePrompter");
            throw null;
        }
        C16958a c16958a = c16962d.f47583a;
        if (c16958a != null) {
            c16958a.dismissAllowingStateLoss();
        }
        c16962d.f47583a = null;
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: wy */
    public void mo16337wy() {
        m17173a(C2752R.string.BillingDialogNoAccount);
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: y0 */
    public void mo10101y0() {
        AbstractC17304y1 abstractC17304y1 = this.f46673e;
        if (abstractC17304y1 != null) {
            abstractC17304y1.mo16838y0();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: yl */
    public void mo16336yl() {
        m17173a(C2752R.string.PremiumLogsFailed);
    }
}
