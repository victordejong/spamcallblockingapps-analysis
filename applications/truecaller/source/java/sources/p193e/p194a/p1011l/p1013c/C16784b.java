package p193e.p194a.p1011l.p1013c;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.announce_caller_id.settings.AnnounceCallerIdSettingLaunchSource;
import com.truecaller.announce_caller_id.settings.AnnounceCallerIdSettingsActivity;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.ghost_call.GhostCallAlarmPermissionActivity;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.PremiumAlertType;
import com.truecaller.premium.PremiumAlertView;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.gift.GoldGiftDialogActivity;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import com.truecaller.premium.p173ui.subscription.offerpicker.SubscriptionOfferGroup;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.referral.ReferralManager;
import com.truecaller.whatsappcallerid.WhatsAppCallerIdPermissionDialogActivity;
import com.truecaller.whoviewedme.WhoViewedMeActivity;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.p.a.f;
import nl.dionsegijn.konfetti.KonfettiView;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25379c;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1744b0.p1745a.AbstractC25625x;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1744b0.p1745a.C25614n;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1855p.p1856a.AbstractC26892b;
import p1727n3.p1855p.p1856a.C26900g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.C16624b0;
import p193e.p194a.p1011l.C16938i1;
import p193e.p194a.p1011l.DialogInterface$OnClickListenerC16932h;
import p193e.p194a.p1011l.DialogInterface$OnClickListenerC16936i;
import p193e.p194a.p1011l.p1012a.C16591m;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16630a1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16643b2;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16648c1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16661e2;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16665f1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16676h1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16677h2;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16693j1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16697k1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16706m1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16715o1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16725q1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16753t1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16761v1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16769x1;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16782z1;
import p193e.p194a.p1011l.p1013c.p1014a.C16633b;
import p193e.p194a.p1011l.p1013c.p1014a.C16645c;
import p193e.p194a.p1011l.p1013c.p1014a.C16650c3;
import p193e.p194a.p1011l.p1013c.p1014a.C16664f0;
import p193e.p194a.p1011l.p1013c.p1014a.C16678h3;
import p193e.p194a.p1011l.p1013c.p1014a.C16692j0;
import p193e.p194a.p1011l.p1013c.p1014a.C16700l0;
import p193e.p194a.p1011l.p1013c.p1014a.C16702l2;
import p193e.p194a.p1011l.p1013c.p1014a.C16718p0;
import p193e.p194a.p1011l.p1013c.p1014a.C16755u;
import p193e.p194a.p1011l.p1013c.p1014a.C16759v;
import p193e.p194a.p1011l.p1013c.p1014a.C16762v2;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.AbstractC17018f;
import p193e.p194a.p1011l.p1028q2.AbstractC17215a;
import p193e.p194a.p1011l.p1033v2.p1035g.C17264a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17282d;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.C17290a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18899g;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1124p.p1125a.C19160g;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1349x.C21377p;
import p193e.p194a.p1349x.C21378q;
import p193e.p194a.p1349x.C21379r;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21344g;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p837h0.p838a.View$OnClickListenerC14802o;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
import t3.a.a.b;
import t3.a.a.c.d;
import t3.a.a.e.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ì\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\b¢\u0006\u0005\b\u008e\u0003\u0010\bJ\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00062\b\b\u0001\u0010\u0018\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b$\u0010%J!\u0010'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020#2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010\bJ\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\bJ\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\bJ+\u00102\u001a\u00020\u00062\f\u00100\u001a\b\u0012\u0004\u0012\u00020/0\u000b2\f\u00101\u001a\b\u0012\u0004\u0012\u00020/0\u000bH\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\bJ\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\bJ\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\bJ\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\bJ\u0017\u0010:\u001a\u00020\u00062\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\bJ!\u0010?\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010\u000e2\u0006\u0010>\u001a\u00020\fH\u0016¢\u0006\u0004\b?\u0010@J\u000f\u0010A\u001a\u00020\u0006H\u0016¢\u0006\u0004\bA\u0010\bJ\u0017\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00062\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bF\u0010EJ\u000f\u0010G\u001a\u00020\u0006H\u0016¢\u0006\u0004\bG\u0010\bJ\u000f\u0010H\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010\bJ\u000f\u0010I\u001a\u00020\u0006H\u0016¢\u0006\u0004\bI\u0010\bJ\u000f\u0010J\u001a\u00020\u0006H\u0016¢\u0006\u0004\bJ\u0010\bJ\u000f\u0010K\u001a\u00020\u0006H\u0016¢\u0006\u0004\bK\u0010\bJ)\u0010P\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u000e2\u0006\u0010M\u001a\u00020\u000e2\b\u0010O\u001a\u0004\u0018\u00010NH\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u0006H\u0016¢\u0006\u0004\bR\u0010\bJ\u0017\u0010T\u001a\u00020\u00062\u0006\u0010S\u001a\u00020\u000eH\u0016¢\u0006\u0004\bT\u0010\u001aJ\u0017\u0010V\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u000eH\u0016¢\u0006\u0004\bV\u0010\u001aJ\u000f\u0010W\u001a\u00020\u0006H\u0016¢\u0006\u0004\bW\u0010\bJ\u0017\u0010Z\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J\u001f\u0010`\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\u0006H\u0016¢\u0006\u0004\bb\u0010\bJ\u000f\u0010c\u001a\u00020\u0006H\u0016¢\u0006\u0004\bc\u0010\bJ\u000f\u0010d\u001a\u00020\u0006H\u0016¢\u0006\u0004\bd\u0010\bJ\u000f\u0010e\u001a\u00020\u0006H\u0016¢\u0006\u0004\be\u0010\bJ\u000f\u0010f\u001a\u00020\u0006H\u0016¢\u0006\u0004\bf\u0010\bJ\u000f\u0010g\u001a\u00020\u0006H\u0016¢\u0006\u0004\bg\u0010\bJ\u0019\u0010i\u001a\u00020\u00062\b\u0010h\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020\u0006H\u0016¢\u0006\u0004\bk\u0010\bJ\u000f\u0010l\u001a\u00020\u0006H\u0016¢\u0006\u0004\bl\u0010\bJ\u000f\u0010m\u001a\u00020\u0006H\u0016¢\u0006\u0004\bm\u0010\bJ\u0017\u0010o\u001a\u00020\u00062\u0006\u0010n\u001a\u00020\u000eH\u0016¢\u0006\u0004\bo\u0010\u001aJ\u000f\u0010p\u001a\u00020\u0006H\u0016¢\u0006\u0004\bp\u0010\bJ\u0017\u0010r\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\fH\u0016¢\u0006\u0004\br\u0010jJ\u000f\u0010s\u001a\u00020\u0006H\u0016¢\u0006\u0004\bs\u0010\bJ/\u0010x\u001a\u00020\u00062\u0006\u0010t\u001a\u00020\f2\u0006\u0010u\u001a\u00020\u000e2\u0006\u0010w\u001a\u00020v2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bz\u0010\bJ\u000f\u0010{\u001a\u00020\u0006H\u0016¢\u0006\u0004\b{\u0010\bJ\u000f\u0010|\u001a\u00020\u0006H\u0016¢\u0006\u0004\b|\u0010\bJ\u000f\u0010}\u001a\u00020\u0006H\u0016¢\u0006\u0004\b}\u0010\bJ\u0017\u0010\u007f\u001a\u00020\u00062\u0006\u0010~\u001a\u00020XH\u0016¢\u0006\u0004\b\u007f\u0010[J\u001b\u0010\u0081\u0001\u001a\u00020\u00062\u0007\u0010\u0080\u0001\u001a\u00020NH\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0015\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0083\u0001H\u0016¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0011\u0010\u0086\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0086\u0001\u0010\bR\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R*\u0010\u0092\u0001\u001a\u00030\u008b\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R!\u0010\u0097\u0001\u001a\u00020\u000e8\u0016@\u0016X\u0096D¢\u0006\u0010\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001R*\u0010\u009f\u0001\u001a\u00030\u0098\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0099\u0001\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R*\u0010§\u0001\u001a\u00030 \u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¡\u0001\u0010¢\u0001\u001a\u0006\b£\u0001\u0010¤\u0001\"\u0006\b¥\u0001\u0010¦\u0001R#\u0010\u00ad\u0001\u001a\u00030¨\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b©\u0001\u0010ª\u0001\u001a\u0006\b«\u0001\u0010¬\u0001R\u001c\u0010±\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001b\u0010´\u0001\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R*\u0010¼\u0001\u001a\u00030µ\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¶\u0001\u0010·\u0001\u001a\u0006\b¸\u0001\u0010¹\u0001\"\u0006\bº\u0001\u0010»\u0001R*\u0010Ä\u0001\u001a\u00030½\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¾\u0001\u0010¿\u0001\u001a\u0006\bÀ\u0001\u0010Á\u0001\"\u0006\bÂ\u0001\u0010Ã\u0001R*\u0010Ì\u0001\u001a\u00030Å\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÆ\u0001\u0010Ç\u0001\u001a\u0006\bÈ\u0001\u0010É\u0001\"\u0006\bÊ\u0001\u0010Ë\u0001R*\u0010Ô\u0001\u001a\u00030Í\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÎ\u0001\u0010Ï\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001\"\u0006\bÒ\u0001\u0010Ó\u0001R*\u0010Ü\u0001\u001a\u00030Õ\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÖ\u0001\u0010×\u0001\u001a\u0006\bØ\u0001\u0010Ù\u0001\"\u0006\bÚ\u0001\u0010Û\u0001R\"\u0010à\u0001\u001a\u000b\u0012\u0004\u0012\u00020N\u0018\u00010Ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R*\u0010è\u0001\u001a\u00030á\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bâ\u0001\u0010ã\u0001\u001a\u0006\bä\u0001\u0010å\u0001\"\u0006\bæ\u0001\u0010ç\u0001R*\u0010ð\u0001\u001a\u00030é\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bê\u0001\u0010ë\u0001\u001a\u0006\bì\u0001\u0010í\u0001\"\u0006\bî\u0001\u0010ï\u0001R\u001a\u0010ô\u0001\u001a\u00030ñ\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R*\u0010ü\u0001\u001a\u00030õ\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bö\u0001\u0010÷\u0001\u001a\u0006\bø\u0001\u0010ù\u0001\"\u0006\bú\u0001\u0010û\u0001R*\u0010\u0084\u0002\u001a\u00030ý\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bþ\u0001\u0010ÿ\u0001\u001a\u0006\b\u0080\u0002\u0010\u0081\u0002\"\u0006\b\u0082\u0002\u0010\u0083\u0002R#\u0010\u0089\u0002\u001a\u00030\u0085\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0086\u0002\u0010ª\u0001\u001a\u0006\b\u0087\u0002\u0010\u0088\u0002R\u001c\u0010\u008d\u0002\u001a\u0005\u0018\u00010\u008a\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010\u008c\u0002R\u001b\u0010\u0090\u0002\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0002\u0010\u008f\u0002R*\u0010\u0098\u0002\u001a\u00030\u0091\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0092\u0002\u0010\u0093\u0002\u001a\u0006\b\u0094\u0002\u0010\u0095\u0002\"\u0006\b\u0096\u0002\u0010\u0097\u0002R\u001b\u0010\u009b\u0002\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0002\u0010\u009a\u0002R*\u0010£\u0002\u001a\u00030\u009c\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009d\u0002\u0010\u009e\u0002\u001a\u0006\b\u009f\u0002\u0010 \u0002\"\u0006\b¡\u0002\u0010¢\u0002R\u001b\u0010¥\u0002\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0002\u0010\u008f\u0002R*\u0010\u00ad\u0002\u001a\u00030¦\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b§\u0002\u0010¨\u0002\u001a\u0006\b©\u0002\u0010ª\u0002\"\u0006\b«\u0002\u0010¬\u0002R\u001c\u0010±\u0002\u001a\u0005\u0018\u00010®\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0002\u0010°\u0002R\"\u0010³\u0002\u001a\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010Ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0002\u0010ß\u0001R\u001b\u0010¶\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0002\u0010µ\u0002R*\u0010¾\u0002\u001a\u00030·\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b¸\u0002\u0010¹\u0002\u001a\u0006\bº\u0002\u0010»\u0002\"\u0006\b¼\u0002\u0010½\u0002R\u001b\u0010À\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0002\u0010µ\u0002R\u001c\u0010Ä\u0002\u001a\u0005\u0018\u00010Á\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0002\u0010Ã\u0002R*\u0010Ì\u0002\u001a\u00030Å\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÆ\u0002\u0010Ç\u0002\u001a\u0006\bÈ\u0002\u0010É\u0002\"\u0006\bÊ\u0002\u0010Ë\u0002R\u001b\u0010Î\u0002\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0002\u0010³\u0001R!\u0010Ó\u0002\u001a\n\u0012\u0005\u0012\u00030Ð\u00020Ï\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÑ\u0002\u0010Ò\u0002R*\u0010Û\u0002\u001a\u00030Ô\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÕ\u0002\u0010Ö\u0002\u001a\u0006\b×\u0002\u0010Ø\u0002\"\u0006\bÙ\u0002\u0010Ú\u0002R\"\u0010Ý\u0002\u001a\u000b\u0012\u0004\u0012\u000208\u0018\u00010Ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÜ\u0002\u0010ß\u0001R\u001b\u0010à\u0002\u001a\u0005\u0018\u00010Þ\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b}\u0010ß\u0002R*\u0010è\u0002\u001a\u00030á\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bâ\u0002\u0010ã\u0002\u001a\u0006\bä\u0002\u0010å\u0002\"\u0006\bæ\u0002\u0010ç\u0002R*\u0010ð\u0002\u001a\u00030é\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bê\u0002\u0010ë\u0002\u001a\u0006\bì\u0002\u0010í\u0002\"\u0006\bî\u0002\u0010ï\u0002R#\u0010õ\u0002\u001a\u00030ñ\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bò\u0002\u0010ª\u0001\u001a\u0006\bó\u0002\u0010ô\u0002R\u001b\u0010÷\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bö\u0002\u0010µ\u0002R*\u0010ÿ\u0002\u001a\u00030ø\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bù\u0002\u0010ú\u0002\u001a\u0006\bû\u0002\u0010ü\u0002\"\u0006\bý\u0002\u0010þ\u0002R*\u0010\u0087\u0003\u001a\u00030\u0080\u00038\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0081\u0003\u0010\u0082\u0003\u001a\u0006\b\u0083\u0003\u0010\u0084\u0003\"\u0006\b\u0085\u0003\u0010\u0086\u0003R\u001a\u0010\u0088\u0003\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bZ\u0010\u008f\u0002R#\u0010\u008d\u0003\u001a\u00030\u0089\u00038B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008a\u0003\u0010ª\u0001\u001a\u0006\b\u008b\u0003\u0010\u008c\u0003¨\u0006\u008f\u0003"}, d2 = {"Le/a/l/c/b;", "Landroidx/fragment/app/Fragment;", "Le/a/l/c/i;", "Le/a/e/n1;", "Le/a/p/a/g$b;", "Le/a/l/q2/a;", "Ls1/s;", "VA", "()V", "Landroid/widget/TextView;", "disclaimerView", "", "", "disclaimerList", "", "selectedPos", "TA", "(Landroid/widget/TextView;Ljava/util/List;I)V", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "buttonView", "Le/a/l/v2/i/a/b;", "button", "UA", "(Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;Le/a/l/v2/i/a/b;)V", "stringRes", "a", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/truecaller/premium/PremiumLaunchContext;", "k7", "()Lcom/truecaller/premium/PremiumLaunchContext;", "Vh", "onResume", "onDestroyView", "", "currentItems", "updatedItems", "ok", "(Ljava/util/List;Ljava/util/List;)V", "U8", "Ji", "Lo", "B4", "Lcom/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingLaunchSource;", "source", "wj", "(Lcom/truecaller/announce_caller_id/settings/AnnounceCallerIdSettingLaunchSource;)V", "o4", "matchingDigits", "phoneNumber", "j5", "(Ljava/lang/Integer;Ljava/lang/String;)V", "X4", "Le/a/l/v2/i/a/d;", "buttonGroup", "Rt", "(Le/a/l/v2/i/a/d;)V", "Jm", "v6", "J4", "Nw", "Ou", "ef", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Qq", "position", "scrollToPosition", "cardPosition", "Xq", "Kh", "", "progress", "f", "(Z)V", "Le/a/l/b0;", "alert", "Lcom/truecaller/premium/PremiumAlertType;", "alertType", "q8", "(Le/a/l/b0;Lcom/truecaller/premium/PremiumAlertType;)V", "Ci", "finish", "wy", "Ww", "Af", "gj", AnalyticsConstants.EMAIL, "Kd", "(Ljava/lang/String;)V", "dl", "yl", "ix", "messageRes", "rl", "qo", "navigationUrl", "ay", "nm", "promptText", "iconRes", "Le/a/l/n2/f;", "subscription", "Qy", "(Ljava/lang/String;ILe/a/l/n2/f;Le/a/l/v2/i/a/b;)V", "ge", "Xr", "y0", "j", "tabSwitched", "bx", "intent", "Cc", "(Landroid/content/Intent;)V", "Le/a/b0/a/n;", "LA", "()Le/a/b0/a/n;", "bb", "Lcom/truecaller/premium/PremiumAlertView;", "e", "Lcom/truecaller/premium/PremiumAlertView;", "alertView", "Le/a/l/c/a/e2;", "C", "Le/a/l/c/a/e2;", "getWhoViewedMeCardPresenter", "()Le/a/l/c/a/e2;", "setWhoViewedMeCardPresenter", "(Le/a/l/c/a/e2;)V", "whoViewedMeCardPresenter", "i0", "I", "Wy", "()I", "searchBarVisibility", "Le/a/l/c/m;", "R", "Le/a/l/c/m;", "getReferralManagerHolder", "()Le/a/l/c/m;", "setReferralManagerHolder", "(Le/a/l/c/m;)V", "referralManagerHolder", "Le/a/x/r;", "Q", "Le/a/x/r;", "getGhostCallPermissionUtility", "()Le/a/x/r;", "setGhostCallPermissionUtility", "(Le/a/x/r;)V", "ghostCallPermissionUtility", "", "g0", "Ls1/g;", "getButtonsAnimationStartValue", "()F", "buttonsAnimationStartValue", "Landroid/widget/ProgressBar;", "m", "Landroid/widget/ProgressBar;", "progressBar", "r", "Landroid/widget/TextView;", "freeTrialLabel", "Le/a/l/a2;", "s", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Le/a/l/c/a/v;", "z", "Le/a/l/c/a/v;", "getContactRequestCardPresenter", "()Le/a/l/c/a/v;", "setContactRequestCardPresenter", "(Le/a/l/c/a/v;)V", "contactRequestCardPresenter", "Le/a/l/c/a/a1;", "D", "Le/a/l/c/a/a1;", "getAnnounceCallerIdCardPresenter", "()Le/a/l/c/a/a1;", "setAnnounceCallerIdCardPresenter", "(Le/a/l/c/a/a1;)V", "announceCallerIdCardPresenter", "Le/a/l/c/a/h2;", "v", "Le/a/l/c/a/h2;", "getHeaderPresenter", "()Le/a/l/c/a/h2;", "setHeaderPresenter", "(Le/a/l/c/a/h2;)V", "headerPresenter", "Le/a/l/c/a/v1;", "B", "Le/a/l/c/a/v1;", "getSpamStatsCardPresenter", "()Le/a/l/c/a/v1;", "setSpamStatsCardPresenter", "(Le/a/l/c/a/v1;)V", "spamStatsCardPresenter", "Ln3/a/e/b;", "W", "Ln3/a/e/b;", "ghostCallContactImageSelectionLauncher", "Le/a/l/c/a/f1;", "M", "Le/a/l/c/a/f1;", "getGhostCallCardPresenter", "()Le/a/l/c/a/f1;", "setGhostCallCardPresenter", "(Le/a/l/c/a/f1;)V", "ghostCallCardPresenter", "Le/a/l/c/a/q1;", "P", "Le/a/l/c/a/q1;", "getReviewsCardPresenter", "()Le/a/l/c/a/q1;", "setReviewsCardPresenter", "(Le/a/l/c/a/q1;)V", "reviewsCardPresenter", "Le/a/o2/f;", "S", "Le/a/o2/f;", "listAdapter", "Le/a/l/c/a/m1;", "x", "Le/a/l/c/a/m1;", "getNoAdsCardPresenter", "()Le/a/l/c/a/m1;", "setNoAdsCardPresenter", "(Le/a/l/c/a/m1;)V", "noAdsCardPresenter", "Le/a/l/c/a/j1;", "L", "Le/a/l/c/a/j1;", "getGoldGiftReminderCardPresenter", "()Le/a/l/c/a/j1;", "setGoldGiftReminderCardPresenter", "(Le/a/l/c/a/j1;)V", "goldGiftReminderCardPresenter", "Le/a/l/c/c;", "U", "getGoldBackground", "()Le/a/l/c/c;", "goldBackground", "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;", "l", "Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferGroup;", "offerButtonsContainer", "h", "Landroid/view/View;", "content", "Le/a/l/c/a/b2;", "E", "Le/a/l/c/a/b2;", "getWhatsAppCallerIdCardPresenter", "()Le/a/l/c/a/b2;", "setWhatsAppCallerIdCardPresenter", "(Le/a/l/c/a/b2;)V", "whatsAppCallerIdCardPresenter", "p", "Landroid/view/ViewGroup;", "subscriptionButtons", "Le/a/l/c/a/x1;", "K", "Le/a/l/c/a/x1;", "getUserBadgeCardPresenter", "()Le/a/l/c/a/x1;", "setUserBadgeCardPresenter", "(Le/a/l/c/a/x1;)V", "userBadgeCardPresenter", "g", "buttonsShadow", "Le/a/l/c/h;", "t", "Le/a/l/c/h;", "SA", "()Le/a/l/c/h;", "setPresenter", "(Le/a/l/c/h;)V", "presenter", "Landroidx/recyclerview/widget/RecyclerView;", "k", "Landroidx/recyclerview/widget/RecyclerView;", "list", "X", "ghostCallContactImagePermissionLauncher", "o", "Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "secondButton", "Le/a/l/c/a/k1;", "y", "Le/a/l/c/a/k1;", "getHighPrioritySupportPresenter", "()Le/a/l/c/a/k1;", "setHighPrioritySupportPresenter", "(Le/a/l/c/a/k1;)V", "highPrioritySupportPresenter", "i", "firstButton", "Ln3/b0/a/n;", "h0", "Ln3/b0/a/n;", "snapToStartSmoothScroller", "Le/a/l/o2/f;", "u", "Le/a/l/o2/f;", "getConsumablePurchasePrompter", "()Le/a/l/o2/f;", "setConsumablePurchasePrompter", "(Le/a/l/o2/f;)V", "consumablePurchasePrompter", "n", "prorationNote", "", "Ln3/p/a/f;", "Y", "Ljava/util/List;", "buttonsAnimationList", "Le/a/l/c/a/h1;", "A", "Le/a/l/c/a/h1;", "getGoldCallerIdCardPresenter", "()Le/a/l/c/a/h1;", "setGoldCallerIdCardPresenter", "(Le/a/l/c/a/h1;)V", "goldCallerIdCardPresenter", "V", "announceCallerIdSettingsLauncher", "Lnl/dionsegijn/konfetti/KonfettiView;", "Lnl/dionsegijn/konfetti/KonfettiView;", "konfettiView", "Le/a/p5/h0;", "w", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Le/a/l/c/a/t1;", "J", "Le/a/l/c/a/t1;", "getSpamProtectionCardPresenter", "()Le/a/l/c/a/t1;", "setSpamProtectionCardPresenter", "(Le/a/l/c/a/t1;)V", "spamProtectionCardPresenter", "Le/a/l/c/e;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "getPremiumBackground", "()Le/a/l/c/e;", "premiumBackground", "q", "thirdButton", "Le/a/l/c/a/c1;", "O", "Le/a/l/c/a/c1;", "getFeatureCardPresenter", "()Le/a/l/c/a/c1;", "setFeatureCardPresenter", "(Le/a/l/c/a/c1;)V", "featureCardPresenter", "Le/a/l/c/a/o1;", "N", "Le/a/l/c/a/o1;", "getPromoCardPresenter", "()Le/a/l/c/a/o1;", "setPromoCardPresenter", "(Le/a/l/c/a/o1;)V", "promoCardPresenter", "buttonsContainer", "Ln3/p/a/g;", "Z", "getButtonsSpring", "()Ln3/p/a/g;", "buttonsSpring", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.c.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/b.class */
public final class C16784b extends AbstractC16804d implements AbstractC16809i, AbstractC13289n1, C19160g.AbstractC19162b, AbstractC17215a {

    /* renamed from: j0 */
    public static final /* synthetic */ int f47021j0 = 0;
    @Inject

    /* renamed from: A */
    public AbstractC16676h1 f47022A;
    @Inject

    /* renamed from: B */
    public AbstractC16761v1 f47023B;
    @Inject

    /* renamed from: C */
    public AbstractC16661e2 f47024C;
    @Inject

    /* renamed from: D */
    public AbstractC16630a1 f47025D;
    @Inject

    /* renamed from: E */
    public AbstractC16643b2 f47026E;
    @Inject

    /* renamed from: J */
    public AbstractC16753t1 f47027J;
    @Inject

    /* renamed from: K */
    public AbstractC16769x1 f47028K;
    @Inject

    /* renamed from: L */
    public AbstractC16693j1 f47029L;
    @Inject

    /* renamed from: M */
    public AbstractC16665f1 f47030M;
    @Inject

    /* renamed from: N */
    public AbstractC16715o1 f47031N;
    @Inject

    /* renamed from: O */
    public AbstractC16648c1 f47032O;
    @Inject

    /* renamed from: P */
    public AbstractC16725q1 f47033P;
    @Inject

    /* renamed from: Q */
    public C21379r f47034Q;
    @Inject

    /* renamed from: R */
    public C16822m f47035R;

    /* renamed from: S */
    public C18898f f47036S;

    /* renamed from: V */
    public AbstractC25374b<AnnounceCallerIdSettingLaunchSource> f47039V;

    /* renamed from: W */
    public AbstractC25374b<Intent> f47040W;

    /* renamed from: X */
    public AbstractC25374b<String> f47041X;

    /* renamed from: e */
    public PremiumAlertView f47044e;

    /* renamed from: f */
    public View f47045f;

    /* renamed from: g */
    public View f47046g;

    /* renamed from: h */
    public View f47048h;

    /* renamed from: h0 */
    public C25614n f47049h0;

    /* renamed from: i */
    public SubscriptionButtonView f47050i;

    /* renamed from: j */
    public KonfettiView f47052j;

    /* renamed from: k */
    public RecyclerView f47053k;

    /* renamed from: l */
    public SubscriptionOfferGroup f47054l;

    /* renamed from: m */
    public ProgressBar f47055m;

    /* renamed from: n */
    public TextView f47056n;

    /* renamed from: o */
    public SubscriptionButtonView f47057o;

    /* renamed from: p */
    public ViewGroup f47058p;

    /* renamed from: q */
    public SubscriptionButtonView f47059q;

    /* renamed from: r */
    public TextView f47060r;
    @Inject

    /* renamed from: s */
    public AbstractC16613a2 f47061s;
    @Inject

    /* renamed from: t */
    public AbstractC16808h f47062t;
    @Inject

    /* renamed from: u */
    public AbstractC17018f f47063u;
    @Inject

    /* renamed from: v */
    public AbstractC16677h2 f47064v;
    @Inject

    /* renamed from: w */
    public AbstractC19233h0 f47065w;
    @Inject

    /* renamed from: x */
    public AbstractC16706m1 f47066x;
    @Inject

    /* renamed from: y */
    public AbstractC16697k1 f47067y;
    @Inject

    /* renamed from: z */
    public C16759v f47068z;

    /* renamed from: T */
    public final g f47037T = C25225a.m3978P1(new C16798q());

    /* renamed from: U */
    public final g f47038U = C25225a.m3978P1(new C16789h());

    /* renamed from: Y */
    public final List<f> f47042Y = new ArrayList();

    /* renamed from: Z */
    public final g f47043Z = C25225a.m3978P1(C16788g.f47074b);

    /* renamed from: g0 */
    public final g f47047g0 = C25225a.m3978P1(new C16787f());

    /* renamed from: i0 */
    public final int f47051i0 = 8;

    /* renamed from: e.a.l.c.b$b */
    /* loaded from: classes3-dex2jar.jar:e/a/l/c/b$b.class */
    public static final class DialogInterface$OnClickListenerC16785b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f47069a;

        /* renamed from: b */
        public final /* synthetic */ Object f47070b;

        public DialogInterface$OnClickListenerC16785b(int i, Object obj) {
            this.f47069a = i;
            this.f47070b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f47069a;
            if (i2 == 0) {
                ((C16784b) this.f47070b).m17048SA().mo16865Ia();
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C16784b) this.f47070b).m17048SA().mo16841f5();
            }
        }
    }

    /* renamed from: e.a.l.c.b$e */
    /* loaded from: classes5-dex2jar.jar:e/a/l/c/b$e.class */
    public static final class C16786e extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

        /* renamed from: b */
        public final /* synthetic */ int f47071b;

        /* renamed from: c */
        public final /* synthetic */ Object f47072c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16786e(int i, Object obj) {
            super(1);
            this.f47071b = i;
            this.f47072c = obj;
        }

        /* JADX WARN: Type inference failed for: r3v20, types: [e.a.l.c.b, n3.v.b0] */
        /* JADX WARN: Type inference failed for: r4v5, types: [e.a.l.c.b, n3.v.b0] */
        /* JADX WARN: Type inference failed for: r4v9, types: [e.a.l.c.b, n3.v.b0] */
        /* renamed from: d */
        public final Object m17043d(Object obj) {
            switch (this.f47071b) {
                case 0:
                    ViewGroup viewGroup = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup, "parent");
                    return new C16700l0(C19286f.m13667l(viewGroup, C2752R.layout.layout_tcx_premium_user_tab_card_gold_gift_reminder, false, 2), C16784b.m17050QA((C16784b) this.f47072c));
                case 1:
                    ViewGroup viewGroup2 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup2, "parent");
                    View m13667l = C19286f.m13667l(viewGroup2, C2752R.layout.layout_tcx_premium_user_tab_card_ghost_call, false, 2);
                    C18898f m17050QA = C16784b.m17050QA((C16784b) this.f47072c);
                    FragmentManager childFragmentManager = ((C16784b) this.f47072c).getChildFragmentManager();
                    s1.z.c.l.d(childFragmentManager, "childFragmentManager");
                    return new C16633b(m13667l, m17050QA, childFragmentManager);
                case 2:
                    ViewGroup viewGroup3 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup3, "parent");
                    return new C16702l2(C19286f.m13667l(viewGroup3, C2752R.layout.layout_tcx_premium_user_tab_card_promo, false, 2), C16784b.m17050QA((C16784b) this.f47072c), (C16784b) this.f47072c);
                case 3:
                    ViewGroup viewGroup4 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup4, "parent");
                    return new C16664f0(C19286f.m13667l(viewGroup4, C2752R.layout.layout_tcx_premium_user_tab_card_feature, false, 2), C16784b.m17050QA((C16784b) this.f47072c), (C16784b) this.f47072c);
                case 4:
                    ViewGroup viewGroup5 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup5, "parent");
                    return new C16692j0(C19286f.m13667l(viewGroup5, C2752R.layout.layout_tcx_premium_user_tab_card_gold_caller_id, false, 2), (C16784b) this.f47072c);
                case 5:
                    ViewGroup viewGroup6 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup6, "parent");
                    return new C16678h3(C19286f.m13667l(viewGroup6, C2752R.layout.layout_tcx_premium_user_tab_card_who_viewed_me, false, 2), C16784b.m17050QA((C16784b) this.f47072c));
                case 6:
                    ViewGroup viewGroup7 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup7, "parent");
                    return new C16645c(C19286f.m13667l(viewGroup7, C2752R.layout.layout_tcx_premium_user_tab_card_announce_caller_id, false, 2), C16784b.m17050QA((C16784b) this.f47072c));
                case 7:
                    ViewGroup viewGroup8 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup8, "parent");
                    return new C16650c3(C19286f.m13667l(viewGroup8, C2752R.layout.layout_tcx_premium_user_tab_card_whatsapp_caller_id, false, 2), C16784b.m17050QA((C16784b) this.f47072c));
                case 8:
                    ViewGroup viewGroup9 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup9, "parent");
                    return new C16762v2(C19286f.m13667l(viewGroup9, C2752R.layout.layout_tcx_premium_user_tab_card_spam_protection, false, 2), C16784b.m17050QA((C16784b) this.f47072c));
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.l.c.b$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$f.class */
    public static final class C16787f extends m implements a<Float> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16787f() {
            super(0);
            C16784b.this = r4;
        }

        public Object invoke() {
            return Float.valueOf(C8605o.m28238b(C16784b.this.requireContext(), 10.0f));
        }
    }

    /* renamed from: e.a.l.c.b$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$g.class */
    public static final class C16788g extends m implements a<C26900g> {

        /* renamed from: b */
        public static final C16788g f47074b = new C16788g();

        public C16788g() {
            super(0);
        }

        public Object invoke() {
            C26900g c26900g = new C26900g(0.0f);
            c26900g.m1225b(250.0f);
            c26900g.m1226a(0.2f);
            return c26900g;
        }
    }

    /* renamed from: e.a.l.c.b$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$h.class */
    public static final class C16789h extends m implements a<C16803c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16789h() {
            super(0);
            C16784b.this = r4;
        }

        public Object invoke() {
            AbstractC19233h0 abstractC19233h0 = C16784b.this.f47065w;
            if (abstractC19233h0 != null) {
                return new C16803c(abstractC19233h0);
            }
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    /* renamed from: e.a.l.c.b$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$i.class */
    public static final class C16790i extends m implements l<ActivityResult, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16790i() {
            super(1);
            C16784b.this = r4;
        }

        /* renamed from: d */
        public Object m17042d(Object obj) {
            Uri data;
            ActivityResult activityResult = (ActivityResult) obj;
            s1.z.c.l.e(activityResult, "it");
            C16784b c16784b = C16784b.this;
            int i = C16784b.f47021j0;
            Objects.requireNonNull(c16784b);
            Intent intent = activityResult.f77b;
            if (intent != null && (data = intent.getData()) != null) {
                s1.z.c.l.d(data, "activityResult.data?.data ?: return");
                Context requireContext = c16784b.requireContext();
                s1.z.c.l.d(requireContext, "requireContext()");
                Context applicationContext = requireContext.getApplicationContext();
                s1.z.c.l.d(applicationContext, "requireContext().applicationContext");
                applicationContext.getContentResolver().takePersistableUriPermission(data, 1);
                AbstractC16808h abstractC16808h = c16784b.f47062t;
                if (abstractC16808h == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                abstractC16808h.mo16984lg(data.toString());
            }
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.b$j */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$j.class */
    public static final class C16791j extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16791j() {
            super(0);
            C16784b.this = r4;
        }

        public Object invoke() {
            C16784b.m17049RA(C16784b.this);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.b$k */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$k.class */
    public static final class C16792k<O> implements AbstractC25373a<Integer> {
        public C16792k() {
            C16784b.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(Integer num) {
            Integer num2 = num;
            if (num2 != null) {
                C16784b.this.m17048SA().mo16994eh(num2.intValue());
            }
        }
    }

    /* renamed from: e.a.l.c.b$l */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$l.class */
    public static final class C16793l extends C25614n {
        public C16793l(C16784b c16784b, Context context) {
            super(context);
        }

        @Override // p1727n3.p1744b0.p1745a.C25614n
        /* renamed from: h */
        public float mo3140h(DisplayMetrics displayMetrics) {
            s1.z.c.l.e(displayMetrics, "displayMetrics");
            return 65.0f / displayMetrics.densityDpi;
        }

        @Override // p1727n3.p1744b0.p1745a.C25614n
        /* renamed from: k */
        public int mo3137k() {
            return -1;
        }
    }

    /* renamed from: e.a.l.c.b$m */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$m.class */
    public static final class C16794m implements RecyclerView.AbstractC0342w {
        public C16794m() {
            C16784b.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0342w
        public final void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
            s1.z.c.l.e(abstractC0313c0, "it");
            C16784b c16784b = C16784b.this;
            int i = C16784b.f47021j0;
            Objects.requireNonNull(c16784b);
            if (abstractC0313c0 instanceof AbstractC16782z1) {
                ((AbstractC16782z1) abstractC0313c0).mo17051t2();
            }
        }
    }

    /* renamed from: e.a.l.c.b$n */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$n.class */
    public static final class C16795n extends m implements l<View, C16718p0> {

        /* renamed from: b */
        public static final C16795n f47080b = new C16795n();

        public C16795n() {
            super(1);
        }

        /* renamed from: d */
        public Object m17041d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            return new C16718p0(view);
        }
    }

    /* renamed from: e.a.l.c.b$o */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$o.class */
    public static final class C16796o extends m implements l<C16718p0, C16718p0> {

        /* renamed from: b */
        public static final C16796o f47081b = new C16796o();

        public C16796o() {
            super(1);
        }

        /* renamed from: d */
        public Object m17040d(Object obj) {
            C16718p0 c16718p0 = (C16718p0) obj;
            s1.z.c.l.e(c16718p0, "it");
            return c16718p0;
        }
    }

    /* renamed from: e.a.l.c.b$p */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$p.class */
    public static final class C16797p extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16797p() {
            super(0);
            C16784b.this = r4;
        }

        public Object invoke() {
            C16784b.m17049RA(C16784b.this);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.b$q */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$q.class */
    public static final class C16798q extends m implements a<C16805e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16798q() {
            super(0);
            C16784b.this = r4;
        }

        public Object invoke() {
            AbstractC19233h0 abstractC19233h0 = C16784b.this.f47065w;
            if (abstractC19233h0 != null) {
                return new C16805e(abstractC19233h0);
            }
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    /* renamed from: e.a.l.c.b$r */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$r.class */
    public static final class C16799r extends m implements l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ C17280b f47085c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16799r(C17280b c17280b) {
            super(1);
            C16784b.this = r4;
            this.f47085c = c17280b;
        }

        /* renamed from: d */
        public Object m17039d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C16784b.this.m17048SA().mo16860L3(this.f47085c);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.b$s */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$s.class */
    public static final class View$OnClickListenerC16800s implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ n3.b.a.g f47086a;

        public View$OnClickListenerC16800s(n3.b.a.g gVar) {
            this.f47086a = gVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f47086a.dismiss();
        }
    }

    /* renamed from: e.a.l.c.b$t */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$t.class */
    public static final class C16801t extends m implements l<C17290a, s> {

        /* renamed from: c */
        public final /* synthetic */ List f47088c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16801t(List list, C17282d c17282d) {
            super(1);
            C16784b.this = r4;
            this.f47088c = list;
        }

        /* renamed from: d */
        public Object m17038d(Object obj) {
            C17290a c17290a = (C17290a) obj;
            s1.z.c.l.e(c17290a, "it");
            C16784b.this.m17048SA().mo16866H9(c17290a);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.b$u */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/b$u.class */
    public static final class C16802u extends m implements l<Integer, s> {

        /* renamed from: c */
        public final /* synthetic */ List f47090c;

        /* renamed from: d */
        public final /* synthetic */ C17282d f47091d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16802u(List list, C17282d c17282d) {
            super(1);
            C16784b.this = r4;
            this.f47090c = list;
            this.f47091d = c17282d;
        }

        /* renamed from: d */
        public Object m17037d(Object obj) {
            int intValue = ((Number) obj).intValue();
            C16784b c16784b = C16784b.this;
            TextView textView = c16784b.f47060r;
            if (textView != null) {
                c16784b.m17047TA(textView, this.f47091d.f48494e, intValue);
            }
            return s.a;
        }
    }

    /* renamed from: QA */
    public static final /* synthetic */ C18898f m17050QA(C16784b c16784b) {
        C18898f c18898f = c16784b.f47036S;
        if (c18898f != null) {
            return c18898f;
        }
        s1.z.c.l.l("listAdapter");
        throw null;
    }

    /* renamed from: RA */
    public static final void m17049RA(C16784b c16784b) {
        Objects.requireNonNull(c16784b);
        Intent createChooser = Intent.createChooser(new Intent().setType("image/*").setAction("android.intent.action.OPEN_DOCUMENT").addFlags(65), c16784b.getString(2131887862));
        AbstractC25374b<Intent> abstractC25374b = c16784b.f47040W;
        if (abstractC25374b != null) {
            abstractC25374b.mo3694a(createChooser, null);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Af */
    public void mo16351Af() {
        g$a g_a = new g$a(requireContext());
        g_a.m3664e(C2752R.string.BillingAskMovePremium);
        g_a.f70854a.f163m = false;
        g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC16785b(0, this));
        g_a.m3662g(2131887903, new DialogInterface$OnClickListenerC16785b(1, this));
        g_a.m3668a().show();
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: B4 */
    public void mo17033B4() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(WhoViewedMeActivity.C4859a.m34279a(requireContext, WhoViewedMeLaunchContext.PREMIUM_USER_TAB));
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: Cc */
    public void mo10112Cc(Intent intent) {
        s1.z.c.l.e(intent, "intent");
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Ci */
    public void mo16350Ci() {
        PremiumAlertView premiumAlertView = this.f47044e;
        if (premiumAlertView != null) {
            C19286f.m13689O(premiumAlertView);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: J4 */
    public void mo17032J4() {
        GoldGiftDialogActivity.C4350a c4350a = GoldGiftDialogActivity.f14248d;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c4350a.m34818a(requireContext, true));
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Ji */
    public void mo17031Ji() {
        View view = this.f47048h;
        if (view != null) {
            view.setBackground((C16803c) this.f47038U.getValue());
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Jm */
    public void mo17030Jm(C17282d c17282d) {
        s1.z.c.l.e(c17282d, "buttonGroup");
        List<C17290a> list = c17282d.f48491b;
        ViewGroup viewGroup = this.f47058p;
        if (viewGroup != null) {
            C19286f.m13683U(viewGroup, !list.isEmpty());
        }
        View view = this.f47046g;
        if (view != null) {
            C19286f.m13683U(view, !list.isEmpty());
        }
        View view2 = this.f47045f;
        if (view2 != null) {
            C19286f.m13689O(view2);
        }
        SubscriptionOfferGroup subscriptionOfferGroup = this.f47054l;
        if (subscriptionOfferGroup != null) {
            C19286f.m13683U(subscriptionOfferGroup, !list.isEmpty());
            subscriptionOfferGroup.m34795e(list, c17282d.f48495f);
            subscriptionOfferGroup.setOfferActionButtonClick(new C16801t(list, c17282d));
            subscriptionOfferGroup.setOnOfferSelectedListener(new C16802u(list, c17282d));
            TextView textView = this.f47060r;
            if (textView != null) {
                m17047TA(textView, c17282d.f48494e, c17282d.f48495f);
            }
        }
        TextView textView2 = this.f47056n;
        if (textView2 != null) {
            C19286f.m13683U(textView2, c17282d.f48492c);
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

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Kh */
    public void mo17029Kh() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Intent m34553xa = TruecallerInit.m34553xa(requireContext(), "premium", "GhostCallAlarmsNadReminders");
        s1.z.c.l.d(m34553xa, "TruecallerInit.buildInte…ALL_ALARMS_AND_REMINDERS)");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(m34553xa, "callbackIntent");
        Intent putExtra = new Intent(requireContext, GhostCallAlarmPermissionActivity.class).putExtra("goBackIntent", m34553xa);
        s1.z.c.l.d(putExtra, "Intent(context, GhostCal…K_INTENT, callbackIntent)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8322o
    /* renamed from: LA */
    public C8321n mo10111LA() {
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        return new C8321n(C26467a.C26471d.m1787a(requireContext, C2752R.color.translucent_05_all_themes), false, true);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Lo */
    public void mo17028Lo() {
        m17045VA();
        ViewGroup viewGroup = this.f47058p;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                s1.z.c.l.d(childAt, "childView");
                if (C19286f.m13663p(childAt)) {
                    List<f> list = this.f47042Y;
                    f fVar = new f(childAt, AbstractC26892b.f75159m);
                    fVar.m1233h(((Number) this.f47047g0.getValue()).floatValue());
                    fVar.v = (C26900g) this.f47043Z.getValue();
                    fVar.i();
                    list.add(fVar);
                }
            }
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Nw */
    public void mo17027Nw() {
        C21379r c21379r = this.f47034Q;
        if (c21379r == null) {
            s1.z.c.l.l("ghostCallPermissionUtility");
            throw null;
        }
        AbstractC25374b<String> abstractC25374b = this.f47041X;
        AbstractC19233h0 abstractC19233h0 = this.f47065w;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        String mo13768b = abstractC19233h0.mo13768b(2131887167, new Object[0]);
        s1.z.c.l.d(mo13768b, "resourceProvider.getStri…dStoragePermissionDenied)");
        s1.z.c.l.e(mo13768b, "mainText");
        C19160g c19160g = new C19160g();
        Bundle bundle = new Bundle();
        bundle.putString("main_text", mo13768b);
        c19160g.setArguments(bundle);
        C16797p c16797p = new C16797p();
        Objects.requireNonNull(c21379r);
        s1.z.c.l.e(this, "fragment");
        s1.z.c.l.e(c19160g, "permissionDeniedDialog");
        s1.z.c.l.e(c16797p, "onPermissionGranted");
        if (C26467a.m1801a(requireContext(), "android.permission.READ_EXTERNAL_STORAGE") == 0) {
            c16797p.invoke();
        } else if (shouldShowRequestPermissionRationale("android.permission.READ_EXTERNAL_STORAGE")) {
            c19160g.show(getChildFragmentManager(), (String) null);
            C21337a c21337a = c21379r.f59837a;
            C10480a.m26037O1(new C21344g(c21337a.f59734d.m17200a()), c21337a);
        } else if (abstractC25374b == null) {
        } else {
            abstractC25374b.mo3694a("android.permission.READ_EXTERNAL_STORAGE", null);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Ou */
    public void mo17026Ou() {
        Intent type = new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/phone_v2");
        s1.z.c.l.d(type, "Intent(Intent.ACTION_PIC…Kinds.Phone.CONTENT_TYPE)");
        startActivityForResult(type, 1);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Qq */
    public void mo17025Qq() {
        C16822m c16822m = this.f47035R;
        if (c16822m == null) {
            s1.z.c.l.l("referralManagerHolder");
            throw null;
        }
        ReferralManager referralManager = c16822m.f47178b;
        if (referralManager == null) {
            return;
        }
        referralManager.mo13053Xa(ReferralManager.ReferralLaunchContext.PREMIUM_TAB_V2);
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Qy */
    public void mo16626Qy(String str, int i, C16993f c16993f, C17280b c17280b) {
        s1.z.c.l.e(str, "promptText");
        s1.z.c.l.e(c16993f, "subscription");
        s1.z.c.l.e(c17280b, "button");
        AbstractC17018f abstractC17018f = this.f47063u;
        if (abstractC17018f == null) {
            s1.z.c.l.l("consumablePurchasePrompter");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        abstractC17018f.mo16628a(childFragmentManager, str, i, c16993f, c17280b);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Rt */
    public void mo17024Rt(C17282d c17282d) {
        s1.z.c.l.e(c17282d, "buttonGroup");
        List<C17280b> list = c17282d.f48490a;
        ViewGroup viewGroup = this.f47058p;
        if (viewGroup != null) {
            C19286f.m13683U(viewGroup, !list.isEmpty());
        }
        View view = this.f47046g;
        if (view != null) {
            C19286f.m13683U(view, !list.isEmpty());
        }
        View view2 = this.f47045f;
        if (view2 != null) {
            C19286f.m13683U(view2, !list.isEmpty());
        }
        SubscriptionOfferGroup subscriptionOfferGroup = this.f47054l;
        if (subscriptionOfferGroup != null) {
            C19286f.m13689O(subscriptionOfferGroup);
        }
        int size = list.size();
        boolean z = false;
        if (size == 1) {
            SubscriptionButtonView subscriptionButtonView = this.f47050i;
            if (subscriptionButtonView != null) {
                m17046UA(subscriptionButtonView, list.get(0));
            }
            SubscriptionButtonView subscriptionButtonView2 = this.f47057o;
            if (subscriptionButtonView2 != null) {
                C19286f.m13689O(subscriptionButtonView2);
            }
            SubscriptionButtonView subscriptionButtonView3 = this.f47059q;
            if (subscriptionButtonView3 != null) {
                C19286f.m13689O(subscriptionButtonView3);
            }
        } else if (size == 2) {
            SubscriptionButtonView subscriptionButtonView4 = this.f47050i;
            if (subscriptionButtonView4 != null) {
                m17046UA(subscriptionButtonView4, list.get(0));
            }
            SubscriptionButtonView subscriptionButtonView5 = this.f47057o;
            if (subscriptionButtonView5 != null) {
                m17046UA(subscriptionButtonView5, list.get(1));
            }
            SubscriptionButtonView subscriptionButtonView6 = this.f47059q;
            if (subscriptionButtonView6 != null) {
                C19286f.m13689O(subscriptionButtonView6);
            }
        } else if (size == 3) {
            SubscriptionButtonView subscriptionButtonView7 = this.f47050i;
            if (subscriptionButtonView7 != null) {
                m17046UA(subscriptionButtonView7, list.get(0));
            }
            SubscriptionButtonView subscriptionButtonView8 = this.f47057o;
            if (subscriptionButtonView8 != null) {
                m17046UA(subscriptionButtonView8, list.get(1));
            }
            SubscriptionButtonView subscriptionButtonView9 = this.f47059q;
            if (subscriptionButtonView9 != null) {
                m17046UA(subscriptionButtonView9, list.get(2));
            }
        }
        TextView textView = this.f47060r;
        if (textView != null) {
            String str = c17282d.f48493d;
            if (str == null || str.length() == 0) {
                z = true;
            }
            C19286f.m13683U(textView, !z);
        }
        TextView textView2 = this.f47060r;
        if (textView2 != null) {
            textView2.setText(c17282d.f48493d);
        }
        TextView textView3 = this.f47056n;
        if (textView3 != null) {
            C19286f.m13683U(textView3, c17282d.f48492c);
        }
    }

    /* renamed from: SA */
    public final AbstractC16808h m17048SA() {
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h != null) {
            return abstractC16808h;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: TA */
    public final void m17047TA(TextView textView, List<String> list, int i) {
        if (list.size() <= i) {
            C19286f.m13689O(textView);
            return;
        }
        C19286f.m13683U(textView, list.get(i).length() > 0);
        textView.setText(list.get(i));
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: U8 */
    public void mo17023U8() {
        View view = this.f47048h;
        if (view != null) {
            view.setBackground((C16805e) this.f47037T.getValue());
        }
    }

    /* renamed from: UA */
    public final void m17046UA(SubscriptionButtonView subscriptionButtonView, C17280b c17280b) {
        C19286f.m13684T(subscriptionButtonView);
        subscriptionButtonView.setButton(c17280b);
        C18334g0.m15196w0(subscriptionButtonView, 0L, new C16799r(c17280b));
    }

    /* renamed from: VA */
    public final void m17045VA() {
        for (f fVar : this.f47042Y) {
            fVar.m1238c();
        }
        this.f47042Y.clear();
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Vh */
    public void mo17022Vh() {
        KonfettiView konfettiView = this.f47052j;
        if (konfettiView != null) {
            g gVar = C16591m.f46618a;
            s1.z.c.l.e(konfettiView, "$this$prepareKonfettiView");
            s1.z.c.l.e(konfettiView, ViewAction.VIEW);
            b bVar = new b(konfettiView);
            int[] iArr = (int[]) C16591m.f46618a.getValue();
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            s1.z.c.l.f(copyOf, "colors");
            bVar.d = copyOf;
            bVar.c((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 359.0d);
            bVar.d(5.0f, 10.0f);
            t3.a.a.e.a aVar = bVar.g;
            aVar.a = true;
            aVar.b = 2000L;
            bVar.a(new t3.a.a.e.b[]{t3.a.a.e.b.a, t3.a.a.e.b.b});
            bVar.b(new c[]{new c(8, 5.0f)});
            float width = konfettiView.getWidth();
            t3.a.a.f.a aVar2 = bVar.b;
            aVar2.a = -50.0f;
            aVar2.b = Float.valueOf(width + 50.0f);
            aVar2.c = -50.0f;
            aVar2.d = Float.valueOf(-50.0f);
            d dVar = new d();
            dVar.b = -1;
            dVar.d = 1000L;
            dVar.f = 1.0f / 300;
            bVar.e(dVar);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: Ww */
    public void mo16347Ww() {
        m17044a(C2752R.string.BillingDialogNotAvailable);
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        return this.f47051i0;
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: X4 */
    public void mo17021X4() {
        startActivity(BlockedEventsActivity.m35427qa(requireContext(), C2752R.string.SettingsBlockTitle));
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: Xq */
    public void mo17020Xq(int i) {
        WhatsAppCallerIdPermissionDialogActivity.C4852b c4852b = WhatsAppCallerIdPermissionDialogActivity.f16481k;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        NotificationAccessSource notificationAccessSource = NotificationAccessSource.PREMIUM_TAB;
        Intent m34553xa = TruecallerInit.m34553xa(requireContext(), "premium", "WhatsAppCallerIdNotficationAccess");
        s1.z.c.l.d(m34553xa, "TruecallerInit.buildInte…_ID_NOTIFICATION_ACCESSS)");
        startActivity(c4852b.m34282a(requireContext, notificationAccessSource, m34553xa, i));
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: Xr */
    public void mo16625Xr() {
        AbstractC17018f abstractC17018f = this.f47063u;
        if (abstractC17018f != null) {
            abstractC17018f.dismiss();
        } else {
            s1.z.c.l.l("consumablePurchasePrompter");
            throw null;
        }
    }

    /* renamed from: a */
    public final void m17044a(int i) {
        if (isAdded()) {
            Toast.makeText(requireContext(), i, 1).show();
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: ay */
    public void mo16346ay(String str) {
        s1.z.c.l.e(str, "navigationUrl");
        C8613t.m28197o(this, C8613t.m28205g(str));
    }

    @Override // p193e.p194a.p1124p.p1125a.C19160g.AbstractC19162b
    /* renamed from: bb */
    public void mo13950bb() {
        Context context = getContext();
        if (context != null) {
            C19291g.m13602O0(context);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: bx */
    public void mo10106bx(boolean z) {
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: dl */
    public void mo16345dl() {
        m17044a(C2752R.string.PremiumLogsSent);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: ef */
    public void mo17019ef() {
        m17044a(C2752R.string.PremiumUserTabPretendCallCardError);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: f */
    public void mo16344f(boolean z) {
        ProgressBar progressBar = this.f47055m;
        if (progressBar != null) {
            C19286f.m13683U(progressBar, z);
        }
        PremiumAlertView premiumAlertView = this.f47044e;
        if (premiumAlertView != null) {
            C19286f.m13689O(premiumAlertView);
        }
        ProgressBar progressBar2 = this.f47055m;
        if (progressBar2 != null) {
            progressBar2.bringToFront();
        }
        View view = this.f47048h;
        if (view != null) {
            view.setVisibility(z ? 4 : 0);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    public void finish() {
        requireActivity().finish();
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17020h
    /* renamed from: ge */
    public void mo16624ge() {
        C17264a c17264a = new C17264a();
        FragmentManager parentFragmentManager = getParentFragmentManager();
        s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
        c17264a.show(parentFragmentManager, null);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: gj */
    public void mo16343gj() {
        m17044a(C2752R.string.PremiumSubscriptionMoved);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: ix */
    public void mo16342ix() {
        m17044a(C2752R.string.PremiumNoConnection);
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: j */
    public void mo10102j() {
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h != null) {
            abstractC16808h.mo16840j();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: j5 */
    public void mo17018j5(Integer num, String str) {
        s1.z.c.l.e(str, "phoneNumber");
        s1.z.c.l.e(str, "phoneNumber");
        View$OnClickListenerC14802o view$OnClickListenerC14802o = new View$OnClickListenerC14802o();
        Bundle bundle = new Bundle();
        if (num != null) {
            bundle.putSerializable("matching_digits", Integer.valueOf(num.intValue()));
        }
        bundle.putSerializable("phone_number", str);
        view$OnClickListenerC14802o.setArguments(bundle);
        view$OnClickListenerC14802o.show(getParentFragmentManager(), (String) null);
    }

    @Override // p193e.p194a.p1011l.p1028q2.AbstractC17215a
    /* renamed from: k7 */
    public PremiumLaunchContext mo16363k7() {
        return PremiumLaunchContext.BOTTOM_BAR_TAB_V2;
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: nm */
    public void mo16341nm() {
        startActivity(SingleActivity.m34591ua(getContext(), SingleActivity.FragmentSingle.FEEDBACK_FORM));
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: o4 */
    public void mo17017o4() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        g$a g_a = new g$a(C17422k.m16113E(requireContext, true), 2131952153);
        g_a.m3654o(C2752R.layout.dialog_neighbour_spoofing_details);
        n3.b.a.g m3652q = g_a.m3652q();
        View findViewById = m3652q.findViewById(2131362425);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC16800s(m3652q));
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: ok */
    public void mo17016ok(List<? extends Object> list, List<? extends Object> list2) {
        s1.z.c.l.e(list, "currentItems");
        s1.z.c.l.e(list2, "updatedItems");
        C25586h.C25590d m3181a = C25586h.m3181a(new C16755u(list, list2), true);
        C18898f c18898f = this.f47036S;
        if (c18898f != null) {
            m3181a.m3179b(new C25570b(c18898f));
        } else {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            AbstractC16808h abstractC16808h = this.f47062t;
            Uri uri = null;
            if (abstractC16808h == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            if (intent != null) {
                uri = intent.getData();
            }
            abstractC16808h.mo17004Od(uri);
        }
    }

    public void onCreate(Bundle bundle) {
        C16784b.super.onCreate(bundle);
        C21379r c21379r = this.f47034Q;
        if (c21379r == null) {
            s1.z.c.l.l("ghostCallPermissionUtility");
            throw null;
        }
        C16790i c16790i = new C16790i();
        Objects.requireNonNull(c21379r);
        s1.z.c.l.e(this, "fragment");
        s1.z.c.l.e(c16790i, "onProfilePictureSelected");
        AbstractC25374b<Intent> registerForActivityResult = registerForActivityResult(new C25380d(), new C21378q(c16790i));
        s1.z.c.l.d(registerForActivityResult, "fragment.registerForActi…)\n            }\n        }");
        this.f47040W = registerForActivityResult;
        C21379r c21379r2 = this.f47034Q;
        if (c21379r2 == null) {
            s1.z.c.l.l("ghostCallPermissionUtility");
            throw null;
        }
        AbstractC19233h0 abstractC19233h0 = this.f47065w;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        String mo13768b = abstractC19233h0.mo13768b(2131887167, new Object[0]);
        s1.z.c.l.d(mo13768b, "resourceProvider.getStri…dStoragePermissionDenied)");
        s1.z.c.l.e(mo13768b, "mainText");
        C19160g c19160g = new C19160g();
        Bundle bundle2 = new Bundle();
        bundle2.putString("main_text", mo13768b);
        c19160g.setArguments(bundle2);
        C16791j c16791j = new C16791j();
        Objects.requireNonNull(c21379r2);
        s1.z.c.l.e(this, "fragment");
        s1.z.c.l.e(c19160g, "permissionDeniedDialog");
        s1.z.c.l.e(c16791j, "onPermissionGranted");
        AbstractC25374b<String> registerForActivityResult2 = registerForActivityResult(new C25379c(), new C21377p(c21379r2, c16791j, c19160g, this));
        s1.z.c.l.d(registerForActivityResult2, "fragment.registerForActi…)\n            }\n        }");
        this.f47041X = registerForActivityResult2;
        this.f47039V = registerForActivityResult(new AnnounceCallerIdSettingsActivity.C2897a(), new C16792k());
        this.f47049h0 = new C16793l(this, requireContext());
        C16822m c16822m = this.f47035R;
        if (c16822m == null) {
            s1.z.c.l.l("referralManagerHolder");
            throw null;
        }
        Objects.requireNonNull(c16822m);
        s1.z.c.l.e(this, "fragment");
        c16822m.f47177a = this;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium_user_tab, viewGroup, false);
    }

    public void onDestroyView() {
        C16784b.super.onDestroyView();
        m17045VA();
        C16822m c16822m = this.f47035R;
        if (c16822m == null) {
            s1.z.c.l.l("referralManagerHolder");
            throw null;
        }
        c16822m.f47177a = null;
        c16822m.f47178b = null;
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h != null) {
            abstractC16808h.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C16784b.super.onResume();
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h != null) {
            abstractC16808h.onResume();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        View requireView = requireView();
        this.f47044e = (PremiumAlertView) requireView.findViewById(C2752R.C2754id.alertView);
        this.f47045f = requireView.findViewById(C2752R.C2754id.buttonsContainer);
        this.f47046g = requireView.findViewById(C2752R.C2754id.buttonsShadow);
        this.f47048h = requireView.findViewById(2131362938);
        this.f47050i = (SubscriptionButtonView) requireView.findViewById(C2752R.C2754id.firstButton);
        this.f47052j = requireView.findViewById(C2752R.C2754id.konfettiView);
        this.f47053k = (RecyclerView) requireView.findViewById(2131364633);
        this.f47054l = (SubscriptionOfferGroup) requireView.findViewById(C2752R.C2754id.offerButtonsContainer);
        this.f47055m = (ProgressBar) requireView.findViewById(2131365276);
        this.f47056n = (TextView) requireView.findViewById(C2752R.C2754id.prorationNote);
        this.f47057o = (SubscriptionButtonView) requireView.findViewById(C2752R.C2754id.secondButton);
        this.f47058p = (ViewGroup) requireView.findViewById(C2752R.C2754id.subscriptionButtons);
        this.f47059q = (SubscriptionButtonView) requireView.findViewById(C2752R.C2754id.thirdButton);
        this.f47060r = (TextView) requireView.findViewById(2131363823);
        SubscriptionButtonView subscriptionButtonView = this.f47050i;
        if (subscriptionButtonView != null) {
            subscriptionButtonView.setShineLifecycleOwner(this);
        }
        SubscriptionButtonView subscriptionButtonView2 = this.f47057o;
        if (subscriptionButtonView2 != null) {
            subscriptionButtonView2.setShineLifecycleOwner(this);
        }
        SubscriptionButtonView subscriptionButtonView3 = this.f47059q;
        if (subscriptionButtonView3 != null) {
            subscriptionButtonView3.setShineLifecycleOwner(this);
        }
        AbstractC17018f abstractC17018f = this.f47063u;
        if (abstractC17018f == null) {
            s1.z.c.l.l("consumablePurchasePrompter");
            throw null;
        }
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC17018f.mo16627b(abstractC16808h);
        RecyclerView recyclerView = this.f47053k;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        }
        AbstractC16677h2 abstractC16677h2 = this.f47064v;
        if (abstractC16677h2 == null) {
            s1.z.c.l.l("headerPresenter");
            throw null;
        }
        C18910r c18910r = new C18910r(abstractC16677h2, C2752R.layout.layout_tcx_list_item_premium_user_tab_header, C16795n.f47080b, C16796o.f47081b);
        AbstractC16706m1 abstractC16706m1 = this.f47066x;
        if (abstractC16706m1 == null) {
            s1.z.c.l.l("noAdsCardPresenter");
            throw null;
        }
        C18906n c18906n = new C18906n(abstractC16706m1, C2752R.C2754id.view_premium_user_tab_list_no_ads, c.e);
        C16759v c16759v = this.f47068z;
        if (c16759v == null) {
            s1.z.c.l.l("contactRequestCardPresenter");
            throw null;
        }
        C18906n c18906n2 = new C18906n(c16759v, C2752R.C2754id.view_premium_user_tab_list_contact_request, c.f);
        AbstractC16697k1 abstractC16697k1 = this.f47067y;
        if (abstractC16697k1 == null) {
            s1.z.c.l.l("highPrioritySupportPresenter");
            throw null;
        }
        C18906n c18906n3 = new C18906n(abstractC16697k1, C2752R.C2754id.view_premium_user_tab_list_high_priority_support, c.g);
        AbstractC16676h1 abstractC16676h1 = this.f47022A;
        if (abstractC16676h1 == null) {
            s1.z.c.l.l("goldCallerIdCardPresenter");
            throw null;
        }
        C18906n c18906n4 = new C18906n(abstractC16676h1, C2752R.C2754id.view_premium_user_tab_list_gold_caller_id, new C16786e(4, this));
        AbstractC16761v1 abstractC16761v1 = this.f47023B;
        if (abstractC16761v1 == null) {
            s1.z.c.l.l("spamStatsCardPresenter");
            throw null;
        }
        C18906n c18906n5 = new C18906n(abstractC16761v1, C2752R.C2754id.view_premium_user_tab_list_spam_stats, c.h);
        AbstractC16661e2 abstractC16661e2 = this.f47024C;
        if (abstractC16661e2 == null) {
            s1.z.c.l.l("whoViewedMeCardPresenter");
            throw null;
        }
        C18906n c18906n6 = new C18906n(abstractC16661e2, C2752R.C2754id.view_premium_user_tab_list_who_viewed_me, new C16786e(5, this));
        AbstractC16630a1 abstractC16630a1 = this.f47025D;
        if (abstractC16630a1 == null) {
            s1.z.c.l.l("announceCallerIdCardPresenter");
            throw null;
        }
        C18906n c18906n7 = new C18906n(abstractC16630a1, C2752R.C2754id.view_premium_user_tab_list_announce_caller_id, new C16786e(6, this));
        AbstractC16643b2 abstractC16643b2 = this.f47026E;
        if (abstractC16643b2 == null) {
            s1.z.c.l.l("whatsAppCallerIdCardPresenter");
            throw null;
        }
        C18906n c18906n8 = new C18906n(abstractC16643b2, C2752R.C2754id.view_premium_user_tab_list_whatsapp_caller_id, new C16786e(7, this));
        AbstractC16753t1 abstractC16753t1 = this.f47027J;
        if (abstractC16753t1 == null) {
            s1.z.c.l.l("spamProtectionCardPresenter");
            throw null;
        }
        C18906n c18906n9 = new C18906n(abstractC16753t1, C2752R.C2754id.view_premium_user_tab_list_spam_protection, new C16786e(8, this));
        AbstractC16769x1 abstractC16769x1 = this.f47028K;
        if (abstractC16769x1 == null) {
            s1.z.c.l.l("userBadgeCardPresenter");
            throw null;
        }
        C18906n c18906n10 = new C18906n(abstractC16769x1, C2752R.C2754id.view_premium_user_tab_list_user_badge, c.c);
        AbstractC16693j1 abstractC16693j1 = this.f47029L;
        if (abstractC16693j1 == null) {
            s1.z.c.l.l("goldGiftReminderCardPresenter");
            throw null;
        }
        C18906n c18906n11 = new C18906n(abstractC16693j1, C2752R.C2754id.view_premium_user_tab_list_gold_gift_reminder, new C16786e(0, this));
        AbstractC16665f1 abstractC16665f1 = this.f47030M;
        if (abstractC16665f1 == null) {
            s1.z.c.l.l("ghostCallCardPresenter");
            throw null;
        }
        C18906n c18906n12 = new C18906n(abstractC16665f1, C2752R.C2754id.view_premium_user_tab_list_ghost_call, new C16786e(1, this));
        AbstractC16715o1 abstractC16715o1 = this.f47031N;
        if (abstractC16715o1 == null) {
            s1.z.c.l.l("promoCardPresenter");
            throw null;
        }
        C18906n c18906n13 = new C18906n(abstractC16715o1, C2752R.C2754id.view_premium_user_tab_list_promo, new C16786e(2, this));
        AbstractC16648c1 abstractC16648c1 = this.f47032O;
        if (abstractC16648c1 == null) {
            s1.z.c.l.l("featureCardPresenter");
            throw null;
        }
        C18906n c18906n14 = new C18906n(abstractC16648c1, C2752R.C2754id.view_premium_user_tab_list_feature, new C16786e(3, this));
        AbstractC16725q1 abstractC16725q1 = this.f47033P;
        if (abstractC16725q1 == null) {
            s1.z.c.l.l("reviewsCardPresenter");
            throw null;
        }
        C18898f c18898f = new C18898f(new C18907o(c18906n, c18906n2, c18906n3, c18906n4, c18906n5, c18906n6, c18906n7, c18906n8, c18906n9, c18906n10, c18906n11, c18906n12, c18906n13, c18906n14, new C18906n(abstractC16725q1, C2752R.C2754id.view_premium_user_tab_list_reviews, c.d)).mo14330f(c18910r, new C18899g(0, 1)));
        this.f47036S = c18898f;
        c18898f.setHasStableIds(true);
        RecyclerView recyclerView2 = this.f47053k;
        if (recyclerView2 != null) {
            recyclerView2.setRecyclerListener(new C16794m());
        }
        RecyclerView recyclerView3 = this.f47053k;
        if (recyclerView3 != null) {
            C18898f c18898f2 = this.f47036S;
            if (c18898f2 == null) {
                s1.z.c.l.l("listAdapter");
                throw null;
            }
            recyclerView3.setAdapter(c18898f2);
        }
        RecyclerView recyclerView4 = this.f47053k;
        AbstractC25625x itemAnimator = recyclerView4 != null ? recyclerView4.getItemAnimator() : null;
        AbstractC25625x abstractC25625x = itemAnimator;
        if (!(itemAnimator instanceof AbstractC25625x)) {
            abstractC25625x = null;
        }
        AbstractC25625x abstractC25625x2 = abstractC25625x;
        if (abstractC25625x2 != null) {
            abstractC25625x2.setSupportsChangeAnimations(false);
        }
        AbstractC16808h abstractC16808h2 = this.f47062t;
        if (abstractC16808h2 != null) {
            abstractC16808h2.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: q8 */
    public void mo16340q8(C16624b0 c16624b0, PremiumAlertType premiumAlertType) {
        s1.z.c.l.e(c16624b0, "alert");
        s1.z.c.l.e(premiumAlertType, "alertType");
        PremiumAlertView premiumAlertView = this.f47044e;
        if (premiumAlertView != null) {
            C19286f.m13684T(premiumAlertView);
        }
        PremiumAlertView premiumAlertView2 = this.f47044e;
        if (premiumAlertView2 != null) {
            premiumAlertView2.setAlert(c16624b0);
        }
        PremiumAlertView premiumAlertView3 = this.f47044e;
        if (premiumAlertView3 != null) {
            premiumAlertView3.setPositiveListener(new d(0, this, premiumAlertType));
        }
        PremiumAlertView premiumAlertView4 = this.f47044e;
        if (premiumAlertView4 != null) {
            premiumAlertView4.setNegativeListener(new d(1, this, premiumAlertType));
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: qo */
    public void mo16339qo() {
        m17044a(C2752R.string.PremiumServerDown);
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: rl */
    public void mo16338rl(int i) {
        m17044a(i);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    public void scrollToPosition(int i) {
        RecyclerView.AbstractC0329o layoutManager;
        C25614n c25614n = this.f47049h0;
        if (c25614n != null) {
            c25614n.f1333a = i;
        }
        RecyclerView recyclerView = this.f47053k;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        layoutManager.startSmoothScroll(this.f47049h0);
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: v6 */
    public void mo17015v6() {
        AbstractC16613a2 abstractC16613a2 = this.f47061s;
        if (abstractC16613a2 == null) {
            s1.z.c.l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC16613a2.mo17168a(requireContext, PremiumLaunchContext.PREMIUM_USER_TAB_GOLD, "gold");
    }

    @Override // p193e.p194a.p1011l.p1013c.AbstractC16809i
    /* renamed from: wj */
    public void mo17014wj(AnnounceCallerIdSettingLaunchSource announceCallerIdSettingLaunchSource) {
        s1.z.c.l.e(announceCallerIdSettingLaunchSource, "source");
        AbstractC25374b<AnnounceCallerIdSettingLaunchSource> abstractC25374b = this.f47039V;
        if (abstractC25374b != null) {
            abstractC25374b.mo3694a(announceCallerIdSettingLaunchSource, null);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: wy */
    public void mo16337wy() {
        m17044a(C2752R.string.BillingDialogNoAccount);
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: y0 */
    public void mo10101y0() {
        AbstractC16808h abstractC16808h = this.f47062t;
        if (abstractC16808h != null) {
            abstractC16808h.mo16838y0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17237t1
    /* renamed from: yl */
    public void mo16336yl() {
        m17044a(C2752R.string.PremiumLogsFailed);
    }
}
