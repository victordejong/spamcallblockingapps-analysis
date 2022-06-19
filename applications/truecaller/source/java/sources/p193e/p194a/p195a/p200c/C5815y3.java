package p193e.p194a.p195a.p200c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyCallback;
import android.text.Editable;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.webkit.URLUtil;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.C0297R;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.material.snackbar.Snackbar;
import com.google.common.collect.Collections2;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.common.p156ui.dialogs.ConfirmationDialog;
import com.truecaller.common.p156ui.fab.FloatingActionButton;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.insights.p168ui.p169qa.view.PdoViewerActivity;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.conversation.Action;
import com.truecaller.messaging.conversation.ConversationActionModeView;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.conversation.EmojiPokeButton;
import com.truecaller.messaging.conversation.MessageSnippetView;
import com.truecaller.messaging.conversation.draft.DraftActivity;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.conversation.emoji.EmojiPokeView;
import com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInviteLinkDialogActivity;
import com.truecaller.messaging.conversation.mention.MentionSpan;
import com.truecaller.messaging.conversation.messageDetails.MessageDetailsActivity;
import com.truecaller.messaging.conversation.notifications.ConversationNotificationSettingsActivity;
import com.truecaller.messaging.conversation.richtext.TextDelimiterFormatter;
import com.truecaller.messaging.conversation.search.SearchConversationActivity;
import com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton;
import com.truecaller.messaging.conversation.voice_notes.RecordToastView;
import com.truecaller.messaging.conversation.voice_notes.RecordView;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.messaging.groupinfo.GroupInfoActivity;
import com.truecaller.messaging.imgroupinvitation.ImGroupInvitationActivity;
import com.truecaller.messaging.inboxcleanup.InboxCleanupActivity;
import com.truecaller.messaging.linkpreviews.LinkPreviewDraftView;
import com.truecaller.messaging.mediamanager.MediaManagerActivity;
import com.truecaller.messaging.mediaviewer.MediaViewerActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.messaging.views.ChatSwitchView;
import com.truecaller.messaging.views.MediaEditText;
import com.truecaller.messaging.views.Switch;
import com.truecaller.multisim.SimInfo;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.dialogs.DeleteOtpBottomSheetOption;
import com.truecaller.p183ui.view.AvailabilityView;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.permission.RequiredPermissionsActivity;
import com.truecaller.placepicker.PlacePickerActivity;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.C25508g0;
import p1727n3.p1744b0.p1745a.C25595i;
import p1727n3.p1744b0.p1745a.C25601k;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1821i.C26574e;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.C21846z1;
import p193e.p194a.p1002k4.C16506c;
import p193e.p194a.p1011l.p1033v2.C17253b;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18906n;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1114o5.C19047j1;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1114o5.p1120d2.AbstractC19012b;
import p193e.p194a.p1114o5.p1120d2.C19010a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1164r.p1170c.AbstractC19738g;
import p193e.p194a.p1164r.p1170c.ViewTreeObserver$OnGlobalLayoutListenerC19739h;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1221t.p1222a.C20273b;
import p193e.p194a.p1221t.p1222a.C20277c;
import p193e.p194a.p1221t.p1222a.C20298m;
import p193e.p194a.p1221t.p1222a.ViewTreeObserver$OnGlobalLayoutListenerC20285h;
import p193e.p194a.p1221t.p1222a.p1223a.AbstractC20247g;
import p193e.p194a.p1221t.p1222a.p1228y.C20346d;
import p193e.p194a.p1334w.p1335a.C21167a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p195a.C6060f0;
import p193e.p194a.p195a.p200c.p201a.AbstractC5027g;
import p193e.p194a.p195a.p200c.p201a.AbstractC5040n;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p204f.C5255a;
import p193e.p194a.p195a.p200c.p206i.C5343a;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5410b;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5412d;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5414f;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5425l;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5427n;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5429p;
import p193e.p194a.p195a.p200c.p208k.p210c.C5435d;
import p193e.p194a.p195a.p200c.p208k.p211d.C5437b;
import p193e.p194a.p195a.p200c.p213l8.AbstractC5489c;
import p193e.p194a.p195a.p200c.p213l8.AbstractC5498i;
import p193e.p194a.p195a.p200c.p216n8.C5589a;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5634c;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5644j;
import p193e.p194a.p195a.p200c.p218o8.C5637f;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5669i;
import p193e.p194a.p195a.p200c.p219p8.ActionMode$CallbackC5671k;
import p193e.p194a.p195a.p200c.p219p8.C5668h;
import p193e.p194a.p195a.p200c.p221r8.C5700b;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import p193e.p194a.p195a.p200c.p221r8.C5703e;
import p193e.p194a.p195a.p237h1.C6336l;
import p193e.p194a.p195a.p241i1.RunnableC6406i;
import p193e.p194a.p195a.p243j1.AbstractC6437d;
import p193e.p194a.p195a.p285x0.C7296a;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p383e0.C8304c;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8341a;
import p193e.p194a.p372b0.p373a.p390w.C8345d;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p438a.p442b.p443a.AbstractC8734q;
import p193e.p194a.p437c.p438a.p442b.p443a.C8730p;
import p193e.p194a.p437c.p438a.p442b.p443a.DialogInterface$OnShowListenerC8722l;
import p193e.p194a.p437c.p438a.p442b.p443a.DialogInterface$OnShowListenerC8755z;
import p193e.p194a.p437c.p438a.p442b.p445c.C8764a;
import p193e.p194a.p437c.p438a.p442b.p445c.C8769f;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p471e.p474c.C8985a;
import p193e.p194a.p437c.p438a.p506o.AbstractC9439b;
import p193e.p194a.p437c.p438a.p520r.AbstractC9584a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10024k;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10252b;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10328a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import p193e.p194a.p437c.p610y.C10872f;
import p193e.p194a.p437c.p610y.C10888l;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p683a.C12669a;
import p193e.p194a.p682e.p683a.C12738g4;
import p193e.p194a.p682e.p683a.C12781m2;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.k;
import s1.o;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.y3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/y3.class */
public class C5815y3 extends Fragment implements AbstractC5444k5, AbstractC5797w5, AbstractC5443k4, AbstractC5836z5, AbstractC25450a.AbstractC25451a, AbstractC8341a, MediaEditText.AbstractC4283a, AbstractC5835z4, AbstractC5522m3, AbstractC5721s5, AbstractC10330c.AbstractC10331a, AbstractC9584a, AbstractC5644j, AbstractC5239e4, AbstractC5688r4, C5255a.AbstractC5258c {

    /* renamed from: t1 */
    public static final /* synthetic */ int f19433t1 = 0;
    @Inject

    /* renamed from: A */
    public AbstractC20247g f19434A;

    /* renamed from: A0 */
    public ImageView f19435A0;
    @Inject

    /* renamed from: B */
    public AbstractC10330c f19436B;

    /* renamed from: B0 */
    public EmojiPokeView f19437B0;
    @Inject

    /* renamed from: C */
    public AbstractC9691j f19438C;

    /* renamed from: C0 */
    public MessageSnippetView f19439C0;
    @Inject

    /* renamed from: D */
    public AbstractC5040n f19440D;

    /* renamed from: D0 */
    public LinearLayout f19441D0;
    @Inject

    /* renamed from: E */
    public AbstractC5027g f19442E;

    /* renamed from: E0 */
    public View f19443E0;

    /* renamed from: F0 */
    public ViewStub f19444F0;

    /* renamed from: G0 */
    public View f19445G0;

    /* renamed from: H0 */
    public TextView f19446H0;

    /* renamed from: I0 */
    public View f19447I0;
    @Inject

    /* renamed from: J */
    public C8243a f19448J;

    /* renamed from: J0 */
    public RecordToastView f19449J0;
    @Inject

    /* renamed from: K */
    public C5723s7 f19450K;

    /* renamed from: K0 */
    public RecordView f19451K0;
    @Inject

    /* renamed from: L */
    public C5057a3 f19452L;

    /* renamed from: L0 */
    public ConversationActionModeView f19453L0;
    @Inject

    /* renamed from: M */
    public C5113b8 f19454M;

    /* renamed from: M0 */
    public ImageView f19455M0;
    @Inject

    /* renamed from: N */
    public AbstractC10024k f19456N;

    /* renamed from: N0 */
    public ChatSwitchView f19457N0;
    @Inject

    /* renamed from: O */
    public AbstractC10060c f19458O;

    /* renamed from: O0 */
    public RecyclerView f19459O0;
    @Inject

    /* renamed from: P */
    public AbstractC8852j f19460P;

    /* renamed from: P0 */
    public RecyclerView f19461P0;
    @Inject

    /* renamed from: Q */
    public AbstractC10252b f19462Q;

    /* renamed from: Q0 */
    public LinkPreviewDraftView f19463Q0;
    @Inject

    /* renamed from: R */
    public Provider<C20273b> f19464R;

    /* renamed from: R0 */
    public ImageView f19465R0;
    @Inject

    /* renamed from: S */
    public boolean f19466S;
    @Inject

    /* renamed from: S0 */
    public AbstractC5639g f19467S0;

    /* renamed from: T */
    public C18898f f19468T;
    @Inject

    /* renamed from: T0 */
    public AbstractC5634c f19469T0;

    /* renamed from: U */
    public C18907o f19470U;

    /* renamed from: U0 */
    public RecyclerView f19471U0;

    /* renamed from: V */
    public View f19472V;

    /* renamed from: V0 */
    public C18898f f19473V0;

    /* renamed from: W */
    public AvatarXView f19474W;

    /* renamed from: X */
    public TextView f19476X;

    /* renamed from: Y */
    public AvailabilityView f19478Y;

    /* renamed from: Z */
    public LottieAnimationView f19480Z;
    @Inject

    /* renamed from: a */
    public AbstractC5179c5 f19482a;

    /* renamed from: a1 */
    public int f19483a1;
    @Inject

    /* renamed from: b */
    public AbstractC5276f4 f19484b;
    @Inject

    /* renamed from: c */
    public AbstractC5719s4 f19486c;

    /* renamed from: c1 */
    public Toast f19487c1;
    @Inject

    /* renamed from: d */
    public AbstractC5336h3 f19488d;

    /* renamed from: d1 */
    public AbstractC5489c f19489d1;
    @Inject

    /* renamed from: e */
    public AbstractC5108b4 f19490e;

    /* renamed from: e1 */
    public FloatingActionButton f19491e1;
    @Inject

    /* renamed from: f */
    public AbstractC5583n4 f19492f;

    /* renamed from: f1 */
    public AbstractC25450a f19493f1;
    @Inject

    /* renamed from: g */
    public C7296a f19494g;

    /* renamed from: g0 */
    public MediaEditText f19495g0;

    /* renamed from: g1 */
    public C5512m f19496g1;
    @Inject

    /* renamed from: h */
    public AbstractC5776u5 f19497h;

    /* renamed from: h0 */
    public RecordFloatingActionButton f19498h0;

    /* renamed from: h1 */
    public Dialog f19499h1;
    @Inject

    /* renamed from: i */
    public C5700b f19500i;

    /* renamed from: i0 */
    public TextView f19501i0;

    /* renamed from: i1 */
    public TextView f19502i1;
    @Inject

    /* renamed from: j */
    public AbstractC5769t7 f19503j;

    /* renamed from: j0 */
    public ViewTreeObserver$OnGlobalLayoutListenerC20285h f19504j0;

    /* renamed from: j1 */
    public View f19505j1;
    @Inject

    /* renamed from: k */
    public AbstractC19012b f19506k;

    /* renamed from: k0 */
    public ImageButton f19507k0;

    /* renamed from: k1 */
    public C18898f f19508k1;
    @Inject

    /* renamed from: l */
    public AbstractC14965w f19509l;

    /* renamed from: l0 */
    public ImageView f19510l0;

    /* renamed from: l1 */
    public C18898f f19511l1;
    @Inject

    /* renamed from: m */
    public InitiateCallHelper f19512m;

    /* renamed from: m0 */
    public RecyclerView f19513m0;

    /* renamed from: m1 */
    public C18898f f19514m1;
    @Inject

    /* renamed from: n */
    public AbstractC21631b f19515n;

    /* renamed from: n0 */
    public TintedImageView f19516n0;

    /* renamed from: n1 */
    public ValueAnimator f19517n1;
    @Inject

    /* renamed from: o */
    public AbstractC5446k7 f19518o;

    /* renamed from: o0 */
    public EmojiPokeButton f19519o0;
    @Inject

    /* renamed from: p */
    public AbstractC19854f<AbstractC5498i> f19521p;

    /* renamed from: p0 */
    public View f19522p0;
    @Inject
    @Named("UiThread")

    /* renamed from: q */
    public AbstractC19868j f19524q;

    /* renamed from: q0 */
    public ViewGroup f19525q0;

    /* renamed from: q1 */
    public C5668h f19526q1;
    @Inject

    /* renamed from: r */
    public AbstractC5412d f19527r;

    /* renamed from: r0 */
    public ImageView f19528r0;

    /* renamed from: r1 */
    public ActionMode$CallbackC5671k f19529r1;
    @Inject

    /* renamed from: s */
    public AbstractC5425l f19530s;

    /* renamed from: s0 */
    public TextView f19531s0;

    /* renamed from: s1 */
    public ActionMode$CallbackC5669i f19532s1;
    @Inject

    /* renamed from: t */
    public AbstractC5429p f19533t;

    /* renamed from: t0 */
    public View f19534t0;
    @Inject

    /* renamed from: u */
    public C5435d f19535u;

    /* renamed from: u0 */
    public com.google.android.material.floatingactionbutton.FloatingActionButton f19536u0;
    @Inject

    /* renamed from: v */
    public C5437b f19537v;

    /* renamed from: v0 */
    public TextView f19538v0;
    @Inject

    /* renamed from: w */
    public AbstractC5410b f19539w;

    /* renamed from: w0 */
    public ViewStub f19540w0;
    @Inject

    /* renamed from: x */
    public AbstractC5414f f19541x;

    /* renamed from: x0 */
    public View f19542x0;
    @Inject

    /* renamed from: y */
    public AbstractC5427n f19543y;

    /* renamed from: y0 */
    public TextView f19544y0;
    @Inject

    /* renamed from: z */
    public AbstractC5825y5 f19545z;

    /* renamed from: z0 */
    public View f19546z0;

    /* renamed from: W0 */
    public final TextWatcher f19475W0 = new C5816a();

    /* renamed from: X0 */
    public final AbstractC6437d f19477X0 = new C5817b();

    /* renamed from: Y0 */
    public int f19479Y0 = 0;

    /* renamed from: Z0 */
    public boolean f19481Z0 = false;

    /* renamed from: b1 */
    public boolean f19485b1 = false;

    /* renamed from: o1 */
    public final TextWatcher f19520o1 = new C5818c();

    /* renamed from: p1 */
    public final PhoneStateListener f19523p1 = new C5819d();

    /* renamed from: e.a.a.c.y3$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$a.class */
    public class C5816a implements TextWatcher {
        public C5816a() {
            C5815y3.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C5815y3.this.f19467S0.mo32826W7(editable.toString(), C5815y3.this.f19495g0.getSelectionStart(), !C5815y3.this.f19485b1);
            C5815y3.this.f19467S0.mo32828V1(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i3 != 0 || i2 <= 0) {
                return;
            }
            C5815y3.this.f19467S0.mo32827W5(i, i2);
        }
    }

    /* renamed from: e.a.a.c.y3$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$b.class */
    public class C5817b implements AbstractC6437d {
        public C5817b() {
            C5815y3.this = r4;
        }

        @Override // p193e.p194a.p195a.p243j1.AbstractC6437d
        /* renamed from: V */
        public void mo30960V(int i, int i2) {
            C5815y3 c5815y3 = C5815y3.this;
            c5815y3.f19467S0.mo32824ff(i, i2, c5815y3.f19495g0.getText().toString());
        }
    }

    /* renamed from: e.a.a.c.y3$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$c.class */
    public class C5818c implements TextWatcher {
        public C5818c() {
            C5815y3.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C5815y3 c5815y3 = C5815y3.this;
            c5815y3.f19484b.mo33310k(editable, !c5815y3.f19485b1);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: e.a.a.c.y3$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$d.class */
    public class C5819d extends PhoneStateListener {
        public C5819d() {
            C5815y3.this = r4;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            super.onCallStateChanged(i, str);
            C5815y3 c5815y3 = C5815y3.this;
            int i2 = C5815y3.f19433t1;
            Objects.requireNonNull(c5815y3);
            if (i != 0) {
                c5815y3.f19484b.mo33393B2();
                c5815y3.f19486c.mo32682r4();
            }
        }
    }

    /* renamed from: e.a.a.c.y3$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$e.class */
    public class C5820e implements AbstractC19738g {

        /* renamed from: a */
        public final /* synthetic */ View f19551a;

        public C5820e(View view) {
            C5815y3.this = r4;
            this.f19551a = view;
        }

        @Override // p193e.p194a.p1164r.p1170c.AbstractC19738g
        /* renamed from: Iq */
        public void mo12922Iq() {
            C5815y3.this.f19484b.mo33309kh(true);
        }

        @Override // p193e.p194a.p1164r.p1170c.AbstractC19738g
        /* renamed from: Ys */
        public void mo12921Ys() {
            this.f19551a.post(new Runnable() { // from class: e.a.a.c.z
                @Override // java.lang.Runnable
                public final void run() {
                    C5815y3.this.f19484b.mo33309kh(false);
                }
            });
        }
    }

    /* renamed from: e.a.a.c.y3$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$f.class */
    public class C5821f extends AbstractC5110b5 {

        /* renamed from: d */
        public final /* synthetic */ LinearLayoutManager f19553d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5821f(int i, LinearLayoutManager linearLayoutManager) {
            super(i);
            C5815y3.this = r4;
            this.f19553d = linearLayoutManager;
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: d */
        public int mo32393d() {
            return this.f19553d.findFirstVisibleItemPosition();
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: e */
        public void mo32392e() {
            C5815y3.this.mo32342j7(false);
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5
        /* renamed from: f */
        public void mo32391f() {
            C5815y3.this.mo32342j7(true);
        }

        @Override // p193e.p194a.p195a.p200c.AbstractC5110b5, androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            int findFirstCompletelyVisibleItemPosition = this.f19553d.findFirstCompletelyVisibleItemPosition();
            int findLastCompletelyVisibleItemPosition = this.f19553d.findLastCompletelyVisibleItemPosition();
            if (findFirstCompletelyVisibleItemPosition != -1) {
                HashSet hashSet = new HashSet();
                while (findFirstCompletelyVisibleItemPosition <= findLastCompletelyVisibleItemPosition) {
                    hashSet.add(Long.valueOf(C5815y3.this.f19468T.getItemId(findFirstCompletelyVisibleItemPosition)));
                    findFirstCompletelyVisibleItemPosition++;
                }
                C5815y3.this.f19527r.mo33170d(hashSet);
            }
        }
    }

    /* renamed from: e.a.a.c.y3$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$g.class */
    public class C5822g extends AnimatorListenerAdapter {
        public C5822g() {
            C5815y3.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5815y3.this.f19517n1 = null;
        }
    }

    /* renamed from: e.a.a.c.y3$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/y3$h.class */
    public class C5823h extends TelephonyCallback implements TelephonyCallback.CallStateListener {
        public C5823h(C5816a c5816a) {
            C5815y3.this = r4;
        }

        @Override // android.telephony.TelephonyCallback.CallStateListener
        public void onCallStateChanged(int i) {
            C5815y3 c5815y3 = C5815y3.this;
            int i2 = C5815y3.f19433t1;
            Objects.requireNonNull(c5815y3);
            if (i != 0) {
                c5815y3.f19484b.mo33393B2();
                c5815y3.f19486c.mo32682r4();
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: A */
    public void mo32373A() {
        this.f19468T.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: A3 */
    public void mo32372A3(int i) {
        this.f19468T.notifyItemChanged(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ab */
    public void mo32570Ab(boolean z, boolean z2) {
        if (z2) {
            this.f19519o0.setVisible(z);
        } else {
            this.f19519o0.setVisibleWithoutAnimation(z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Ac */
    public void mo32569Ac() {
        new C5180c6(requireContext()).show(getChildFragmentManager(), "ErrorMessageBottomSheet");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ae */
    public void mo32568Ae() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        g$a g_a = new g$a(context);
        g_a.m3664e(C2752R.string.DialogSendAsSeparateMms);
        g_a.m3660i(2131887910, new DialogInterface.OnClickListener() { // from class: e.a.a.c.c2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3.this.f19482a.mo33508hb();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3668a().show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Ar */
    public void mo32567Ar(int i) {
        this.f19480Z.setAnimation(C19291g.m13559d0(requireContext(), i));
        this.f19480Z.m42591g();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: As */
    public boolean mo32566As() {
        return this.f19504j0.isShowing();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Au */
    public boolean mo32565Au() {
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            return abstractC5489c.isVisible();
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Az */
    public void mo32564Az(List<C6060f0> list) {
        C8345d[] c8345dArr = new C8345d[list.size()];
        for (int i = 0; i < list.size(); i++) {
            C6060f0 c6060f0 = list.get(i);
            l.e(c6060f0, "$this$toFabMenuItem");
            c8345dArr[i] = new C8345d(c6060f0.f20120a, c6060f0.f20122c, c6060f0.f20124e, c6060f0.f20123d, null, c6060f0.f20121b, 16);
        }
        this.f19491e1.setMenuItems(c8345dArr);
        this.f19491e1.m35687d();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: B2 */
    public void mo32563B2() {
        this.f19451K0.m35087a(this.f19498h0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: B9 */
    public void mo32562B9(boolean z) {
        if (this.f19526q1 == null || this.f19529r1 == null || this.f19532s1 == null) {
            if (!z) {
                return;
            }
            this.f19526q1 = new C5668h(requireContext(), false);
            this.f19529r1 = new ActionMode$CallbackC5671k(requireContext(), this.f19495g0, false);
            this.f19532s1 = new ActionMode$CallbackC5669i(requireContext(), this.f19495g0, false);
            this.f19495g0.addTextChangedListener(this.f19526q1);
            this.f19495g0.setCustomSelectionActionModeCallback(this.f19529r1);
            this.f19495g0.setCustomInsertionActionModeCallback(this.f19532s1);
        }
        C5668h c5668h = this.f19526q1;
        MediaEditText mediaEditText = this.f19495g0;
        Objects.requireNonNull(c5668h);
        l.e(mediaEditText, "textView");
        if (z != c5668h.f19028b) {
            c5668h.f19028b = z;
            if (z) {
                TextDelimiterFormatter textDelimiterFormatter = TextDelimiterFormatter.f13106b;
                TextDelimiterFormatter.m35099b(mediaEditText, TextDelimiterFormatter.DelimiterVisibility.SHOW);
            } else {
                TextDelimiterFormatter textDelimiterFormatter2 = TextDelimiterFormatter.f13106b;
                l.e(mediaEditText, "textView");
                CharSequence text = mediaEditText.getText();
                CharSequence charSequence = text;
                if (!(text instanceof Spannable)) {
                    charSequence = null;
                }
                Spannable spannable = (Spannable) charSequence;
                if (spannable != null) {
                    TextDelimiterFormatter.m35100a(spannable);
                }
            }
        }
        this.f19529r1.f19036c = z;
        this.f19532s1.f19031c = z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Ba */
    public void mo32561Ba(long j) {
        AbstractC9439b abstractC9439b;
        C5036k.AbstractC5037a abstractC5037a;
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f19513m0.getLayoutManager();
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        int i = -1;
        if (findFirstVisibleItemPosition != -1) {
            while (true) {
                i = -1;
                if (findFirstVisibleItemPosition > findLastVisibleItemPosition) {
                    break;
                } else if (this.f19468T.getItemId(findFirstVisibleItemPosition) == j) {
                    i = findFirstVisibleItemPosition;
                    break;
                } else {
                    findFirstVisibleItemPosition++;
                }
            }
        }
        RecyclerView.AbstractC0313c0 findViewHolderForAdapterPosition = this.f19513m0.findViewHolderForAdapterPosition(i);
        if (findViewHolderForAdapterPosition instanceof ViewTreeObserver$OnPreDrawListenerC5184d) {
            ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d = (ViewTreeObserver$OnPreDrawListenerC5184d) findViewHolderForAdapterPosition;
            C5036k c5036k = viewTreeObserver$OnPreDrawListenerC5184d.f17813g0;
            if (c5036k != null) {
                C12864a2.m22556f0(c5036k.f17242B, c5036k.f17266y, null, null);
                C10635s c10635s = c5036k.f17241A;
                if (c10635s == null || (abstractC5037a = c5036k.f17267z) == null) {
                    return;
                }
                abstractC5037a.mo32694jc(new k<>(c10635s.f31678f, c10635s.f31673a), c10635s.f31683k);
                return;
            }
            C5589a c5589a = viewTreeObserver$OnPreDrawListenerC5184d.f17815h0;
            if (c5589a == null) {
                return;
            }
            String str = viewTreeObserver$OnPreDrawListenerC5184d.f17796Q;
            C8243a c8243a = viewTreeObserver$OnPreDrawListenerC5184d.f17795P;
            ConstraintLayout constraintLayout = c5589a.f18839e.f51169b.f27547e;
            l.d(constraintLayout, "viewInfocardBinding.smar…rdContainer.dataContainer");
            C12864a2.m22556f0(constraintLayout, c5589a.f18836b, str, c8243a);
            C10872f c10872f = c5589a.f18837c;
            if (c10872f == null || (abstractC9439b = c5589a.f18838d) == null) {
                return;
            }
            C10888l c10888l = c10872f.f32284c;
            abstractC9439b.mo27566Ra(c10888l.f32333n, c10888l.f32332m);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [android.widget.ImageButton, com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Bu */
    public void mo32560Bu(boolean z) {
        if (z) {
            this.f19498h0.post(new Runnable() { // from class: e.a.a.c.a1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r4v1, types: [com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton, android.view.View] */
                @Override // java.lang.Runnable
                public final void run() {
                    C5815y3 c5815y3 = C5815y3.this;
                    Context context = c5815y3.getContext();
                    if (context != null) {
                        C8301a.f25570a.m28683a(c5815y3.f19525q0, TooltipDirection.BOTTOM_END, C2752R.string.ConversationHoldToSchedule, c5815y3.f19498h0, context.getResources().getDimension(2131166432), context, C19291g.m13612L(context, 2130970253), true, C5438k0.f18544a);
                    }
                }
            });
            return;
        }
        ViewGroup viewGroup = this.f19525q0;
        l.e(viewGroup, "parent");
        Object tag = viewGroup.getTag();
        Object obj = tag;
        if (!(tag instanceof C8304c)) {
            obj = null;
        }
        C8304c c8304c = (C8304c) obj;
        if (c8304c == null) {
            return;
        }
        viewGroup.removeOnLayoutChangeListener(c8304c.f25583b);
        viewGroup.removeView(c8304c.f25582a);
        viewGroup.setTag(null);
        try {
            Context context = viewGroup.getContext();
            l.d(context, "parent.context");
            C19291g.m13529n0(context).removeView(c8304c.f25584c);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: C2 */
    public void mo32371C2(final Message... messageArr) {
        if (!this.f19438C.mo27248l()) {
            g$a g_a = new g$a(requireContext());
            g_a.m3656m(C2752R.string.ConversationReportSpam);
            g_a.m3664e(C2752R.string.ConversationReportSpamQuestion);
            g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.a.c.j0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C5815y3 c5815y3 = C5815y3.this;
                    c5815y3.f19488d.mo33230Vh(messageArr, true);
                }
            });
            g_a.m3662g(2131887867, null);
            g_a.m3652q();
            return;
        }
        k<List<C10328a>, List<o<C10328a, Long, Long>>> m32486VA = m32486VA(messageArr);
        this.f19488d.mo33230Vh(messageArr, false);
        m32500SA((List) m32486VA.b, "reported_spam");
        boolean z = ((C10328a) ((List) m32486VA.a).get(0)).f30678f;
        String str = ((C10328a) ((List) m32486VA.a).get(0)).f30674b;
        C10530c c10530c = C8769f.f26762a;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        c10530c.m25822f(C10031q.m26803a(str, z));
        this.f19458O.mo26757a(c10530c.m25827a());
        List<C10328a> list = (List) m32486VA.a;
        p<? super Boolean, ? super String, s> pVar = new p() { // from class: e.a.a.c.v
            /* renamed from: k */
            public final Object m32607k(Object obj, Object obj2) {
                C5815y3 c5815y3 = C5815y3.this;
                Message[] messageArr2 = messageArr;
                String str2 = (String) obj2;
                Objects.requireNonNull(c5815y3);
                if (((Boolean) obj).booleanValue()) {
                    C8730p.m28097PA(new AbstractC8734q.C8742h(c5815y3.requireContext(), str2, c5815y3.f19466S)).show(c5815y3.getChildFragmentManager(), C8730p.f26676c);
                } else if (c5815y3.f19438C.mo27236x()) {
                    Snackbar.k(c5815y3.getActivity().findViewById(16908290), 2131889472, -1).n();
                }
                c5815y3.f19488d.mo33221vg(messageArr2, str2);
                return null;
            }
        };
        Objects.requireNonNull(DialogInterface$OnShowListenerC8755z.f26729k);
        l.e(list, "messages");
        l.e(pVar, "callback");
        DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z = new DialogInterface$OnShowListenerC8755z();
        dialogInterface$OnShowListenerC8755z.f26734e = list;
        dialogInterface$OnShowListenerC8755z.f26733d = pVar;
        if (!list.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putString("sender_id", ((C10328a) i.B(list)).f30674b);
            bundle.putBoolean("is_im", ((C10328a) i.B(list)).f30678f);
            dialogInterface$OnShowListenerC8755z.setArguments(bundle);
        }
        dialogInterface$OnShowListenerC8755z.show(getChildFragmentManager(), DialogInterface$OnShowListenerC8755z.f26728j);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: C4 */
    public void mo32370C4(final int i) {
        this.f19513m0.post(new Runnable() { // from class: e.a.a.c.b2
            @Override // java.lang.Runnable
            public final void run() {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19513m0.scrollToPosition(i);
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Cb */
    public void mo32369Cb(Uri uri, String str, Drawable drawable) {
        if (this.f19542x0 == null) {
            View inflate = this.f19540w0.inflate();
            this.f19542x0 = inflate;
            this.f19544y0 = (TextView) inflate.findViewById(C2752R.C2754id.empty_state_text);
            this.f19546z0 = this.f19542x0.findViewById(C2752R.C2754id.empty_state_logo);
            this.f19435A0 = (ImageView) this.f19542x0.findViewById(C2752R.C2754id.empty_state_avatar);
        }
        this.f19542x0.setVisibility(0);
        this.f19544y0.setText(Html.fromHtml(str));
        this.f19546z0.setBackground(drawable);
        if (uri == null) {
            this.f19435A0.setVisibility(8);
            return;
        }
        this.f19435A0.setVisibility(0);
        C17891a1.C17902k.m15653O0(C17891a1.C17902k.m15664K1(getContext()), uri, Integer.valueOf(C19291g.m13612L(getContext(), C2752R.attr.conversation_backgroundColor))).m8427O(this.f19435A0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Cg */
    public void mo32559Cg() {
        C8230h.f25388k.m28763a((h) requireActivity(), getString((int) C2752R.string.ConversationAutoJoinGroupsEnabledTitle), getString((int) C2752R.string.ConversationAutoJoinGroupsEnabledText), getString(2131887893), null, null, null, null, null, true, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Cs */
    public void mo32558Cs(int i) {
        this.f19437B0.m35102e(i, new a() { // from class: e.a.a.c.y0
            public final Object invoke() {
                C5815y3.this.f19484b.mo33349Tg();
                return s.a;
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Cy */
    public void mo32557Cy(int i, int i2) {
        AbstractC25450a abstractC25450a = this.f19493f1;
        if (abstractC25450a != null) {
            abstractC25450a.mo3507o(String.format(getString(i), Integer.valueOf(i2)));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: D8 */
    public void mo32556D8(ArrayList<ForwardContentItem> arrayList, boolean z) {
        Context context = getContext();
        int i = NewConversationActivity.f13580a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(arrayList, "content");
        Intent flags = new Intent(context, NewConversationActivity.class).setAction("android.intent.action.SEND").putParcelableArrayListExtra("forward_content", arrayList).putExtra("is_bubble_intent", z).setFlags(67108864);
        l.d(flags, "Intent(context, NewConve….FLAG_ACTIVITY_CLEAR_TOP)");
        startActivity(flags);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Dd */
    public void mo32555Dd() {
        C8230h.f25388k.m28763a((h) requireActivity(), getString((int) C2752R.string.ConversationNumberResolvedTitle), getString((int) C2752R.string.ConversationNumberResolvedMessage), getString((int) C2752R.string.StrOkGotIt), null, null, null, null, null, true, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5797w5
    /* renamed from: Dj */
    public boolean mo32554Dj(Intent intent, int i) {
        try {
            startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Dr */
    public boolean mo32553Dr() {
        View view = this.f19542x0;
        return view != null && view.getVisibility() == 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: E1 */
    public void mo32552E1(String str) {
        startActivity(InboxCleanupActivity.C4221a.m34985b(InboxCleanupActivity.f13499a, requireContext(), null, str, 0, 10));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ec */
    public void mo32551Ec() {
        m32491UA(false);
        this.f19484b.mo33384I5();
        this.f19484b.mo33330b8();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Eh */
    public void mo32550Eh() {
        this.f19449J0.m35089e();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: El */
    public boolean mo32549El() {
        return this.f19495g0.hasFocus();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Es */
    public void mo32548Es(int i) {
        this.f19519o0.setImageResource(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Et */
    public void mo32547Et() {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.m34862l1();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Ez */
    public void mo32368Ez(String str) {
        if (getActivity() == null) {
            return;
        }
        C12864a2.m22560d0(getActivity(), str, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Fg */
    public void mo32367Fg() {
        View view = this.f19542x0;
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        this.f19542x0.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Fj */
    public void mo32546Fj(long j, long j2, int i) {
        C5255a.C5259d c5259d = C5255a.f18065e;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Objects.requireNonNull(c5259d);
        l.e(childFragmentManager, "fragmentManager");
        C5255a c5255a = new C5255a();
        Bundle bundle = new Bundle();
        bundle.putLong("default_date", j);
        bundle.putLong("message_id", j2);
        bundle.putInt("transport", i);
        c5255a.setArguments(bundle);
        c5255a.show(childFragmentManager, "schedule_message_date_picker");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: G4 */
    public void mo32545G4(int i, int i2) {
        C25469g c25469g;
        MenuItem findItem;
        ConversationActionModeView conversationActionModeView = this.f19453L0;
        C25508g0 c25508g0 = conversationActionModeView.f13014b;
        if (c25508g0 == null || (c25469g = c25508g0.f71380b) == null || (findItem = c25469g.findItem(i)) == null) {
            return;
        }
        String string = conversationActionModeView.getResources().getString(i2);
        l.d(string, "resources.getString(titleRes)");
        conversationActionModeView.m35130b(findItem, string);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Gd */
    public void mo32544Gd(Message message) {
        Entity[] entityArr;
        Context context = getContext();
        if (context == null) {
            return;
        }
        for (Entity entity : message.f13394o) {
            if (entity instanceof BinaryEntity) {
                C8582g0.m28324Q(context, null, null, message.m35025a(), ((BinaryEntity) entity).f13173i, entity.f13307b);
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: Gl */
    public void mo32543Gl(int i) {
        if (i < 0 || i > this.f19495g0.length()) {
            return;
        }
        this.f19495g0.setSelection(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: H4 */
    public boolean mo32542H4() {
        if (this.f19504j0.isShowing()) {
            this.f19504j0.dismiss();
            this.f19545z.mo32385ta(this.f19504j0.f57086j);
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Hd */
    public void mo32541Hd() {
        ((ConstraintLayout) this.f19525q0).m43026e1(C2752R.C2754id.extendedState, 0, 0);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: Hx */
    public void mo32540Hx(int i, int i2) {
        if (i < 0 || i2 > this.f19495g0.getText().length()) {
            return;
        }
        this.f19495g0.getText().setSpan(new MentionSpan(i, i2, C19291g.m13612L(requireContext(), 2130970017)), i, i2, 33);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: I */
    public void mo32539I(ImGroupInfo imGroupInfo) {
        Context context = getContext();
        if (context != null) {
            context.startActivity(ImGroupInvitationActivity.m34987pa(context, imGroupInfo));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: I8 */
    public void mo32538I8(long j, long j2) {
        Intent intent = new Intent(requireContext(), ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.putExtra("message_id", j2);
        intent.putExtra("launch_source", "conversation");
        intent.putExtra(AnalyticsConstants.MODE, ConversationMode.DEFAULT);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: IA */
    public void mo32537IA(int i, int i2, int i3, int i4) {
        View view = getView();
        if (view == null) {
            return;
        }
        if (this.f19502i1 == null) {
            this.f19502i1 = (TextView) ((ViewStub) view.findViewById(C2752R.C2754id.banner_stub)).inflate();
        }
        this.f19502i1.setText(i);
        this.f19502i1.setCompoundDrawablesRelativeWithIntrinsicBounds(C19291g.m13535l0(requireContext(), i2, i3), (Drawable) null, (Drawable) null, (Drawable) null);
        this.f19502i1.setBackgroundColor(C19291g.m13612L(requireContext(), i4));
        this.f19502i1.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: In */
    public void mo32536In() {
        ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h = this.f19504j0;
        if (viewTreeObserver$OnGlobalLayoutListenerC20285h != null) {
            viewTreeObserver$OnGlobalLayoutListenerC20285h.f57091o = this.f19545z.mo32383zb();
            ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h2 = this.f19504j0;
            viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57090n = this.f19545z.mo32386ne();
            View findViewById = viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57077a.findViewById(C2886R.C2888id.layout_gif_emojis);
            l.d(findViewById, "view.findViewById(R.id.layout_gif_emojis)");
            RelativeLayout relativeLayout = (RelativeLayout) findViewById;
            if (viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57090n) {
                viewTreeObserver$OnGlobalLayoutListenerC20285h2.m11270k(viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57086j);
                View findViewById2 = viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57079c.findViewById(C2886R.C2888id.rvGif);
                l.d(findViewById2, "gifView.findViewById<RecyclerView>(R.id.rvGif)");
                RecyclerView recyclerView = (RecyclerView) findViewById2;
                l.e(recyclerView, "$this$hideShowScrollListener");
                l.e(relativeLayout, ViewAction.VIEW);
                recyclerView.addOnScrollListener(new C20346d(recyclerView, 0.5d, relativeLayout));
            } else {
                viewTreeObserver$OnGlobalLayoutListenerC20285h2.m11270k(0);
            }
            ViewTreeObserver$OnGlobalLayoutListenerC20285h.AbstractC20288c abstractC20288c = viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57096t;
            ((C5672q) abstractC20288c).f19037a.f19545z.mo32384y2(viewTreeObserver$OnGlobalLayoutListenerC20285h2.f57086j, true);
            if (this.f19504j0.isShowing()) {
                return;
            }
            this.f19545z.mo32385ta(this.f19504j0.f57086j);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Io */
    public void mo32535Io() {
        ConfirmationDialog.f11158i.m35692a((h) requireActivity(), getString((int) C2752R.string.ConversationDeleteScheduledMessageTitle), getString((int) C2752R.string.ConversationDeleteScheduledMessageText), getString((int) C2752R.string.btn_delete), getString(2131887867), null, new s1.z.b.l() { // from class: e.a.a.c.m0
            /* renamed from: d */
            public final Object m32997d(Object obj) {
                Boolean bool = (Boolean) obj;
                C5815y3.this.f19482a.mo33531Mj();
                return null;
            }
        }, null, null, true, ConfirmationDialog.ButtonStyle.ALERT);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Ix */
    public void mo32534Ix(Participant participant) {
        startActivity(NewConversationActivity.C4229a.m34949b(requireContext(), true, Collections2.newArrayList(participant)));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4, p193e.p194a.p195a.p200c.AbstractC5836z5
    /* renamed from: J0 */
    public void mo32332J0() {
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.mo33011e();
            m32515OA(false);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Jp */
    public void mo32533Jp(float f) {
        ValueAnimator valueAnimator = this.f19517n1;
        if (valueAnimator != null) {
            valueAnimator.reverse();
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f - f, f);
        this.f19517n1 = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.a.c.e0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                C5815y3 c5815y3 = C5815y3.this;
                for (int i = 0; i < c5815y3.f19513m0.getChildCount(); i++) {
                    RecyclerView recyclerView = c5815y3.f19513m0;
                    RecyclerView.AbstractC0313c0 childViewHolder = recyclerView.getChildViewHolder(recyclerView.getChildAt(i));
                    if (childViewHolder instanceof ViewTreeObserver$OnPreDrawListenerC5184d) {
                        ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d = (ViewTreeObserver$OnPreDrawListenerC5184d) childViewHolder;
                        Objects.requireNonNull(viewTreeObserver$OnPreDrawListenerC5184d);
                        l.e(valueAnimator2, "animator");
                        viewTreeObserver$OnPreDrawListenerC5184d.f17802W = valueAnimator2;
                        Object animatedValue = valueAnimator2.getAnimatedValue();
                        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                        viewTreeObserver$OnPreDrawListenerC5184d.m33615j5(((Float) animatedValue).floatValue());
                    }
                }
            }
        });
        this.f19517n1.addListener(new C5822g());
        this.f19517n1.setDuration(300L);
        this.f19517n1.start();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Jx */
    public void mo32532Jx(String str, String str2) {
        new C12738g4(str, str2, new s1.z.b.l() { // from class: e.a.a.c.j1
            /* renamed from: d */
            public final Object m33176d(Object obj) {
                C5815y3.this.f19482a.mo33518Xj(((Boolean) obj).booleanValue());
                return s.a;
            }
        }).show(getParentFragmentManager(), "WarnYourFriendsBottomSheet");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: K1 */
    public void mo32531K1(FlashContact flashContact) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.f19515n.mo9297u(context, Long.parseLong(flashContact.f11999a), flashContact.f12000b, "conversation");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: K5 */
    public void mo32530K5(boolean z) {
        C19286f.m13680X(this.f19495g0, z, 0L);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Kq */
    public void mo32529Kq(boolean z) {
        this.f19522p0.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Kr */
    public void mo32528Kr(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        n3.r.a.l requireActivity = requireActivity();
        SourceType sourceType = SourceType.Conversation;
        Long l = -1L;
        Boolean valueOf = Boolean.valueOf(z);
        Boolean valueOf2 = Boolean.valueOf(z2);
        l.e(requireActivity, AnalyticsConstants.CONTEXT);
        l.e(sourceType, "source");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", str4);
        intent.putExtra("NAME", str3);
        intent.putExtra("NORMALIZED_NUMBER", str);
        intent.putExtra("RAW_NUMBER", str2);
        intent.putExtra("COUNTRY_CODE", (String) null);
        intent.putExtra("ARG_SOURCE_TYPE", 10);
        intent.putExtra("SHOULD_SAVE", false);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        intent.putExtra("SEARCH_TYPE", 20);
        if (l != null) {
            intent.putExtra("CONVERSATION_ID", l.longValue());
        }
        if (valueOf != null) {
            intent.putExtra("IS_HIDDEN_NUMBER", valueOf.booleanValue());
        }
        if (valueOf2 != null) {
            intent.putExtra("IS_BUSINESS_IM", valueOf2.booleanValue());
        }
        intent.setFlags(603979776);
        n3.r.a.l requireActivity2 = requireActivity();
        l.e(requireActivity2, AnalyticsConstants.CONTEXT);
        l.e(intent, "intentWithExtras");
        requireActivity2.startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Kt */
    public void mo32366Kt(String str) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Kz */
    public void mo32527Kz(long j) {
        Intent intent = new Intent(requireContext(), ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.putExtra("launch_source", "conversation");
        intent.putExtra(AnalyticsConstants.MODE, ConversationMode.SCHEDULE);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: L2 */
    public void mo32236L2(long j) {
        l.e(this, "fragment");
        Context context = getContext();
        if (context != null) {
            String string = context.getString(C2752R.string.ConversationAttachmentSizeLimitationWarning, C19291g.m13527o(j, null, 1));
            l.d(string, "context.getString(string…e.bytesToMegabytesText())");
            g$a g_a = new g$a(context);
            g_a.f70854a.f156f = string;
            g_a.m3660i(2131887910, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Lk */
    public void mo32365Lk(BinaryEntity binaryEntity, Message message, Conversation conversation, boolean z) {
        View view = getView();
        String m34952qa = MediaViewerActivity.m34952qa(binaryEntity.f13306a);
        Bundle bundle = null;
        View findViewWithTag = view != null ? view.findViewWithTag(binaryEntity.f13173i) : null;
        if (findViewWithTag != null) {
            bundle = ActivityOptions.makeSceneTransitionAnimation(requireActivity(), findViewWithTag, m34952qa).toBundle();
        }
        startActivity(MediaViewerActivity.m34953pa(requireContext(), binaryEntity, message, conversation, z), bundle);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ls */
    public void mo32526Ls() {
        ((ConstraintLayout) this.f19525q0).m43026e1(C2752R.C2754id.editState, 0, 0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Lw */
    public CharSequence mo32525Lw() {
        return this.f19495g0.getText();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: M6 */
    public void mo32524M6(int i) {
        this.f19531s0.setText(i);
        this.f19531s0.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: M7 */
    public void mo32523M7(boolean z) {
        this.f19480Z.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Mo */
    public void mo32522Mo(AbstractC20301p abstractC20301p) {
        this.f19504j0 = new ViewTreeObserver$OnGlobalLayoutListenerC20285h(this.f19495g0, abstractC20301p, this.f19545z.mo32386ne(), this.f19545z.mo32383zb(), this.f19434A, null, new C5335h2(this), new C5105b1(this), new C5672q(this), new C5829z0(this), new C5790w(this));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Mq */
    public void mo32521Mq(long j) {
        AbstractC5328g8 activity = getActivity();
        if (activity instanceof AbstractC5328g8) {
            activity.mo33283Q2();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Mu */
    public void mo32520Mu() {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.m34858q1();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: My */
    public void mo32519My(String str) {
        if (getActivity() == null) {
            return;
        }
        l.e("conversation", "analyticsContext");
        this.f19512m.m35744b(new InitiateCallHelper.CallOptions(str, "conversation", null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: N0 */
    public void mo32518N0() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
        if (this.f19484b.mo33353Se()) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        startActivityForResult(intent, 203);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: N4 */
    public void mo32364N4(final Message... messageArr) {
        if (!this.f19438C.mo27248l()) {
            g$a g_a = new g$a(requireContext());
            g_a.f70854a.f155e = LayoutInflater.from(getContext()).inflate(C2752R.layout.dialog_report_not_spam, (ViewGroup) null, false);
            g_a.m3658k(C2752R.array.DialogReportNotSpamOptions, -1, new DialogInterface.OnClickListener() { // from class: e.a.a.c.l0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    C5815y3 c5815y3 = C5815y3.this;
                    Message[] messageArr2 = messageArr;
                    Objects.requireNonNull(c5815y3);
                    if (i == 0) {
                        c5815y3.f19488d.mo33233N4(3, messageArr2, true);
                    } else if (i == 1) {
                        c5815y3.f19488d.mo33233N4(0, messageArr2, true);
                    } else if (i == 2) {
                        c5815y3.f19488d.mo33233N4(2, messageArr2, true);
                    }
                    dialogInterface.dismiss();
                }
            });
            g_a.m3662g(2131887867, null);
            g_a.m3652q();
            return;
        }
        k<List<C10328a>, List<o<C10328a, Long, Long>>> m32486VA = m32486VA(messageArr);
        this.f19488d.mo33233N4(2, messageArr, false);
        m32500SA((List) m32486VA.b, "reported_not_spam");
        boolean z = ((C10328a) ((List) m32486VA.a).get(0)).f30678f;
        String str = ((C10328a) ((List) m32486VA.a).get(0)).f30674b;
        C10530c c10530c = C8769f.f26763b;
        c10530c.m25824d(TokenResponseDto.METHOD_SMS);
        c10530c.m25822f(C10031q.m26803a(str, z));
        this.f19458O.mo26757a(c10530c.m25827a());
        List<C10328a> list = (List) m32486VA.a;
        p<? super Boolean, ? super String, s> pVar = new p() { // from class: e.a.a.c.p0
            /* renamed from: k */
            public final Object m32819k(Object obj, Object obj2) {
                boolean z2;
                C5815y3 c5815y3 = C5815y3.this;
                Message[] messageArr2 = messageArr;
                Boolean bool = (Boolean) obj;
                String str2 = (String) obj2;
                Objects.requireNonNull(c5815y3);
                if (messageArr2.length > 0) {
                    Participant participant = messageArr2[0].f13382c;
                    String str3 = participant.f11572e;
                    z2 = C8582g0.m28317c(str3, participant.f11569b, C8582g0.m28330K(str3));
                } else {
                    z2 = false;
                }
                if (bool.booleanValue()) {
                    C8730p.m28097PA(c5815y3.f19466S ? new AbstractC8734q.C8738d(c5815y3.requireContext(), str2) : z2 ? new AbstractC8734q.C8737c(c5815y3.requireContext(), str2) : new AbstractC8734q.C8740f(c5815y3.requireContext(), str2)).show(c5815y3.getChildFragmentManager(), C8730p.f26676c);
                } else if (c5815y3.f19438C.mo27236x()) {
                    Snackbar.l(c5815y3.getActivity().findViewById(16908290), c5815y3.getString(2131889471, new Object[]{c5815y3.f19466S ? c5815y3.getString(2131890059) : z2 ? c5815y3.getString(2131890055) : c5815y3.getString(2131890060)}), -1).n();
                }
                c5815y3.f19488d.mo33220w2(messageArr2, str2);
                return null;
            }
        };
        Objects.requireNonNull(DialogInterface$OnShowListenerC8722l.f26659k);
        l.e(list, "messages");
        l.e(pVar, "callback");
        DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l = new DialogInterface$OnShowListenerC8722l();
        dialogInterface$OnShowListenerC8722l.f26663d = list;
        dialogInterface$OnShowListenerC8722l.f26662c = pVar;
        if (!list.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putString("sender_id", ((C10328a) i.B(list)).f30674b);
            bundle.putBoolean("is_im", ((C10328a) i.B(list)).f30678f);
            dialogInterface$OnShowListenerC8722l.setArguments(bundle);
        }
        dialogInterface$OnShowListenerC8722l.show(getChildFragmentManager(), DialogInterface$OnShowListenerC8722l.f26658j);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ni */
    public void mo32517Ni(Switch r4) {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.setSelected(r4);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
    /* renamed from: No */
    public void mo28659No() {
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: O9 */
    public void mo32516O9(boolean z) {
        this.f19498h0.setRecordingEnabled(z);
    }

    /* renamed from: OA */
    public final void m32515OA(boolean z) {
        this.f19516n0.setTint(C17422k.m16105M(requireContext(), z ? 2130970017 : 2130970255));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Od */
    public void mo32514Od(boolean z) {
        getActivity().startSupportActionMode(this);
        if (this.f19493f1 == null) {
            return;
        }
        ConversationActionModeView conversationActionModeView = this.f19453L0;
        Objects.requireNonNull(conversationActionModeView);
        C19286f.m13684T(conversationActionModeView);
        this.f19455M0.setVisibility(0);
        mo32530K5(false);
        if (this.f19441D0.getVisibility() == 0) {
            this.f19441D0.setVisibility(4);
        }
        mo32332J0();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f19525q0.getLayoutParams();
        ViewGroup viewGroup = this.f19525q0;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = getResources().getDimensionPixelSize(C2752R.dimen.conversation_input_actions_bar_height);
        viewGroup.setLayoutParams(layoutParams);
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) this.f19495g0.getLayoutParams();
        MediaEditText mediaEditText = this.f19495g0;
        ((ViewGroup.MarginLayoutParams) c0111a).height = 0;
        mediaEditText.setLayoutParams(c0111a);
        if (!z) {
            return;
        }
        m32496TA(requireContext().getResources().getDimensionPixelSize(C2752R.dimen.conversation_input_actions_bar_height));
    }

    @Override // p193e.p194a.p437c.p552i.p557e.AbstractC10330c.AbstractC10331a
    /* renamed from: On */
    public void mo26354On() {
        this.f19482a.mo33516Zj();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5797w5
    /* renamed from: P4 */
    public void mo32513P4(String str, String str2, Uri uri) {
        this.f19463Q0.setVisibility(0);
        this.f19463Q0.setTitle(str);
        this.f19463Q0.setDescription(str2);
        this.f19463Q0.setImage(uri);
        this.f19463Q0.setOnRemoveClickListener(new View.OnClickListener() { // from class: e.a.a.c.f2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C5815y3.this.f19484b.mo33307l();
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: P5 */
    public void mo32512P5(String str, final int i, final String str2) {
        g$a g_a = new g$a(getActivity());
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f156f = str;
        c0037b.f163m = false;
        g_a.m3660i(C2752R.string.DialogButtonGivePermission, new DialogInterface.OnClickListener() { // from class: e.a.a.c.d2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19482a.mo33529Oj(i, str2);
            }
        });
        g_a.m3662g(2131888483, null);
        g_a.m3668a().show();
    }

    /* renamed from: PA */
    public final List<Uri> m32511PA(Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent != null) {
            if (intent.getClipData() != null && intent.getClipData().getItemCount() > 0) {
                for (int i = 0; i < intent.getClipData().getItemCount(); i++) {
                    ClipData.Item itemAt = intent.getClipData().getItemAt(i);
                    if (itemAt != null) {
                        arrayList.add(itemAt.getUri());
                    }
                }
            } else if (intent.getData() != null) {
                arrayList.add(intent.getData());
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Pt */
    public void mo32510Pt() {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.m34864j1();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: Py */
    public void mo32509Py(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25) {
        if (this.f19493f1 == null || !z11) {
            if (z11) {
                return;
            }
            C5512m c5512m = this.f19496g1;
            if (c5512m != null && c5512m.isVisible()) {
                return;
            }
            Objects.requireNonNull(C5512m.f18681g);
            C5512m c5512m2 = new C5512m();
            Bundle bundle = new Bundle();
            bundle.putInt("args_scheduled_transport", i);
            bundle.putBoolean("args_copy", z);
            bundle.putBoolean("args_info", z2);
            bundle.putBoolean("args_forward", z3);
            bundle.putBoolean("args_download", z4);
            bundle.putBoolean("args_spam", z5);
            bundle.putBoolean("args_not_spam", z6);
            bundle.putBoolean("args_share", z7);
            bundle.putBoolean("args_retry", z8);
            bundle.putBoolean("args_edit", z9);
            bundle.putBoolean("args_reply", z10);
            bundle.putBoolean("args_send_feedback", z12);
            bundle.putBoolean("args_show_reactions_tip", z13);
            bundle.putBoolean("args_send_now", z16);
            bundle.putBoolean("args_reschedule", z17);
            bundle.putBoolean("args_mark_important", z18);
            bundle.putBoolean("args_not_important", z19);
            bundle.putBoolean("args_show_in_chat", z20);
            bundle.putBoolean("args_can_translate", z21);
            bundle.putBoolean("args_show_original", z22);
            bundle.putBoolean("args_show_pdo_viewer", z23);
            bundle.putBoolean("args_mark_promotional", z24);
            bundle.putBoolean("args_mark_not_promotional", z25);
            c5512m2.setArguments(bundle);
            this.f19496g1 = c5512m2;
            c5512m2.show(getParentFragmentManager(), "MessageActionsBottomSheet");
            return;
        }
        ConversationActionModeView conversationActionModeView = this.f19453L0;
        conversationActionModeView.removeAllViews();
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.add(Action.REPLY);
        }
        if (z) {
            arrayList.add(Action.COPY);
        }
        arrayList.add(Action.DELETE);
        if (z3) {
            arrayList.add(Action.FORWARD);
        }
        if (z7) {
            arrayList.add(Action.SHARE);
        }
        if (z15) {
            arrayList.add(Action.SELECT_CALLS);
        }
        if (z18) {
            arrayList.add(Action.IMPORTANT);
        }
        if (z19) {
            arrayList.add(Action.NOT_IMPORTANT);
        }
        if (z5) {
            arrayList.add(Action.SPAM);
        }
        if (z6) {
            arrayList.add(Action.NOT_SPAM);
        }
        if (z4) {
            arrayList.add(Action.DOWNLOAD);
        }
        if (z8) {
            arrayList.add(Action.RESEND_SMS);
        }
        if (z9) {
            arrayList.add(Action.EDIT);
        }
        if (z12) {
            arrayList.add(Action.SEND_FEEDBACK);
        }
        if (z2) {
            arrayList.add(Action.DETAILS);
        }
        if (z14) {
            arrayList.add(Action.SELECT_MSGS);
        }
        if (z24) {
            arrayList.add(Action.PROMOTIONAL);
        }
        if (z25) {
            arrayList.add(Action.NOT_PROMOTIONAL);
        }
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            if (i2 < 0) {
                i.N0();
                throw null;
            }
            Action action = (Action) next;
            if (i2 < 3) {
                conversationActionModeView.addView(conversationActionModeView.m35131a(action));
            } else if (arrayList.size() == 4) {
                conversationActionModeView.addView(conversationActionModeView.m35131a(action));
            }
            i2++;
        }
        if (arrayList.size() <= 4) {
            return;
        }
        View m35131a = conversationActionModeView.m35131a(Action.MORE);
        C25508g0 c25508g0 = new C25508g0(m35131a.getContext(), m35131a, 8388613);
        c25508g0.m3362a(C2752R.C2756menu.conversation_action_mode);
        int size = c25508g0.f71380b.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = c25508g0.f71380b.getItem(i3);
            l.d(item, "menu.getItem(i)");
            MenuItem item2 = c25508g0.f71380b.getItem(i3);
            l.d(item2, "menu.getItem(i)");
            conversationActionModeView.m35130b(item, item2.getTitle().toString());
        }
        c25508g0.f71383e = new C5582n3(conversationActionModeView, arrayList);
        conversationActionModeView.f13014b = c25508g0;
        m35131a.setOnClickListener(new View$OnClickListenerC5625o3(conversationActionModeView, arrayList));
        conversationActionModeView.addView(m35131a);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Q */
    public void mo32363Q(String str) {
        C8613t.m28199m(requireContext(), str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Q6 */
    public void mo32508Q6(Conversation conversation, int i) {
        Context requireContext = requireContext();
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(conversation, "conversation");
        Intent putExtra = new Intent(requireContext, SearchConversationActivity.class).putExtra("conversation", conversation).putExtra("conversation_filter", i);
        l.d(putExtra, "Intent(context, SearchCo…LTER, conversationFilter)");
        startActivity(putExtra, ActivityOptions.makeSceneTransitionAnimation(requireActivity(), getView().findViewById(C2752R.C2754id.app_bar_layout), "search").toBundle());
    }

    /* renamed from: QA */
    public final void m32507QA() {
        ConversationActionModeView conversationActionModeView = this.f19453L0;
        Objects.requireNonNull(conversationActionModeView);
        C19286f.m13683U(conversationActionModeView, false);
        this.f19455M0.setVisibility(8);
        mo32397xz(this.f19484b.mo33321f6());
        m32496TA(0);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f19525q0.getLayoutParams();
        ViewGroup viewGroup = this.f19525q0;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        viewGroup.setLayoutParams(layoutParams);
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) this.f19495g0.getLayoutParams();
        MediaEditText mediaEditText = this.f19495g0;
        ((ViewGroup.MarginLayoutParams) c0111a).height = -2;
        mediaEditText.setLayoutParams(c0111a);
        this.f19463Q0.requestLayout();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Qt */
    public void mo32506Qt(int i, boolean z) {
        Drawable drawable;
        if (i == 0) {
            drawable = null;
        } else if (z) {
            drawable = C17422k.m16104N(requireContext(), i, 2130970255);
        } else {
            Context requireContext = requireContext();
            Object obj = C26467a.f74235a;
            drawable = C26467a.C26470c.m1789b(requireContext, i);
        }
        this.f19476X.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Qu */
    public boolean mo32362Qu(Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, str);
        intent.setFlags(1);
        try {
            startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Qw */
    public void mo32361Qw(int i) {
        this.f19437B0.m35102e(i, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: R4 */
    public void mo32505R4(DraftArguments draftArguments) {
        startActivity(DraftActivity.m35107pa(requireContext(), draftArguments));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: R8 */
    public void mo32504R8() {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.m34863k1();
        }
    }

    /* renamed from: RA */
    public final String m32503RA(int i) {
        if (i != 2) {
            if (i == 3) {
                return "spam";
            }
            if (i != 4) {
                throw new IllegalArgumentException("Unknown category from categorizer");
            }
            return "promotional";
        }
        return "non-spam";
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Ri */
    public void mo32502Ri(String str) {
        this.f19485b1 = true;
        this.f19495g0.getText().clearSpans();
        this.f19495g0.setText(str);
        this.f19485b1 = false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: S3 */
    public void mo32501S3() {
        new C21846z1(getContext(), C2752R.string.PermissionDialog_storage_conversation_reason, C2752R.string.PermissionDialog_storage).m8995cB(getChildFragmentManager());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: S4 */
    public void mo32360S4(final boolean z, int i, final List<Message> list, final String str) {
        int size = list.size();
        ConfirmationDialog.f11158i.m35692a((h) requireActivity(), getResources().getQuantityString(i, size, Integer.valueOf(size)), null, getString((int) C2752R.string.btn_delete), getString(2131887867), z ? getString((int) C2752R.string.ConversationMessagesDeleteMediaOption) : null, new s1.z.b.l() { // from class: e.a.a.c.g0
            /* renamed from: d */
            public final Object m33397d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19488d.mo33226a2(z, ((Boolean) obj).booleanValue(), list, str);
                return null;
            }
        }, null, null, true, ConfirmationDialog.ButtonStyle.ALERT);
    }

    /* renamed from: SA */
    public final void m32500SA(List<o<C10328a, Long, Long>> list, String str) {
        if (this.f19440D.mo33938m()) {
            this.f19440D.mo33936o(list, str, new a() { // from class: e.a.a.c.m1
                public final Object invoke() {
                    C5815y3.this.f19468T.notifyDataSetChanged();
                    return s.a;
                }
            });
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Sd */
    public void mo32499Sd(String str, boolean z) {
        C8985a c8985a = C8985a.f27306c;
        C10530c c10530c = C8985a.f27305b;
        c10530c.m25822f(C10031q.m26803a(str, z));
        this.f19458O.mo26757a(c10530c.m25827a());
        this.f19436B.mo26339o(str, z, getParentFragmentManager());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: Sp */
    public void mo32498Sp() {
        g$a g_a = new g$a(getContext());
        g_a.m3664e(C2752R.string.BlockRemoveNumberConfirmationText);
        g_a.m3660i(2131887941, new DialogInterface.OnClickListener() { // from class: e.a.a.c.x
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3.this.f19482a.mo33521Uq();
            }
        });
        g_a.m3662g(2131887903, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Sq */
    public void mo32359Sq(String str, Message... messageArr) {
        if (this.f19440D.mo33938m()) {
            m32500SA((List) m32486VA(messageArr).b, str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: T7 */
    public void mo32497T7(boolean z) {
        this.f19445G0.setVisibility(z ? 0 : 8);
    }

    /* renamed from: TA */
    public final void m32496TA(int i) {
        RecyclerView recyclerView = this.f19513m0;
        recyclerView.setPadding(recyclerView.getPaddingLeft(), this.f19513m0.getPaddingTop(), this.f19513m0.getPaddingRight(), requireContext().getResources().getDimensionPixelSize(2131166403) + i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5797w5
    /* renamed from: Te */
    public void mo32495Te(int i) {
        C19291g.m13558d1(this, "android.permission.CAMERA", i, true);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Tj */
    public void mo32494Tj(boolean z, int i, int i2) {
        this.f19501i0.setVisibility(z ? 0 : 8);
        this.f19501i0.setText(getResources().getString(C2752R.string.ConversationTextCounter, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: U1 */
    public void mo32493U1(ReplySnippet replySnippet, String str) {
        m32491UA(true);
        C19286f.m13680X(this.f19495g0, true, 300L);
        this.f19439C0.m35113e(replySnippet, str, false);
        this.f19439C0.setDismissActionVisible(true);
        this.f19439C0.setDismissActionListener(new View.OnClickListener() { // from class: e.a.a.c.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C5815y3.this.mo32551Ec();
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: U5 */
    public void mo32492U5() {
        this.f19525q0.setVisibility(0);
        this.f19528r0.setVisibility(0);
    }

    /* renamed from: UA */
    public final void m32491UA(boolean z) {
        this.f19441D0.setVisibility((z || !this.f19484b.mo33321f6()) ? 8 : 0);
        this.f19439C0.setVisibility(z ? 0 : 8);
    }

    @Override // com.truecaller.messaging.views.MediaEditText.AbstractC4283a
    /* renamed from: Ue */
    public String[] mo32490Ue() {
        return this.f19497h.mo32599Hj();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Uf */
    public void mo32358Uf(final Message[] messageArr, String str) {
        Snackbar l = Snackbar.l(requireView(), str, 0);
        l.m((int) C2752R.string.spam_report_notification_undo, new View.OnClickListener() { // from class: e.a.a.c.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19486c.mo32680rg(messageArr, "undoToast");
            }
        });
        l.n();
    }

    @Override // p193e.p194a.p195a.p285x0.AbstractC7297b
    /* renamed from: Ui */
    public void mo29822Ui(int i) {
        this.f19510l0.setImageResource(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: V6 */
    public void mo32489V6(Message message, String str, Participant[] participantArr) {
        ArrayList<? extends Parcelable> arrayList;
        Context requireContext = requireContext();
        int i = MessageDetailsActivity.f13100a;
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(message, "message");
        Intent intent = new Intent(requireContext, MessageDetailsActivity.class);
        intent.putExtra("message", message);
        intent.putExtra("im_group_id", str);
        if (participantArr != null) {
            arrayList = new ArrayList<>();
            C25225a.m3927b3(participantArr, arrayList);
        } else {
            arrayList = null;
        }
        intent.putParcelableArrayListExtra("participants", arrayList);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: V7 */
    public void mo32488V7(boolean z) {
        if (!z) {
            this.f19449J0.m35090d();
        }
        this.f19449J0.setVisible(z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: V8 */
    public void mo32487V8(String str) {
        Context context = getContext();
        int i = RequiredPermissionsActivity.f14129c;
        Intent intent = new Intent(context, RequiredPermissionsActivity.class);
        intent.setFlags(268468224);
        intent.putExtra("return_to_tab", str);
        context.startActivity(intent);
    }

    /* renamed from: VA */
    public final k<List<C10328a>, List<o<C10328a, Long, Long>>> m32486VA(Message... messageArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Message message : messageArr) {
            C10635s mo33947d = this.f19440D.mo33947d(message);
            AbstractC10616p abstractC10616p = null;
            C10635s mo33935p = this.f19440D.mo33938m() ? this.f19440D.mo33935p(message.f13380a, message.f13382c.f11572e) : null;
            String str = message.f13382c.m35448l() ? message.f13382c.f11572e : message.f13398s;
            String m35025a = message.m35025a();
            String m32503RA = m32503RA(message.f13399t);
            b bVar = message.f13384e;
            if (mo33947d != null) {
                abstractC10616p = mo33947d.f31673a;
            } else if (mo33935p != null) {
                abstractC10616p = mo33935p.f31673a;
            }
            C10328a c10328a = new C10328a(m35025a, str, m32503RA, bVar, abstractC10616p, message.f13382c.m35448l());
            arrayList.add(c10328a);
            arrayList2.add(new o(c10328a, Long.valueOf(message.f13380a), Long.valueOf(message.f13381b)));
        }
        return new k<>(arrayList, arrayList2);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [e.a.a.c.o7, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Vc */
    public void mo32357Vc(Map<Reaction, ? extends Participant> map) {
        new C5631o7(requireActivity(), map).show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: W */
    public void mo32485W(int i, String str) {
        startActivityForResult(DefaultSmsActivity.m34991pa(requireContext(), str), i);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [e.a.e.a.m2, android.app.Dialog] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: W3 */
    public void mo32484W3() {
        Context requireContext = requireContext();
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        ?? c12781m2 = new C12781m2(requireContext);
        c12781m2.setCancelable(false);
        c12781m2.show();
        this.f19499h1 = c12781m2;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5721s5
    /* renamed from: Wn */
    public void mo22506Wn(String str, boolean z, Message message) {
        this.f19488d.mo33241Fi(str, z, message);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Wo */
    public void mo32483Wo(boolean z) {
        this.f19472V.setEnabled(z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: X */
    public void mo32356X(String str) {
        C8613t.m28198n(requireContext(), C8613t.m28209c(str));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Xt */
    public void mo32482Xt(boolean z) {
        this.f19495g0.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Y2 */
    public void mo32481Y2() {
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.mo33012Y2();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: Ya */
    public void mo32480Ya(String str, boolean z) {
        C8985a c8985a = C8985a.f27306c;
        C10530c c10530c = C8985a.f27304a;
        c10530c.m25822f(C10031q.m26803a(str, z));
        this.f19458O.mo26757a(c10530c.m25827a());
        this.f19436B.mo26341m(str, this);
        Snackbar.l(requireView(), getString(2131890091, new Object[]{str}), -1).n();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Yd */
    public void mo32479Yd(boolean z) {
        AbstractC25393a supportActionBar = requireActivity().getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.mo3553n(z);
        this.f19472V.setPaddingRelative(z ? 0 : getResources().getDimensionPixelSize(2131165497), 0, 0, 0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: Yp */
    public void mo32478Yp(String str, int i) {
        this.f19478Y.m34483f(null);
        this.f19478Y.setVisibility(0);
        this.f19478Y.setTextColor(C17422k.m16105M(requireContext(), i));
        this.f19478Y.setEllipsize(TextUtils.TruncateAt.END);
        this.f19478Y.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Yx */
    public boolean mo32355Yx(String str) {
        mo32443lm();
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: Z5 */
    public void mo32354Z5() {
        getActivity().invalidateOptionsMenu();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Zc */
    public void mo32477Zc(int i) {
        this.f19498h0.setBackgroundTintList(ColorStateList.valueOf(i));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5836z5
    /* renamed from: Zm */
    public void mo32331Zm() {
        this.f19504j0.m11269l();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: Zy */
    public void mo32476Zy() {
        if (this.f19443E0 == null) {
            C18898f c18898f = new C18898f(new C18910r(this.f19452L, C2752R.layout.conversation_animated_emoji_item, C5645p.f18970a, C5740t0.f19208a));
            this.f19511l1 = c18898f;
            c18898f.setHasStableIds(true);
            C18898f c18898f2 = new C18898f(new C18910r(this.f19454M, C2752R.layout.conversation_smart_reply_item, C5742t2.f19211a, C5371i1.f18356a));
            this.f19514m1 = c18898f2;
            c18898f2.setHasStableIds(true);
            View inflate = this.f19444F0.inflate();
            this.f19443E0 = inflate;
            this.f19461P0 = (RecyclerView) inflate.findViewById(C2752R.C2754id.animatedEmojisRecyclerView);
            Context requireContext = requireContext();
            Object obj = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(requireContext, C2752R.C2753drawable.conversation_quick_action_divider);
            if (m1789b != null) {
                C25595i c25595i = new C25595i(requireContext(), 0);
                c25595i.m3173d(m1789b);
                this.f19461P0.addItemDecoration(c25595i);
            }
            ImageView imageView = (ImageView) this.f19443E0.findViewById(C2752R.C2754id.btnAnimatedEmojis);
            this.f19465R0 = imageView;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.k2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C5815y3.this.f19484b.mo33385I2();
                }
            });
            ((RelativeLayout.LayoutParams) this.f19513m0.getLayoutParams()).addRule(2, C2752R.C2754id.urgent_message_actions_bar);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5797w5, p193e.p194a.p195a.p200c.AbstractC5443k4, p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3, p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: a */
    public void mo32353a(int i) {
        Toast toast = this.f19487c1;
        if (toast != null) {
            toast.cancel();
        }
        Toast makeText = Toast.makeText(getContext(), i, 0);
        this.f19487c1 = makeText;
        makeText.show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: a1 */
    public void mo32475a1(Conversation conversation) {
        startActivity(GroupInfoActivity.m34988pa(getContext(), conversation));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: a2 */
    public void mo32352a2(int i) {
        RecyclerView recyclerView = this.f19513m0;
        l.e(recyclerView, "$this$speedySmoothScrollToPosition");
        LinearLayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null || !(layoutManager instanceof LinearLayoutManager)) {
            layoutManager = null;
        }
        LinearLayoutManager linearLayoutManager = layoutManager;
        if (linearLayoutManager == null) {
            recyclerView.smoothScrollToPosition(i);
            return;
        }
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int i2 = findFirstVisibleItemPosition - i;
        int i3 = i2 > 10 ? i + 10 : i2 < -10 ? i - 10 : findFirstVisibleItemPosition;
        if (i3 != findFirstVisibleItemPosition) {
            linearLayoutManager.scrollToPosition(i3);
        }
        recyclerView.post(new RunnableC6406i(recyclerView, i));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: ae */
    public void mo32474ae() {
        this.f19534t0.setVisibility(0);
        ((RelativeLayout.LayoutParams) this.f19513m0.getLayoutParams()).addRule(3, this.f19534t0.getId());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: b */
    public void mo32351b(String str) {
        C8613t.m28203i(requireContext(), URLUtil.guessUrl(str));
    }

    @Override // com.truecaller.messaging.views.MediaEditText.AbstractC4283a
    /* renamed from: b1 */
    public void mo32473b1(Uri uri, String str, Runnable runnable) {
        this.f19484b.mo33332b1(uri, str, runnable);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: b2 */
    public void mo32472b2() {
        this.f19491e1.m35688c();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: b7 */
    public void mo32471b7(Conversation conversation) {
        Context requireContext = requireContext();
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(conversation, "conversation");
        Intent intent = new Intent(requireContext, ConversationNotificationSettingsActivity.class);
        intent.putExtra("conversation", conversation);
        startActivity(intent);
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
    /* renamed from: bf */
    public void mo28658bf() {
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: bu */
    public void mo32350bu(double d, double d2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.ENGLISH, "geo:%f,%f?q=%f,%f", Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d), Double.valueOf(d2)));
        if (str != null && !str.isEmpty()) {
            C22128a.m8669S0(sb, "(", str, ")");
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb.toString()));
        if (intent.resolveActivity(requireActivity().getPackageManager()) != null) {
            startActivity(intent);
        } else {
            Toast.makeText(requireContext(), 2131887863, 0).show();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: bw */
    public void mo32470bw(int i, int i2) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        Drawable drawable = resources.getDrawable(i, theme);
        Objects.requireNonNull(drawable);
        Drawable mutate = drawable.mutate();
        mutate.setTint(i2);
        this.f19498h0.setImageDrawable(mutate);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: c9 */
    public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
        this.f19493f1 = abstractC25450a;
        this.f19453L0.setCallback(new C5399j2(this));
        return true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: d7 */
    public void mo32469d7(int i) {
        View view = getView();
        if (view == null) {
            return;
        }
        if (this.f19505j1 == null) {
            this.f19505j1 = ((ViewStub) view.findViewById(C2752R.C2754id.otps_banner_stub)).inflate();
        }
        ((TextView) this.f19505j1.findViewById(C2752R.C2754id.txtOtpCount)).setText(getString((int) C2752R.string.inbox_cleanup_conv_otp_banner, new Object[]{Integer.valueOf(i)}));
        this.f19505j1.findViewById(C2752R.C2754id.btnDeleteAll).setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19482a.mo33534Kj();
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: e */
    public void mo32468e() {
        AbstractC25450a abstractC25450a = this.f19493f1;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
        m32507QA();
        mo32343j4();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: e4 */
    public void mo32467e4() {
        this.f19476X.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, C19291g.m13535l0(requireContext(), 2131232705, 2130970017), (Drawable) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: ej */
    public void mo32349ej(Parcelable parcelable) {
        this.f19513m0.getLayoutManager().onRestoreInstanceState(parcelable);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: eu */
    public void mo32466eu(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        if (this.f19489d1 == null) {
            ViewGroup viewGroup = (ViewGroup) getView();
            if (viewGroup == null) {
                return;
            }
            this.f19489d1 = (AbstractC5489c) viewGroup.findViewById(C2752R.C2754id.attachmentPickerLayout);
        }
        m32515OA(true);
        this.f19489d1.mo33013Y(this.f19484b, this.f19497h);
        this.f19489d1.setGalleryItemsLoader(this.f19521p);
        this.f19489d1.setUiThread(this.f19524q);
        this.f19489d1.mo33015W(z, z2, z5);
        this.f19489d1.setFlashVisible(z3);
        this.f19489d1.setLocationVisible(z4);
        this.f19489d1.setContactVisible(z6);
        n3.r.a.l requireActivity = requireActivity();
        l.e(requireActivity, "$this$toggleKeyboard");
        View currentFocus = requireActivity.getCurrentFocus();
        if (currentFocus != null) {
            C19286f.m13679Y(currentFocus, false, 0L, 2);
        }
        if (this.f19479Y0 <= this.f19483a1) {
            this.f19489d1.show();
        } else {
            this.f19481Z0 = true;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5836z5
    /* renamed from: ez */
    public void mo32330ez() {
        this.f19507k0.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: f3 */
    public void mo32465f3(boolean z, long j) {
        C19286f.m13680X(this.f19495g0, z, j);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: fA */
    public void mo32464fA(String[] strArr) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        if (strArr != null && strArr.length > 0) {
            intent.putExtra("android.intent.extra.MIME_TYPES", strArr);
        }
        if (this.f19484b.mo33353Se()) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        startActivityForResult(intent, 205);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5688r4
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: gd */
    public void mo32463gd(boolean z) {
        this.f19465R0.setImageResource(z ? 2131232509 : 2131232489);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    public Parcelable getScrollState() {
        return this.f19513m0.getLayoutManager().onSaveInstanceState();
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: gi */
    public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: gk */
    public void mo32462gk(int i) {
        C19291g.m13555e1(this, new String[]{"android.permission.RECORD_AUDIO"}, i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: gn */
    public void mo32461gn(ArrayList<FlashContact> arrayList) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.f19515n.mo9320J(context, arrayList, "conversation");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: go */
    public void mo32460go() {
        new C21846z1(requireContext(), C2752R.string.PermissionDialog_record_audio_reason, C2752R.string.PermissionDialog_record_audio).m8995cB(getChildFragmentManager());
    }

    @Override // p193e.p194a.p195a.p200c.p204f.C5255a.AbstractC5258c
    /* renamed from: gr */
    public void mo32459gr(long j) {
        this.f19484b.mo33379K2(j);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: gw */
    public void mo32348gw(String str) {
        if (getActivity() != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            C8613t.m28197o(this, intent);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: h0 */
    public void mo32458h0() {
        TruecallerInit.m34568Ua(getActivity(), "conversation");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4, p193e.p194a.p195a.p200c.AbstractC5836z5
    /* renamed from: h1 */
    public void mo32329h1() {
        ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h = this.f19504j0;
        if (viewTreeObserver$OnGlobalLayoutListenerC20285h != null) {
            SharedPreferences sharedPreferences = viewTreeObserver$OnGlobalLayoutListenerC20285h.f57088l.getContext().getSharedPreferences("emoji", 0);
            l.d(sharedPreferences, "editText.context.getShar…ME, Context.MODE_PRIVATE)");
            sharedPreferences.edit().remove("gifs_on_boarding_done").apply();
            this.f19504j0.dismiss();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: h4 */
    public void mo32457h4(int i, String str) {
        C8230h.f25388k.m28763a((h) requireActivity(), getString(i), str, getString(2131887873), getString(2131887867), null, new a() { // from class: e.a.a.c.c0
            public final Object invoke() {
                C5815y3.this.f19482a.mo33538Eq();
                return s.a;
            }
        }, null, null, true, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: h7 */
    public void mo32347h7(final String str) {
        int indexOf = getString((int) C2752R.string.ConversationOpenLinkQuestion).indexOf("%s");
        SpannableString spannableString = new SpannableString(getString((int) C2752R.string.ConversationOpenLinkQuestion, new Object[]{str}));
        if (indexOf >= 0) {
            spannableString.setSpan(new UnderlineSpan(), indexOf, str.length() + indexOf, 0);
            spannableString.setSpan(new ForegroundColorSpan(C19291g.m13612L(requireContext(), 2130970017)), indexOf, str.length() + indexOf, 0);
        }
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.ConversationOpenLink);
        g_a.f70854a.f156f = spannableString;
        g_a.m3660i(C2752R.string.NotificationActionOpen, new DialogInterface.OnClickListener() { // from class: e.a.a.c.l1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19486c.mo32735J8(str);
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: h9 */
    public void mo32346h9(final long j) {
        this.f19513m0.post(new Runnable() { // from class: e.a.a.c.a2
            @Override // java.lang.Runnable
            public final void run() {
                C5815y3 c5815y3 = C5815y3.this;
                long j2 = j;
                Objects.requireNonNull(c5815y3);
                RecyclerView recyclerView = c5815y3.f19513m0;
                l.e(recyclerView, "recyclerView");
                new C5837z6(recyclerView, j2, null, 2500L).start();
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: hb */
    public void mo32345hb(int i) {
        this.f19446H0.setText(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: hh */
    public void mo32344hh() {
        if (getContext() == null) {
            return;
        }
        g$a g_a = new g$a(getContext());
        g_a.m3664e(C2752R.string.ConversationDowngradedMessageAfterUpgrade);
        g_a.f70854a.f163m = true;
        g_a.m3660i(2131887910, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: i9 */
    public void mo32456i9() {
        MediaEditText mediaEditText = this.f19495g0;
        l.e(mediaEditText, "$this$moveCursorToEnd");
        mediaEditText.setSelection(mediaEditText.getText().length());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: is */
    public void mo32455is(long j) {
        Context context = getContext();
        int i = PdoViewerActivity.f12884h;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, PdoViewerActivity.class);
        intent.putExtra("msg_id", j);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: iu */
    public int mo32454iu(String str) {
        int selectionStart = this.f19495g0.getSelectionStart();
        Editable text = this.f19495g0.getText();
        int lastIndexOf = text.toString().lastIndexOf(64, selectionStart - 1);
        if (lastIndexOf != -1) {
            text.replace(lastIndexOf, selectionStart, str + StringConstant.SPACE);
            mo32540Hx(lastIndexOf, str.length() + lastIndexOf);
            return lastIndexOf + 1;
        }
        return -1;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: j1 */
    public void mo32453j1() {
        C26907a c26907a = new C26907a(getFragmentManager());
        c26907a.mo1122k(0, new C5799w7(), null, 1);
        c26907a.mo1124i();
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j
    /* renamed from: j2 */
    public void mo32234j2(String str) {
        l.e(this, "fragment");
        l.e(str, "analyticsContext");
        Context context = getContext();
        if (context != null) {
            startActivityForResult(DefaultSmsActivity.m34991pa(context, str), 200);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: j4 */
    public void mo32343j4() {
        mo32443lm();
        C5512m c5512m = this.f19496g1;
        if (c5512m != null) {
            c5512m.dismiss();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: j7 */
    public void mo32342j7(boolean z) {
        this.f19486c.mo32738H5(z);
        if (z) {
            this.f19536u0.p();
            return;
        }
        this.f19536u0.i();
        this.f19538v0.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.C5255a.AbstractC5258c
    /* renamed from: jp */
    public void mo32452jp(long j, long j2, int i) {
        this.f19484b.mo33331b7(j2, j, i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5797w5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: k */
    public boolean mo32451k(String str) {
        return C19291g.m13502w0(getActivity(), str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4, p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: k1 */
    public void mo32450k1() {
        final n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
            this.f19495g0.post(new Runnable() { // from class: e.a.a.c.u2
                @Override // java.lang.Runnable
                public final void run() {
                    activity.onBackPressed();
                }
            });
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: k4 */
    public void mo32449k4(int i) {
        C19291g.m13555e1(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: ka */
    public void mo32448ka(String str) {
        m32491UA(true);
        C19286f.m13680X(this.f19495g0, true, 300L);
        this.f19439C0.m35115c(str);
        this.f19439C0.setDismissActionVisible(true);
        this.f19439C0.setDismissActionListener(new View.OnClickListener() { // from class: e.a.a.c.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C5815y3.this.mo32551Ec();
            }
        });
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: kk */
    public void mo32447kk() {
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.e(childFragmentManager, "fragmentManager");
        new C6336l().show(childFragmentManager, "um_onboarding_dialog");
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: ko */
    public void mo32446ko(int i) {
        this.f19495g0.getText().replace(i, this.f19495g0.getSelectionStart(), "");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: kx */
    public void mo32341kx(String str) {
        this.f19538v0.setText(str);
        this.f19538v0.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: l1 */
    public void mo32445l1(Conversation conversation) {
        startActivity(MediaManagerActivity.f13548a.m34972a(requireContext(), conversation, "conversation", false));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b3  */
    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: lA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32444lA(com.truecaller.messaging.data.types.Message... r11) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5815y3.mo32444lA(com.truecaller.messaging.data.types.Message[]):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: lm */
    public void mo32443lm() {
        mo32542H4();
        mo32530K5(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: lp */
    public void mo32442lp(String str, Message message) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        l.e(childFragmentManager, "fragmentManager");
        l.e(str, "languageCode");
        C5766t5 c5766t5 = new C5766t5();
        Bundle bundle = new Bundle();
        bundle.putString("languageCode", str);
        bundle.putParcelable("message", message);
        c5766t5.setArguments(bundle);
        c5766t5.show(childFragmentManager, (String) null);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5644j
    /* renamed from: lx */
    public void mo32441lx(final boolean z) {
        this.f19473V0.notifyDataSetChanged();
        int i = z ? 0 : 8;
        if (this.f19471U0.getVisibility() != i) {
            final int i2 = i;
            final int i3 = i;
            this.f19471U0.animate().alpha(z ? 1.0f : 0.0f).setDuration(200L).withStartAction(new Runnable() { // from class: e.a.a.c.d1
                @Override // java.lang.Runnable
                public final void run() {
                    C5815y3 c5815y3 = C5815y3.this;
                    boolean z2 = z;
                    int i4 = i2;
                    Objects.requireNonNull(c5815y3);
                    if (z2) {
                        c5815y3.f19471U0.setVisibility(i4);
                    }
                }
            }).withEndAction(new Runnable() { // from class: e.a.a.c.i0
                @Override // java.lang.Runnable
                public final void run() {
                    C5815y3 c5815y3 = C5815y3.this;
                    boolean z2 = z;
                    int i4 = i3;
                    Objects.requireNonNull(c5815y3);
                    if (!z2) {
                        c5815y3.f19471U0.setVisibility(i4);
                    }
                }
            }).start();
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
    /* renamed from: mf */
    public void mo28657mf() {
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: mo */
    public void mo32440mo() {
        C8230h.f25388k.m28763a((h) requireActivity(), getString((int) C2752R.string.ConversationHiddenNumberImIdInvalidTitle), getString((int) C2752R.string.ConversationHiddenNumberImIdInvalidMessage), getString((int) C2752R.string.StrOkGotIt), null, null, null, null, null, true, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5797w5
    /* renamed from: n1 */
    public void mo32439n1() {
        this.f19463Q0.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4, p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: n4 */
    public void mo32340n4(int i, String str, final List<Message> list) {
        int size = list.size();
        ConfirmationDialog.f11158i.m35692a((h) requireActivity(), getResources().getQuantityString(i, size, Integer.valueOf(size)), null, getString((int) C2752R.string.btn_delete), getString(2131887867), str, new s1.z.b.l() { // from class: e.a.a.c.x0
            /* renamed from: d */
            public final Object m32584d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19488d.mo33225aj(((Boolean) obj).booleanValue(), list);
                return null;
            }
        }, null, null, true, ConfirmationDialog.ButtonStyle.ALERT);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: n5 */
    public void mo32438n5(String str, boolean z, String str2, PhoneNumberType phoneNumberType) {
        startActivityForResult(SpamCategoriesActivity.m34733pa(requireContext(), new SpamCategoryRequest(str, z, Collections.singletonList(new NumberAndType(str2, phoneNumberType)), FeedbackSource.BLOCK_FLOW)), 15);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: n6 */
    public void mo32437n6(List<String> list) {
        this.f19461P0.setVisibility(0);
        this.f19461P0.setAdapter(this.f19514m1);
        C5113b8 c5113b8 = this.f19454M;
        Objects.requireNonNull(c5113b8);
        l.e(list, "replies");
        List<String> list2 = c5113b8.f17491b;
        list2.clear();
        list2.addAll(list);
        C18898f c18898f = this.f19514m1;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: n8 */
    public void mo32339n8(Participant participant, boolean z) {
        Intent intent = new Intent(requireContext(), ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{participant});
        intent.putExtra("is_hidden_number_intent", z);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: ng */
    public void mo32436ng() {
        this.f19449J0.m35088f();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: nq */
    public void mo32435nq(Contact contact, byte[] bArr) {
        C8613t.m28200l(this, C19090q.m14140d(contact, bArr), 1);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: ns */
    public void mo32434ns(final boolean z, int i) {
        ConfirmationDialog.C3713d c3713d = ConfirmationDialog.f11158i;
        h hVar = (h) requireActivity();
        String string = getString((int) C2752R.string.DeleteThisConversationQuestion);
        String str = null;
        String string2 = i != 0 ? getString(i) : null;
        String string3 = getString((int) C2752R.string.btn_delete);
        String string4 = getString(2131887867);
        if (z) {
            str = getString((int) C2752R.string.ConversationMessagesDeleteMediaOption);
        }
        c3713d.m35692a(hVar, string, string2, string3, string4, str, new s1.z.b.l() { // from class: e.a.a.c.z1
            /* renamed from: d */
            public final Object m32382d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19482a.mo33532Lj(z, ((Boolean) obj).booleanValue());
                return null;
            }
        }, null, null, true, ConfirmationDialog.ButtonStyle.ALERT);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: nw */
    public void mo32433nw(final Uri uri) {
        g$a g_a = new g$a(getContext());
        g_a.m3656m(C2752R.string.MmsAddContactDialog);
        String string = getString((int) C2752R.string.MmsAddContactAsText);
        String string2 = getString((int) C2752R.string.MmsAddContactAsVcard);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: e.a.a.c.t1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3 c5815y3 = C5815y3.this;
                Uri uri2 = uri;
                if (i == 0) {
                    c5815y3.f19484b.mo33297vh(uri2);
                } else {
                    c5815y3.f19484b.mo33334a4(uri2);
                }
            }
        };
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f167q = new CharSequence[]{string, string2};
        c0037b.f169s = onClickListener;
        g_a.m3668a().show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: od */
    public void mo32432od(boolean z) {
        this.f19525q0.setVisibility(z ? 4 : 8);
        this.f19528r0.setVisibility(z ? 4 : 8);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C5815y3.super.onActivityResult(i, i2, intent);
        this.f19482a.onActivityResult(i, i2, intent);
        this.f19497h.onActivityResult(i, i2, intent);
        this.f19488d.onActivityResult(i, i2, intent);
        this.f19484b.onActivityResult(i, i2, intent);
        boolean z = i2 == -1;
        C19010a c19010a = null;
        if (i == 15) {
            AbstractC5179c5 abstractC5179c5 = this.f19482a;
            SpamCategoryResult spamCategoryResult = null;
            if (intent != null) {
                spamCategoryResult = (SpamCategoryResult) intent.getParcelableExtra("result");
            }
            abstractC5179c5.mo33522Uj(z, spamCategoryResult);
        } else if (i == 205) {
            this.f19484b.mo33312j4(DraftMode.DOCUMENTS, z, m32511PA(intent));
        } else {
            switch (i) {
                case 200:
                    this.f19484b.mo33319gf(z);
                    return;
                case 201:
                    AbstractC5276f4 abstractC5276f4 = this.f19484b;
                    Uri uri = null;
                    if (intent != null) {
                        uri = intent.getData();
                    }
                    abstractC5276f4.mo33389C6(z, uri);
                    return;
                case 202:
                    AbstractC5276f4 abstractC5276f42 = this.f19484b;
                    if (intent != null) {
                        c19010a = this.f19506k.mo14259a(intent);
                    }
                    abstractC5276f42.mo33296vi(z, c19010a);
                    return;
                case 203:
                    this.f19484b.mo33312j4(DraftMode.GALLERY, z, m32511PA(intent));
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttach(android.content.Context r16) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5815y3.onAttach(android.content.Context):void");
    }

    public void onCreate(Bundle bundle) {
        C5815y3.super.onCreate(bundle);
        getLifecycle().mo988a(this.f19460P);
        C18907o c18907o = new C18907o(new C18906n(this.f19535u, C2752R.C2754id.view_type_message_action_item, C5684r0.f19052a), new C18906n(this.f19541x, C2752R.C2754id.view_type_message_merged_items, new s1.z.b.l() { // from class: e.a.a.c.l2
            /* renamed from: d */
            public final Object m33068d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_merged_calls, false), c5815y3.f19541x);
            }
        }), new C18906n(this.f19539w, C2752R.C2754id.view_type_message_history, new s1.z.b.l() { // from class: e.a.a.c.o2
            /* renamed from: d */
            public final Object m32875d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_message_history, false), c5815y3.f19539w);
            }
        }), new C18906n(this.f19537v, C2752R.C2754id.view_type_message_load_history, C5716s1.f19168a), new C18906n(this.f19533t, C2752R.C2754id.view_type_message_status, new s1.z.b.l() { // from class: e.a.a.c.b0
            /* renamed from: d */
            public final Object m33828d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_message_status, false), c5815y3.f19533t);
            }
        }), new C18906n(this.f19530s, C2752R.C2754id.view_type_message_outgoing, new s1.z.b.l() { // from class: e.a.a.c.m2
            /* renamed from: d */
            public final Object m32996d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_message_outgoing, false), c5815y3.f19530s);
            }
        }), new C18906n(this.f19527r, C2752R.C2754id.view_type_message_incoming, new s1.z.b.l() { // from class: e.a.a.c.c1
            /* renamed from: d */
            public final Object m33694d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_message_incoming, false), c5815y3.f19527r);
            }
        }), new C18906n(this.f19543y, C2752R.C2754id.view_type_message_mms_incoming, new s1.z.b.l() { // from class: e.a.a.c.y
            /* renamed from: d */
            public final Object m32571d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new ViewTreeObserver$OnPreDrawListenerC5184d(C19286f.m13668k((ViewGroup) obj, C2752R.layout.item_message_incoming, false), c5815y3.f19543y);
            }
        }));
        this.f19470U = c18907o;
        C18898f c18898f = new C18898f(c18907o);
        this.f19468T = c18898f;
        c18898f.setHasStableIds(true);
        new C5703e().m32773d(requireContext(), this.f19500i, new a() { // from class: e.a.a.c.p2
            public final Object invoke() {
                C5815y3.this.f19486c.mo32745Ba(null);
                return null;
            }
        });
        C18898f c18898f2 = new C18898f(new C18910r(this.f19450K, C2752R.layout.conversation_quick_action_item, C5793w2.f19402a, C5781v0.f19365a));
        this.f19508k1 = c18898f2;
        c18898f2.setHasStableIds(true);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f19482a.mo33517Yj(arguments);
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C5815y3.super.onCreateOptionsMenu(menu, menuInflater);
        int mo32810Tb = this.f19492f.mo32810Tb();
        menuInflater.inflate(mo32810Tb, menu);
        if (mo32810Tb != 2131623950) {
            this.f19492f.mo32812Og(menu);
            return;
        }
        MenuItem findItem = menu.findItem(2131364778);
        findItem.getActionView().findViewById(2131362272).setVisibility(this.f19492f.mo32808Y8() ? 0 : 8);
        final C25508g0 c25508g0 = new C25508g0(requireContext(), findItem.getActionView(), 8388613);
        c25508g0.m3362a(C2752R.C2756menu.conversation_menu);
        c25508g0.f71383e = new C25508g0.AbstractC25510b() { // from class: e.a.a.c.n1
            @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
            public final boolean onMenuItemClick(MenuItem menuItem) {
                C5815y3.this.onOptionsItemSelected(menuItem);
                return false;
            }
        };
        onPrepareOptionsMenu(c25508g0.f71380b);
        this.f19492f.mo32812Og(c25508g0.f71380b);
        findItem.getActionView().setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.r1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C25508g0 c25508g02 = C25508g0.this;
                int i = C5815y3.f19433t1;
                c25508g02.f71382d.m3426f();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        return layoutInflater.inflate(C2752R.layout.fragment_conversation, viewGroup, false);
    }

    public void onDestroy() {
        if (Build.VERSION.SDK_INT >= 31) {
            C19291g.m13541j0(requireActivity()).registerTelephonyCallback(requireContext().getMainExecutor(), new C5823h(null));
        } else {
            C19291g.m13541j0(requireActivity()).listen(this.f19523p1, 0);
        }
        this.f19495g0.f13951d = null;
        this.f19482a.mo9806c();
        this.f19484b.mo9806c();
        this.f19486c.mo9806c();
        this.f19488d.mo9806c();
        this.f19497h.mo9806c();
        this.f19494g.f23290d = null;
        this.f19545z.mo9806c();
        this.f19504j0.f57092p.m11310c();
        this.f19467S0.mo9806c();
        this.f19490e.mo9806c();
        this.f19492f.mo9806c();
        C5815y3.super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return this.f19492f.mo32805q9(menuItem.getItemId());
    }

    public void onPause() {
        C5815y3.super.onPause();
        this.f19482a.onPause();
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.onPause();
        }
    }

    public void onPrepareOptionsMenu(Menu menu) {
        C5815y3.super.onPrepareOptionsMenu(menu);
        this.f19492f.mo32804vc(menu);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        C5815y3.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
        this.f19497h.onRequestPermissionsResult(i, strArr, iArr);
        this.f19484b.onRequestPermissionsResult(i, strArr, iArr);
        this.f19482a.onRequestPermissionsResult(i, strArr, iArr);
        this.f19488d.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void onResume() {
        C5815y3.super.onResume();
        this.f19482a.onResume();
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.onResume();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        C5815y3.super.onSaveInstanceState(bundle);
        this.f19482a.mo33501m2(bundle);
        this.f19497h.mo32592m2(bundle);
        bundle.putString("sim_token", this.f19494g.f23291e);
        this.f19486c.mo32689m2(bundle);
    }

    public void onStart() {
        C5815y3.super.onStart();
        this.f19482a.onStart();
        this.f19490e.onStart();
        this.f19495g0.setMediaCallback(this);
    }

    public void onStop() {
        C5815y3.super.onStop();
        this.f19482a.onStop();
        this.f19490e.onStop();
        this.f19495g0.setMediaCallback(null);
        this.f19545z.onStop();
        this.f19497h.onStop();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [android.widget.ImageButton, com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton] */
    public void onViewCreated(final View view, Bundle bundle) {
        C5815y3.super.onViewCreated(view, bundle);
        requireActivity().setSupportActionBar((Toolbar) view.findViewById(2131366512));
        C7296a c7296a = this.f19494g;
        Objects.requireNonNull(c7296a);
        if (bundle != null) {
            c7296a.f23291e = bundle.getString("sim_token");
            c7296a.m29823b();
        } else {
            c7296a.f23291e = c7296a.f23287a.mo21743b();
            c7296a.m29823b();
        }
        this.f19482a.mo33519Wj(bundle);
        this.f19497h.mo32593hh(bundle);
        this.f19486c.mo32697hh(bundle);
        this.f19483a1 = (int) (view.getContext().getResources().getDisplayMetrics().density * 100.0f);
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: e.a.a.c.w0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AbstractC5489c abstractC5489c;
                C5815y3 c5815y3 = C5815y3.this;
                View view2 = view;
                Objects.requireNonNull(c5815y3);
                Rect rect = new Rect();
                view2.getWindowVisibleDisplayFrame(rect);
                int height = view2.getRootView().getHeight() - rect.bottom;
                c5815y3.f19479Y0 = height;
                if (height > c5815y3.f19483a1 || !c5815y3.f19481Z0 || (abstractC5489c = c5815y3.f19489d1) == null) {
                    return;
                }
                abstractC5489c.show();
                c5815y3.f19481Z0 = false;
            }
        });
        new ViewTreeObserver$OnGlobalLayoutListenerC19739h(view, new C5820e(view));
        ViewStub viewStub = (ViewStub) view.findViewById(C2752R.C2754id.viewStubBottomBar);
        viewStub.setLayoutResource(C2752R.layout.layout_conversation_input_bar_default);
        viewStub.setOnInflateListener(new ViewStub.OnInflateListener() { // from class: e.a.a.c.s
            @Override // android.view.ViewStub.OnInflateListener
            public final void onInflate(ViewStub viewStub2, View view2) {
                final C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                MediaEditText mediaEditText = (MediaEditText) view2.findViewById(C2752R.C2754id.message_text);
                c5815y3.f19495g0 = mediaEditText;
                mediaEditText.setOnTouchListener(new View.OnTouchListener() { // from class: e.a.a.c.a0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view3, MotionEvent motionEvent) {
                        C5815y3 c5815y32 = C5815y3.this;
                        Objects.requireNonNull(c5815y32);
                        if (motionEvent.getAction() == 1) {
                            c5815y32.f19484b.mo33357R4();
                            return false;
                        }
                        return false;
                    }
                });
                c5815y3.f19495g0.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: e.a.a.c.f0
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view3, boolean z) {
                        C5815y3 c5815y32 = C5815y3.this;
                        if (z) {
                            c5815y32.f19484b.mo33357R4();
                        }
                        c5815y32.f19484b.mo33360Qa(z);
                    }
                });
                c5815y3.f19495g0.setTextDirection(6);
                c5815y3.f19501i0 = (TextView) view2.findViewById(C2752R.C2754id.text_counter);
                c5815y3.f19495g0.addTextChangedListener(c5815y3.f19520o1);
                ImageView imageView = (ImageView) view2.findViewById(C2752R.C2754id.sim_button);
                c5815y3.f19510l0 = imageView;
                imageView.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.k1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        String str;
                        C7296a c7296a2 = C5815y3.this.f19494g;
                        SimInfo mo21719v = c7296a2.f23287a.mo21719v(c7296a2.f23291e);
                        SimInfo mo21741e = c7296a2.f23287a.mo21741e((mo21719v == null || mo21719v.f13983a != 0) ? 0 : 1);
                        if (mo21741e != null) {
                            c7296a2.f23291e = mo21741e.f13984b;
                            c7296a2.m29823b();
                            if (c7296a2.f23290d == null) {
                                return;
                            }
                            String str2 = mo21741e.f13986d;
                            String str3 = mo21741e.f13985c;
                            int i = 0;
                            while (true) {
                                if (i >= 3) {
                                    str = null;
                                    break;
                                }
                                str = new String[]{str2, str3, ""}[i];
                                if (str != null) {
                                    break;
                                }
                                i++;
                            }
                            c7296a2.f23290d.mo29821rm(c7296a2.f23288b.mo13768b(C2752R.string.ConversationSimInfo, Integer.valueOf(mo21741e.f13983a + 1), str));
                        }
                    }
                });
                c5815y3.f19519o0 = (EmojiPokeButton) view2.findViewById(C2752R.C2754id.emoji_poke_button);
                c5815y3.f19522p0 = view2.findViewById(C2752R.C2754id.schedule_button);
                ChatSwitchView chatSwitchView = (ChatSwitchView) view2.findViewById(C2752R.C2754id.chatSwitchView);
                c5815y3.f19457N0 = chatSwitchView;
                s1.z.b.l<? super Switch, s> lVar = new s1.z.b.l() { // from class: e.a.a.c.n2
                    /* renamed from: d */
                    public final Object m32942d(Object obj) {
                        C5815y3.this.f19484b.mo33299ti((Switch) obj);
                        return s.a;
                    }
                };
                Objects.requireNonNull(chatSwitchView);
                l.e(lVar, "onSelected");
                chatSwitchView.f13946x = lVar;
                ConstraintLayout constraintLayout = (ConstraintLayout) view2;
                constraintLayout.m43031U0(C2752R.C2757xml.layout_conversation_input_bar_states);
                constraintLayout.m43026e1(C2752R.C2754id.defaultState, 0, 0);
                ChatSwitchView chatSwitchView2 = c5815y3.f19457N0;
                s1.z.b.l<? super Switch, s> lVar2 = new s1.z.b.l() { // from class: e.a.a.c.n0
                    /* renamed from: d */
                    public final Object m32943d(Object obj) {
                        C5815y3.this.f19484b.mo33363Pa((Switch) obj);
                        return s.a;
                    }
                };
                Objects.requireNonNull(chatSwitchView2);
                l.e(lVar2, "onDeActivatedSwitchClicked");
                chatSwitchView2.f13947y = lVar2;
            }
        });
        this.f19525q0 = (ViewGroup) viewStub.inflate();
        this.f19472V = view.findViewById(C2752R.C2754id.participants_header_view);
        AvatarXView avatarXView = (AvatarXView) view.findViewById(C2752R.C2754id.contact_photo);
        this.f19474W = avatarXView;
        avatarXView.setPresenter(this.f19448J);
        this.f19476X = (TextView) view.findViewById(2131366502);
        this.f19478Y = (AvailabilityView) view.findViewById(C2752R.C2754id.availability_indicator);
        this.f19480Z = (LottieAnimationView) view.findViewById(C2752R.C2754id.typing_indicator);
        this.f19478Y.setSelected(true);
        this.f19528r0 = (ImageView) view.findViewById(C2752R.C2754id.input_bar_shadow);
        this.f19531s0 = (TextView) view.findViewById(C2752R.C2754id.textBottom);
        View findViewById = view.findViewById(C2752R.C2754id.hard_upgrade_prompt_layout);
        this.f19534t0 = findViewById;
        ((BannerViewX) findViewById.findViewById(C2752R.C2754id.hard_upgrade_banner)).setSecondaryButtonCLickListener(new s1.z.b.l() { // from class: e.a.a.c.f1
            /* renamed from: d */
            public final Object m33449d(Object obj) {
                View view2 = (View) obj;
                C5815y3.this.f19482a.mo33528Pj();
                return s.a;
            }
        });
        this.f19536u0 = view.findViewById(C2752R.C2754id.pagedown);
        this.f19538v0 = (TextView) view.findViewById(C2752R.C2754id.pageDownCount);
        this.f19536u0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.y1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19486c.mo32690ld();
            }
        });
        this.f19540w0 = (ViewStub) view.findViewById(C2752R.C2754id.empty_stub);
        this.f19437B0 = (EmojiPokeView) view.findViewById(C2752R.C2754id.emoji_poke_view);
        ?? r0 = (RecordFloatingActionButton) this.f19525q0.findViewById(2131365654);
        this.f19498h0 = r0;
        r0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19484b.mo33392B9(c5815y3.f19491e1.f11185i);
            }
        });
        this.f19519o0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.q2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19484b.mo33292yj();
            }
        });
        this.f19522p0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19484b.mo33358R3();
            }
        });
        this.f19507k0 = (ImageButton) this.f19525q0.findViewById(C2752R.C2754id.emoji_toggle_button);
        this.f19516n0 = (TintedImageView) this.f19525q0.findViewById(C2752R.C2754id.attach_button);
        this.f19439C0 = (MessageSnippetView) this.f19525q0.findViewById(C2752R.C2754id.view_reply_snippet);
        this.f19513m0 = (RecyclerView) view.findViewById(2131365382);
        this.f19444F0 = (ViewStub) view.findViewById(C2752R.C2754id.urgent_message_actions_stub);
        RecyclerView.C0339u recycledViewPool = this.f19513m0.getRecycledViewPool();
        recycledViewPool.m42731c(C2752R.C2754id.view_type_message_incoming, 15);
        recycledViewPool.m42731c(C2752R.C2754id.view_type_message_outgoing, 15);
        this.f19494g.f23290d = this;
        this.f19497h.f57683a = this;
        this.f19484b.mo9029Y0(this);
        this.f19545z.mo9029Y0(this);
        this.f19486c.mo9029Y0(this);
        this.f19488d.mo9029Y0(this);
        this.f19467S0.mo9029Y0(this);
        this.f19490e.mo9029Y0(this);
        this.f19492f.mo9029Y0(this);
        this.f19516n0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3 c5815y3 = C5815y3.this;
                c5815y3.f19484b.mo33345Wf();
                c5815y3.f19545z.mo32385ta(c5815y3.f19504j0.f57086j);
            }
        });
        FloatingActionButton floatingActionButton = (FloatingActionButton) view.findViewById(C2752R.C2754id.fake_send);
        this.f19491e1 = floatingActionButton;
        floatingActionButton.getButtonView().getLayoutParams().width = 0;
        this.f19491e1.getButtonView().getLayoutParams().height = this.f19491e1.getContext().getResources().getDimensionPixelSize(2131165724);
        this.f19441D0 = (LinearLayout) view.findViewById(C2752R.C2754id.input_action_bar);
        View findViewById2 = view.findViewById(C2752R.C2754id.call_history_view);
        this.f19445G0 = findViewById2;
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.r2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19486c.mo32674xc();
            }
        });
        this.f19446H0 = (TextView) view.findViewById(C2752R.C2754id.call_history_show_hide);
        this.f19463Q0 = (LinkPreviewDraftView) view.findViewById(C2752R.C2754id.link_preview);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(C2752R.C2754id.quickActionsRecyclerView);
        this.f19459O0 = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(requireContext, C2752R.C2753drawable.conversation_quick_action_divider);
        if (m1789b != null) {
            C25595i c25595i = new C25595i(requireContext(), 0);
            c25595i.m3173d(m1789b);
            this.f19459O0.addItemDecoration(c25595i);
        }
        this.f19459O0.setAdapter(this.f19508k1);
        this.f19447I0 = view.findViewById(C2752R.C2754id.phone_number_popup_anchor);
        this.f19449J0 = (RecordToastView) view.findViewById(C2752R.C2754id.recordingToast);
        this.f19453L0 = (ConversationActionModeView) view.findViewById(C2752R.C2754id.actionMode);
        this.f19455M0 = (ImageView) view.findViewById(C2752R.C2754id.actionModeShadow);
        this.f19482a.mo9029Y0(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f19484b.mo33386Df(arguments.getString("initial_content"), arguments.getParcelableArrayList("initial_attachments"));
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setReverseLayout(true);
        this.f19513m0.setLayoutManager(linearLayoutManager);
        this.f19513m0.setAdapter(this.f19468T);
        this.f19513m0.setRecyclerListener(new RecyclerView.AbstractC0342w() { // from class: e.a.a.c.q1
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0342w
            public final void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
                Iterable<C5701c> mo33614k0;
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                if (!(abstractC0313c0 instanceof AbstractC5062a7) || (mo33614k0 = ((AbstractC5062a7) abstractC0313c0).mo33614k0()) == null) {
                    return;
                }
                for (C5701c c5701c : mo33614k0) {
                    c5815y3.f19503j.mo32616b(c5701c);
                }
            }
        });
        this.f19513m0.addOnScrollListener(new C5821f(C8605o.m28238b(view.getContext(), 100.0f), linearLayoutManager));
        C25601k c25601k = new C25601k(new C5231d8(requireContext(), new C5782v1(this)));
        RecyclerView recyclerView2 = this.f19513m0;
        RecyclerView recyclerView3 = c25601k.f71733r;
        if (recyclerView3 != recyclerView2) {
            if (recyclerView3 != null) {
                recyclerView3.removeItemDecoration(c25601k);
                c25601k.f71733r.removeOnItemTouchListener(c25601k.f71713A);
                c25601k.f71733r.removeOnChildAttachStateChangeListener(c25601k);
                for (int size = c25601k.f71731p.size() - 1; size >= 0; size--) {
                    C25601k.C25609f c25609f = c25601k.f71731p.get(0);
                    c25609f.f71758g.cancel();
                    c25601k.f71728m.m3152a(c25609f.f71756e);
                }
                c25601k.f71731p.clear();
                c25601k.f71738w = null;
                c25601k.f71739x = -1;
                VelocityTracker velocityTracker = c25601k.f71735t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    c25601k.f71735t = null;
                }
                C25601k.C25608e c25608e = c25601k.f71741z;
                if (c25608e != null) {
                    c25608e.f71750a = false;
                    c25601k.f71741z = null;
                }
                if (c25601k.f71740y != null) {
                    c25601k.f71740y = null;
                }
            }
            c25601k.f71733r = recyclerView2;
            if (recyclerView2 != null) {
                Resources resources = recyclerView2.getResources();
                c25601k.f71721f = resources.getDimension(C0297R.dimen.item_touch_helper_swipe_escape_velocity);
                c25601k.f71722g = resources.getDimension(C0297R.dimen.item_touch_helper_swipe_escape_max_velocity);
                c25601k.f71732q = ViewConfiguration.get(c25601k.f71733r.getContext()).getScaledTouchSlop();
                c25601k.f71733r.addItemDecoration(c25601k);
                c25601k.f71733r.addOnItemTouchListener(c25601k.f71713A);
                c25601k.f71733r.addOnChildAttachStateChangeListener(c25601k);
                c25601k.f71741z = new C25601k.C25608e();
                c25601k.f71740y = new C26574e(c25601k.f71733r.getContext(), c25601k.f71741z);
            }
        }
        this.f19513m0.addOnItemTouchListener(new C5834z3(this));
        AbstractC25393a supportActionBar = getActivity().getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3551p(false);
        }
        this.f19472V.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19490e.mo33683hi();
            }
        });
        this.f19513m0.setItemAnimator(null);
        this.f19513m0.addItemDecoration(new C5475l(requireContext()));
        this.f19507k0.setOnClickListener(new View.OnClickListener() { // from class: e.a.a.c.h1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C5815y3.this.f19545z.mo32389Pb();
            }
        });
        RecordView recordView = (RecordView) view.findViewById(C2752R.C2754id.recordView);
        this.f19451K0 = recordView;
        this.f19498h0.setRecordView(recordView);
        this.f19451K0.setMaxDurationMs(TimeUnit.MILLISECONDS.convert(this.f19484b.mo33356R6(), TimeUnit.MINUTES));
        this.f19451K0.setRecordListener(new C5059a4(this));
        if (Build.VERSION.SDK_INT >= 31) {
            C19291g.m13541j0(view.getContext()).registerTelephonyCallback(requireContext().getMainExecutor(), new C5823h(null));
        } else {
            C19291g.m13541j0(view.getContext()).listen(this.f19523p1, 32);
        }
        C20273b c20273b = (C20273b) this.f19464R.get();
        this.f19495g0.setAdapter(c20273b);
        this.f19495g0.setOnItemClickListener(c20273b);
        this.f19495g0.setTokenizer(new C20277c());
        this.f19495g0.addTextChangedListener(new C20298m());
        this.f19471U0 = (RecyclerView) view.findViewById(C2752R.C2754id.mentionRecyclerView);
        C18898f c18898f = new C18898f(new C18910r(this.f19469T0, C2752R.layout.item_mention_participant, new s1.z.b.l() { // from class: e.a.a.c.w1
            /* renamed from: d */
            public final Object m32591d(Object obj2) {
                C5815y3 c5815y3 = C5815y3.this;
                Objects.requireNonNull(c5815y3);
                return new C5637f((View) obj2, c5815y3.f19473V0, false);
            }
        }, C5372i2.f18357a));
        this.f19473V0 = c18898f;
        this.f19471U0.setAdapter(c18898f);
        this.f19495g0.addTextChangedListener(this.f19475W0);
        MediaEditText mediaEditText = this.f19495g0;
        AbstractC6437d abstractC6437d = this.f19477X0;
        Objects.requireNonNull(mediaEditText);
        l.e(abstractC6437d, "listener");
        mediaEditText.f13951d = abstractC6437d;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || !this.f19482a.mo33537Ij(arguments2)) {
            return;
        }
        C19291g.m13515s(requireContext());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: p5 */
    public void mo32431p5() {
        new C21846z1(requireContext(), C2752R.string.PermissionDialog_sms_reason, C2752R.string.PermissionDialog_sms).m8995cB(getChildFragmentManager());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: pb */
    public void mo32430pb(boolean z) {
        this.f19535u.f18537c = z;
        this.f19468T.notifyDataSetChanged();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: pf */
    public void mo32429pf(Participant participant) {
        try {
            Contact contact = new Contact();
            contact.m35525d(new Number(participant.f11572e, null));
            String str = participant.f11579l;
            if (str != null) {
                ((ContactDto.Contact) contact.mRow).name = str;
            }
            final AbstractC5179c5 abstractC5179c5 = this.f19482a;
            Objects.requireNonNull(abstractC5179c5);
            C19047j1.m14189QA(contact, new C19047j1.AbstractC19048a() { // from class: e.a.a.c.x2
                @Override // p193e.p194a.p1114o5.C19047j1.AbstractC19048a
                /* renamed from: a */
                public final void mo10489a(Contact contact2, byte[] bArr) {
                    AbstractC5179c5.this.mo33523Tj(contact2, bArr);
                }
            }).show(getFragmentManager(), "contact_save");
        } catch (ActivityNotFoundException e) {
            C10480a.m26057J1(e, "Cannot find an activity to insert contact");
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: pr */
    public void mo32428pr() {
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.mo33014X();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5, p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: q0 */
    public void mo32427q0(int i) {
        C19291g.m13555e1(this, this.f19509l.mo19356a(), i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: q1 */
    public void mo32426q1() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("vnd.android.cursor.dir/phone_v2");
        startActivityForResult(intent, 201);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: q7 */
    public void mo32425q7(boolean z) {
        AbstractC5489c abstractC5489c = this.f19489d1;
        if (abstractC5489c != null) {
            abstractC5489c.mo33016V(z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: qe */
    public void mo32424qe(boolean z) {
        try {
            String string = getString(2131889130);
            l.e(string, "apiKey");
            String str = C16506c.f46413a;
            l.e(str, "<set-?>");
            C16506c.f46414b = str;
            l.e(string, "<set-?>");
            C16506c.f46413a = string;
            Activity requireActivity = requireActivity();
            l.e(requireActivity, "activity");
            GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
            l.d(googleApiAvailability, "GoogleApiAvailability.getInstance()");
            int mo39062e = googleApiAvailability.mo39062e(requireActivity, 13400000);
            if (mo39062e != 0) {
                if (!GooglePlayServicesUtilLight.isUserRecoverableError(mo39062e)) {
                    throw new GooglePlayServicesNotAvailableException(mo39062e);
                }
                googleApiAvailability.m39072f(requireActivity, mo39062e, 0, null).show();
                throw new GooglePlayServicesRepairableException(mo39062e, GooglePlayServicesUtilLight.getErrorString(mo39062e), new Intent());
            }
            Intent intent = new Intent(requireActivity, PlacePickerActivity.class);
            intent.putExtra("latitude", PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
            intent.putExtra("longitude", PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
            intent.putExtra("forceRemoteGeocoding", false);
            intent.putExtra("toolbarTitle", (String) null);
            intent.putExtra("showAutocomplete", z);
            startActivityForResult(intent, 202);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException e) {
            this.f19482a.mo33498o5();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: qh */
    public void mo32423qh() {
        this.f19495g0.requestFocus();
        MediaEditText mediaEditText = this.f19495g0;
        l.e(mediaEditText, "$this$moveCursorToEnd");
        mediaEditText.setSelection(mediaEditText.getText().length());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: qz */
    public void mo32338qz() {
        if (getContext() == null) {
            return;
        }
        g$a g_a = new g$a(getContext());
        g_a.m3664e(C2752R.string.ConversationDowngradedMessageBeforeUpgrade);
        g_a.f70854a.f163m = true;
        g_a.m3660i(C2752R.string.messaging_hard_upgrade_prompt_btn, new DialogInterface.OnClickListener() { // from class: e.a.a.c.p1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3.this.f19486c.mo32739Fe();
            }
        });
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: r3 */
    public void mo32422r3() {
        Dialog dialog = this.f19499h1;
        if (dialog != null) {
            dialog.dismiss();
            this.f19499h1 = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [android.widget.ImageButton, com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.widget.ImageButton, com.truecaller.messaging.conversation.voice_notes.RecordFloatingActionButton] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: rd */
    public void mo32421rd(boolean z) {
        if (z) {
            this.f19491e1.setVisibility(0);
            this.f19491e1.setFabActionListener(this);
            this.f19498h0.setOnLongClickListener(new View.OnLongClickListener() { // from class: e.a.a.c.s2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    C5815y3.this.f19484b.mo33304lh();
                    return true;
                }
            });
            return;
        }
        this.f19491e1.setVisibility(8);
        this.f19491e1.setFabActionListener(null);
        this.f19498h0.setOnLongClickListener(null);
    }

    @Override // p193e.p194a.p195a.p285x0.AbstractC7297b
    /* renamed from: rm */
    public void mo29821rm(String str) {
        Toast.makeText(getContext(), str, 0).show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: rq */
    public void mo32420rq(Contact contact) {
        C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.CONVERSATION).show(getChildFragmentManager(), C21167a.class.getSimpleName());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: sa */
    public void mo32419sa(String str) {
        this.f19476X.setText(str);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: sd */
    public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: sg */
    public void mo32418sg() {
        AbstractC5446k7 abstractC5446k7 = this.f19518o;
        if (abstractC5446k7 == null) {
            return;
        }
        abstractC5446k7.mo32992a();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: sh */
    public void mo32417sh(Boolean bool, Long l) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setResult(-1, new Intent().putExtra("RESULT_NUMBER_BLOCKED", bool).putExtra("CONVERSATION_ID", l));
        }
    }

    @Override // p193e.p194a.p195a.p223c1.AbstractC5860j
    /* renamed from: t0 */
    public void mo32233t0() {
        AbstractC14965w abstractC14965w = this.f19509l;
        l.e(this, "fragment");
        l.e(abstractC14965w, "tcPermissionsUtil");
        C19291g.m13555e1(this, abstractC14965w.mo19356a(), 200);
    }

    @Override // p193e.p194a.p437c.p438a.p520r.AbstractC9584a
    /* renamed from: t6 */
    public C8243a mo27414t6() {
        return this.f19448J;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: t8 */
    public void mo32337t8(final List<Message> list) {
        new C12669a(new s1.z.b.l() { // from class: e.a.a.c.e1
            /* renamed from: d */
            public final Object m33540d(Object obj) {
                C5815y3 c5815y3 = C5815y3.this;
                List<Message> list2 = list;
                Objects.requireNonNull(c5815y3);
                int ordinal = ((DeleteOtpBottomSheetOption) obj).ordinal();
                if (ordinal == 0) {
                    c5815y3.startActivity(InboxCleanupActivity.f13499a.m34986a(c5815y3.requireContext(), null, "ConversationBubble"));
                    c5815y3.f19458O.mo26757a(C8764a.f26742a.m25827a());
                } else if (ordinal == 1) {
                    c5815y3.f19488d.mo33242Cf(false, false, list2, "conversation-deleteOtp");
                    c5815y3.f19458O.mo26757a(C8764a.f26743b.m25827a());
                } else if (ordinal == 2) {
                    c5815y3.f19458O.mo26757a(C8764a.f26744c.m25827a());
                }
                return s.a;
            }
        }).show(getParentFragmentManager(), "deleteOtpBottomSheet");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: tk */
    public void mo32416tk(boolean z) {
        this.f19461P0.setVisibility(z ? 0 : 8);
        this.f19461P0.setAdapter(this.f19511l1);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: ty */
    public void mo32415ty() {
        C8730p.m28097PA(this.f19466S ? new AbstractC8734q.C8736b(requireContext()) : new AbstractC8734q.C8739e(requireContext())).show(getChildFragmentManager(), C8730p.f26676c);
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
    /* renamed from: u0 */
    public void mo28656u0(int i) {
        this.f19484b.mo33298u0(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: u2 */
    public void mo32414u2(long j) {
        Context requireContext = requireContext();
        ConversationActivity.C4167a c4167a = ConversationActivity.f13017e;
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        InboxTab inboxTab = InboxTab.PERSONAL;
        Intent m34556ua = TruecallerInit.m34556ua(requireContext, "messages", "notificationIncomingMessage", InboxTab.PROMOTIONAL);
        Intent intent = new Intent(requireContext, ConversationActivity.class);
        intent.putExtra("conversation_id", j);
        intent.putExtra("filter", 4);
        intent.putExtra("launch_source", "conversation");
        try {
            PendingIntent.getActivities(requireContext, 1, new Intent[]{m34556ua, intent}, Build.VERSION.SDK_INT >= 31 ? 1107296256 : 1073741824).send();
        } catch (PendingIntent.CanceledException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            intent.setFlags(268435456);
            requireContext.startActivity(intent);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: u3 */
    public void mo32413u3(String str, String str2) {
        FragmentManager parentFragmentManager = getParentFragmentManager();
        l.e(parentFragmentManager, "fragmentManager");
        C17253b c17253b = new C17253b();
        c17253b.show(parentFragmentManager, C17253b.class.getSimpleName());
        c17253b.f48404n = new C5802x1(this);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: u8 */
    public void mo32336u8() {
        new C5233e().show(getChildFragmentManager(), (String) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: ua */
    public void mo32335ua(String str) {
        Context requireContext = requireContext();
        int i = GroupInviteLinkDialogActivity.f13097a;
        l.e(requireContext, AnalyticsConstants.CONTEXT);
        l.e(str, "inviteKey");
        Intent intent = new Intent(requireContext, GroupInviteLinkDialogActivity.class);
        intent.putExtra("extra_invite_key", str);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: uj */
    public void mo32412uj() {
        C18898f c18898f = this.f19508k1;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: uo */
    public void mo32334uo(final Participant participant, final long j, final long j2, final boolean z, final boolean z2, final FlashContact flashContact) {
        boolean isShowing = this.f19504j0.isShowing();
        mo32542H4();
        C19286f.m13681W(this.f19495g0, false);
        new Handler().postDelayed(new Runnable() { // from class: e.a.a.c.d0
            @Override // java.lang.Runnable
            public final void run() {
                C5815y3 c5815y3 = C5815y3.this;
                Participant participant2 = participant;
                long j3 = j;
                long j4 = j2;
                boolean z3 = z;
                boolean z4 = z2;
                FlashContact flashContact2 = flashContact;
                if (c5815y3.getActivity() == null || c5815y3.getActivity().isFinishing()) {
                    return;
                }
                Objects.requireNonNull(C5343a.f18277h);
                l.e(participant2, "participant");
                C5343a c5343a = new C5343a();
                Bundle bundle = new Bundle();
                bundle.putParcelable("ArgumentParticipant", participant2);
                bundle.putLong("ArgumentStartDate", j3);
                bundle.putLong("ArgumentEndDate", j4);
                bundle.putBoolean("ArgumentVoipCapable", z3);
                bundle.putBoolean("ArgumentIsFlash", z4);
                bundle.putParcelable("ArgumentFlashContact", flashContact2);
                c5343a.setArguments(bundle);
                c5343a.show(c5815y3.getParentFragmentManager(), "CallsHistoryBottomSheet");
            }
        }, (isShowing ? 250 : null) == 1 ? 1L : 0L);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: v1 */
    public void mo32411v1(AvatarXConfig avatarXConfig) {
        C8243a c8243a = this.f19448J;
        Objects.requireNonNull(c8243a);
        C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: v2 */
    public void mo32410v2() {
        m32491UA(true);
        this.f19439C0.m35116b();
        this.f19439C0.setDismissActionListener(new View.OnClickListener() { // from class: e.a.a.c.u1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C5815y3.this.mo32551Ec();
            }
        });
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
    /* renamed from: v9 */
    public void mo28655v9() {
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: vA */
    public void mo32409vA(Number number) {
        AbstractC5446k7 abstractC5446k7;
        if (getActivity() == null || (abstractC5446k7 = this.f19518o) == null) {
            return;
        }
        abstractC5446k7.mo32991b(requireContext(), this.f19447I0, number, new C5310g1(this));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5797w5
    /* renamed from: va */
    public void mo32408va() {
        new C21846z1(getContext(), 2131887172, C2752R.string.PermissionDialog_camera).m8995cB(getChildFragmentManager());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5444k5
    /* renamed from: ve */
    public void mo32407ve(int i) {
        this.f19513m0.setBackgroundResource(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: vf */
    public boolean mo32406vf() {
        return this.f19491e1.f11185i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: vh */
    public void mo32405vh(boolean z) {
        ChatSwitchView chatSwitchView = this.f19457N0;
        if (chatSwitchView != null) {
            chatSwitchView.m34859o1(z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5835z4
    /* renamed from: vj */
    public boolean mo32333vj(String str) {
        return this.f19462Q.mo10140a(getContext(), str);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: vk */
    public void mo32404vk() {
        this.f19513m0.scrollToPosition(0);
        mo32342j7(false);
    }

    @Override // p193e.p194a.p195a.p285x0.AbstractC7297b
    /* renamed from: vm */
    public void mo29820vm(boolean z) {
        this.f19510l0.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: vx */
    public void mo32403vx() {
        C8730p.m28097PA(this.f19466S ? new AbstractC8734q.C8735a(requireContext()) : new AbstractC8734q.C8741g(requireContext())).show(getChildFragmentManager(), C8730p.f26676c);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: w4 */
    public void mo32402w4() {
        C5255a.C5259d c5259d = C5255a.f18065e;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Objects.requireNonNull(c5259d);
        l.e(childFragmentManager, "fragmentManager");
        new C5255a().show(childFragmentManager, "schedule_message_date_picker");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: wl */
    public void mo32401wl(final boolean z) {
        CheckBox checkBox;
        g$a g_a = new g$a(getContext());
        if (z) {
            View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.item_checkbox_container, (ViewGroup) getView(), false);
            checkBox = (CheckBox) inflate.findViewById(2131362756);
            AlertController.C0037b c0037b = g_a.f70854a;
            c0037b.f171u = inflate;
            c0037b.f170t = 0;
        } else {
            checkBox = null;
        }
        g_a.m3664e(C2752R.string.ConversationConfirmDeleteHistory);
        final CheckBox checkBox2 = checkBox;
        g_a.m3660i(2131887919, new DialogInterface.OnClickListener() { // from class: e.a.a.c.g2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3 c5815y3 = C5815y3.this;
                boolean z2 = z;
                CheckBox checkBox3 = checkBox2;
                c5815y3.f19492f.mo32806o2(z2, checkBox3 == null || checkBox3.isChecked());
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5688r4
    /* renamed from: x5 */
    public void mo32400x5(String str) {
        g$a g_a = new g$a(requireContext());
        g_a.f70854a.f154d = getString((int) C2752R.string.ImGroupLeaveConfirmationTitle, new Object[]{str});
        g_a.m3664e(C2752R.string.ImGroupLeaveConfirmationMessage);
        g_a.m3660i(C2752R.string.ImGroupLeave, new DialogInterface.OnClickListener() { // from class: e.a.a.c.t
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C5815y3.this.f19492f.mo32811R1();
            }
        });
        g_a.m3662g(2131887867, null);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5522m3
    /* renamed from: x7 */
    public void mo32399x7(int i, int i2) {
        Toast.makeText(getContext(), getResources().getQuantityString(i2, i, Integer.valueOf(i)), 0).show();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5239e4
    /* renamed from: xs */
    public void mo32398xs(AbstractC17405c.AbstractC17406a abstractC17406a) {
        this.f19478Y.setTextColor(C17422k.m16105M(requireContext(), 2130970255));
        this.f19478Y.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        this.f19478Y.m34483f(abstractC17406a);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: xz */
    public void mo32397xz(boolean z) {
        this.f19441D0.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: yt */
    public void mo32396yt(int i) {
        this.f19495g0.setHint(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: zA */
    public void mo32395zA(boolean z) {
        this.f19516n0.setAlpha(z ? 1.0f : 0.3f);
        this.f19516n0.setBackground(z ? C19291g.m13600P(getContext(), 2130969812) : null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5836z5
    /* renamed from: zb */
    public void mo32328zb(int i, boolean z) {
        this.f19507k0.setImageResource(i);
        this.f19507k0.setSelected(z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5443k4
    /* renamed from: zm */
    public void mo32394zm() {
        View inflate = LayoutInflater.from(requireContext()).inflate(C2752R.layout.dialog_undo_tip, (ViewGroup) null);
        inflate.findViewById(C2752R.C2754id.message_frame).setBackground(new C5788v6(getResources(), C19291g.m13612L(requireContext(), C2752R.attr.tcx_messageOutgoingSmsBackground), C19291g.m13612L(requireContext(), C2752R.attr.tcx_messageOutgoingSmsStroke), 4));
        g$a g_a = new g$a(getContext());
        g_a.m3656m(C2752R.string.ConversationUndoTipTitle);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        g_a.m3660i(C2752R.string.OnboardingGotIt, null);
        g_a.f70854a.f165o = new DialogInterface.OnDismissListener() { // from class: e.a.a.c.e2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                C5815y3.this.f19484b.mo33341Xi();
            }
        };
        g_a.m3652q();
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
    /* renamed from: zn */
    public void mo3500zn(AbstractC25450a abstractC25450a) {
        this.f19488d.mo33235L6();
        m32507QA();
    }
}
