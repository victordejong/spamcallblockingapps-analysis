package p193e.p194a.p195a.p198b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.snackbar.Snackbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.contextcall.p160ui.managecallreasons.ManageCallReasonsActivity;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.groupinfo.GroupInfoActivity;
import com.truecaller.messaging.imgroupinvitation.ImGroupInvitationActivity;
import com.truecaller.messaging.inboxcleanup.InboxCleanupActivity;
import com.truecaller.messaging.messaginglist.MessagingListActivity;
import com.truecaller.messaging.messaginglist.OverlappingAvatarsView;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.personalsafety.awareness.p172ui.PersonalSafetyAwarenessActivity;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import com.truecaller.tcpermissions.PermissionPoller;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.whoviewedme.WhoViewedMeActivity;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import e.a.r.t.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C21846z1;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1017d.p1019b.C16843b;
import p193e.p194a.p1011l.p1017d.p1019b.C16845d;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1033v2.C17253b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18899g;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1111o2.C18909q;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1111o2.C18913u;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1399z.AbstractC21834f;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.p240i.AbstractC6387c;
import p193e.p194a.p195a.p240i.C6383a;
import p193e.p194a.p195a.p258m.AbstractC6778a1;
import p193e.p194a.p195a.p258m.AbstractC6783b0;
import p193e.p194a.p195a.p258m.AbstractC6784b1;
import p193e.p194a.p195a.p258m.AbstractC6789c0;
import p193e.p194a.p195a.p258m.AbstractC6790c1;
import p193e.p194a.p195a.p258m.AbstractC6797d0;
import p193e.p194a.p195a.p258m.AbstractC6836e0;
import p193e.p194a.p195a.p258m.AbstractC6848f0;
import p193e.p194a.p195a.p258m.AbstractC6869g0;
import p193e.p194a.p195a.p258m.AbstractC6885h0;
import p193e.p194a.p195a.p258m.AbstractC6891i0;
import p193e.p194a.p195a.p258m.AbstractC6897j0;
import p193e.p194a.p195a.p258m.AbstractC6905k0;
import p193e.p194a.p195a.p258m.AbstractC6911l0;
import p193e.p194a.p195a.p258m.AbstractC6917m0;
import p193e.p194a.p195a.p258m.AbstractC6922n0;
import p193e.p194a.p195a.p258m.AbstractC6928o0;
import p193e.p194a.p195a.p258m.AbstractC6933p0;
import p193e.p194a.p195a.p258m.AbstractC6938q0;
import p193e.p194a.p195a.p258m.AbstractC6943r0;
import p193e.p194a.p195a.p258m.AbstractC6948s0;
import p193e.p194a.p195a.p258m.AbstractC6953t0;
import p193e.p194a.p195a.p258m.AbstractC6958u0;
import p193e.p194a.p195a.p258m.AbstractC6963v0;
import p193e.p194a.p195a.p258m.AbstractC6968w0;
import p193e.p194a.p195a.p258m.AbstractC6973x0;
import p193e.p194a.p195a.p258m.AbstractC6977y;
import p193e.p194a.p195a.p258m.AbstractC6978y0;
import p193e.p194a.p195a.p258m.AbstractC6983z0;
import p193e.p194a.p195a.p258m.C6776a;
import p193e.p194a.p195a.p258m.C6781a3;
import p193e.p194a.p195a.p258m.C6782b;
import p193e.p194a.p195a.p258m.C6847f;
import p193e.p194a.p195a.p258m.C6868g;
import p193e.p194a.p195a.p258m.C6884h;
import p193e.p194a.p195a.p258m.C6888h2;
import p193e.p194a.p195a.p258m.C6890i;
import p193e.p194a.p195a.p258m.C6896j;
import p193e.p194a.p195a.p258m.C6904k;
import p193e.p194a.p195a.p258m.C6910l;
import p193e.p194a.p195a.p258m.C6914l2;
import p193e.p194a.p195a.p258m.C6920m2;
import p193e.p194a.p195a.p258m.C6925n2;
import p193e.p194a.p195a.p258m.C6937q;
import p193e.p194a.p195a.p258m.C6942r;
import p193e.p194a.p195a.p258m.C6950s2;
import p193e.p194a.p195a.p258m.C6952t;
import p193e.p194a.p195a.p258m.C6956t2;
import p193e.p194a.p195a.p258m.C6961u2;
import p193e.p194a.p195a.p258m.C6962v;
import p193e.p194a.p195a.p258m.C6965v2;
import p193e.p194a.p195a.p258m.C6966w;
import p193e.p194a.p195a.p258m.C6971w2;
import p193e.p194a.p195a.p258m.C6972x;
import p193e.p194a.p195a.p258m.C6976x2;
import p193e.p194a.p195a.p258m.C6981y2;
import p193e.p194a.p195a.p258m.C6986z2;
import p193e.p194a.p195a.p279r0.AbstractC7217h;
import p193e.p194a.p195a.p279r0.AbstractC7244q;
import p193e.p194a.p294b.p295a.p318d.p319a.DialogInterface$OnShowListenerC7754a;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8343c;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8348g;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p683a.C12731f3;
import p193e.p194a.p682e.p683a.C12738g4;
import p193e.p194a.p717f.p718a.p728u.C13684k;
import p193e.p194a.p852i.p869d.AbstractC15073b;
import p193e.p194a.p852i.p869d.AbstractC15076e;
import p193e.p194a.p852i.p869d.AbstractC15101x;
import p193e.p194a.p852i.p869d.C15070a;
import p193e.p194a.p912i4.C15282l;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p947k.AbstractC16111h;
import s1.d0.h;
import s1.d0.i;
import s1.d0.j;
import s1.s;
import s1.u.z;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0084\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f*\u0002Ù\u0002\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\b¢\u0006\u0005\bÙ\u0004\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0014\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0011J-\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b$\u0010%J!\u0010'\u001a\u00020\t2\u0006\u0010&\u001a\u00020#2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b)\u0010\u0011J\u000f\u0010*\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010\u0011J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\u0011J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u0011J\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010\u0011J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u0011J\u0017\u00100\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0016H\u0016¢\u0006\u0004\b0\u00101J+\u00106\u001a\u00020\t2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u0019022\f\u00105\u001a\b\u0012\u0004\u0012\u00020402H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\tH\u0016¢\u0006\u0004\b8\u0010\u0011J\u000f\u00109\u001a\u00020\tH\u0016¢\u0006\u0004\b9\u0010\u0011J\u0017\u0010;\u001a\u00020\t2\u0006\u0010:\u001a\u00020\u0004H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010>\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u0019H\u0016¢\u0006\u0004\b>\u0010?J3\u0010C\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u00192\u0006\u0010@\u001a\u00020\u00162\b\u0010A\u001a\u0004\u0018\u0001042\b\u0010B\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\bC\u0010DJ\u0017\u0010F\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u0004H\u0016¢\u0006\u0004\bF\u0010<J\u0019\u0010G\u001a\u00020\t2\b\b\u0001\u0010=\u001a\u00020\u0016H\u0016¢\u0006\u0004\bG\u00101J\u000f\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bI\u0010JJ\u0017\u0010K\u001a\u00020\t2\u0006\u0010:\u001a\u00020\u0004H\u0016¢\u0006\u0004\bK\u0010<J\u0019\u0010L\u001a\u00020\t2\b\b\u0001\u0010=\u001a\u00020\u0016H\u0016¢\u0006\u0004\bL\u00101J\u0019\u0010N\u001a\u00020\t2\b\b\u0001\u0010M\u001a\u00020\u0016H\u0016¢\u0006\u0004\bN\u00101J\u001d\u0010Q\u001a\u00020\t2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00160OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010T\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0019H\u0016¢\u0006\u0004\bT\u0010?J\u0017\u0010W\u001a\u00020\t2\u0006\u0010V\u001a\u00020UH\u0016¢\u0006\u0004\bW\u0010XJ\u001f\u0010Z\u001a\u00020\t2\u0006\u0010V\u001a\u00020U2\u0006\u0010Y\u001a\u00020\u0016H\u0016¢\u0006\u0004\bZ\u0010[J\u0017\u0010^\u001a\u00020\t2\u0006\u0010]\u001a\u00020\\H\u0016¢\u0006\u0004\b^\u0010_JU\u0010i\u001a\u00020\t2\u0006\u0010a\u001a\u00020`2\u0006\u0010b\u001a\u00020\u00192\b\u0010c\u001a\u0004\u0018\u00010\u00192\b\u0010d\u001a\u0004\u0018\u00010\u00192\b\u0010e\u001a\u0004\u0018\u00010\u00192\u0006\u0010f\u001a\u00020\u00042\u0006\u0010g\u001a\u00020\u00042\u0006\u0010h\u001a\u00020\u0004H\u0016¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020\tH\u0016¢\u0006\u0004\bk\u0010\u0011J\u0017\u0010m\u001a\u00020\t2\u0006\u0010l\u001a\u00020\u0004H\u0016¢\u0006\u0004\bm\u0010<J\u000f\u0010n\u001a\u00020\tH\u0016¢\u0006\u0004\bn\u0010\u0011J\u000f\u0010o\u001a\u00020\tH\u0016¢\u0006\u0004\bo\u0010\u0011J\u000f\u0010p\u001a\u00020\tH\u0016¢\u0006\u0004\bp\u0010\u0011J\u0019\u0010r\u001a\u00020\t2\b\u0010q\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\br\u0010?J\u0017\u0010t\u001a\u00020\t2\u0006\u0010s\u001a\u00020\u0019H\u0016¢\u0006\u0004\bt\u0010?J\u000f\u0010u\u001a\u00020\tH\u0016¢\u0006\u0004\bu\u0010\u0011J\u000f\u0010v\u001a\u00020\tH\u0016¢\u0006\u0004\bv\u0010\u0011J)\u0010z\u001a\u00020\t2\u0006\u0010w\u001a\u00020\u00162\u0006\u0010x\u001a\u00020\u00042\b\b\u0001\u0010y\u001a\u00020\u0016H\u0017¢\u0006\u0004\bz\u0010{J\u0017\u0010|\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0019H\u0016¢\u0006\u0004\b|\u0010?J\u0017\u0010}\u001a\u00020\t2\u0006\u0010S\u001a\u00020\u0019H\u0016¢\u0006\u0004\b}\u0010?J\"\u0010\u007f\u001a\u00020\t2\b\b\u0001\u0010~\u001a\u00020\u00162\u0006\u0010S\u001a\u00020\u0019H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J6\u0010\u0085\u0001\u001a\u00020\t2\u0006\u0010d\u001a\u00020\u00192\u0007\u0010\u0081\u0001\u001a\u00020\u00042\u0007\u0010\u0082\u0001\u001a\u00020\u00192\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u0011\u0010\u0087\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0087\u0001\u0010\u0011J\u0011\u0010\u0088\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0088\u0001\u0010\u0011J!\u0010\u008a\u0001\u001a\u00020\t2\r\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020U0\u0018H\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u008c\u0001\u0010\u0011J\u0011\u0010\u008d\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u008d\u0001\u0010\u0011J\u0019\u0010\u008e\u0001\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u008e\u0001\u00101J\u0011\u0010\u008f\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u008f\u0001\u0010\u0011J\u0011\u0010\u0090\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0090\u0001\u0010\u0011J\u0011\u0010\u0091\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0091\u0001\u0010\u0011J\u001a\u0010\u0093\u0001\u001a\u00020\t2\u0007\u0010\u0092\u0001\u001a\u00020\u0019H\u0016¢\u0006\u0005\b\u0093\u0001\u0010?J\u0011\u0010\u0094\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0094\u0001\u0010\u0011J\u0011\u0010\u0095\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0095\u0001\u0010\u0011J\u0011\u0010\u0096\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0096\u0001\u0010\u0011J\u0011\u0010\u0097\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0097\u0001\u0010\u0011J\u0011\u0010\u0098\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0098\u0001\u0010\u0011J'\u0010\u009c\u0001\u001a\u00020\t2\b\u0010\u009a\u0001\u001a\u00030\u0099\u00012\t\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001J.\u0010 \u0001\u001a\u00020\t2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00192\u0007\u0010\u009f\u0001\u001a\u00020\u00192\u0006\u0010S\u001a\u00020\u0019H\u0016¢\u0006\u0006\b \u0001\u0010¡\u0001J(\u0010¢\u0001\u001a\u00020\t2\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0006\b¢\u0001\u0010£\u0001J\u001b\u0010¤\u0001\u001a\u00020\t2\b\b\u0001\u0010=\u001a\u00020\u0016H\u0016¢\u0006\u0005\b¤\u0001\u00101J\u0011\u0010¥\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b¥\u0001\u0010\u0011J\u0011\u0010¦\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b¦\u0001\u0010\u0011J\u0018\u0010§\u0001\u001a\b\u0012\u0004\u0012\u00020\u001602H\u0016¢\u0006\u0006\b§\u0001\u0010¨\u0001J\u0019\u0010©\u0001\u001a\u00020\t2\u0006\u0010E\u001a\u00020\u0004H\u0016¢\u0006\u0005\b©\u0001\u0010<J\u001b\u0010«\u0001\u001a\u00020\u00042\u0007\u0010ª\u0001\u001a\u00020\u0019H\u0016¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u001a\u0010®\u0001\u001a\u00020\t2\u0007\u0010\u00ad\u0001\u001a\u00020\u0019H\u0016¢\u0006\u0005\b®\u0001\u0010?J/\u0010²\u0001\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0007\u0010¯\u0001\u001a\u00020\u00162\n\u0010±\u0001\u001a\u0005\u0018\u00010°\u0001H\u0016¢\u0006\u0006\b²\u0001\u0010³\u0001J\u001b\u0010µ\u0001\u001a\u00020\t2\u0007\u0010´\u0001\u001a\u00020HH\u0016¢\u0006\u0006\bµ\u0001\u0010¶\u0001J\u0011\u0010·\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b·\u0001\u0010\u0011J\u0011\u0010¸\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b¸\u0001\u0010\u0011J\u0019\u0010¹\u0001\u001a\u00020\t2\u0006\u0010@\u001a\u00020\u0016H\u0016¢\u0006\u0005\b¹\u0001\u00101J\u0011\u0010º\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\bº\u0001\u0010\u0011J\u0019\u0010»\u0001\u001a\u00020\t2\u0006\u0010s\u001a\u00020\u0019H\u0016¢\u0006\u0005\b»\u0001\u0010?J\u001c\u0010¾\u0001\u001a\u00020\t2\b\u0010½\u0001\u001a\u00030¼\u0001H\u0016¢\u0006\u0006\b¾\u0001\u0010¿\u0001J\u001c\u0010À\u0001\u001a\u00020\t2\b\u0010½\u0001\u001a\u00030¼\u0001H\u0016¢\u0006\u0006\bÀ\u0001\u0010¿\u0001R*\u0010È\u0001\u001a\u00030Á\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R*\u0010Ð\u0001\u001a\u00030É\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÊ\u0001\u0010Ë\u0001\u001a\u0006\bÌ\u0001\u0010Í\u0001\"\u0006\bÎ\u0001\u0010Ï\u0001R*\u0010Ø\u0001\u001a\u00030Ñ\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bÒ\u0001\u0010Ó\u0001\u001a\u0006\bÔ\u0001\u0010Õ\u0001\"\u0006\bÖ\u0001\u0010×\u0001R)\u0010ß\u0001\u001a\u00030Ù\u00018��@��X\u0081.¢\u0006\u0017\n\u0005\b,\u0010Ú\u0001\u001a\u0006\bÛ\u0001\u0010Ü\u0001\"\u0006\bÝ\u0001\u0010Þ\u0001R*\u0010ç\u0001\u001a\u00030à\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bá\u0001\u0010â\u0001\u001a\u0006\bã\u0001\u0010ä\u0001\"\u0006\bå\u0001\u0010æ\u0001R*\u0010ï\u0001\u001a\u00030è\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bé\u0001\u0010ê\u0001\u001a\u0006\bë\u0001\u0010ì\u0001\"\u0006\bí\u0001\u0010î\u0001R*\u0010÷\u0001\u001a\u00030ð\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bñ\u0001\u0010ò\u0001\u001a\u0006\bó\u0001\u0010ô\u0001\"\u0006\bõ\u0001\u0010ö\u0001R*\u0010ÿ\u0001\u001a\u00030ø\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\bù\u0001\u0010ú\u0001\u001a\u0006\bû\u0001\u0010ü\u0001\"\u0006\bý\u0001\u0010þ\u0001R*\u0010\u0087\u0002\u001a\u00030\u0080\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0081\u0002\u0010\u0082\u0002\u001a\u0006\b\u0083\u0002\u0010\u0084\u0002\"\u0006\b\u0085\u0002\u0010\u0086\u0002R\u0019\u0010´\u0001\u001a\u00020H8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0088\u0002\u0010\u0089\u0002R\u001c\u0010\u008d\u0002\u001a\u0005\u0018\u00010\u008a\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010\u008c\u0002R(\u0010\u0092\u0002\u001a\u0011\u0012\u0005\u0012\u00030\u008f\u0002\u0012\u0005\u0012\u00030\u008f\u00020\u008e\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0002\u0010\u0091\u0002R\u001c\u0010\u0096\u0002\u001a\u0005\u0018\u00010\u0093\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0002\u0010\u0095\u0002R)\u0010\u009d\u0002\u001a\u00030\u0097\u00028��@��X\u0081.¢\u0006\u0017\n\u0005\bT\u0010\u0098\u0002\u001a\u0006\b\u0099\u0002\u0010\u009a\u0002\"\u0006\b\u009b\u0002\u0010\u009c\u0002R*\u0010¥\u0002\u001a\u00030\u009e\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009f\u0002\u0010 \u0002\u001a\u0006\b¡\u0002\u0010¢\u0002\"\u0006\b£\u0002\u0010¤\u0002R*\u0010\u00ad\u0002\u001a\u00030¦\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b§\u0002\u0010¨\u0002\u001a\u0006\b©\u0002\u0010ª\u0002\"\u0006\b«\u0002\u0010¬\u0002R\u0019\u0010°\u0002\u001a\u00030®\u00028\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bn\u0010¯\u0002R\u001a\u0010´\u0002\u001a\u00030±\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b²\u0002\u0010³\u0002R*\u0010¼\u0002\u001a\u00030µ\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b¶\u0002\u0010·\u0002\u001a\u0006\b¸\u0002\u0010¹\u0002\"\u0006\bº\u0002\u0010»\u0002R*\u0010Ä\u0002\u001a\u00030½\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b¾\u0002\u0010¿\u0002\u001a\u0006\bÀ\u0002\u0010Á\u0002\"\u0006\bÂ\u0002\u0010Ã\u0002R*\u0010Ì\u0002\u001a\u00030Å\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bÆ\u0002\u0010Ç\u0002\u001a\u0006\bÈ\u0002\u0010É\u0002\"\u0006\bÊ\u0002\u0010Ë\u0002R*\u0010Ô\u0002\u001a\u00030Í\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bÎ\u0002\u0010Ï\u0002\u001a\u0006\bÐ\u0002\u0010Ñ\u0002\"\u0006\bÒ\u0002\u0010Ó\u0002R\u001a\u0010Ø\u0002\u001a\u00030Õ\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÖ\u0002\u0010×\u0002R\u001a\u0010Ü\u0002\u001a\u00030Ù\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÚ\u0002\u0010Û\u0002R(\u0010ß\u0002\u001a\u0011\u0012\u0005\u0012\u00030Ý\u0002\u0012\u0005\u0012\u00030Ý\u00020\u008e\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÞ\u0002\u0010\u0091\u0002R\u001a\u0010ã\u0002\u001a\u00030à\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bá\u0002\u0010â\u0002R*\u0010ë\u0002\u001a\u00030ä\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bå\u0002\u0010æ\u0002\u001a\u0006\bç\u0002\u0010è\u0002\"\u0006\bé\u0002\u0010ê\u0002R*\u0010ó\u0002\u001a\u00030ì\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bí\u0002\u0010î\u0002\u001a\u0006\bï\u0002\u0010ð\u0002\"\u0006\bñ\u0002\u0010ò\u0002R*\u0010û\u0002\u001a\u00030ô\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bõ\u0002\u0010ö\u0002\u001a\u0006\b÷\u0002\u0010ø\u0002\"\u0006\bù\u0002\u0010ú\u0002R*\u0010\u0083\u0003\u001a\u00030ü\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\bý\u0002\u0010þ\u0002\u001a\u0006\bÿ\u0002\u0010\u0080\u0003\"\u0006\b\u0081\u0003\u0010\u0082\u0003R\u001c\u0010\u0087\u0003\u001a\u0005\u0018\u00010\u0084\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0003\u0010\u0086\u0003R*\u0010\u008f\u0003\u001a\u00030\u0088\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0089\u0003\u0010\u008a\u0003\u001a\u0006\b\u008b\u0003\u0010\u008c\u0003\"\u0006\b\u008d\u0003\u0010\u008e\u0003R\u001a\u0010\u0091\u0003\u001a\u00030®\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0003\u0010¯\u0002R*\u0010\u0099\u0003\u001a\u00030\u0092\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0093\u0003\u0010\u0094\u0003\u001a\u0006\b\u0095\u0003\u0010\u0096\u0003\"\u0006\b\u0097\u0003\u0010\u0098\u0003R\u0019\u0010\u009c\u0003\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0003\u0010\u009b\u0003R*\u0010¤\u0003\u001a\u00030\u009d\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009e\u0003\u0010\u009f\u0003\u001a\u0006\b \u0003\u0010¡\u0003\"\u0006\b¢\u0003\u0010£\u0003R*\u0010¬\u0003\u001a\u00030¥\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b¦\u0003\u0010§\u0003\u001a\u0006\b¨\u0003\u0010©\u0003\"\u0006\bª\u0003\u0010«\u0003R\u001a\u0010°\u0003\u001a\u00030\u00ad\u00038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b®\u0003\u0010¯\u0003R)\u0010·\u0003\u001a\u00030±\u00038��@��X\u0081.¢\u0006\u0017\n\u0005\b+\u0010²\u0003\u001a\u0006\b³\u0003\u0010´\u0003\"\u0006\bµ\u0003\u0010¶\u0003R\u001c\u0010»\u0003\u001a\u0005\u0018\u00010¸\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0003\u0010º\u0003R*\u0010Ã\u0003\u001a\u00030¼\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b½\u0003\u0010¾\u0003\u001a\u0006\b¿\u0003\u0010À\u0003\"\u0006\bÁ\u0003\u0010Â\u0003R*\u0010Ë\u0003\u001a\u00030Ä\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\bÅ\u0003\u0010Æ\u0003\u001a\u0006\bÇ\u0003\u0010È\u0003\"\u0006\bÉ\u0003\u0010Ê\u0003R)\u0010Ò\u0003\u001a\u00030Ì\u00038��@��X\u0081.¢\u0006\u0017\n\u0005\b.\u0010Í\u0003\u001a\u0006\bÎ\u0003\u0010Ï\u0003\"\u0006\bÐ\u0003\u0010Ñ\u0003R*\u0010Ú\u0003\u001a\u00030Ó\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\bÔ\u0003\u0010Õ\u0003\u001a\u0006\bÖ\u0003\u0010×\u0003\"\u0006\bØ\u0003\u0010Ù\u0003R*\u0010â\u0003\u001a\u00030Û\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\bÜ\u0003\u0010Ý\u0003\u001a\u0006\bÞ\u0003\u0010ß\u0003\"\u0006\bà\u0003\u0010á\u0003R*\u0010é\u0003\u001a\u00030ã\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009c\u0001\u0010ä\u0003\u001a\u0006\bå\u0003\u0010æ\u0003\"\u0006\bç\u0003\u0010è\u0003R*\u0010ñ\u0003\u001a\u00030ê\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\bë\u0003\u0010ì\u0003\u001a\u0006\bí\u0003\u0010î\u0003\"\u0006\bï\u0003\u0010ð\u0003R*\u0010ø\u0003\u001a\u00030ò\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b«\u0001\u0010ó\u0003\u001a\u0006\bô\u0003\u0010õ\u0003\"\u0006\bö\u0003\u0010÷\u0003R\u001a\u0010ú\u0003\u001a\u00030±\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bù\u0003\u0010³\u0002R\u001a\u0010þ\u0003\u001a\u00030û\u00038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bü\u0003\u0010ý\u0003R*\u0010\u0086\u0004\u001a\u00030ÿ\u00038��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0080\u0004\u0010\u0081\u0004\u001a\u0006\b\u0082\u0004\u0010\u0083\u0004\"\u0006\b\u0084\u0004\u0010\u0085\u0004R*\u0010\u008e\u0004\u001a\u00030\u0087\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0088\u0004\u0010\u0089\u0004\u001a\u0006\b\u008a\u0004\u0010\u008b\u0004\"\u0006\b\u008c\u0004\u0010\u008d\u0004R\u001a\u0010\u0092\u0004\u001a\u00030\u008f\u00048\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0004\u0010\u0091\u0004R*\u0010\u009a\u0004\u001a\u00030\u0093\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0094\u0004\u0010\u0095\u0004\u001a\u0006\b\u0096\u0004\u0010\u0097\u0004\"\u0006\b\u0098\u0004\u0010\u0099\u0004R*\u0010¢\u0004\u001a\u00030\u009b\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b\u009c\u0004\u0010\u009d\u0004\u001a\u0006\b\u009e\u0004\u0010\u009f\u0004\"\u0006\b \u0004\u0010¡\u0004R*\u0010ª\u0004\u001a\u00030£\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b¤\u0004\u0010¥\u0004\u001a\u0006\b¦\u0004\u0010§\u0004\"\u0006\b¨\u0004\u0010©\u0004R*\u0010²\u0004\u001a\u00030«\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b¬\u0004\u0010\u00ad\u0004\u001a\u0006\b®\u0004\u0010¯\u0004\"\u0006\b°\u0004\u0010±\u0004R*\u0010º\u0004\u001a\u00030³\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b´\u0004\u0010µ\u0004\u001a\u0006\b¶\u0004\u0010·\u0004\"\u0006\b¸\u0004\u0010¹\u0004R*\u0010Â\u0004\u001a\u00030»\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\b¼\u0004\u0010½\u0004\u001a\u0006\b¾\u0004\u0010¿\u0004\"\u0006\bÀ\u0004\u0010Á\u0004R*\u0010Ê\u0004\u001a\u00030Ã\u00048��@��X\u0081.¢\u0006\u0018\n\u0006\bÄ\u0004\u0010Å\u0004\u001a\u0006\bÆ\u0004\u0010Ç\u0004\"\u0006\bÈ\u0004\u0010É\u0004R(\u0010Í\u0004\u001a\u0011\u0012\u0005\u0012\u00030Ë\u0004\u0012\u0005\u0012\u00030Ë\u00040\u008e\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÌ\u0004\u0010\u0091\u0002R1\u0010Ö\u0004\u001a\u00030Î\u00048��@��X\u0081.¢\u0006\u001f\n\u0006\bÏ\u0004\u0010Ð\u0004\u0012\u0005\bÕ\u0004\u0010\u0011\u001a\u0006\bÑ\u0004\u0010Ò\u0004\"\u0006\bÓ\u0004\u0010Ô\u0004R\u001a\u0010Ø\u0004\u001a\u00030\u008f\u00048\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b×\u0004\u0010\u0091\u0004¨\u0006Ú\u0004"}, d2 = {"Le/a/a/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/a/b/r;", "Le/a/a/b/q;", "", "RA", "()Z", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "onDetach", "()V", "onStart", "onResume", "onPause", "onStop", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "onDestroy", "g", "e", "D0", "j", "unreadConversationsCount", "d3", "(I)V", "", "names", "Landroid/net/Uri;", "imageUris", "e2", "(Ljava/util/List;Ljava/util/List;)V", "F0", "E2", "visible", "FA", "(Z)V", "text", "bv", "(Ljava/lang/String;)V", "count", "firstImageUri", "secondImageUri", "ip", "(Ljava/lang/String;ILandroid/net/Uri;Landroid/net/Uri;)V", "enable", "Lb", "wq", "Lcom/truecaller/messaging/data/types/InboxTab;", "S5", "()Lcom/truecaller/messaging/data/types/InboxTab;", "nt", "ec", RemoteMessageConst.Notification.ICON, "Kb", "", "adsPositions", "I5", "(Ljava/util/Set;)V", "message", "m", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "a1", "(Lcom/truecaller/messaging/data/types/Conversation;)V", "filter", "q2", "(Lcom/truecaller/messaging/data/types/Conversation;I)V", "Lcom/truecaller/messaging/data/types/ImGroupInfo;", "imGroupInfo", "I", "(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V", "", "conversationId", "normalizedNumber", "rawNumber", AnalyticsConstants.NAME, "tcId", "isInPhoneBook", "isHiddenNumber", "isBusinessIm", "Bl", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V", "Wl", "isActionMode", "B1", "g0", "x3", "G3", "campaign", "W1", "analyticsContext", "E4", "K4", "C1", "conversationCount", "hasPublicEntities", "bodyText", "au", "(IZI)V", "D6", "we", "title", "h4", "(ILjava/lang/String;)V", "askNameSuggestion", "number", "Lcom/truecaller/contactfeedback/db/PhoneNumberType;", "type", "n5", "(Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/contactfeedback/db/PhoneNumberType;)V", "B3", "b6", "pendingArchiveList", "Om", "([Lcom/truecaller/messaging/data/types/Conversation;)V", "S2", "aj", "j9", "Rb", "P3", "V5", RemoteMessageConst.MessageBody.MSG, "Zj", "N2", "Eg", "I7", "R5", "J3", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "page", "U", "(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V", "displayName", "address", "c6", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "u3", "(Ljava/lang/String;Ljava/lang/String;)V", "Jo", "r3", "o2", "ts", "()Ljava/util/List;", "Bk", "permissionName", "k", "(Ljava/lang/String;)Z", "uri", "L8", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "inboxTab", "z0", "(Lcom/truecaller/messaging/data/types/InboxTab;)V", "A4", "Q5", "Rd", "ld", "E1", "Le/a/c/a/l/b$d;", "otpCardItem", "X8", "(Le/a/c/a/l/b$d;)V", "cy", "Le/a/a/m/y;", "o", "Le/a/a/m/y;", "getAnnounceCallerIdPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/y;", "setAnnounceCallerIdPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/y;)V", "announceCallerIdPromoPresenter", "Le/a/a/b/p;", "a", "Le/a/a/b/p;", "QA", "()Le/a/a/b/p;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/a/b/p;)V", "presenter", "Le/a/a/m/y0;", "r", "Le/a/a/m/y0;", "getVideoCallerIdUpdatePromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/y0;", "setVideoCallerIdUpdatePromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/y0;)V", "videoCallerIdUpdatePromoPresenter", "Le/a/a/m/i0;", "Le/a/a/m/i0;", "getSpamTabPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/i0;", "setSpamTabPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/i0;)V", "spamTabPromoPresenter", "Le/a/a/m/p0;", "l", "Le/a/a/m/p0;", "getPremiumPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/p0;", "setPremiumPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/p0;)V", "premiumPromoPresenter", "Le/a/y/c/b;", "L", "Le/a/y/c/b;", "getFlashManager$truecaller_googlePlayRelease", "()Le/a/y/c/b;", "setFlashManager$truecaller_googlePlayRelease", "(Le/a/y/c/b;)V", "flashManager", "Le/a/a/m/x0;", "q", "Le/a/a/m/x0;", "getVideoCallerIdPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/x0;", "setVideoCallerIdPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/x0;)V", "videoCallerIdPromoPresenter", "Le/a/l/d/b/d;", "M", "Le/a/l/d/b/d;", "getIncognitoOnDetailsViewPremiumManager$truecaller_googlePlayRelease", "()Le/a/l/d/b/d;", "setIncognitoOnDetailsViewPremiumManager$truecaller_googlePlayRelease", "(Le/a/l/d/b/d;)V", "incognitoOnDetailsViewPremiumManager", "Le/a/a/m/s0;", "A", "Le/a/a/m/s0;", "getRequestDoNotDisturbAccessPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/s0;", "setRequestDoNotDisturbAccessPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/s0;)V", "requestDoNotDisturbAccessPromoPresenter", "r0", "Lcom/truecaller/messaging/data/types/InboxTab;", "Le/a/a/r0/q;", "i0", "Le/a/a/r0/q;", "permissionRequestRouter", "Le/a/o2/r;", "Le/a/a/i/a;", "p0", "Le/a/o2/r;", "otpCardDelegate", "Ln3/b/e/a;", "q0", "Ln3/b/e/a;", "actionModeMessageList", "Le/a/a/m/e0;", "Le/a/a/m/e0;", "getGhostCallPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/e0;", "setGhostCallPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/e0;)V", "ghostCallPromoPresenter", "Le/a/a/b/j0;", "J", "Le/a/a/b/j0;", "getPromotionalThreadsItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/b/j0;", "setPromotionalThreadsItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/b/j0;)V", "promotionalThreadsItemPresenter", "Le/a/l/a2;", "O", "Le/a/l/a2;", "getPremiumScreenNavigator$truecaller_googlePlayRelease", "()Le/a/l/a2;", "setPremiumScreenNavigator$truecaller_googlePlayRelease", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Landroid/widget/Button;", "Landroid/widget/Button;", "toggleUnreadConversationsButton", "Landroid/widget/TextView;", "X", "Landroid/widget/TextView;", "topBannerTextView", "Le/a/a/m/q0;", "v", "Le/a/a/m/q0;", "getPriorityCallAwarenessPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/q0;", "setPriorityCallAwarenessPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/q0;)V", "priorityCallAwarenessPresenter", "Le/a/a/m/a1;", "n", "Le/a/a/m/a1;", "getWhatsAppCallerIdPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/a1;", "setWhatsAppCallerIdPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/a1;)V", "whatsAppCallerIdPromoPresenter", "Le/a/a/m/b0;", "i", "Le/a/a/m/b0;", "getContextCallPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/b0;", "setContextCallPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/b0;)V", "contextCallPromoPresenter", "Le/a/a/m/d0;", "z", "Le/a/a/m/d0;", "getDrawPermissionPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/d0;", "setDrawPermissionPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/d0;)V", "drawPermissionPromoPresenter", "Landroidx/recyclerview/widget/RecyclerView;", "W", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "e/a/a/b/a$e", "t0", "Le/a/a/b/a$e;", "messageListActionModeCallBack", "Le/a/a/b/o0;", "o0", "promotionalThreadsDelegate", "Le/a/i/d/e;", "u0", "Le/a/i/d/e;", "adsCallback", "Le/a/a/m/f0;", "p", "Le/a/a/m/f0;", "getGroupVoicePromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/f0;", "setGroupVoicePromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/f0;)V", "groupVoicePromoPresenter", "Le/a/a/m/h0;", "d", "Le/a/a/m/h0;", "getPromotionalTabPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/h0;", "setPromotionalTabPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/h0;)V", "promotionalTabPromoPresenter", "Le/a/a/m/r0;", "f", "Le/a/a/m/r0;", "getReadAndReplyPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/r0;", "setReadAndReplyPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/r0;)V", "readAndReplyPresenter", "Le/a/a/m/z0;", "D", "Le/a/a/m/z0;", "getWhatsAppCallDetectedPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/z0;", "setWhatsAppCallDetectedPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/z0;)V", "whatsAppCallDetectedPromoPresenter", "Le/a/a/r0/h;", "j0", "Le/a/a/r0/h;", "eventRouter", "Le/a/a/m/b1;", "C", "Le/a/a/m/b1;", "getWhatsAppNotificationAccessPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/b1;", "setWhatsAppNotificationAccessPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/b1;)V", "whatsAppNotificationAccessPromoPresenter", "Z", "markAsReadButton", "Le/a/z/f;", "Q", "Le/a/z/f;", "getPersonalSafety$truecaller_googlePlayRelease", "()Le/a/z/f;", "setPersonalSafety$truecaller_googlePlayRelease", "(Le/a/z/f;)V", "personalSafety", "Y", "Landroid/view/View;", "topBannerGroup", "Le/a/a/m/v0;", "B", "Le/a/a/m/v0;", "getUpdateMobileServicesPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/v0;", "setUpdateMobileServicesPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/v0;)V", "updateMobileServicesPromoPresenter", "Le/a/i/d/x;", AbstractC2405c.f7629a, "Le/a/i/d/x;", "getMultiAdsPresenter$truecaller_googlePlayRelease", "()Le/a/i/d/x;", "setMultiAdsPresenter$truecaller_googlePlayRelease", "(Le/a/i/d/x;)V", "multiAdsPresenter", "Le/a/o2/f;", "k0", "Le/a/o2/f;", "messagingListAdapter", "Le/a/a/m/u0;", "Le/a/a/m/u0;", "getUpdateAppPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/u0;", "setUpdateAppPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/u0;)V", "updateAppPresenter", "Lcom/google/android/material/snackbar/Snackbar;", "s0", "Lcom/google/android/material/snackbar/Snackbar;", "undoMarkAsReadSnackbar", "Le/a/a/b/j;", C22021b.f61237c, "Le/a/a/b/j;", "getConversationItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/b/j;", "setConversationItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/b/j;)V", "conversationItemPresenter", "Le/a/a/m/l0;", "s", "Le/a/a/m/l0;", "getNewInboxPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/l0;", "setNewInboxPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/l0;)V", "newInboxPromoPresenter", "Le/a/a/m/c0;", "Le/a/a/m/c0;", "getDisableBatteryOptimizationPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/c0;", "setDisableBatteryOptimizationPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/c0;)V", "disableBatteryOptimizationPromoPresenter", "Le/a/a/m/t0;", "w", "Le/a/a/m/t0;", "getSecondaryPhoneNumberProPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/t0;", "setSecondaryPhoneNumberProPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/t0;)V", "secondaryPhoneNumberProPresenter", "Le/a/i4/l;", "S", "Le/a/i4/l;", "getNotificationAccessRequester$truecaller_googlePlayRelease", "()Le/a/i4/l;", "setNotificationAccessRequester$truecaller_googlePlayRelease", "(Le/a/i4/l;)V", "notificationAccessRequester", "Le/a/i/d/b;", "Le/a/i/d/b;", "getAdCounter$truecaller_googlePlayRelease", "()Le/a/i/d/b;", "setAdCounter$truecaller_googlePlayRelease", "(Le/a/i/d/b;)V", "adCounter", "Le/a/u3/g;", "R", "Le/a/u3/g;", "getFeaturesRegistry$truecaller_googlePlayRelease", "()Le/a/u3/g;", "setFeaturesRegistry$truecaller_googlePlayRelease", "(Le/a/u3/g;)V", "featuresRegistry", "Le/a/a/m/c1;", "Le/a/a/m/c1;", "getWhoViewedMePromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/c1;", "setWhoViewedMePromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/c1;)V", "whoViewedMePromoPresenter", "V", "emptyText", "Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;", "h0", "Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;", "topBannerAvatarsView", "Le/a/a/m/k0;", "y", "Le/a/a/m/k0;", "getMissedCallNotificationPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/k0;", "setMissedCallNotificationPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/k0;)V", "missedCallNotificationPromoPresenter", "Le/a/a/i/c;", "K", "Le/a/a/i/c;", "getOtpItemPresenter$truecaller_googlePlayRelease", "()Le/a/a/i/c;", "setOtpItemPresenter$truecaller_googlePlayRelease", "(Le/a/a/i/c;)V", "otpItemPresenter", "Le/a/o2/o;", "m0", "Le/a/o2/o;", "adsDelegate", "Le/a/a/m/w0;", "t", "Le/a/a/m/w0;", "getVerifiedBusinessAwarenessPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/w0;", "setVerifiedBusinessAwarenessPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/w0;)V", "verifiedBusinessAwarenessPresenter", "Le/a/a/m/j0;", "x", "Le/a/a/m/j0;", "getLocationAccessPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/j0;", "setLocationAccessPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/j0;)V", "locationAccessPromoPresenter", "Le/a/c/h/h;", "P", "Le/a/c/h/h;", "getMessageLocator$truecaller_googlePlayRelease", "()Le/a/c/h/h;", "setMessageLocator$truecaller_googlePlayRelease", "(Le/a/c/h/h;)V", "messageLocator", "Le/a/k/h;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/k/h;", "getVideoCallerId$truecaller_googlePlayRelease", "()Le/a/k/h;", "setVideoCallerId$truecaller_googlePlayRelease", "(Le/a/k/h;)V", "videoCallerId", "Le/a/a/m/m0;", "E", "Le/a/a/m/m0;", "getNonePromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/m0;", "setNonePromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/m0;)V", "nonePromoPresenter", "Le/a/a/m/g0;", "h", "Le/a/a/m/g0;", "getInCallUIPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/g0;", "setInCallUIPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/g0;)V", "inCallUIPromoPresenter", "Le/a/a/m/o0;", "N", "Le/a/a/m/o0;", "getPremiumBlockingPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/o0;", "setPremiumBlockingPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/o0;)V", "premiumBlockingPromoPresenter", "Le/a/a/b/c;", "l0", "conversationDelegate", "Le/a/a/m/n0;", "u", "Le/a/a/m/n0;", "getPersonalSafetyPromoPresenter$truecaller_googlePlayRelease", "()Le/a/a/m/n0;", "setPersonalSafetyPromoPresenter$truecaller_googlePlayRelease", "(Le/a/a/m/n0;)V", "getPersonalSafetyPromoPresenter$truecaller_googlePlayRelease$annotations", "personalSafetyPromoPresenter", "n0", "promoDelegate", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.b.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/a.class */
public final class C4916a extends Fragment implements AbstractC4981r, AbstractC4979q {
    @Inject

    /* renamed from: A */
    public AbstractC6948s0 f16686A;
    @Inject

    /* renamed from: B */
    public AbstractC6963v0 f16687B;
    @Inject

    /* renamed from: C */
    public AbstractC6784b1 f16688C;
    @Inject

    /* renamed from: D */
    public AbstractC6983z0 f16689D;
    @Inject

    /* renamed from: E */
    public AbstractC6917m0 f16690E;
    @Inject

    /* renamed from: J */
    public AbstractC4964j0 f16691J;
    @Inject

    /* renamed from: K */
    public AbstractC6387c f16692K;
    @Inject

    /* renamed from: L */
    public AbstractC21631b f16693L;
    @Inject

    /* renamed from: M */
    public C16845d f16694M;
    @Inject

    /* renamed from: N */
    public AbstractC6928o0 f16695N;
    @Inject

    /* renamed from: O */
    public AbstractC16613a2 f16696O;
    @Inject

    /* renamed from: P */
    public AbstractC10258h f16697P;
    @Inject

    /* renamed from: Q */
    public AbstractC21834f f16698Q;
    @Inject

    /* renamed from: R */
    public C20592g f16699R;
    @Inject

    /* renamed from: S */
    public C15282l f16700S;
    @Inject

    /* renamed from: T */
    public AbstractC16111h f16701T;
    @Inject

    /* renamed from: U */
    public AbstractC15073b f16702U;

    /* renamed from: V */
    public TextView f16703V;

    /* renamed from: W */
    public RecyclerView f16704W;

    /* renamed from: X */
    public TextView f16705X;

    /* renamed from: Y */
    public View f16706Y;

    /* renamed from: Z */
    public Button f16707Z;
    @Inject

    /* renamed from: a */
    public AbstractC4977p f16708a;
    @Inject

    /* renamed from: b */
    public AbstractC4963j f16709b;
    @Inject

    /* renamed from: c */
    public AbstractC15101x f16710c;
    @Inject

    /* renamed from: d */
    public AbstractC6885h0 f16711d;
    @Inject

    /* renamed from: e */
    public AbstractC6891i0 f16712e;
    @Inject

    /* renamed from: f */
    public AbstractC6943r0 f16713f;
    @Inject

    /* renamed from: g */
    public AbstractC6958u0 f16714g;

    /* renamed from: g0 */
    public Button f16715g0;
    @Inject

    /* renamed from: h */
    public AbstractC6869g0 f16716h;

    /* renamed from: h0 */
    public OverlappingAvatarsView f16717h0;
    @Inject

    /* renamed from: i */
    public AbstractC6783b0 f16718i;

    /* renamed from: i0 */
    public AbstractC7244q f16719i0;
    @Inject

    /* renamed from: j */
    public AbstractC6789c0 f16720j;

    /* renamed from: j0 */
    public AbstractC7217h f16721j0;
    @Inject

    /* renamed from: k */
    public AbstractC6790c1 f16722k;

    /* renamed from: k0 */
    public C18898f f16723k0;
    @Inject

    /* renamed from: l */
    public AbstractC6933p0 f16724l;

    /* renamed from: l0 */
    public C18910r<? super C4943c, ? super C4943c> f16725l0;
    @Inject

    /* renamed from: m */
    public AbstractC6836e0 f16726m;

    /* renamed from: m0 */
    public C18907o f16727m0;
    @Inject

    /* renamed from: n */
    public AbstractC6778a1 f16728n;

    /* renamed from: n0 */
    public C18907o f16729n0;
    @Inject

    /* renamed from: o */
    public AbstractC6977y f16730o;

    /* renamed from: o0 */
    public C18910r<? super C4976o0, ? super C4976o0> f16731o0;
    @Inject

    /* renamed from: p */
    public AbstractC6848f0 f16732p;

    /* renamed from: p0 */
    public C18910r<? super C6383a, ? super C6383a> f16733p0;
    @Inject

    /* renamed from: q */
    public AbstractC6973x0 f16734q;

    /* renamed from: q0 */
    public AbstractC25450a f16735q0;
    @Inject

    /* renamed from: r */
    public AbstractC6978y0 f16736r;

    /* renamed from: r0 */
    public InboxTab f16737r0;
    @Inject

    /* renamed from: s */
    public AbstractC6911l0 f16738s;

    /* renamed from: s0 */
    public Snackbar f16739s0;
    @Inject

    /* renamed from: t */
    public AbstractC6968w0 f16740t;
    @Inject

    /* renamed from: u */
    public AbstractC6922n0 f16742u;
    @Inject

    /* renamed from: v */
    public AbstractC6938q0 f16744v;
    @Inject

    /* renamed from: w */
    public AbstractC6953t0 f16745w;
    @Inject

    /* renamed from: x */
    public AbstractC6897j0 f16746x;
    @Inject

    /* renamed from: y */
    public AbstractC6905k0 f16747y;
    @Inject

    /* renamed from: z */
    public AbstractC6797d0 f16748z;

    /* renamed from: t0 */
    public final C4921e f16741t0 = new C4921e();

    /* renamed from: u0 */
    public final AbstractC15076e f16743u0 = new C4920d();

    /* renamed from: e.a.a.b.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/a/b/a$a.class */
    public static final class View$OnClickListenerC4917a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f16749a;

        /* renamed from: b */
        public final /* synthetic */ Object f16750b;

        public View$OnClickListenerC4917a(int i, Object obj) {
            this.f16749a = i;
            this.f16750b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f16749a;
            if (i == 0) {
                ((C4916a) this.f16750b).m34240QA().mo34094A4();
            } else if (i != 1) {
                throw null;
            } else {
                ((C4916a) this.f16750b).m34240QA().mo34044uf();
            }
        }
    }

    /* renamed from: e.a.a.b.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/b/a$b.class */
    public static final class C4918b extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

        /* renamed from: b */
        public final /* synthetic */ int f16751b;

        /* renamed from: c */
        public final /* synthetic */ Object f16752c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4918b(int i, Object obj) {
            super(1);
            this.f16751b = i;
            this.f16752c = obj;
        }

        /* renamed from: d */
        public final Object m34238d(Object obj) {
            switch (this.f16751b) {
                case 0:
                    ViewGroup viewGroup = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup, "parent");
                    return new C6910l(C19286f.m13667l(viewGroup, C2752R.layout.item_spam_tab_cleaner_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 1:
                    ViewGroup viewGroup2 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup2, "parent");
                    return new C6914l2(C19286f.m13667l(viewGroup2, C2752R.layout.item_read_and_reply_sms, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 2:
                    ViewGroup viewGroup3 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup3, "parent");
                    return new C6950s2(C19286f.m13667l(viewGroup3, C2752R.layout.item_update_app, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 3:
                    ViewGroup viewGroup4 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup4, "parent");
                    return new C6904k(C19286f.m13667l(viewGroup4, C2752R.layout.item_incallui_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 4:
                    ViewGroup viewGroup5 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup5, "parent");
                    return new C6781a3(C19286f.m13667l(viewGroup5, C2752R.layout.item_who_viewed_me_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 5:
                    ViewGroup viewGroup6 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup6, "parent");
                    return new C6776a(C19286f.m13667l(viewGroup6, C2752R.layout.item_premium_blocking_promo_spam_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c), PremiumLaunchContext.SPAM_TAB_PROMO);
                case 6:
                    ViewGroup viewGroup7 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup7, "parent");
                    return new C6868g(C19286f.m13667l(viewGroup7, C2752R.layout.item_disable_battery_optimization_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 7:
                    ViewGroup viewGroup8 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup8, "parent");
                    return new C6965v2(C19286f.m13667l(viewGroup8, C2752R.layout.item_video_caller_id_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 8:
                    ViewGroup viewGroup9 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup9, "parent");
                    return new C6971w2(C19286f.m13667l(viewGroup9, C2752R.layout.item_video_caller_id_update_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 9:
                    ViewGroup viewGroup10 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup10, "parent");
                    return new C6847f(C19286f.m13667l(viewGroup10, C2752R.layout.item_context_call_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 10:
                    ViewGroup viewGroup11 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup11, "parent");
                    return new C6961u2(C19286f.m13667l(viewGroup11, C2752R.layout.item_verified_business_awareness, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 11:
                    ViewGroup viewGroup12 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup12, "parent");
                    return new C6962v(C19286f.m13667l(viewGroup12, C2752R.layout.item_personal_safety_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 12:
                    ViewGroup viewGroup13 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup13, "parent");
                    return new C6966w(C19286f.m13667l(viewGroup13, C2752R.layout.item_premium_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 13:
                    ViewGroup viewGroup14 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup14, "parent");
                    return new C6890i(C19286f.m13667l(viewGroup14, C2752R.layout.item_ghost_call_home_promo_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 14:
                    ViewGroup viewGroup15 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup15, "parent");
                    return new C6981y2(C19286f.m13667l(viewGroup15, C2752R.layout.item_whats_app_caller_id_home_promo_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 15:
                    ViewGroup viewGroup16 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup16, "parent");
                    return new C6782b(C19286f.m13667l(viewGroup16, C2752R.layout.item_announce_call_home_promo_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 16:
                    ViewGroup viewGroup17 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup17, "parent");
                    return new C6896j(C19286f.m13667l(viewGroup17, C2752R.layout.item_group_voice_promo_home_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 17:
                    ViewGroup viewGroup18 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup18, "parent");
                    return new C6972x(C19286f.m13667l(viewGroup18, C2752R.layout.item_priority_call_awareness, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 18:
                    ViewGroup viewGroup19 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup19, "parent");
                    return new C6925n2(C19286f.m13667l(viewGroup19, C2752R.layout.item_secondary_phone_number_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 19:
                    ViewGroup viewGroup20 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup20, "parent");
                    return new C6937q(C19286f.m13667l(viewGroup20, C2752R.layout.item_location_access_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 20:
                    ViewGroup viewGroup21 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup21, "parent");
                    return new C6942r(C19286f.m13667l(viewGroup21, C2752R.layout.item_missed_call_notification_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 21:
                    ViewGroup viewGroup22 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup22, "parent");
                    return new C6884h(C19286f.m13667l(viewGroup22, C2752R.layout.item_draw_permission_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 22:
                    ViewGroup viewGroup23 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup23, "parent");
                    return new C6920m2(C19286f.m13667l(viewGroup23, C2752R.layout.item_request_do_not_disturb_access_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 23:
                    ViewGroup viewGroup24 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup24, "parent");
                    return new C6956t2(C19286f.m13667l(viewGroup24, C2752R.layout.item_update_mobile_services_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 24:
                    ViewGroup viewGroup25 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup25, "parent");
                    return new C6986z2(C19286f.m13667l(viewGroup25, C2752R.layout.item_whatasapp_notification_access_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 25:
                    ViewGroup viewGroup26 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup26, "parent");
                    return new C6976x2(C19286f.m13667l(viewGroup26, C2752R.layout.item_whatasapp_call_detected_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 26:
                    ViewGroup viewGroup27 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup27, "parent");
                    return new C6910l(C19286f.m13667l(viewGroup27, C2752R.layout.item_promotional_tab_cleaner_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 27:
                    ViewGroup viewGroup28 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup28, "parent");
                    return new C6910l(C19286f.m13667l(viewGroup28, C2752R.layout.item_spam_tab_cleaner_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 28:
                    ViewGroup viewGroup29 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup29, "parent");
                    return new C6914l2(C19286f.m13667l(viewGroup29, C2752R.layout.item_read_and_reply_sms, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 29:
                    ViewGroup viewGroup30 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup30, "parent");
                    return new C6950s2(C19286f.m13667l(viewGroup30, C2752R.layout.item_update_app, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                case 30:
                    ViewGroup viewGroup31 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup31, "parent");
                    return new C6776a(C19286f.m13667l(viewGroup31, C2752R.layout.item_premium_blocking_promo_spam_tab, false, 2), C4916a.m34241PA((C4916a) this.f16752c), PremiumLaunchContext.SPAM_TAB_PROMO);
                case 31:
                    ViewGroup viewGroup32 = (ViewGroup) obj;
                    s1.z.c.l.e(viewGroup32, "parent");
                    return new C6952t(C19286f.m13667l(viewGroup32, C2752R.layout.item_new_inbox_promo, false, 2), C4916a.m34241PA((C4916a) this.f16752c));
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.a.b.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/a/b/a$c.class */
    public static final class C4919c extends m implements l<ViewGroup, RecyclerView.AbstractC0313c0> {

        /* renamed from: c */
        public static final C4919c f16753c = new C4919c(0);

        /* renamed from: d */
        public static final C4919c f16754d = new C4919c(1);

        /* renamed from: b */
        public final /* synthetic */ int f16755b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4919c(int i) {
            super(1);
            this.f16755b = i;
        }

        /* renamed from: d */
        public final Object m34237d(Object obj) {
            int i = this.f16755b;
            if (i == 0) {
                ViewGroup viewGroup = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup, "parent");
                return new C6888h2(C19286f.m13667l(viewGroup, C2752R.layout.item_empty, false, 2));
            } else if (i != 1) {
                throw null;
            } else {
                ViewGroup viewGroup2 = (ViewGroup) obj;
                s1.z.c.l.e(viewGroup2, "parent");
                return new C6888h2(C19286f.m13667l(viewGroup2, C2752R.layout.item_empty, false, 2));
            }
        }
    }

    /* renamed from: e.a.a.b.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$d.class */
    public static final class C4920d implements AbstractC15076e {
        public C4920d() {
            C4916a.this = r4;
        }

        @Override // p193e.p194a.p852i.p869d.AbstractC15076e
        public void onAdShown() {
            InboxTab inboxTab = C4916a.this.f16737r0;
            if (inboxTab == null) {
                s1.z.c.l.l("inboxTab");
                throw null;
            }
            int ordinal = inboxTab.ordinal();
            String str = ordinal != 3 ? ordinal != 4 ? "INBOX" : "PROMOTION_INBOX" : "SPAM_INBOX";
            AbstractC15073b abstractC15073b = C4916a.this.f16702U;
            if (abstractC15073b != null) {
                abstractC15073b.mo19178G3(str);
            } else {
                s1.z.c.l.l("adCounter");
                throw null;
            }
        }
    }

    /* renamed from: e.a.a.b.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$e.class */
    public static final class C4921e implements AbstractC25450a.AbstractC25451a {
        public C4921e() {
            C4916a.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.conversation_list_action_mode, menu);
            C4916a.this.m34240QA().mo34042x0();
            AbstractC7217h abstractC7217h = C4916a.this.f16721j0;
            if (abstractC7217h != null) {
                abstractC7217h.mo29969x0();
            }
            C4916a c4916a = C4916a.this;
            c4916a.f16735q0 = abstractC25450a;
            int m13612L = C19291g.m13612L(c4916a.requireContext(), 2130970255);
            int m13612L2 = C19291g.m13612L(C4916a.this.requireContext(), 2130970253);
            i j = j.j(0, menu.size());
            ArrayList arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (((h) it).b) {
                arrayList.add(menu.getItem(it.a()));
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                MenuItem menuItem = (MenuItem) it2.next();
                s1.z.c.l.d(menuItem, "it");
                C19286f.m13674e(menuItem, Integer.valueOf(m13612L), Integer.valueOf(m13612L2));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menu, "menu");
            String mo34070R = C4916a.this.m34240QA().mo34070R();
            if (mo34070R != null) {
                abstractC25450a.mo3507o(mo34070R);
            }
            C4916a.this.m34240QA().mo34056dh(menu);
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menuItem, "menuItem");
            return C4916a.this.m34240QA().mo34058d(menuItem.getItemId());
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            C4916a.this.m34240QA().mo34076O();
            AbstractC7217h abstractC7217h = C4916a.this.f16721j0;
            if (abstractC7217h != null) {
                abstractC7217h.mo29980O();
            }
        }
    }

    /* renamed from: e.a.a.b.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$f.class */
    public static final class C4922f extends m implements l<View, C4943c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4922f() {
            super(1);
            C4916a.this = r4;
        }

        /* renamed from: d */
        public Object m34236d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            return new C4943c(view, C4916a.m34242OA(C4916a.this));
        }
    }

    /* renamed from: e.a.a.b.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$g.class */
    public static final class C4923g extends m implements l<C4943c, C4943c> {

        /* renamed from: b */
        public static final C4923g f16759b = new C4923g();

        public C4923g() {
            super(1);
        }

        /* renamed from: d */
        public Object m34235d(Object obj) {
            C4943c c4943c = (C4943c) obj;
            s1.z.c.l.e(c4943c, "it");
            return c4943c;
        }
    }

    /* renamed from: e.a.a.b.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$h.class */
    public static final class C4924h extends m implements l<View, C4976o0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4924h() {
            super(1);
            C4916a.this = r4;
        }

        /* renamed from: d */
        public Object m34234d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            return new C4976o0(view, C4916a.m34242OA(C4916a.this));
        }
    }

    /* renamed from: e.a.a.b.a$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$i.class */
    public static final class C4925i extends m implements l<C4976o0, C4976o0> {

        /* renamed from: b */
        public static final C4925i f16761b = new C4925i();

        public C4925i() {
            super(1);
        }

        /* renamed from: d */
        public Object m34233d(Object obj) {
            C4976o0 c4976o0 = (C4976o0) obj;
            s1.z.c.l.e(c4976o0, "it");
            return c4976o0;
        }
    }

    /* renamed from: e.a.a.b.a$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$j.class */
    public static final class C4926j extends m implements l<View, C6383a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4926j() {
            super(1);
            C4916a.this = r4;
        }

        /* renamed from: d */
        public Object m34232d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            return new C6383a(view, C4916a.m34242OA(C4916a.this));
        }
    }

    /* renamed from: e.a.a.b.a$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$k.class */
    public static final class C4927k extends m implements l<C6383a, C6383a> {

        /* renamed from: b */
        public static final C4927k f16763b = new C4927k();

        public C4927k() {
            super(1);
        }

        /* renamed from: d */
        public Object m34231d(Object obj) {
            C6383a c6383a = (C6383a) obj;
            s1.z.c.l.e(c6383a, "it");
            return c6383a;
        }
    }

    /* renamed from: e.a.a.b.a$l */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$l.class */
    public static final class C4928l extends AbstractC8348g {
        public C4928l() {
            C4916a.this = r4;
        }

        @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8348g
        /* renamed from: d */
        public void mo27784d(boolean z) {
            AbstractC8343c.AbstractC8344a activity = C4916a.this.getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof AbstractC8343c.AbstractC8344a)) {
                lVar = null;
            }
            AbstractC8343c.AbstractC8344a abstractC8344a = lVar;
            if (abstractC8344a != null) {
                abstractC8344a.mo28649v7(z);
            }
        }

        @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8348g, androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            s1.z.c.l.e(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                C4916a.this.m34240QA().mo34043wh();
            }
        }
    }

    /* renamed from: e.a.a.b.a$m */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$m.class */
    public static final class C4929m extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ String f16766c;

        /* renamed from: d */
        public final /* synthetic */ String f16767d;

        /* renamed from: e */
        public final /* synthetic */ String f16768e;

        /* renamed from: f */
        public final /* synthetic */ String f16769f;

        /* renamed from: g */
        public final /* synthetic */ long f16770g;

        /* renamed from: h */
        public final /* synthetic */ boolean f16771h;

        /* renamed from: i */
        public final /* synthetic */ boolean f16772i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4929m(String str, String str2, String str3, String str4, long j, boolean z, boolean z2) {
            super(0);
            C4916a.this = r5;
            this.f16766c = str;
            this.f16767d = str2;
            this.f16768e = str3;
            this.f16769f = str4;
            this.f16770g = j;
            this.f16771h = z;
            this.f16772i = z2;
        }

        public Object invoke() {
            n3.r.a.l activity = C4916a.this.getActivity();
            if (activity != null) {
                s1.z.c.l.d(activity, "it");
                String str = this.f16766c;
                String str2 = this.f16767d;
                String str3 = this.f16768e;
                String str4 = this.f16769f;
                SourceType sourceType = SourceType.Inbox;
                Long valueOf = Long.valueOf(this.f16770g);
                Boolean valueOf2 = Boolean.valueOf(this.f16771h);
                Boolean valueOf3 = Boolean.valueOf(this.f16772i);
                s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e(sourceType, "source");
                Intent intent = new Intent((Context) activity, (Class<?>) DetailsViewActivity.class);
                intent.putExtra("ARG_TC_ID", str);
                intent.putExtra("NAME", str2);
                intent.putExtra("NORMALIZED_NUMBER", str3);
                intent.putExtra("RAW_NUMBER", str4);
                intent.putExtra("COUNTRY_CODE", (String) null);
                intent.putExtra("ARG_SOURCE_TYPE", 18);
                intent.putExtra("SHOULD_SAVE", false);
                intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
                intent.putExtra("SEARCH_TYPE", 20);
                if (valueOf != null) {
                    intent.putExtra("CONVERSATION_ID", valueOf.longValue());
                }
                if (valueOf2 != null) {
                    intent.putExtra("IS_HIDDEN_NUMBER", valueOf2.booleanValue());
                }
                if (valueOf3 != null) {
                    intent.putExtra("IS_BUSINESS_IM", valueOf3.booleanValue());
                }
                intent.setFlags(603979776);
                s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e(intent, "intentWithExtras");
                activity.startActivity(intent);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.b.a$n */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$n.class */
    public static final class View$OnClickListenerC4930n implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f16774b;

        public View$OnClickListenerC4930n(int i) {
            C4916a.this = r4;
            this.f16774b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C4916a.this.m34240QA().mo34061Ws(this.f16774b);
        }
    }

    /* renamed from: e.a.a.b.a$o */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$o.class */
    public static final class View$OnClickListenerC4931o implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Conversation[] f16776b;

        public View$OnClickListenerC4931o(Conversation[] conversationArr) {
            C4916a.this = r4;
            this.f16776b = conversationArr;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C4916a.this.m34240QA().mo34085Ft(this.f16776b);
        }
    }

    /* renamed from: e.a.a.b.a$p */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$p.class */
    public static final class DialogInterface$OnClickListenerC4932p implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4932p(String str) {
            C4916a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C4916a.this.m34240QA().mo34060Yk(null, FiltersContract.Filters.EntityType.UNKNOWN, false, null);
        }
    }

    /* renamed from: e.a.a.b.a$q */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$q.class */
    public static final class DialogInterface$OnClickListenerC4933q implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean[] f16778a;

        /* renamed from: b */
        public final /* synthetic */ C4916a f16779b;

        /* renamed from: c */
        public final /* synthetic */ boolean f16780c;

        public DialogInterface$OnClickListenerC4933q(boolean[] zArr, C4916a c4916a, boolean z, int i, int i2) {
            this.f16778a = zArr;
            this.f16779b = c4916a;
            this.f16780c = z;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f16779b.m34240QA().mo34093Ad(this.f16780c, this.f16778a[0]);
        }
    }

    /* renamed from: e.a.a.b.a$r */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$r.class */
    public static final class C4934r implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ boolean[] f16781a;

        public C4934r(boolean[] zArr) {
            this.f16781a = zArr;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f16781a[0] = z;
        }
    }

    /* renamed from: e.a.a.b.a$s */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$s.class */
    public static final class View$OnClickListenerC4935s implements View.OnClickListener {
        public View$OnClickListenerC4935s() {
            C4916a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C4916a.this.m34240QA().mo34067Sh();
        }
    }

    /* renamed from: e.a.a.b.a$t */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$t.class */
    public static final class C4936t extends Snackbar.a {
        public C4936t() {
            C4916a.this = r4;
        }

        /* renamed from: a */
        public void m34230a(Object obj, int i) {
            Snackbar snackbar = (Snackbar) obj;
            if (i != 1) {
                C4916a.this.m34240QA().mo34055dn();
            }
        }
    }

    /* renamed from: e.a.a.b.a$u */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$u.class */
    public static final class C4937u extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4937u() {
            super(0);
            C4916a.this = r4;
        }

        public Object invoke() {
            C4916a.this.m34240QA().mo34088Eq();
            return s.a;
        }
    }

    /* renamed from: e.a.a.b.a$v */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/a$v.class */
    public static final class DialogInterface$OnClickListenerC4938v implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4938v(String str) {
            C4916a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C4916a.this.m34240QA().mo34063Uq();
        }
    }

    /* renamed from: OA */
    public static final /* synthetic */ C18898f m34242OA(C4916a c4916a) {
        C18898f c18898f = c4916a.f16723k0;
        if (c18898f != null) {
            return c18898f;
        }
        s1.z.c.l.l("messagingListAdapter");
        throw null;
    }

    /* renamed from: PA */
    public static final /* synthetic */ C18907o m34241PA(C4916a c4916a) {
        C18907o c18907o = c4916a.f16729n0;
        if (c18907o != null) {
            return c18907o;
        }
        s1.z.c.l.l("promoDelegate");
        throw null;
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: A4 */
    public void mo29990A4() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo34094A4();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: B1 */
    public void mo34152B1(boolean z) {
        AbstractC4963j abstractC4963j = this.f16709b;
        if (abstractC4963j != null) {
            abstractC4963j.mo14348r(z);
        } else {
            s1.z.c.l.l("conversationItemPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: B3 */
    public void mo34151B3() {
        if (!isAdded()) {
            return;
        }
        FragmentManager parentFragmentManager = getParentFragmentManager();
        s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
        s1.z.c.l.e(parentFragmentManager, "fragmentManager");
        new C13684k().show(parentFragmentManager, C13684k.class.getSimpleName());
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Bk */
    public void mo34150Bk(boolean z) {
        int dimensionPixelSize = z ? 0 : getResources().getDimensionPixelSize(2131166432);
        RecyclerView recyclerView = this.f16704W;
        if (recyclerView == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        } else if (recyclerView == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        } else {
            int paddingStart = recyclerView.getPaddingStart();
            RecyclerView recyclerView2 = this.f16704W;
            if (recyclerView2 == null) {
                s1.z.c.l.l("recyclerView");
                throw null;
            }
            int paddingEnd = recyclerView2.getPaddingEnd();
            RecyclerView recyclerView3 = this.f16704W;
            if (recyclerView3 != null) {
                recyclerView.setPadding(paddingStart, dimensionPixelSize, paddingEnd, recyclerView3.getPaddingBottom());
            } else {
                s1.z.c.l.l("recyclerView");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: Bl */
    public void mo34091Bl(long j, String str, String str2, String str3, String str4, boolean z, boolean z2, boolean z3) {
        s1.z.c.l.e(str, "normalizedNumber");
        C16845d c16845d = this.f16694M;
        if (c16845d == null) {
            s1.z.c.l.l("incognitoOnDetailsViewPremiumManager");
            throw null;
        }
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        c16845d.m16928a(childFragmentManager, str3, str4, z, new C4929m(str4, str3, str, str2, j, z2, z3));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: C1 */
    public void mo34149C1() {
        startActivity(c.ua(requireContext(), WizardActivity.class));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: D0 */
    public void mo34148D0() {
        C18898f c18898f = this.f16723k0;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("messagingListAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: D6 */
    public void mo34147D6(String str) {
        s1.z.c.l.e(str, "message");
        Context context = getContext();
        if (context != null) {
            g$a g_a = new g$a(context);
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f156f = str;
            c0037b.f163m = false;
            g_a.m3660i(2131887135, new DialogInterface$OnClickListenerC4932p(str));
            g_a.m3662g(2131887867, null);
            g_a.m3668a().show();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: E1 */
    public void mo34146E1(String str) {
        s1.z.c.l.e(str, "analyticsContext");
        InboxCleanupActivity.C4221a c4221a = InboxCleanupActivity.f13499a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(InboxCleanupActivity.C4221a.m34985b(c4221a, requireContext, null, str, 0, 10));
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: E2 */
    public void mo29989E2() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.mo34089E2();
        AbstractC15073b abstractC15073b = this.f16702U;
        if (abstractC15073b != null) {
            abstractC15073b.mo19180E3();
        } else {
            s1.z.c.l.l("adCounter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: E4 */
    public void mo34145E4(String str) {
        s1.z.c.l.e(str, "analyticsContext");
        startActivity(TruecallerInit.m34553xa(requireContext(), "premium", str));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Eg */
    public void mo34144Eg() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            SettingsActivity.C4692a c4692a = SettingsActivity.f15840g;
            s1.z.c.l.d(activity, "it");
            activity.startActivity(SettingsActivity.C4692a.m34493b(c4692a, activity, SettingsCategory.SETTINGS_GENERAL, false, null, 12));
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: F0 */
    public void mo29988F0() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo34087F0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: FA */
    public void mo34143FA(boolean z) {
        View view = this.f16706Y;
        if (view != null) {
            C19286f.m13683U(view, z);
        } else {
            s1.z.c.l.l("topBannerGroup");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: G3 */
    public void mo34142G3() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            startActivity(PersonalSafetyAwarenessActivity.C4323a.m34829a(context, "promo_banner"));
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: I */
    public void mo34084I(ImGroupInfo imGroupInfo) {
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            activity.startActivity(ImGroupInvitationActivity.m34987pa(activity, imGroupInfo));
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: I5 */
    public void mo34141I5(Set<Integer> set) {
        s1.z.c.l.e(set, "adsPositions");
        for (Number number : set) {
            int intValue = number.intValue();
            C18907o c18907o = this.f16727m0;
            if (c18907o == null) {
                s1.z.c.l.l("adsDelegate");
                throw null;
            }
            int mo14329j = c18907o.mo14329j(intValue);
            C18898f c18898f = this.f16723k0;
            if (c18898f == null) {
                s1.z.c.l.l("messagingListAdapter");
                throw null;
            } else if (c18898f == null) {
                s1.z.c.l.l("messagingListAdapter");
                throw null;
            } else {
                c18898f.notifyItemRangeChanged(mo14329j, c18898f.getItemCount() - mo14329j);
            }
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: I7 */
    public void mo34140I7() {
        AbstractC16111h abstractC16111h = this.f16701T;
        if (abstractC16111h == null) {
            s1.z.c.l.l("videoCallerId");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC16111h.mo17822x(requireContext, OnboardingContext.BANNER);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: J3 */
    public void mo34139J3() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(WhoViewedMeActivity.C4859a.m34279a(requireContext, WhoViewedMeLaunchContext.HOME_TAB_PROMO));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Jo */
    public void mo34138Jo(int i) {
        if (isAdded()) {
            C12731f3 m22714RA = C12731f3.m22714RA(i);
            s1.z.c.l.d(m22714RA, "ProgressDialogFragment.newInstance(text)");
            m22714RA.show(getChildFragmentManager(), "messaging_list_progress_dialog_tag");
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: K4 */
    public void mo34137K4() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        Objects.requireNonNull(DialogInterface$OnShowListenerC7754a.f24214d);
        DialogInterface$OnShowListenerC7754a dialogInterface$OnShowListenerC7754a = new DialogInterface$OnShowListenerC7754a();
        Bundle bundle = new Bundle();
        bundle.putString("type", "priority_call");
        dialogInterface$OnShowListenerC7754a.setArguments(bundle);
        C18334g0.m15211p(childFragmentManager, dialogInterface$OnShowListenerC7754a);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Kb */
    public void mo34136Kb(int i) {
        TextView textView = this.f16703V;
        if (textView != null) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (m34239RA() || i == 0) ? null : C19291g.m13535l0(requireContext(), i, 2130970254), (Drawable) null, (Drawable) null);
        } else {
            s1.z.c.l.l("emptyText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: L8 */
    public void mo34135L8(String str) {
        s1.z.c.l.e(str, "uri");
        Context context = getContext();
        if (context != null) {
            C8613t.m28203i(context, str);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Lb */
    public void mo34134Lb(boolean z) {
        Button button = this.f16707Z;
        if (button == null) {
            s1.z.c.l.l("markAsReadButton");
            throw null;
        }
        button.setAlpha(z ? 1.0f : 0.5f);
        Button button2 = this.f16707Z;
        if (button2 != null) {
            button2.setEnabled(z);
        } else {
            s1.z.c.l.l("markAsReadButton");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.content.Context, com.truecaller.ui.TruecallerInit] */
    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: N2 */
    public void mo34133N2() {
        n3.r.a.l activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof TruecallerInit)) {
            lVar = null;
        }
        ?? r0 = (TruecallerInit) lVar;
        if (r0 != 0) {
            C15282l c15282l = this.f16700S;
            if (c15282l == 0) {
                s1.z.c.l.l("notificationAccessRequester");
                throw null;
            } else if (!c15282l.m18958a(r0, NotificationAccessSource.WHATS_APP_CALLS, C2752R.string.SettingsWhatsAppInCallLogNotificationToastAllowAccess)) {
            } else {
                r0.m34583Fa().m34618a(PermissionPoller.Permission.NOTIFICATION_ACCESS);
            }
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Om */
    public void mo34132Om(Conversation[] conversationArr) {
        s1.z.c.l.e(conversationArr, "pendingArchiveList");
        String quantityString = getResources().getQuantityString(C2752R.plurals.archived_conversations_confirmation, conversationArr.length, Integer.valueOf(conversationArr.length));
        s1.z.c.l.d(quantityString, "resources.getQuantityStr… pendingArchiveList.size)");
        Snackbar l = Snackbar.l(requireView(), quantityString, (int) TimeUnit.SECONDS.toMillis(3L));
        s1.z.c.l.d(l, "Snackbar.make(requireVie…ONDS.toMillis(3).toInt())");
        l.m((int) C2752R.string.unarchived_conversations_undo, new View$OnClickListenerC4931o(conversationArr));
        l.n();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.truecaller.ui.TruecallerInit, android.app.Activity] */
    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: P3 */
    public void mo34131P3() {
        n3.r.a.l activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof TruecallerInit)) {
            lVar = null;
        }
        ?? r0 = (TruecallerInit) lVar;
        if (r0 != 0) {
            C19291g.m13495y1(r0);
            r0.m34583Fa().m34618a(PermissionPoller.Permission.DRAW_OVERLAY);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: Q5 */
    public void mo29987Q5() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.mo34072Q5();
        AbstractC15073b abstractC15073b = this.f16702U;
        if (abstractC15073b != null) {
            abstractC15073b.mo19180E3();
        } else {
            s1.z.c.l.l("adCounter");
            throw null;
        }
    }

    /* renamed from: QA */
    public final AbstractC4977p m34240QA() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            return abstractC4977p;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: R5 */
    public void mo34130R5() {
        AbstractC16111h abstractC16111h = this.f16701T;
        if (abstractC16111h == null) {
            s1.z.c.l.l("videoCallerId");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        abstractC16111h.mo17823w(requireContext, RecordingScreenModes.EDIT, OnboardingContext.BANNER);
    }

    /* renamed from: RA */
    public final boolean m34239RA() {
        boolean z;
        if (Build.VERSION.SDK_INT >= 24) {
            n3.r.a.l requireActivity = requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            if (requireActivity.isInMultiWindowMode()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Rb */
    public void mo34129Rb() {
        Context activity = getActivity();
        if (activity != null) {
            C15282l c15282l = this.f16700S;
            if (c15282l != null) {
                c15282l.m18958a(activity, NotificationAccessSource.PROMO_BANNER_MISSED_CALL_NOTIFICATION, C2752R.string.EnhancedNotificationToastAllowAccess);
            } else {
                s1.z.c.l.l("notificationAccessRequester");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Rd */
    public void mo34128Rd(int i) {
        Snackbar l = Snackbar.l(requireView(), getResources().getQuantityString(C2752R.plurals.ConversationMarkedAsReadUndoText, i, Integer.valueOf(i)), 0);
        l.m((int) C2752R.string.spam_report_notification_undo, new View$OnClickListenerC4935s());
        C4936t c4936t = new C4936t();
        if (l.f6778o == null) {
            l.f6778o = new ArrayList();
        }
        l.f6778o.add(c4936t);
        l.n();
        this.f16739s0 = l;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: S2 */
    public void mo34127S2() {
        Context context = getContext();
        if (context != null) {
            C19291g.m13567a1(context, false, 1);
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: S5 */
    public InboxTab mo29986S5() {
        InboxTab inboxTab = this.f16737r0;
        if (inboxTab != null) {
            return inboxTab;
        }
        s1.z.c.l.l("inboxTab");
        throw null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: U */
    public void mo34126U(PremiumLaunchContext premiumLaunchContext, String str) {
        s1.z.c.l.e(premiumLaunchContext, "launchContext");
        AbstractC16613a2 abstractC16613a2 = this.f16696O;
        if (abstractC16613a2 == null) {
            s1.z.c.l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(C10480a.m26059J(abstractC16613a2, requireContext, premiumLaunchContext, str, null, 8, null));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: V5 */
    public void mo34125V5() {
        Context activity = getActivity();
        if (activity != null) {
            C15282l c15282l = this.f16700S;
            if (c15282l != null) {
                c15282l.m18958a(activity, NotificationAccessSource.PROMO_BANNER_RING_SILENT, C2752R.string.toast_allow_notification_access_ring_silent);
            } else {
                s1.z.c.l.l("notificationAccessRequester");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: W1 */
    public void mo34124W1(String str) {
        AbstractC16613a2 abstractC16613a2 = this.f16696O;
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = null;
        if (abstractC16613a2 == null) {
            s1.z.c.l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        PremiumLaunchContext premiumLaunchContext = PremiumLaunchContext.HOME_TAB_PROMO;
        if (str != null) {
            subscriptionPromoEventMetaData = new SubscriptionPromoEventMetaData(C22128a.m8627e2("UUID.randomUUID().toString()"), str);
        }
        startActivity(C10480a.m26059J(abstractC16613a2, requireContext, premiumLaunchContext, null, subscriptionPromoEventMetaData, 4, null));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: Wl */
    public void mo34062Wl() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        InboxTab inboxTab = InboxTab.PROMOTIONAL;
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(inboxTab, "inboxTab");
        Intent putExtra = new Intent(requireContext, MessagingListActivity.class).putExtra("inbox_tab", inboxTab);
        s1.z.c.l.d(putExtra, "Intent(context, Messagin…XTRA_INBOX_TAB, inboxTab)");
        startActivity(putExtra);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: X8 */
    public void mo34123X8(AbstractC9235b.C9239d c9239d) {
        s1.z.c.l.e(c9239d, "otpCardItem");
        AbstractC10258h abstractC10258h = this.f16697P;
        if (abstractC10258h == null) {
            s1.z.c.l.l("messageLocator");
            throw null;
        }
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C17891a1.C17902k.m15641U0(abstractC10258h, requireContext, c9239d.f28064d, c9239d.f28062b, "insights_tab", 0, 16, null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: Zj */
    public void mo34122Zj(String str) {
        s1.z.c.l.e(str, RemoteMessageConst.MessageBody.MSG);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13589S1(requireContext, 0, str, 0, 5);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: a1 */
    public void mo34059a1(Conversation conversation) {
        s1.z.c.l.e(conversation, "conversation");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            startActivity(GroupInfoActivity.m34988pa(context, conversation));
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: aj */
    public void mo34121aj() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity");
            C21846z1 c21846z1 = new C21846z1(activity, C2752R.string.PermissionDialog_makePersonal, C2752R.string.PermissionDialog_location);
            FragmentManager childFragmentManager = getChildFragmentManager();
            s1.z.c.l.d(childFragmentManager, "childFragmentManager");
            c21846z1.m8995cB(childFragmentManager);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: au */
    public void mo34120au(int i, boolean z, int i2) {
        Context context = getContext();
        if (context != null) {
            boolean[] zArr = {true};
            g$a g_a = new g$a(context);
            g_a.f70854a.f163m = false;
            g_a.m3660i(C2752R.string.btn_delete, new DialogInterface$OnClickListenerC4933q(zArr, this, z, i2, i));
            g_a.m3662g(2131887867, null);
            if (i2 != 0) {
                String quantityString = getResources().getQuantityString(C2752R.plurals.DeleteConversationsQuestion, i, Integer.valueOf(i));
                AlertController.C0037b c0037b = g_a.f70854a;
                c0037b.f154d = quantityString;
                c0037b.f156f = c0037b.f151a.getText(i2);
            } else {
                g_a.f70854a.f156f = getResources().getQuantityString(C2752R.plurals.DeleteConversationsQuestion, i, Integer.valueOf(i));
            }
            if (z) {
                View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.item_checkbox_container, (ViewGroup) null, false);
                View findViewById = inflate.findViewById(2131362756);
                Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.widget.CheckBox");
                ((CheckBox) findViewById).setOnCheckedChangeListener(new C4934r(zArr));
                AlertController.C0037b c0037b2 = g_a.f70854a;
                c0037b2.f171u = inflate;
                c0037b2.f170t = 0;
            }
            g_a.m3668a().show();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: b6 */
    public void mo34119b6() {
        if (!isAdded()) {
            return;
        }
        ManageCallReasonsActivity.C3785b c3785b = ManageCallReasonsActivity.f11438f;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivityForResult(c3785b.m35584a(requireContext, ContextCallAnalyticsContext.HOME_PROMO, true), 8004);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: bv */
    public void mo34118bv(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = this.f16705X;
        if (textView == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView.setText(str);
        TextView textView2 = this.f16705X;
        if (textView2 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView2.setMaxLines(3);
        TextView textView3 = this.f16705X;
        if (textView3 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        TextView textView4 = this.f16705X;
        if (textView4 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView4.setOnClickListener(null);
        Button button = this.f16707Z;
        if (button == null) {
            s1.z.c.l.l("markAsReadButton");
            throw null;
        }
        C19286f.m13684T(button);
        Button button2 = this.f16715g0;
        if (button2 == null) {
            s1.z.c.l.l("toggleUnreadConversationsButton");
            throw null;
        }
        C19286f.m13684T(button2);
        OverlappingAvatarsView overlappingAvatarsView = this.f16717h0;
        if (overlappingAvatarsView != null) {
            C19286f.m13689O(overlappingAvatarsView);
        } else {
            s1.z.c.l.l("topBannerAvatarsView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: c6 */
    public void mo34117c6(String str, String str2, String str3) {
        s1.z.c.l.e(str2, "address");
        s1.z.c.l.e(str3, "message");
        new C12738g4(str, str2, null, 4).show(getParentFragmentManager(), "WarnYourFriendsBottomSheet");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: cy */
    public void mo34116cy(AbstractC9235b.C9239d c9239d) {
        s1.z.c.l.e(c9239d, "otpCardItem");
        if (C15571h.m18631t(requireContext())) {
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            startActivity(PdoViewerActivity.C4121c.m35159a(requireContext, c9239d.f28064d));
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: d3 */
    public void mo29985d3(int i) {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo34057d3(i);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r, p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: e */
    public void mo29984e() {
        AbstractC25450a abstractC25450a = this.f16735q0;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: e2 */
    public void mo29983e2(List<String> list, List<? extends Uri> list2) {
        s1.z.c.l.e(list, "names");
        s1.z.c.l.e(list2, "imageUris");
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo34054e2(list, list2);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: ec */
    public void mo34115ec(int i) {
        TextView textView = this.f16703V;
        if (textView != null) {
            textView.setText(i);
        } else {
            s1.z.c.l.l("emptyText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: g */
    public void mo34114g() {
        n3.b.a.h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f16741t0);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: g0 */
    public void mo34113g0() {
        AbstractC25450a abstractC25450a = this.f16735q0;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: h4 */
    public void mo34112h4(int i, String str) {
        s1.z.c.l.e(str, "message");
        C8230h.C8233c c8233c = C8230h.f25388k;
        n3.b.a.h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        n3.b.a.h hVar = requireActivity;
        String string = getString(i);
        s1.z.c.l.d(string, "getString(title)");
        String string2 = getString(2131887873);
        s1.z.c.l.d(string2, "getString(R.string.StrConfirm)");
        C8230h.C8233c.m28762b(c8233c, hVar, string, str, string2, getString(2131887867), null, new C4937u(), null, null, false, null, 1952);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: ip */
    public void mo34111ip(String str, int i, Uri uri, Uri uri2) {
        s1.z.c.l.e(str, "text");
        TextView textView = this.f16705X;
        if (textView == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView.setText(Html.fromHtml(str));
        TextView textView2 = this.f16705X;
        if (textView2 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView2.setMaxLines(1);
        TextView textView3 = this.f16705X;
        if (textView3 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, C2752R.C2753drawable.ic_arrow_forward_text_secondary, 0);
        TextView textView4 = this.f16705X;
        if (textView4 == null) {
            s1.z.c.l.l("topBannerTextView");
            throw null;
        }
        textView4.setOnClickListener(new View$OnClickListenerC4930n(i));
        Button button = this.f16707Z;
        if (button == null) {
            s1.z.c.l.l("markAsReadButton");
            throw null;
        }
        C19286f.m13689O(button);
        Button button2 = this.f16715g0;
        if (button2 == null) {
            s1.z.c.l.l("toggleUnreadConversationsButton");
            throw null;
        }
        C19286f.m13689O(button2);
        OverlappingAvatarsView overlappingAvatarsView = this.f16717h0;
        if (overlappingAvatarsView == null) {
            s1.z.c.l.l("topBannerAvatarsView");
            throw null;
        }
        boolean z = true;
        if (uri == null) {
            z = uri2 != null;
        }
        C19286f.m13683U(overlappingAvatarsView, z);
        OverlappingAvatarsView overlappingAvatarsView2 = this.f16717h0;
        if (overlappingAvatarsView2 == null) {
            s1.z.c.l.l("topBannerAvatarsView");
            throw null;
        }
        overlappingAvatarsView2.setFirstAvatar(uri);
        OverlappingAvatarsView overlappingAvatarsView3 = this.f16717h0;
        if (overlappingAvatarsView3 != null) {
            overlappingAvatarsView3.setSecondAvatar(uri2);
        } else {
            s1.z.c.l.l("topBannerAvatarsView");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: j */
    public void mo29982j() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo34050j();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: j9 */
    public void mo34110j9(int i) {
        C19291g.m13558d1(this, "android.permission.ACCESS_COARSE_LOCATION", i, true);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: k */
    public boolean mo34109k(String str) {
        s1.z.c.l.e(str, "permissionName");
        n3.r.a.l activity = getActivity();
        return activity != null ? C19291g.m13502w0(activity, str) : false;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: ld */
    public void mo34108ld() {
        Snackbar snackbar = this.f16739s0;
        if (snackbar != null) {
            snackbar.m38405c(3);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: m */
    public void mo34107m(String str) {
        s1.z.c.l.e(str, "message");
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: n5 */
    public void mo34106n5(String str, boolean z, String str2, PhoneNumberType phoneNumberType) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        s1.z.c.l.e(str2, "number");
        s1.z.c.l.e(phoneNumberType, "type");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivityForResult(SpamCategoriesActivity.C4511a.m34732a(requireContext, new SpamCategoryRequest(str, z, C25225a.m3962T1(new NumberAndType(str2, phoneNumberType)), FeedbackSource.BLOCK_FLOW)), 8003);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: nt */
    public void mo34105nt(boolean z) {
        TextView textView = this.f16703V;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        } else {
            s1.z.c.l.l("emptyText");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: o2 */
    public void mo34104o2() {
        AbstractC7244q abstractC7244q = this.f16719i0;
        if (abstractC7244q != null) {
            abstractC7244q.mo29907o2();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C4916a.super.onActivityResult(i, i2, intent);
        boolean z = i2 == -1;
        SpamCategoryResult spamCategoryResult = null;
        if (i != 8003) {
            if (i != 8004) {
                return;
            }
            AbstractC4977p abstractC4977p = this.f16708a;
            if (abstractC4977p != null) {
                abstractC4977p.mo34045se();
                return;
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
        AbstractC4977p abstractC4977p2 = this.f16708a;
        if (abstractC4977p2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (intent != null) {
            spamCategoryResult = (SpamCategoryResult) intent.getParcelableExtra("result");
        }
        abstractC4977p2.mo34040zg(z, spamCategoryResult);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C4916a.super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (!(parentFragment instanceof AbstractC7244q)) {
            parentFragment = null;
        }
        this.f16719i0 = parentFragment;
        Fragment parentFragment2 = getParentFragment();
        if (!(parentFragment2 instanceof AbstractC7217h)) {
            parentFragment2 = null;
        }
        AbstractC7217h abstractC7217h = parentFragment2;
        this.f16721j0 = abstractC7217h;
        if (abstractC7217h != null) {
            abstractC7217h.mo29970me(this);
        }
    }

    public void onCreate(Bundle bundle) {
        C18907o c18907o;
        C4916a.super.onCreate(bundle);
        Bundle arguments = getArguments();
        InboxTab serializable = arguments != null ? arguments.getSerializable("conversation_tab") : null;
        if (serializable == null) {
            serializable = InboxTab.PERSONAL;
        }
        this.f16737r0 = serializable;
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            Objects.requireNonNull(mo10154s);
            InboxTab inboxTab = this.f16737r0;
            if (inboxTab == null) {
                s1.z.c.l.l("inboxTab");
                throw null;
            }
            C4975o c4975o = new C4975o(context, inboxTab);
            C25225a.m3846s(c4975o, C4975o.class);
            C25225a.m3846s(mo10154s, AbstractC15539j2.class);
            C4967l c4967l = new C4967l(c4975o, mo10154s, null);
            this.f16708a = (AbstractC4977p) c4967l.f16974y.get();
            this.f16709b = (AbstractC4963j) c4967l.f16880D.get();
            this.f16710c = (AbstractC15101x) c4967l.f16904P.get();
            this.f16711d = (AbstractC6885h0) c4967l.f16908R.get();
            this.f16712e = (AbstractC6891i0) c4967l.f16912T.get();
            this.f16713f = (AbstractC6943r0) c4967l.f16916V.get();
            this.f16714g = (AbstractC6958u0) c4967l.f16920X.get();
            this.f16716h = (AbstractC6869g0) c4967l.f16924Z.get();
            this.f16718i = (AbstractC6783b0) c4967l.f16929b0.get();
            this.f16720j = (AbstractC6789c0) c4967l.f16933d0.get();
            this.f16722k = (AbstractC6790c1) c4967l.f16937f0.get();
            this.f16724l = (AbstractC6933p0) c4967l.f16941h0.get();
            this.f16726m = (AbstractC6836e0) c4967l.f16945j0.get();
            this.f16728n = (AbstractC6778a1) c4967l.f16949l0.get();
            this.f16730o = (AbstractC6977y) c4967l.f16953n0.get();
            this.f16732p = (AbstractC6848f0) c4967l.f16957p0.get();
            this.f16734q = (AbstractC6973x0) c4967l.f16961r0.get();
            this.f16736r = (AbstractC6978y0) c4967l.f16965t0.get();
            this.f16738s = (AbstractC6911l0) c4967l.f16969v0.get();
            this.f16740t = (AbstractC6968w0) c4967l.f16973x0.get();
            this.f16742u = (AbstractC6922n0) c4967l.f16977z0.get();
            this.f16744v = (AbstractC6938q0) c4967l.f16877B0.get();
            this.f16745w = (AbstractC6953t0) c4967l.f16881D0.get();
            this.f16746x = (AbstractC6897j0) c4967l.f16885F0.get();
            this.f16747y = (AbstractC6905k0) c4967l.f16889H0.get();
            this.f16748z = (AbstractC6797d0) c4967l.f16893J0.get();
            this.f16686A = (AbstractC6948s0) c4967l.f16897L0.get();
            this.f16687B = (AbstractC6963v0) c4967l.f16901N0.get();
            this.f16688C = (AbstractC6784b1) c4967l.f16905P0.get();
            this.f16689D = (AbstractC6983z0) c4967l.f16909R0.get();
            this.f16690E = (AbstractC6917m0) c4967l.f16913T0.get();
            this.f16691J = (AbstractC4964j0) c4967l.f16917V0.get();
            this.f16692K = (AbstractC6387c) c4967l.f16921X0.get();
            AbstractC21631b mo12805A3 = c4967l.f16928b.mo12805A3();
            Objects.requireNonNull(mo12805A3, "Cannot return null from a non-@Nullable component method");
            this.f16693L = mo12805A3;
            AbstractC17197v0 mo11643f = c4967l.f16928b.mo11643f();
            Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
            AbstractC21881d mo12143x4 = c4967l.f16928b.mo12143x4();
            Objects.requireNonNull(mo12143x4, "Cannot return null from a non-@Nullable component method");
            AbstractC19954i0 mo12604P1 = c4967l.f16928b.mo12604P1();
            Objects.requireNonNull(mo12604P1, "Cannot return null from a non-@Nullable component method");
            this.f16694M = new C16845d(mo11643f, mo12143x4, mo12604P1, new C16843b());
            this.f16695N = (AbstractC6928o0) c4967l.f16925Z0.get();
            AbstractC16613a2 mo12777C3 = c4967l.f16928b.mo12777C3();
            Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
            this.f16696O = mo12777C3;
            AbstractC10258h mo12203t = c4967l.f16928b.mo12203t();
            Objects.requireNonNull(mo12203t, "Cannot return null from a non-@Nullable component method");
            this.f16697P = mo12203t;
            AbstractC21834f mo12303l6 = c4967l.f16928b.mo12303l6();
            Objects.requireNonNull(mo12303l6, "Cannot return null from a non-@Nullable component method");
            this.f16698Q = mo12303l6;
            C20592g mo11648b = c4967l.f16928b.mo11648b();
            Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
            this.f16699R = mo11648b;
            C15282l mo12747E6 = c4967l.f16928b.mo12747E6();
            Objects.requireNonNull(mo12747E6, "Cannot return null from a non-@Nullable component method");
            this.f16700S = mo12747E6;
            AbstractC16111h mo12134y = c4967l.f16928b.mo12134y();
            Objects.requireNonNull(mo12134y, "Cannot return null from a non-@Nullable component method");
            this.f16701T = mo12134y;
            AbstractC15073b mo12306l2 = c4967l.f16928b.mo12306l2();
            Objects.requireNonNull(mo12306l2, "Cannot return null from a non-@Nullable component method");
            this.f16702U = mo12306l2;
            AbstractC4963j abstractC4963j = this.f16709b;
            if (abstractC4963j == null) {
                s1.z.c.l.l("conversationItemPresenter");
                throw null;
            }
            this.f16725l0 = new C18910r<>(abstractC4963j, C2752R.layout.item_conversation, new C4922f(), C4923g.f16759b);
            AbstractC15101x abstractC15101x = this.f16710c;
            if (abstractC15101x == null) {
                s1.z.c.l.l("multiAdsPresenter");
                throw null;
            }
            C20592g c20592g = this.f16699R;
            if (c20592g == null) {
                s1.z.c.l.l("featuresRegistry");
                throw null;
            }
            this.f16727m0 = C15070a.m19182a(abstractC15101x, c20592g, this.f16743u0);
            Context applicationContext2 = context.getApplicationContext();
            Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s2 = ((AbstractC21187w1) applicationContext2).mo10154s();
            s1.z.c.l.d(mo10154s2, "(context.applicationCont…GraphHolder).objectsGraph");
            if (mo10154s2.mo12263o5()) {
                AbstractC6885h0 abstractC6885h0 = this.f16711d;
                if (abstractC6885h0 == null) {
                    s1.z.c.l.l("promotionalTabPromoPresenter");
                    throw null;
                }
                C18906n c18906n = new C18906n(abstractC6885h0, C2752R.C2754id.view_type_promotional_tab_promo, new C4918b(26, this));
                AbstractC6891i0 abstractC6891i0 = this.f16712e;
                if (abstractC6891i0 == null) {
                    s1.z.c.l.l("spamTabPromoPresenter");
                    throw null;
                }
                C18906n c18906n2 = new C18906n(abstractC6891i0, C2752R.C2754id.view_type_spam_tab_promo, new C4918b(27, this));
                AbstractC6943r0 abstractC6943r0 = this.f16713f;
                if (abstractC6943r0 == null) {
                    s1.z.c.l.l("readAndReplyPresenter");
                    throw null;
                }
                C18906n c18906n3 = new C18906n(abstractC6943r0, C2752R.C2754id.view_type_read_and_reply_sms, new C4918b(28, this));
                AbstractC6958u0 abstractC6958u0 = this.f16714g;
                if (abstractC6958u0 == null) {
                    s1.z.c.l.l("updateAppPresenter");
                    throw null;
                }
                C18906n c18906n4 = new C18906n(abstractC6958u0, C2752R.C2754id.view_type_update_app, new C4918b(29, this));
                AbstractC6928o0 abstractC6928o0 = this.f16695N;
                if (abstractC6928o0 == null) {
                    s1.z.c.l.l("premiumBlockingPromoPresenter");
                    throw null;
                }
                C18906n c18906n5 = new C18906n(abstractC6928o0, C2752R.C2754id.view_type_premium_blocking_promo, new C4918b(30, this));
                AbstractC6911l0 abstractC6911l0 = this.f16738s;
                if (abstractC6911l0 == null) {
                    s1.z.c.l.l("newInboxPromoPresenter");
                    throw null;
                }
                C18906n c18906n6 = new C18906n(abstractC6911l0, C2752R.C2754id.view_type_new_inbox_promo, new C4918b(31, this));
                AbstractC6917m0 abstractC6917m0 = this.f16690E;
                if (abstractC6917m0 == null) {
                    s1.z.c.l.l("nonePromoPresenter");
                    throw null;
                }
                c18907o = new C18907o(c18906n, c18906n2, c18906n3, c18906n4, c18906n5, c18906n6, new C18906n(abstractC6917m0, C2752R.C2754id.view_type_promo_none, C4919c.f16754d));
            } else {
                AbstractC6891i0 abstractC6891i02 = this.f16712e;
                if (abstractC6891i02 == null) {
                    s1.z.c.l.l("spamTabPromoPresenter");
                    throw null;
                }
                C18906n c18906n7 = new C18906n(abstractC6891i02, C2752R.C2754id.view_type_spam_tab_promo, new C4918b(0, this));
                AbstractC6943r0 abstractC6943r02 = this.f16713f;
                if (abstractC6943r02 == null) {
                    s1.z.c.l.l("readAndReplyPresenter");
                    throw null;
                }
                C18906n c18906n8 = new C18906n(abstractC6943r02, C2752R.C2754id.view_type_read_and_reply_sms, new C4918b(1, this));
                AbstractC6958u0 abstractC6958u02 = this.f16714g;
                if (abstractC6958u02 == null) {
                    s1.z.c.l.l("updateAppPresenter");
                    throw null;
                }
                C18906n c18906n9 = new C18906n(abstractC6958u02, C2752R.C2754id.view_type_update_app, new C4918b(2, this));
                AbstractC6869g0 abstractC6869g0 = this.f16716h;
                if (abstractC6869g0 == null) {
                    s1.z.c.l.l("inCallUIPromoPresenter");
                    throw null;
                }
                C18906n c18906n10 = new C18906n(abstractC6869g0, C2752R.C2754id.view_type_incallui_promo, new C4918b(3, this));
                AbstractC6790c1 abstractC6790c1 = this.f16722k;
                if (abstractC6790c1 == null) {
                    s1.z.c.l.l("whoViewedMePromoPresenter");
                    throw null;
                }
                C18906n c18906n11 = new C18906n(abstractC6790c1, C2752R.C2754id.view_type_who_viewed_me_promo, new C4918b(4, this));
                AbstractC6928o0 abstractC6928o02 = this.f16695N;
                if (abstractC6928o02 == null) {
                    s1.z.c.l.l("premiumBlockingPromoPresenter");
                    throw null;
                }
                C18906n c18906n12 = new C18906n(abstractC6928o02, C2752R.C2754id.view_type_premium_blocking_promo, new C4918b(5, this));
                AbstractC6789c0 abstractC6789c0 = this.f16720j;
                if (abstractC6789c0 == null) {
                    s1.z.c.l.l("disableBatteryOptimizationPromoPresenter");
                    throw null;
                }
                C18906n c18906n13 = new C18906n(abstractC6789c0, C2752R.C2754id.view_type_disable_battery_optimization_promo, new C4918b(6, this));
                AbstractC6973x0 abstractC6973x0 = this.f16734q;
                if (abstractC6973x0 == null) {
                    s1.z.c.l.l("videoCallerIdPromoPresenter");
                    throw null;
                }
                C18906n c18906n14 = new C18906n(abstractC6973x0, C2752R.C2754id.view_type_video_caller_id_promo, new C4918b(7, this));
                AbstractC6978y0 abstractC6978y0 = this.f16736r;
                if (abstractC6978y0 == null) {
                    s1.z.c.l.l("videoCallerIdUpdatePromoPresenter");
                    throw null;
                }
                C18906n c18906n15 = new C18906n(abstractC6978y0, C2752R.C2754id.view_type_video_caller_id_update_promo, new C4918b(8, this));
                AbstractC6783b0 abstractC6783b0 = this.f16718i;
                if (abstractC6783b0 == null) {
                    s1.z.c.l.l("contextCallPromoPresenter");
                    throw null;
                }
                C18906n c18906n16 = new C18906n(abstractC6783b0, C2752R.C2754id.view_type_context_call_home_promo, new C4918b(9, this));
                AbstractC6968w0 abstractC6968w0 = this.f16740t;
                if (abstractC6968w0 == null) {
                    s1.z.c.l.l("verifiedBusinessAwarenessPresenter");
                    throw null;
                }
                C18906n c18906n17 = new C18906n(abstractC6968w0, C2752R.C2754id.view_type_verified_business_awareness, new C4918b(10, this));
                AbstractC6922n0 abstractC6922n0 = this.f16742u;
                if (abstractC6922n0 == null) {
                    s1.z.c.l.l("personalSafetyPromoPresenter");
                    throw null;
                }
                C18906n c18906n18 = new C18906n(abstractC6922n0, C2752R.C2754id.view_type_personal_safety_promo, new C4918b(11, this));
                AbstractC6933p0 abstractC6933p0 = this.f16724l;
                if (abstractC6933p0 == null) {
                    s1.z.c.l.l("premiumPromoPresenter");
                    throw null;
                }
                C18906n c18906n19 = new C18906n(abstractC6933p0, C2752R.C2754id.view_type_premium_promo, new C4918b(12, this));
                AbstractC6836e0 abstractC6836e0 = this.f16726m;
                if (abstractC6836e0 == null) {
                    s1.z.c.l.l("ghostCallPromoPresenter");
                    throw null;
                }
                C18906n c18906n20 = new C18906n(abstractC6836e0, C2752R.C2754id.view_type_ghost_call_promo, new C4918b(13, this));
                AbstractC6778a1 abstractC6778a1 = this.f16728n;
                if (abstractC6778a1 == null) {
                    s1.z.c.l.l("whatsAppCallerIdPromoPresenter");
                    throw null;
                }
                C18906n c18906n21 = new C18906n(abstractC6778a1, C2752R.C2754id.view_type_whats_app_caller_id_promo, new C4918b(14, this));
                AbstractC6977y abstractC6977y = this.f16730o;
                if (abstractC6977y == null) {
                    s1.z.c.l.l("announceCallerIdPromoPresenter");
                    throw null;
                }
                C18906n c18906n22 = new C18906n(abstractC6977y, C2752R.C2754id.view_type_announce_caller_id_promo, new C4918b(15, this));
                AbstractC6848f0 abstractC6848f0 = this.f16732p;
                if (abstractC6848f0 == null) {
                    s1.z.c.l.l("groupVoicePromoPresenter");
                    throw null;
                }
                C18906n c18906n23 = new C18906n(abstractC6848f0, C2752R.C2754id.view_type_group_voice_promo, new C4918b(16, this));
                AbstractC6938q0 abstractC6938q0 = this.f16744v;
                if (abstractC6938q0 == null) {
                    s1.z.c.l.l("priorityCallAwarenessPresenter");
                    throw null;
                }
                C18906n c18906n24 = new C18906n(abstractC6938q0, C2752R.C2754id.view_type_priority_call_awareness, new C4918b(17, this));
                AbstractC6953t0 abstractC6953t0 = this.f16745w;
                if (abstractC6953t0 == null) {
                    s1.z.c.l.l("secondaryPhoneNumberProPresenter");
                    throw null;
                }
                C18906n c18906n25 = new C18906n(abstractC6953t0, C2752R.C2754id.view_type_secondary_phone_number_promo, new C4918b(18, this));
                AbstractC6897j0 abstractC6897j0 = this.f16746x;
                if (abstractC6897j0 == null) {
                    s1.z.c.l.l("locationAccessPromoPresenter");
                    throw null;
                }
                C18906n c18906n26 = new C18906n(abstractC6897j0, C2752R.C2754id.view_type_location_access_promo, new C4918b(19, this));
                AbstractC6905k0 abstractC6905k0 = this.f16747y;
                if (abstractC6905k0 == null) {
                    s1.z.c.l.l("missedCallNotificationPromoPresenter");
                    throw null;
                }
                C18906n c18906n27 = new C18906n(abstractC6905k0, C2752R.C2754id.view_type_missed_call_notification_promo, new C4918b(20, this));
                AbstractC6797d0 abstractC6797d0 = this.f16748z;
                if (abstractC6797d0 == null) {
                    s1.z.c.l.l("drawPermissionPromoPresenter");
                    throw null;
                }
                C18906n c18906n28 = new C18906n(abstractC6797d0, C2752R.C2754id.view_type_draw_permission_promo, new C4918b(21, this));
                AbstractC6948s0 abstractC6948s0 = this.f16686A;
                if (abstractC6948s0 == null) {
                    s1.z.c.l.l("requestDoNotDisturbAccessPromoPresenter");
                    throw null;
                }
                C18906n c18906n29 = new C18906n(abstractC6948s0, C2752R.C2754id.view_type_request_do_not_disturb_access_promo, new C4918b(22, this));
                AbstractC6963v0 abstractC6963v0 = this.f16687B;
                if (abstractC6963v0 == null) {
                    s1.z.c.l.l("updateMobileServicesPromoPresenter");
                    throw null;
                }
                C18906n c18906n30 = new C18906n(abstractC6963v0, C2752R.C2754id.view_type_update_mobile_services_promo, new C4918b(23, this));
                AbstractC6784b1 abstractC6784b1 = this.f16688C;
                if (abstractC6784b1 == null) {
                    s1.z.c.l.l("whatsAppNotificationAccessPromoPresenter");
                    throw null;
                }
                C18906n c18906n31 = new C18906n(abstractC6784b1, C2752R.C2754id.view_type_whatsapp_notification_access_promo, new C4918b(24, this));
                AbstractC6983z0 abstractC6983z0 = this.f16689D;
                if (abstractC6983z0 == null) {
                    s1.z.c.l.l("whatsAppCallDetectedPromoPresenter");
                    throw null;
                }
                C18906n c18906n32 = new C18906n(abstractC6983z0, C2752R.C2754id.view_type_whatsapp_call_detected_promo, new C4918b(25, this));
                AbstractC6917m0 abstractC6917m02 = this.f16690E;
                if (abstractC6917m02 == null) {
                    s1.z.c.l.l("nonePromoPresenter");
                    throw null;
                }
                c18907o = new C18907o(c18906n7, c18906n8, c18906n9, c18906n10, c18906n11, c18906n12, c18906n13, c18906n14, c18906n15, c18906n16, c18906n17, c18906n18, c18906n19, c18906n20, c18906n21, c18906n22, c18906n23, c18906n24, c18906n25, c18906n26, c18906n27, c18906n28, c18906n29, c18906n30, c18906n31, c18906n32, new C18906n(abstractC6917m02, C2752R.C2754id.view_type_promo_none, C4919c.f16753c));
            }
            this.f16729n0 = c18907o;
            AbstractC4964j0 abstractC4964j0 = this.f16691J;
            if (abstractC4964j0 == null) {
                s1.z.c.l.l("promotionalThreadsItemPresenter");
                throw null;
            }
            this.f16731o0 = new C18910r<>(abstractC4964j0, C2752R.layout.item_promotional_threads, new C4924h(), C4925i.f16761b);
            AbstractC6387c abstractC6387c = this.f16692K;
            if (abstractC6387c == null) {
                s1.z.c.l.l("otpItemPresenter");
                throw null;
            }
            C18910r<? super C6383a, ? super C6383a> c18910r = new C18910r<>(abstractC6387c, 2131559079, new C4926j(), C4927k.f16763b);
            this.f16733p0 = c18910r;
            C18910r<? super C4943c, ? super C4943c> c18910r2 = this.f16725l0;
            if (c18910r2 == null) {
                s1.z.c.l.l("conversationDelegate");
                throw null;
            }
            C18913u mo14330f = c18910r2.mo14330f(c18910r, new C18899g(0, 1));
            C18907o c18907o2 = this.f16727m0;
            if (c18907o2 == null) {
                s1.z.c.l.l("adsDelegate");
                throw null;
            }
            C18913u mo14330f2 = mo14330f.mo14330f(c18907o2, new C18909q(2, 7, false, 4));
            C18907o c18907o3 = this.f16729n0;
            if (c18907o3 == null) {
                s1.z.c.l.l("promoDelegate");
                throw null;
            }
            C18913u mo14330f3 = mo14330f2.mo14330f(c18907o3, new C18899g(0, 1));
            C18910r<? super C4976o0, ? super C4976o0> c18910r3 = this.f16731o0;
            if (c18910r3 == null) {
                s1.z.c.l.l("promotionalThreadsDelegate");
                throw null;
            }
            C18898f c18898f = new C18898f(mo14330f3.mo14330f(c18910r3, new C18899g(0, 1)));
            c18898f.setHasStableIds(true);
            this.f16723k0 = c18898f;
            setHasOptionsMenu(true);
            AbstractC4977p abstractC4977p = this.f16708a;
            if (abstractC4977p == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            abstractC4977p.mo11014F3(this);
            AbstractC4977p abstractC4977p2 = this.f16708a;
            if (abstractC4977p2 != null) {
                abstractC4977p2.onVisibilityChanged(false);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_conversation_list, viewGroup, false);
    }

    public void onDestroy() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.mo11013xb();
        C4916a.super.onDestroy();
    }

    public void onDestroyView() {
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.mo9806c();
        C4916a.super.onDestroyView();
    }

    public void onDetach() {
        C4916a.super.onDetach();
        this.f16719i0 = null;
        AbstractC7217h abstractC7217h = this.f16721j0;
        if (abstractC7217h != null) {
            abstractC7217h.mo29971dh(this);
        }
        this.f16721j0 = null;
    }

    public void onPause() {
        C4916a.super.onPause();
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.onPause();
        AbstractC4977p abstractC4977p2 = this.f16708a;
        if (abstractC4977p2 != null) {
            abstractC4977p2.onVisibilityChanged(false);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        C4916a.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.onRequestPermissionsResult(i, strArr, iArr);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C4916a.super.onResume();
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC4977p.onResume();
        AbstractC4977p abstractC4977p2 = this.f16708a;
        if (abstractC4977p2 != null) {
            abstractC4977p2.onVisibilityChanged(true);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStart() {
        C4916a.super.onStart();
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.onStart();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStop() {
        C4916a.super.onStop();
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.onStop();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C4916a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(2131365382);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        this.f16704W = (RecyclerView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.empty_text);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.empty_text)");
        this.f16703V = (TextView) findViewById2;
        if (m34239RA()) {
            TextView textView = this.f16703V;
            if (textView == null) {
                s1.z.c.l.l("emptyText");
                throw null;
            }
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
            c0111a.f597A = 0.7f;
            TextView textView2 = this.f16703V;
            if (textView2 == null) {
                s1.z.c.l.l("emptyText");
                throw null;
            }
            textView2.setLayoutParams(c0111a);
        }
        RecyclerView recyclerView = this.f16704W;
        if (recyclerView == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        }
        recyclerView.setItemAnimator(null);
        RecyclerView recyclerView2 = this.f16704W;
        if (recyclerView2 == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        }
        recyclerView2.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView3 = this.f16704W;
        if (recyclerView3 == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        }
        C18898f c18898f = this.f16723k0;
        if (c18898f == null) {
            s1.z.c.l.l("messagingListAdapter");
            throw null;
        }
        recyclerView3.setAdapter(c18898f);
        RecyclerView recyclerView4 = this.f16704W;
        if (recyclerView4 == null) {
            s1.z.c.l.l("recyclerView");
            throw null;
        }
        recyclerView4.addOnScrollListener(new C4928l());
        View findViewById3 = view.findViewById(C2752R.C2754id.topBanner);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.topBanner)");
        this.f16706Y = findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.topBannerText);
        s1.z.c.l.d(findViewById4, "view.findViewById(R.id.topBannerText)");
        this.f16705X = (TextView) findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.markAsReadButton);
        s1.z.c.l.d(findViewById5, "view.findViewById(R.id.markAsReadButton)");
        Button button = (Button) findViewById5;
        this.f16707Z = button;
        button.setOnClickListener(new View$OnClickListenerC4917a(0, this));
        View findViewById6 = view.findViewById(C2752R.C2754id.avatars);
        s1.z.c.l.d(findViewById6, "view.findViewById(R.id.avatars)");
        this.f16717h0 = (OverlappingAvatarsView) findViewById6;
        View findViewById7 = view.findViewById(C2752R.C2754id.toggleUnreadButton);
        s1.z.c.l.d(findViewById7, "view.findViewById(R.id.toggleUnreadButton)");
        Button button2 = (Button) findViewById7;
        this.f16715g0 = button2;
        button2.setOnClickListener(new View$OnClickListenerC4917a(1, this));
        AbstractC4977p abstractC4977p = this.f16708a;
        if (abstractC4977p != null) {
            abstractC4977p.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: q2 */
    public void mo34046q2(Conversation conversation, int i) {
        s1.z.c.l.e(conversation, "conversation");
        Intent intent = new Intent(getContext(), ConversationActivity.class);
        intent.putExtra("conversation", conversation);
        intent.putExtra("filter", i);
        InboxTab inboxTab = this.f16737r0;
        if (inboxTab == null) {
            s1.z.c.l.l("inboxTab");
            throw null;
        }
        intent.putExtra("launch_source", inboxTab.getAnalyticsContext());
        n3.r.a.l activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.startActivityForResult(intent, (int) JosStatusCodes.RTN_CODE_NO_SUPPORT_JOS);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: r3 */
    public void mo34103r3() {
        if (isAdded()) {
            k m42942K = getChildFragmentManager().m42942K("messaging_list_progress_dialog_tag");
            if (!(m42942K instanceof k)) {
                return;
            }
            m42942K.dismissAllowingStateLoss();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x011c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00be A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: ts */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.Integer> mo34102ts() {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4916a.mo34102ts():java.util.List");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: u3 */
    public void mo34101u3(String str, String str2) {
        if (getActivity() != null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            s1.z.c.l.d(childFragmentManager, "childFragmentManager");
            s1.z.c.l.e(childFragmentManager, "fragmentManager");
            new C17253b().show(childFragmentManager, C17253b.class.getSimpleName());
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: we */
    public void mo34100we(String str) {
        s1.z.c.l.e(str, "message");
        Context context = getContext();
        if (context != null) {
            g$a g_a = new g$a(context);
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f156f = str;
            c0037b.f163m = false;
            g_a.m3660i(C2752R.string.Unblock, new DialogInterface$OnClickListenerC4938v(str));
            g_a.m3662g(2131887867, null);
            g_a.m3668a().show();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: wq */
    public void mo34099wq(int i) {
        Button button = this.f16715g0;
        if (button != null) {
            button.setText(i);
        } else {
            s1.z.c.l.l("toggleUnreadConversationsButton");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4981r
    /* renamed from: x3 */
    public void mo34098x3() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        Objects.requireNonNull(DialogInterface$OnShowListenerC7754a.f24214d);
        DialogInterface$OnShowListenerC7754a dialogInterface$OnShowListenerC7754a = new DialogInterface$OnShowListenerC7754a();
        Bundle bundle = new Bundle();
        bundle.putString("type", "verified_business");
        dialogInterface$OnShowListenerC7754a.setArguments(bundle);
        C18334g0.m15211p(childFragmentManager, dialogInterface$OnShowListenerC7754a);
    }

    @Override // p193e.p194a.p195a.p279r0.AbstractC7216g
    /* renamed from: z0 */
    public void mo29981z0(InboxTab inboxTab) {
        s1.z.c.l.e(inboxTab, "inboxTab");
        AbstractC7217h abstractC7217h = this.f16721j0;
        if (abstractC7217h != null) {
            abstractC7217h.mo29908z0(inboxTab);
        }
    }
}
