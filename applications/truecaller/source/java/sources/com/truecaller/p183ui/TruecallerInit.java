package com.truecaller.p183ui;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowMetrics;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.AppBarLayout$b;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.navigation.NavigationView;
import com.razorpay.AnalyticsConstants;
import com.razorpay.PaymentData;
import com.razorpay.PaymentResultWithDataListener;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.ChosenComponentReceiver;
import com.truecaller.analytics.TimingEvent;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.bizmon.governmentServices.p146ui.activities.GovernmentServicesActivity;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import com.truecaller.bottombar.BottomBarButtonType;
import com.truecaller.bottombar.BottomBarView;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.calling.dialer.DialerMode;
import com.truecaller.calling.recorder.CallRecordingListActivity;
import com.truecaller.calling.recorder.CallRecordingsListFragment;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.editprofile.p164ui.EditProfileLaunchContext;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.defaultsms.DmaAdsWorker;
import com.truecaller.messaging.inboxcleanup.InboxCleanupActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import com.truecaller.messaging.notifications.NotificationIdentifier;
import com.truecaller.notifications.OtpAnalyticsModel;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.components.DrawerHeaderView;
import com.truecaller.p183ui.settings.SettingsActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.p183ui.settings.appearance.AppearanceSettingsActivity;
import com.truecaller.permission.RequiredPermissionsActivity;
import com.truecaller.personalsafety.awareness.p172ui.PersonalSafetyAwarenessActivity;
import com.truecaller.premium.p173ui.PremiumNavDrawerItemView;
import com.truecaller.referral.ReferralManager;
import com.truecaller.scanner.barcode.BarcodeCaptureActivity;
import com.truecaller.sdk.ConfirmProfileActivity;
import com.truecaller.service.SyncPhoneBookService;
import com.truecaller.settings.CallingSettings;
import com.truecaller.social_media.presentation.view.SocialMediaLinksActivity;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import com.truecaller.stats.StatsActivity;
import com.truecaller.suspension.p181ui.SuspensionActivity;
import com.truecaller.tcpermissions.PermissionPoller;
import com.truecaller.voip.contacts.p188ui.GroupPickerMode;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import com.truecaller.voip.contacts.p188ui.VoipContactsScreenParams;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import com.truecaller.whoviewedme.WhoViewedMeActivity;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.h.b.h0;
import e.a.h.b.j;
import e.a.h.b.t;
import e.a.r.t.c;
import e.m.d.y.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import n3.b.a.g;
import o3.a;
import o3.c.b;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1734b.p1735a.C25398c;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1807k.p1808a.C26458x;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1411b.p1412a.C21949u;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.p1011l.C16614b;
import p193e.p194a.p1011l.p1012a.AbstractC16567c0;
import p193e.p194a.p1011l.p1012a.C16593n;
import p193e.p194a.p1011l.p1012a.C16595p;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1013c.C16784b;
import p193e.p194a.p1011l.p1013c.C16821l;
import p193e.p194a.p1011l.p1023n2.AbstractC17005k;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1011l.p1033v2.C17256d;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1052m.AbstractC17870j;
import p193e.p194a.p1060m4.C18200a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1114o5.p1119c2.C18965e;
import p193e.p194a.p1114o5.p1119c2.C18967f;
import p193e.p194a.p1114o5.p1119c2.C18995r0;
import p193e.p194a.p1114o5.p1121e2.AbstractC19019a;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.AbstractC19542s0;
import p193e.p194a.p1146q2.AbstractC19550v0;
import p193e.p194a.p1159q4.C19630d0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1191r4.AbstractC19931a;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1273u4.AbstractC20629m;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1395y3.AbstractC21785c;
import p193e.p194a.p1399z.AbstractC21834f;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p195a.p231g.C6114f0;
import p193e.p194a.p195a.p231g.C6124i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p195a.p279r0.C7219j;
import p193e.p194a.p195a.p282u0.C7281h;
import p193e.p194a.p372b0.p373a.AbstractC8318l;
import p193e.p194a.p372b0.p373a.AbstractC8323p;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p372b0.p373a.p383e0.C8301a;
import p193e.p194a.p372b0.p373a.p387t.C8334a;
import p193e.p194a.p372b0.p373a.p387t.C8336c;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8341a;
import p193e.p194a.p372b0.p373a.p390w.AbstractC8343c;
import p193e.p194a.p372b0.p373a.p390w.C8342b;
import p193e.p194a.p372b0.p394b.p404m.C8410d;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p431b3.AbstractC8626c;
import p193e.p194a.p431b3.C8627d;
import p193e.p194a.p431b3.C8630g;
import p193e.p194a.p431b3.C8631h;
import p193e.p194a.p431b3.View$OnClickListenerC8628e;
import p193e.p194a.p431b3.View$OnLongClickListenerC8629f;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p679d5.AbstractC12606a;
import p193e.p194a.p679d5.AbstractC12608c;
import p193e.p194a.p682e.AbstractC13223d1;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p682e.AbstractC13301p1;
import p193e.p194a.p682e.AbstractC13329x0;
import p193e.p194a.p682e.AbstractC13335y0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.C13175c0;
import p193e.p194a.p682e.C13305q1;
import p193e.p194a.p682e.C13326w1;
import p193e.p194a.p682e.C13330x1;
import p193e.p194a.p682e.p700d2.C13227d;
import p193e.p194a.p682e.p700d2.p701p.AbstractC13243e;
import p193e.p194a.p682e.p700d2.p701p.C13239a;
import p193e.p194a.p682e.p700d2.p701p.C13240b;
import p193e.p194a.p682e.p700d2.p701p.C13241c;
import p193e.p194a.p682e.p700d2.p701p.C13242d;
import p193e.p194a.p682e.p700d2.p701p.C13244f;
import p193e.p194a.p682e.p700d2.p701p.C13245g;
import p193e.p194a.p682e.p700d2.p701p.C13246h;
import p193e.p194a.p682e.p700d2.p701p.C13247i;
import p193e.p194a.p682e.p700d2.p701p.C13248j;
import p193e.p194a.p682e.p700d2.p701p.C13249k;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p804h.p806b.AbstractC14611i;
import p193e.p194a.p804h.p806b.p814e.C14596a;
import p193e.p194a.p851h5.AbstractC14946m;
import p193e.p194a.p852i.p856b0.AbstractC14992a;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p898k.AbstractC15168a;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.p914y.C15308d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p982k0.p983a.AbstractC16296p;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.e0.x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: com.truecaller.ui.TruecallerInit */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit.class */
public class TruecallerInit extends AbstractC13223d1 implements DrawerHeaderView.AbstractC4675a, BottomBarView.AbstractC3558a, GoogleApiClient.OnConnectionFailedListener, AbstractC12606a, AbstractC8318l.AbstractC8319a, AbstractC13301p1.AbstractC13302a, AbstractC8343c.AbstractC8344a, C13326w1.AbstractC13327a, AbstractC14611i, AbstractC8774b, AbstractC6116g0.AbstractC6117a, PaymentResultWithDataListener, AbstractC17005k {

    /* renamed from: u1 */
    public static final /* synthetic */ int f15555u1 = 0;

    /* renamed from: A */
    public String f15556A;
    @Inject

    /* renamed from: A0 */
    public AbstractC19230g f15557A0;
    @Inject

    /* renamed from: B0 */
    public Provider<AbstractC19219a0> f15559B0;
    @Inject

    /* renamed from: C0 */
    public Provider<AbstractC20629m> f15561C0;
    @Inject

    /* renamed from: D0 */
    public Provider<AbstractC8323p> f15563D0;
    @Inject

    /* renamed from: E0 */
    public Provider<AbstractC8621z> f15565E0;
    @Inject

    /* renamed from: F0 */
    public Provider<C16604y> f15566F0;
    @Inject

    /* renamed from: G0 */
    public Provider<AbstractC17870j> f15567G0;
    @Inject

    /* renamed from: H0 */
    public Provider<AbstractC6392i0> f15568H0;
    @Inject

    /* renamed from: I0 */
    public Provider<AbstractC15163d> f15569I0;
    @Inject

    /* renamed from: J0 */
    public Provider<AbstractC15168a> f15571J0;
    @Inject

    /* renamed from: K0 */
    public Provider<AbstractC14992a> f15573K0;
    @Inject

    /* renamed from: L0 */
    public Provider<AbstractC15275e> f15575L0;
    @Inject

    /* renamed from: M0 */
    public Provider<CleverTapManager> f15577M0;

    /* renamed from: N */
    public C14596a f15578N;
    @Inject

    /* renamed from: N0 */
    public Provider<AbstractC19223c0> f15579N0;
    @Inject

    /* renamed from: O */
    public boolean f15580O;
    @Inject

    /* renamed from: O0 */
    public Provider<AbstractC10925a> f15581O0;

    /* renamed from: P */
    public PermissionPoller f15582P;
    @Inject

    /* renamed from: P0 */
    public Provider<AbstractC19019a> f15583P0;

    /* renamed from: Q */
    public C8321n f15584Q;
    @Inject

    /* renamed from: Q0 */
    public Provider<CallRecordingManager> f15585Q0;
    @Inject

    /* renamed from: R0 */
    public Provider<AbstractC14946m> f15587R0;

    /* renamed from: S */
    public FragmentManager f15588S;
    @Inject

    /* renamed from: S0 */
    public Provider<AbstractC6005m> f15589S0;

    /* renamed from: T */
    public ReferralManager f15590T;
    @Inject

    /* renamed from: T0 */
    public AbstractC20235a f15591T0;
    @Inject

    /* renamed from: U */
    public AbstractC12608c f15592U;
    @Inject

    /* renamed from: U0 */
    public Provider<AbstractC6448d> f15593U0;
    @Inject

    /* renamed from: V */
    public AbstractC19931a f15594V;
    @Inject

    /* renamed from: V0 */
    public Provider<AbstractC19954i0> f15595V0;
    @Inject

    /* renamed from: W */
    public AbstractC19542s0 f15596W;
    @Inject

    /* renamed from: W0 */
    public Provider<AbstractC21834f> f15597W0;
    @Inject

    /* renamed from: X */
    public C13326w1 f15598X;
    @Inject

    /* renamed from: X0 */
    public Provider<AbstractC16313f> f15599X0;
    @Inject

    /* renamed from: Y */
    public C13305q1 f15600Y;
    @Inject

    /* renamed from: Y0 */
    public Provider<AbstractC19854f<AbstractC17348c>> f15601Y0;
    @Inject

    /* renamed from: Z */
    public C19630d0 f15602Z;
    @Inject

    /* renamed from: Z0 */
    public Provider<C17030a1> f15603Z0;
    @Inject

    /* renamed from: a1 */
    public Provider<AbstractC19854f<AbstractC17419h>> f15604a1;
    @Inject

    /* renamed from: b1 */
    public Provider<AbstractC11705f> f15605b1;
    @Inject

    /* renamed from: c1 */
    public Provider<AbstractC13706b> f15606c1;
    @Inject

    /* renamed from: d1 */
    public Provider<AbstractC26857y> f15607d1;
    @Inject

    /* renamed from: e1 */
    public Provider<AbstractC21881d> f15608e1;
    @Inject

    /* renamed from: f1 */
    public Provider<AbstractC19870l> f15609f1;
    @Inject

    /* renamed from: g0 */
    public a<AbstractC12597c> f15611g0;
    @Inject

    /* renamed from: g1 */
    public Provider<CallingSettings> f15612g1;

    /* renamed from: h */
    public C4670h f15613h;
    @Inject

    /* renamed from: h0 */
    public a<C18200a> f15614h0;
    @Inject

    /* renamed from: h1 */
    public Provider<AbstractC11409g1> f15615h1;
    @Inject

    /* renamed from: i0 */
    public Provider<AbstractC7201a> f15617i0;
    @Inject

    /* renamed from: i1 */
    public Provider<AbstractC19215b> f15618i1;

    /* renamed from: j */
    public MaterialToolbar f15619j;
    @Inject

    /* renamed from: j0 */
    public AbstractC8432l f15620j0;

    /* renamed from: j1 */
    public Locale f15621j1;

    /* renamed from: k */
    public View f15622k;
    @Inject

    /* renamed from: k0 */
    public AbstractC18223b f15623k0;

    /* renamed from: l */
    public AppBarLayout f15625l;
    @Inject

    /* renamed from: l0 */
    public C16821l f15626l0;

    /* renamed from: m */
    public DrawerLayout f15628m;
    @Inject

    /* renamed from: m0 */
    public a<AbstractC17197v0> f15629m0;

    /* renamed from: n */
    public NavigationView f15631n;
    @Inject

    /* renamed from: n0 */
    public a<AbstractC16567c0> f15632n0;

    /* renamed from: o */
    public DrawerHeaderView f15634o;
    @Inject

    /* renamed from: o0 */
    public a<C16593n> f15635o0;

    /* renamed from: p */
    public C25398c f15637p;
    @Inject

    /* renamed from: p0 */
    public a<AbstractC21785c> f15638p0;

    /* renamed from: p1 */
    public AbstractC17005k.AbstractC17006a f15639p1;

    /* renamed from: q */
    public BottomBarView f15640q;
    @Inject

    /* renamed from: q0 */
    public a<AbstractC8426f> f15641q0;

    /* renamed from: q1 */
    public PremiumNavDrawerItemView f15642q1;

    /* renamed from: r */
    public C13227d f15643r;
    @Inject

    /* renamed from: r0 */
    public AbstractC19462a f15644r0;

    /* renamed from: s */
    public C13227d f15646s;
    @Inject

    /* renamed from: s0 */
    public AbstractC10060c f15647s0;

    /* renamed from: t */
    public C8336c f15649t;
    @Inject

    /* renamed from: t0 */
    public C26458x f15650t0;

    /* renamed from: u */
    public FrameLayout f15652u;
    @Inject

    /* renamed from: u0 */
    public AbstractC10406a f15653u0;

    /* renamed from: v */
    public VoipInAppNotificationView f15654v;
    @Inject

    /* renamed from: v0 */
    public AbstractC19854f<AbstractC19463a0> f15655v0;

    /* renamed from: w */
    public FrameLayout f15656w;
    @Inject

    /* renamed from: w0 */
    public a<AbstractC6116g0> f15657w0;

    /* renamed from: x */
    public FloatingActionButton f15658x;
    @Inject

    /* renamed from: x0 */
    public AbstractC8541a f15659x0;
    @Inject

    /* renamed from: y0 */
    public Provider<AbstractC8438a> f15661y0;
    @Inject

    /* renamed from: z0 */
    public C20592g f15663z0;

    /* renamed from: g */
    public final TrueApp f15610g = TrueApp.m36032b0();

    /* renamed from: i */
    public boolean f15616i = true;

    /* renamed from: y */
    public final AccelerateDecelerateInterpolator f15660y = new AccelerateDecelerateInterpolator();

    /* renamed from: z */
    public boolean f15662z = false;

    /* renamed from: B */
    public int f15558B = 0;

    /* renamed from: C */
    public boolean f15560C = false;

    /* renamed from: D */
    public boolean f15562D = false;

    /* renamed from: E */
    public boolean f15564E = false;

    /* renamed from: J */
    public boolean f15570J = true;

    /* renamed from: K */
    public boolean f15572K = false;

    /* renamed from: L */
    public int f15574L = 0;

    /* renamed from: M */
    public int f15576M = 0;

    /* renamed from: R */
    public String f15586R = null;

    /* renamed from: k1 */
    public ContextThemeWrapper f15624k1 = null;

    /* renamed from: l1 */
    public final BroadcastReceiver f15627l1 = new C4664b();

    /* renamed from: m1 */
    public final BroadcastReceiver f15630m1 = new C4665c();

    /* renamed from: n1 */
    public final BroadcastReceiver f15633n1 = new C4666d();

    /* renamed from: o1 */
    public final BroadcastReceiver f15636o1 = new C4667e();

    /* renamed from: r1 */
    public Handler f15645r1 = new HandlerC4668f();

    /* renamed from: s1 */
    public String f15648s1 = null;

    /* renamed from: t1 */
    public final AbstractC25374b<Intent> f15651t1 = registerForActivityResult(new C25380d(), new AbstractC25373a() { // from class: e.a.e.h0
        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, java.lang.Object, com.truecaller.ui.TruecallerInit] */
        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public final void mo3695a(Object obj) {
            ?? r0 = TruecallerInit.this;
            Objects.requireNonNull(r0);
            if (((ActivityResult) obj).f76a == -1) {
                String str = r0.f15648s1;
                l.e((Object) r0, AnalyticsConstants.CONTEXT);
                l.e(str, "postBackUrl");
                C26702l m1431n = C26702l.m1431n(r0);
                EnumC26832h enumC26832h = EnumC26832h.APPEND;
                C26842r.C26843a c26843a = new C26842r.C26843a(DmaAdsWorker.class);
                C26829f c26829f = new C26829f(C22128a.m8667T("postBackUrl", str));
                C26829f.m1300g(c26829f);
                c26843a.f75127c.f74906e = c26829f;
                c26843a.f75128d.add("DmaAdsWorker");
                C26825d.C26826a c26826a = new C26825d.C26826a();
                c26826a.f75068c = EnumC26841q.CONNECTED;
                c26843a.f75127c.f74911j = new C26825d(c26826a);
                C26842r m1272b = c26843a.m1272b();
                l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
                m1431n.m1279i("DmaAdsWorker", enumC26832h, m1272b);
            }
        }
    });

    /* renamed from: com.truecaller.ui.TruecallerInit$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$a.class */
    public class C4663a extends C8342b {
        public C4663a() {
            TruecallerInit.this = r4;
        }

        @Override // p193e.p194a.p372b0.p373a.p390w.C8342b, p193e.p194a.p372b0.p373a.p390w.AbstractC8341a
        /* renamed from: No */
        public void mo28659No() {
            TruecallerInit.this.f38724a.m29972VA();
            TruecallerInit truecallerInit = TruecallerInit.this;
            DialerMode dialerMode = DialerMode.STANDALONE;
            int i = TruecallerInit.f15555u1;
            Objects.requireNonNull(truecallerInit);
            truecallerInit.m34566Wa(dialerMode, null, FilterType.NONE);
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$b.class */
    public class C4664b extends BroadcastReceiver {
        public C4664b() {
            TruecallerInit.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TruecallerInit truecallerInit = TruecallerInit.this;
            if (truecallerInit.f15570J) {
                truecallerInit.m34585Da();
            }
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$c.class */
    public class C4665c extends BroadcastReceiver {
        public C4665c() {
            TruecallerInit.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TruecallerInit truecallerInit = TruecallerInit.this;
            int i = TruecallerInit.f15555u1;
            truecallerInit.m34560db();
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$d.class */
    public class C4666d extends BroadcastReceiver {
        public C4666d() {
            TruecallerInit.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TruecallerInit truecallerInit = TruecallerInit.this;
            int i = TruecallerInit.f15555u1;
            truecallerInit.m34559eb();
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$e.class */
    public class C4667e extends BroadcastReceiver {
        public C4667e() {
            TruecallerInit.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("KEY_BIZ_NAME");
                boolean z = extras.getBoolean("KEY_BIZ_DELETED", false);
                TruecallerInit truecallerInit = TruecallerInit.this;
                if (truecallerInit.f15634o == null || !truecallerInit.f15663z0.m10944x().isEnabled()) {
                    return;
                }
                if (z) {
                    truecallerInit.f15634o.m34537f1();
                } else {
                    truecallerInit.f15634o.m34535h1(string);
                }
            }
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$f.class */
    public class HandlerC4668f extends Handler {
        public HandlerC4668f() {
            TruecallerInit.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            TruecallerInit truecallerInit;
            AbstractC19550v0 abstractC19550v0;
            if (message.what == 1) {
                Object obj = message.obj;
                if (!(obj instanceof AbstractC19550v0) || obj != (abstractC19550v0 = (truecallerInit = TruecallerInit.this).f38724a)) {
                    return;
                }
                abstractC19550v0.mo10107Zn(truecallerInit.f15586R);
                TruecallerInit.this.f15586R = null;
            }
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$g.class */
    public class C4669g extends DrawerLayout.AbstractC0151e {

        /* renamed from: a */
        public boolean f15670a = false;

        /* renamed from: b */
        public boolean f15671b = false;

        /* renamed from: c */
        public final SparseArray<String> f15672c;

        public C4669g(C4664b c4664b) {
            TruecallerInit.this = r5;
            SparseArray<String> sparseArray = new SparseArray<>();
            this.f15672c = sparseArray;
            sparseArray.put(C2752R.C2754id.drawer_inbox_cleanup, "inboxCleanup");
            sparseArray.put(C2752R.C2754id.year_in_review, "yourYearOnTruecaller");
            sparseArray.put(C2752R.C2754id.drawer_who_viewed_me, "whoViewedMyProfile");
            sparseArray.put(C2752R.C2754id.drawer_qr, "qrScanner");
            sparseArray.put(C2752R.C2754id.drawer_notifications, "notifications");
            sparseArray.put(C2752R.C2754id.drawer_blocking, "manageBlocking");
            sparseArray.put(C2752R.C2754id.drawer_call_recordings, "callRecording");
            sparseArray.put(C2752R.C2754id.drawer_personal_safety, "personalSafety");
            sparseArray.put(C2752R.C2754id.drawer_truecaller_news, "truecallerNews");
            sparseArray.put(C2752R.C2754id.drawer_share, "shareTruecaller");
            sparseArray.put(C2752R.C2754id.drawer_refer, "inviteFriends");
            sparseArray.put(C2752R.C2754id.drawer_settings, "settings");
            sparseArray.put(C2752R.C2754id.drawer_send_feedback, "sendFeedback");
            sparseArray.put(C2752R.C2754id.drawer_faq, "faq");
            sparseArray.put(C2752R.C2754id.drawer_covid_directory, "covidDirectory");
            sparseArray.put(C2752R.C2754id.drawer_help, "help");
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
        /* renamed from: a */
        public void mo3674a(View view) {
            PremiumNavDrawerItemView premiumNavDrawerItemView = TruecallerInit.this.f15642q1;
            if (premiumNavDrawerItemView != null) {
                C17256d c17256d = premiumNavDrawerItemView.f14261t;
                if (c17256d == null) {
                    l.l("viewPresenter");
                    throw null;
                }
                c17256d.m16321Ij();
            }
            TruecallerInit truecallerInit = TruecallerInit.this;
            if (truecallerInit.f15634o == null || !truecallerInit.f15610g.mo28540W()) {
                return;
            }
            truecallerInit.f15634o.m34536g1(((AbstractC17197v0) truecallerInit.f15629m0.get()).mo16411D2(), truecallerInit.f15659x0.getBoolean("profileIsCredUser"));
        }

        /* JADX WARN: Type inference failed for: r0v64, types: [com.truecaller.ui.TruecallerInit, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v97, types: [com.truecaller.ui.TruecallerInit, android.app.Activity] */
        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
        /* renamed from: b */
        public void mo3673b(View view) {
            final ComponentActivity componentActivity = TruecallerInit.this;
            int i = componentActivity.f15558B;
            if (i == 2131363409) {
                componentActivity.startActivity(InboxCleanupActivity.f13499a.m34986a(componentActivity, null, "Drawer"));
            } else if (i == 2131363404) {
                componentActivity.startActivity(GovernmentServicesActivity.f10299e.m35874a(componentActivity, "nav_covid_directory"));
            } else if (i == 2131366989) {
                l.e(componentActivity, AnalyticsConstants.CONTEXT);
                l.e("DrawerMenu", "source");
                Intent intent = new Intent((Context) componentActivity, (Class<?>) StatsActivity.class);
                intent.putExtra("source", "DrawerMenu");
                componentActivity.startActivity(intent);
            } else if (i == 2131363413) {
                componentActivity.startActivityForResult(new Intent((Context) componentActivity, (Class<?>) BarcodeCaptureActivity.class), (int) AdError.MISSING_DEPENDENCIES_ERROR);
                componentActivity.f15628m.m42978c(8388611);
            } else if (i == 2131363411) {
                componentActivity.startActivity(C15308d.m18942cB(componentActivity));
            } else if (i == 2131363405) {
                C12864a2.m22575S(componentActivity, "https://support.truecaller.com/hc/en-us/categories/201513109-Android", false);
            } else if (i == 2131363419) {
                componentActivity.startActivity(WhoViewedMeActivity.m34280pa(componentActivity, WhoViewedMeLaunchContext.NAVIGATION_DRAWER));
            } else if (i == 2131363408) {
                componentActivity.startActivity(SettingsActivity.C4692a.m34493b(SettingsActivity.f15840g, componentActivity, SettingsCategory.SETTINGS_HELP, false, null, 8));
            } else if (i == 2131363415) {
                componentActivity.f15644r0.mo13274b(ViewActionEvent.m35938i("sideBar", ViewActionEvent.ViralityAction.FEEDBACK));
                TruecallerInit.this.startActivity(SingleActivity.m34591ua(componentActivity, SingleActivity.FragmentSingle.FEEDBACK_FORM));
            } else if (i == 2131363417) {
                C8582g0.m28322S(componentActivity, TruecallerInit.this.getResources().getString(C2752R.string.MePageShareApp), TruecallerInit.this.getResources().getString(C2752R.string.ShareTruecallerTitle), TruecallerInit.this.getResources().getString(C2752R.string.ShareTruecallerText2), null, ChosenComponentReceiver.m35946a(componentActivity, "Drawer").getIntentSender());
                TruecallerInit.this.f15644r0.mo13274b(ViewActionEvent.m35938i("sideBar", ViewActionEvent.ViralityAction.SHARE));
            } else if (i == 2131363414) {
                ReferralManager referralManager = componentActivity.f15590T;
                if (referralManager != null) {
                    referralManager.mo13053Xa(ReferralManager.ReferralLaunchContext.NAVIGATION_DRAWER);
                }
            } else if (i == 2131363416) {
                componentActivity.startActivity(SettingsActivity.m34499ua(componentActivity, SettingsCategory.SETTINGS_MAIN));
            } else if (i == 2131363402) {
                if (((CallRecordingManager) componentActivity.f15585Q0.get()).isEnabled()) {
                    ((AbstractC16313f) TruecallerInit.this.f15599X0.get()).mo17557J0(false);
                }
                int i2 = CallRecordingsListFragment.R;
                l.e(componentActivity, AnalyticsConstants.CONTEXT);
                l.e(componentActivity, AnalyticsConstants.CONTEXT);
                componentActivity.startActivity(new Intent((Context) componentActivity, (Class<?>) CallRecordingListActivity.class));
            } else if (i == 2131363401) {
                if (!componentActivity.f15610g.mo28540W() || !c.ya()) {
                    g$a g_a = new g$a(componentActivity);
                    g_a.m3656m(C2752R.string.SignUpToTruecallerFirstLine);
                    g_a.m3664e(C2752R.string.native_signup_to_block_description);
                    g_a.m3660i(C2752R.string.native_signup_button, new DialogInterface.OnClickListener() { // from class: e.a.e.w
                        /* JADX WARN: Type inference failed for: r0v10, types: [com.truecaller.ui.TruecallerInit, android.app.Activity] */
                        /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, com.truecaller.ui.TruecallerInit] */
                        /* JADX WARN: Type inference failed for: r0v8, types: [com.truecaller.ui.TruecallerInit, android.app.Activity] */
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            TruecallerInit.C4669g c4669g = TruecallerInit.C4669g.this;
                            ?? r0 = componentActivity;
                            Objects.requireNonNull(c4669g);
                            c.Ca((Context) r0, WizardActivity.class, "blocked", WizardStartContext.BLOCKING);
                            TruecallerInit.this.overridePendingTransition(0, 0);
                            TruecallerInit.this.finish();
                        }
                    });
                    g_a.m3652q();
                } else {
                    TruecallerInit.this.startActivity(new Intent((Context) componentActivity, (Class<?>) BlockedEventsActivity.class));
                }
            } else if (i == 2131363403) {
                componentActivity.startActivity(new Intent((Context) componentActivity, (Class<?>) AppearanceSettingsActivity.class));
            } else if (i == 2131363412) {
                int i3 = PersonalSafetyAwarenessActivity.f14152a;
                l.e(componentActivity, AnalyticsConstants.CONTEXT);
                l.e("side_menu", "source");
                Intent intent2 = new Intent((Context) componentActivity, (Class<?>) PersonalSafetyAwarenessActivity.class);
                intent2.putExtra("source", "side_menu");
                componentActivity.startActivity(intent2);
            } else if (i == 2131363418) {
                int i4 = SocialMediaLinksActivity.f14897a;
                l.e(componentActivity, AnalyticsConstants.CONTEXT);
                l.e("sidebar", "source");
                Intent intent3 = new Intent((Context) componentActivity, (Class<?>) SocialMediaLinksActivity.class);
                intent3.putExtra("source", "sidebar");
                componentActivity.startActivity(intent3);
            }
            String str = this.f15672c.get(TruecallerInit.this.f15558B);
            if (str != null) {
                TruecallerInit.this.m34579Ja(str);
            } else {
                TruecallerInit truecallerInit = TruecallerInit.this;
                if (truecallerInit.f15558B == 0) {
                    truecallerInit.m34579Ja("dismiss");
                }
            }
            TruecallerInit.this.f15558B = 0;
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.AbstractC0149c
        /* renamed from: c */
        public void mo3672c(int i) {
            HashMap hashMap;
            if (i != 0) {
                if (i != 1) {
                    return;
                }
                this.f15671b = true;
                return;
            }
            TruecallerInit truecallerInit = TruecallerInit.this;
            boolean m42963r = truecallerInit.f15628m.m42963r(truecallerInit.f15631n);
            if (m42963r && !this.f15670a) {
                if (this.f15671b) {
                    hashMap = new HashMap();
                    hashMap.put("Method", "Swipe");
                } else {
                    hashMap = new HashMap();
                    hashMap.put("Method", "MenuButton");
                }
                TruecallerInit.this.f15644r0.mo13271e(new AbstractC19502g.C19504b.C19505a("ANDROID_MAIN_Menu_Opened", null, hashMap, null));
            }
            this.f15671b = false;
            this.f15670a = m42963r;
        }
    }

    /* renamed from: com.truecaller.ui.TruecallerInit$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/TruecallerInit$h.class */
    public class C4670h extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4670h() {
            super(new Handler());
            TruecallerInit.this = r5;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            TruecallerInit.this.f15616i = true;
        }
    }

    /* renamed from: Aa */
    public static Intent m34588Aa(Context context, String str, String str2, String str3, InboxTab inboxTab, boolean z) {
        Intent flags = new Intent(context, TruecallerInit.class).putExtra("ARG_FRAGMENT", str).putExtra("ARG_SUBVIEW", inboxTab).setFlags(!z ? 335609856 : 335544320);
        n.F(flags, str2, str3);
        return flags;
    }

    /* renamed from: Ua */
    public static void m34568Ua(Context context, String str) {
        m34567Va(context, "calls", false, str);
    }

    /* renamed from: Va */
    public static void m34567Va(Context context, String str, boolean z, String str2) {
        Intent m34553xa = m34553xa(context, str, str2);
        m34553xa.addFlags(268435456);
        if (z) {
            m34553xa.addFlags(32768);
        }
        context.startActivity(m34553xa);
    }

    /* renamed from: Xa */
    public static void m34565Xa(Activity activity, String str, String str2) {
        Intent flags = new Intent(activity, TruecallerInit.class).putExtra("ARG_FRAGMENT", str).setFlags(67174400);
        n.F(flags, str2, (String) null);
        activity.startActivity(flags);
    }

    /* renamed from: Ya */
    public static void m34564Ya(Context context, String str, String str2) {
        Intent m34588Aa = m34588Aa(context, str, null, null, null, false);
        m34588Aa.addFlags(268435456);
        context.startActivity(m34588Aa);
    }

    @DeepLink({"truecaller://home/{view}/{subview}", "truecaller://home/{view}", "https://truecaller.com/d/home/{view}", "https://www.truecaller.com/d/home/{view}", "http://truecaller.com/d/home/{view}", "http://www.truecaller.com/d/home/{view}", "https://truecaller.com/d/home/{view}/{subview}", "https://www.truecaller.com/d/home/{view}/{subview}", "http://truecaller.com/d/home/{view}/{subview}", "http://www.truecaller.com/d/home/{view}/{subview}", "truecaller://balance_check"})
    public static Intent buildDeepLinkIntent(Context context) {
        Intent flags = new Intent(context, TruecallerInit.class).setFlags(67108864);
        n.F(flags, "deepLink", (String) null);
        return flags;
    }

    /* renamed from: ua */
    public static Intent m34556ua(Context context, String str, String str2, InboxTab inboxTab) {
        return m34588Aa(context, str, str2, null, inboxTab, false);
    }

    /* renamed from: va */
    public static Intent m34555va(Context context, String str, String str2, String str3, NotificationIdentifier notificationIdentifier, SmartNotificationMetadata smartNotificationMetadata, OtpAnalyticsModel otpAnalyticsModel) {
        return m34588Aa(context, str, str2, null, InboxTab.OTHERS, true).putExtra("extra_notification_origin", "extra_smart_notification").putExtra("extra_action_info", str3).putExtra("extra_smart_notif_metadata", smartNotificationMetadata).putExtra("extra_otp_analytics_model", otpAnalyticsModel).putExtra("extra_action_type", "click").putExtra("extra_notification_id", notificationIdentifier.f13653a);
    }

    /* renamed from: wa */
    public static Intent m34554wa(Context context, String str) {
        return m34553xa(context, "calls", str);
    }

    /* renamed from: xa */
    public static Intent m34553xa(Context context, String str, String str2) {
        return m34588Aa(context, str, str2, null, null, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Ba */
    public final C13227d m34587Ba() {
        if (this.f15624k1 == null) {
            this.f15624k1 = C17422k.m16113E(this, true);
        }
        return new C13227d(this.f15624k1, 2130970017, 2130970002);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Ca */
    public final void m34586Ca() {
        if (!m34580Ia()) {
            startActivityForResult(((C18200a) this.f15614h0.get()).m15456b(this, EditProfileLaunchContext.NAVIGATION_DRAWER), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
        } else if (this.f15663z0.m10954n().isEnabled()) {
            startActivityForResult(((C18200a) this.f15614h0.get()).m15456b(this, EditProfileLaunchContext.NAVIGATION_DRAWER), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
        } else {
            startActivityForResult(CreateBusinessProfileActivity.m35827sa(this, false, true), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
        }
    }

    /* renamed from: Da */
    public final void m34585Da() {
        if (this.f15570J) {
            C13326w1 c13326w1 = this.f15598X;
            WeakReference weakReference = new WeakReference(this);
            Objects.requireNonNull(c13326w1);
            l.e(weakReference, "callback");
            d.w2(h1.a, c13326w1.f38733g, (j0) null, new C13330x1(c13326w1, weakReference, null), 2, (Object) null);
        }
    }

    /* renamed from: Ea */
    public com.truecaller.common.p156ui.fab.FloatingActionButton m34584Ea() {
        View findViewById = findViewById((int) C2752R.C2754id.floating_action_button);
        return findViewById instanceof com.truecaller.common.p156ui.fab.FloatingActionButton ? (com.truecaller.common.p156ui.fab.FloatingActionButton) findViewById : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Fa */
    public PermissionPoller m34583Fa() {
        if (this.f15582P == null) {
            this.f15582P = new PermissionPoller(this.f15610g, this.f15645r1, m34554wa(this, null));
        }
        return this.f15582P;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Ga */
    public final C21949u m34582Ga(int i) {
        if (this.f15624k1 == null) {
            this.f15624k1 = C17422k.m16113E(this, true);
        }
        return new C21949u(C19291g.m13612L(this.f15624k1, i));
    }

    /* renamed from: Ha */
    public final boolean m34581Ha() {
        m34577La(false);
        if (this.f15652u.getVisibility() == 0) {
            C14596a c14596a = this.f15578N;
            if (!c14596a.f41938g.isAttachedToWindow() || c14596a.f41933b) {
                return true;
            }
            c14596a.f41933b = true;
            c14596a.f41938g.clearAnimation();
            c14596a.f41938g.startAnimation((Animation) c14596a.f41935d.getValue());
            return true;
        }
        return false;
    }

    /* renamed from: Ia */
    public final boolean m34580Ia() {
        return this.f15659x0.getBoolean("profileBusiness", false);
    }

    @Override // p193e.p194a.p682e.C13326w1.AbstractC13327a
    /* renamed from: J3 */
    public void mo21925J3(int i, int i2) {
        C8336c c8336c = this.f15649t;
        if (c8336c != null) {
            int i3 = i + i2;
            C8334a c8334a = c8336c.f25665p;
            if (c8334a.f25654j != i3) {
                c8334a.f25654j = i3;
                c8336c.invalidateSelf();
            }
        }
        C13227d c13227d = this.f15643r;
        if (c13227d != null) {
            C8334a c8334a2 = c13227d.f38431a;
            if (c8334a2.f25654j != i) {
                c8334a2.f25654j = i;
                c13227d.invalidateSelf();
            }
        }
        C13227d c13227d2 = this.f15646s;
        if (c13227d2 != null) {
            C8334a c8334a3 = c13227d2.f38431a;
            if (c8334a3.f25654j == i2) {
                return;
            }
            c8334a3.f25654j = i2;
            c13227d2.invalidateSelf();
        }
    }

    /* renamed from: Ja */
    public final void m34579Ja(String str) {
        LinkedHashMap m8655X = C22128a.m8655X("NavigationBarAction", "type");
        C22128a.m8684N0("NavigationBarAction", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", this.f15644r0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Ka */
    public final void m34578Ka(Intent intent) {
        if (!C7281h.m29861b(intent)) {
            return;
        }
        this.f15647s0.mo26757a(C7281h.m29862a(intent).m25827a());
        int intExtra = intent.getIntExtra("extra_notification_id", -1);
        if (intExtra == -1) {
            return;
        }
        this.f15650t0.m1816b(intExtra);
        this.f15653u0.mo26216b(intExtra);
        C19291g.m13515s(getApplicationContext());
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c.AbstractC8344a
    /* renamed from: L1 */
    public void mo28650L1() {
        m34569Ta();
    }

    /* renamed from: La */
    public final void m34577La(boolean z) {
        if (this.f15652u.getVisibility() == 0) {
            m34576Ma(z);
        }
    }

    @Override // p193e.p194a.p804h.p806b.AbstractC14611i
    /* renamed from: M */
    public void mo19933M(DialerMode dialerMode, FilterType filterType) {
        m34566Wa(dialerMode, null, filterType);
    }

    @Override // p193e.p194a.p679d5.AbstractC12606a
    /* renamed from: M2 */
    public void mo22833M2(StartupDialogType startupDialogType, StartupDialogDismissReason startupDialogDismissReason) {
        this.f15592U.mo22832a(startupDialogType, startupDialogDismissReason);
    }

    /* renamed from: Ma */
    public final void m34576Ma(boolean z) {
        AbstractC13289n1 m42942K = this.f15588S.m42942K("TAG_CALL_LOG_FRAGMENT");
        if (m42942K != null) {
            AbstractC13289n1 abstractC13289n1 = m42942K;
            if (z) {
                abstractC13289n1.mo10102j();
            } else {
                abstractC13289n1.mo10106bx(true);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0a55  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0a89  */
    /* JADX WARN: Removed duplicated region for block: B:249:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x03dc -> B:246:0x03e1). Please submit an issue!!! */
    /* renamed from: Na */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34575Na() {
        /*
            Method dump skipped, instructions count: 2712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.TruecallerInit.m34575Na():void");
    }

    @Override // p193e.p194a.p1011l.p1023n2.AbstractC17005k
    /* renamed from: O */
    public void mo16649O(AbstractC17005k.AbstractC17006a abstractC17006a) {
        this.f15639p1 = abstractC17006a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Oa */
    public final void m34574Oa(Intent intent) {
        Uri data = intent.getData();
        if (data == null || h.j(data.getHost()) || !data.getHost().equals(getString(C2752R.string.flash_host)) || !C15571h.m18632s()) {
            return;
        }
        String queryParameter = data.getQueryParameter(getString(C2752R.string.flash_to_phone));
        String queryParameter2 = data.getQueryParameter(getString(C2752R.string.flash_to_name));
        if (!h.j(queryParameter) && queryParameter.length() > 7) {
            StringBuilder m8728C = C22128a.m8728C("+");
            m8728C.append(queryParameter.trim());
            if (this.f15610g.mo9269w(2, m8728C.toString())) {
                try {
                    C21632c.m9330b().mo9319K(this, Long.parseLong(queryParameter.trim()), queryParameter2, "deepLink");
                    return;
                } catch (NumberFormatException e) {
                }
            }
        }
        Toast.makeText((Context) this, (int) C2752R.string.number_not_support_flash, 0).show();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
        if (r0.f57787N.m10941a(r0, p193e.p194a.p1272u3.C20592g.f57695p6[36]).isEnabled() != false) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0190  */
    /* renamed from: Pa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34573Pa() {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.TruecallerInit.m34573Pa():void");
    }

    /* renamed from: Qa */
    public void m34572Qa(String str) {
        BottomBarButtonType bottomBarButtonType;
        BottomBarView bottomBarView = this.f15640q;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1183699191:
                if (str.equals("invite")) {
                    z = false;
                    break;
                }
                break;
            case -664572875:
                if (str.equals("blocking")) {
                    z = true;
                    break;
                }
                break;
            case -567451565:
                if (str.equals("contacts")) {
                    z = true;
                    break;
                }
                break;
            case -462094004:
                if (str.equals("messages")) {
                    z = true;
                    break;
                }
                break;
            case -318452137:
                if (str.equals("premium")) {
                    z = true;
                    break;
                }
                break;
            case 94425557:
                if (str.equals("calls")) {
                    z = true;
                    break;
                }
                break;
            case 1429828318:
                if (str.equals("assistant")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                bottomBarButtonType = BottomBarButtonType.INVITE;
                break;
            case true:
                bottomBarButtonType = BottomBarButtonType.BLOCKING;
                break;
            case true:
                bottomBarButtonType = BottomBarButtonType.CONTACTS;
                break;
            case true:
                if (!this.f15580O) {
                    bottomBarButtonType = BottomBarButtonType.HOME;
                    break;
                } else {
                    bottomBarButtonType = BottomBarButtonType.MESSAGES;
                    break;
                }
            case true:
                bottomBarButtonType = BottomBarButtonType.PREMIUM;
                break;
            case true:
                bottomBarButtonType = BottomBarButtonType.CALLS;
                break;
            case true:
                bottomBarButtonType = BottomBarButtonType.ASSISTANT;
                break;
            default:
                if (!this.f15580O) {
                    bottomBarButtonType = BottomBarButtonType.HOME;
                    break;
                } else {
                    bottomBarButtonType = BottomBarButtonType.CALLS;
                    break;
                }
        }
        Objects.requireNonNull(bottomBarView);
        l.e(bottomBarButtonType, "type");
        C8627d m35809f1 = bottomBarView.m35809f1(bottomBarButtonType);
        if (m35809f1 != null) {
            bottomBarView.m35808g1(m35809f1, false);
        }
    }

    /* renamed from: Ra */
    public final void m34571Ra(Menu menu) {
        MenuItem findItem = menu.findItem(C2752R.C2754id.drawer_call_recordings);
        CallRecordingManager callRecordingManager = (CallRecordingManager) this.f15585Q0.get();
        boolean mo17584n = callRecordingManager.mo17584n();
        if (mo17584n && callRecordingManager.isEnabled()) {
            ImageView imageView = (ImageView) findItem.getActionView();
            if (((AbstractC16313f) this.f15599X0.get()).mo17538w2()) {
                imageView.setImageResource(C2752R.C2753drawable.ic_new);
                imageView.setColorFilter(m34582Ga(2130970017));
            } else {
                AbstractC16296p mo17579s = callRecordingManager.mo17579s();
                Objects.requireNonNull(mo17579s);
                if (mo17579s instanceof AbstractC16296p.C16297a) {
                    imageView.setImageResource(2131231876);
                    imageView.setColorFilter(m34582Ga(2130969966));
                } else {
                    imageView.setImageDrawable(null);
                }
            }
        }
        findItem.setVisible(mo17584n);
    }

    /* renamed from: Sa */
    public final void m34570Sa(Menu menu) {
        MenuItem findItem = menu.findItem(C2752R.C2754id.drawer_inbox_cleanup);
        boolean mo32047j = ((AbstractC6005m) this.f15589S0.get()).mo32047j();
        findItem.setVisible(mo32047j);
        ImageView imageView = (ImageView) findItem.getActionView();
        if (!mo32047j || !((AbstractC6392i0) this.f15568H0.get()).mo30965z0()) {
            imageView.setImageDrawable(null);
            return;
        }
        imageView.setImageResource(C2752R.C2753drawable.ic_new);
        imageView.setColorFilter(m34582Ga(2130970017));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Ta */
    public final void m34569Ta() {
        this.f15658x.setVisibility(8);
        com.truecaller.common.p156ui.fab.FloatingActionButton m34584Ea = m34584Ea();
        if (m34584Ea == null) {
            return;
        }
        if (this.f38724a instanceof j) {
            C20592g c20592g = this.f15663z0;
            if (c20592g.f57849V5.m10941a(c20592g, C20592g.f57695p6[365]).isEnabled() && this.f15580O) {
                this.f15658x.setVisibility(0);
                this.f15658x.setImageResource(2131232429);
                this.f15658x.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.v
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ComponentActivity componentActivity = TruecallerInit.this;
                        Objects.requireNonNull(componentActivity);
                        VoipContactsScreenParams voipContactsScreenParams = new VoipContactsScreenParams(false, GroupPickerMode.ADD_PARTICIPANTS, true, Collections.emptySet(), "voiceLauncherOneToOne");
                        l.e(componentActivity, "activity");
                        l.e(voipContactsScreenParams, "params");
                        Intent intent = new Intent((Context) componentActivity, (Class<?>) VoipContactsActivity.class);
                        intent.putExtra("ARG_FORCE_DARK_THEME", false);
                        intent.putExtra("ARG_VOIP_SCREEN_PARAMS", voipContactsScreenParams);
                        componentActivity.startActivityForResult(intent, -1);
                        componentActivity.f15644r0.mo13274b(ViewActionEvent.m35940g("callLog", "voipLauncherFab"));
                    }
                });
                if (!((AbstractC11409g1) this.f15615h1.get()).getBoolean("voiceLauncherTooltip") && ((AbstractC6392i0) this.f15568H0.get()).mo30999s1() && ((CallingSettings) this.f15612g1.get()).getBoolean("hasViewProfileTooltipDismissed")) {
                    this.f15658x.post(new Runnable() { // from class: e.a.e.u
                        @Override // java.lang.Runnable
                        public final void run() {
                            n3.b.a.h hVar = TruecallerInit.this;
                            C8301a.f25570a.m28682b((ViewGroup) hVar.f15658x.getParent(), TooltipDirection.BOTTOM_END, hVar.getString(C2752R.string.voip_group_launcher_fab_tooltip, new Object[]{hVar.getString(2131890379)}), hVar.f15658x, hVar.getResources().getDimension(2131165536), hVar.f15658x.getContext(), 0, false, C13266j0.f38562a);
                        }
                    });
                    ((AbstractC11409g1) this.f15615h1.get()).putBoolean("voiceLauncherTooltip", true);
                }
            }
        }
        AbstractC8343c abstractC8343c = this.f38724a;
        if ((abstractC8343c instanceof C7219j) && !this.f15580O) {
            m34584Ea.setFabActionListener(new C4663a());
            Drawable m13535l0 = C19291g.m13535l0(this, C2752R.C2753drawable.ic_dialer_toolbar_dialpad, 2130970002);
            int m13612L = C19291g.m13612L(this, 2130970017);
            m34584Ea.setDrawable(m13535l0);
            m34584Ea.setBackgroundColor(m13612L);
            m34584Ea.setMenuItems(null);
            m34584Ea.m35686e(true);
            final AbstractC8341a mo28652Sm = this.f38724a.mo28652Sm();
            this.f15658x.setVisibility(0);
            this.f15658x.setOnClickListener(new View.OnClickListener() { // from class: e.a.e.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AbstractC8341a abstractC8341a = AbstractC8341a.this;
                    int i = TruecallerInit.f15555u1;
                    abstractC8341a.mo28659No();
                }
            });
            this.f15658x.setImageResource(2131232592);
        } else if (!(abstractC8343c instanceof AbstractC8343c) || !abstractC8343c.mo28653F4()) {
            m34584Ea.m35686e(false);
        } else {
            AbstractC8343c abstractC8343c2 = this.f38724a;
            m34584Ea.setFabActionListener(abstractC8343c2.mo28652Sm());
            Drawable m13535l02 = C19291g.m13535l0(this, abstractC8343c2.mo28651hz(), 2130970002);
            int m13612L2 = C19291g.m13612L(this, 2130970017);
            m34584Ea.setDrawable(m13535l02);
            m34584Ea.setBackgroundColor(m13612L2);
            m34584Ea.setMenuItems(abstractC8343c2.mo28654Bm());
            m34584Ea.m35686e(true);
        }
    }

    /* renamed from: Wa */
    public final void m34566Wa(DialerMode dialerMode, String str, FilterType filterType) {
        j jVar;
        j m42942K = this.f15588S.m42942K("TAG_CALL_LOG_FRAGMENT");
        if (m42942K == null) {
            Bundle bundle = new Bundle();
            bundle.putString("phone_number", str);
            bundle.putSerializable("dialer_mode", dialerMode);
            bundle.putSerializable("filter_type", filterType);
            this.f15596W.mo13179b(TimingEvent.CALL_LOG_STARTUP, null, "fragment:V2");
            jVar = new j();
            jVar.setArguments(bundle);
            ((j) jVar).l = this.f15590T;
            C26907a c26907a = new C26907a(this.f15588S);
            c26907a.mo1122k(C2752R.C2754id.fragment_container_call_log, jVar, "TAG_CALL_LOG_FRAGMENT", 1);
            c26907a.mo1126g();
        } else {
            j jVar2 = m42942K;
            if (filterType == FilterType.NONE) {
                h0 h0Var = jVar2.c;
                if (h0Var == null) {
                    l.l("dialpadPresenter");
                    throw null;
                }
                h0Var.c7();
            }
            if (str != null) {
                l.e(str, "number");
                h0 h0Var2 = jVar2.c;
                if (h0Var2 == null) {
                    l.l("dialpadPresenter");
                    throw null;
                }
                h0Var2.K6(str);
            }
            l.e(filterType, "filterType");
            t tVar = jVar2.a;
            if (tVar == null) {
                l.l("dialerPresenter");
                throw null;
            }
            tVar.Vd(filterType);
            m34576Ma(true);
            jVar = m42942K;
        }
        if (jVar.getView() != null) {
            jVar.getView().setVisibility(0);
        }
        if (this.f15578N == null) {
            this.f15578N = new C14596a(this.f15652u, this.f15644r0);
        }
        C14596a c14596a = this.f15578N;
        if (!C19286f.m13663p(c14596a.f41938g)) {
            C19286f.m13684T(c14596a.f41938g);
            if (c14596a.f41938g.isAttachedToWindow() && !c14596a.f41932a) {
                c14596a.f41932a = true;
                n.B0(C22128a.m8584p1("xKeyPadFAB", "action", "xKeyPadFAB", null, "xHome"), c14596a.f41939h);
                c14596a.f41938g.clearAnimation();
                c14596a.f41938g.startAnimation((Animation) c14596a.f41934c.getValue());
            }
        }
        AbstractC19462a abstractC19462a = this.f15644r0;
        LinkedHashMap m8655X = C22128a.m8655X("HomeScreenFabPress", "type");
        C22128a.m8684N0("HomeScreenFabPress", C22128a.m8652Y("fab", AnalyticsConstants.NAME, "Dialer", "value", m8655X, "fab", "Dialer"), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Za */
    public final void m34563Za() {
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, this.f15659x0.getString("profileFirstName"), this.f15659x0.getString("profileLastName"));
        String string = this.f15659x0.getString("profileEmail");
        l.e(this, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent((Context) this, (Class<?>) SuspensionActivity.class);
        intent.putExtra("android.intent.extra.USER", m13813D);
        intent.putExtra("android.intent.extra.EMAIL", string);
        intent.addFlags(268468224);
        startActivity(intent);
    }

    /* renamed from: bb */
    public final void m34562bb() {
        this.f15645r1.removeMessages(1);
        Fragment fragment = this.f38724a;
        if (fragment instanceof AbstractC19550v0) {
            this.f15645r1.sendMessageDelayed(this.f15645r1.obtainMessage(1, fragment), 1000L);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l.AbstractC8319a
    /* renamed from: c1 */
    public void mo28679c1() {
        m34558fb(this.f38724a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v313, types: [e.a.e.d2.p.a] */
    /* renamed from: cb */
    public final void m34561cb() {
        int i;
        AbstractC8626c state;
        boolean z;
        AbstractC8626c state2;
        if (this.f15640q == null) {
            return;
        }
        AbstractC13243e mo11168p = AbstractC17399l2.f48744a.m16142a().mo11168p();
        boolean mo28540W = this.f15610g.mo28540W();
        C20399t1.C20405d c20405d = (C20399t1.C20405d) mo11168p;
        Objects.requireNonNull(c20405d);
        Boolean valueOf = Boolean.valueOf(mo28540W);
        Objects.requireNonNull(valueOf);
        c20405d.f57372b = valueOf;
        C25225a.m3846s(valueOf, Boolean.class);
        C20399t1 c20399t1 = c20405d.f57371a;
        boolean booleanValue = c20405d.f57372b.booleanValue();
        a a = b.a(c20399t1.f57301d);
        a a2 = b.a(c20399t1.f57302e);
        a a3 = b.a(c20399t1.f57303f);
        a a4 = b.a(c20399t1.f57304g);
        AbstractC17197v0 mo11643f = c20399t1.f57299b.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        C19630d0 c19630d0 = new C19630d0(a, a2, a3, a4, mo11643f);
        C16604y mo12291m4 = c20399t1.f57299b.mo12291m4();
        Objects.requireNonNull(mo12291m4, "Cannot return null from a non-@Nullable component method");
        C13244f c13244f = new C13244f();
        C13248j c13248j = new C13248j();
        C13246h c13246h = new C13246h();
        C13245g c13245g = new C13245g();
        C16595p mo12146x1 = c20399t1.f57299b.mo12146x1();
        Objects.requireNonNull(mo12146x1, "Cannot return null from a non-@Nullable component method");
        C17030a1 mo12199t3 = c20399t1.f57299b.mo12199t3();
        Objects.requireNonNull(mo12199t3, "Cannot return null from a non-@Nullable component method");
        C13249k c13249k = new C13249k(mo12146x1, mo12199t3);
        C13239a c13239a = new C13239a();
        C13240b c13240b = new C13240b();
        C13247i c13247i = new C13247i();
        boolean mo12263o5 = c20399t1.f57299b.mo12263o5();
        C20592g mo11648b = c20399t1.f57299b.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        C13242d c13242d = new C13242d(booleanValue, c19630d0, mo12291m4, c13244f, c13248j, c13246h, c13245g, c13249k, c13239a, c13240b, c13247i, mo12263o5, mo11648b);
        int i2 = this.f15574L;
        int i3 = this.f15576M;
        int i4 = 0;
        Set f0 = i.f0(new AbstractC8626c[]{c13242d.f38493g});
        if (c13242d.f38498l) {
            C13244f c13244f2 = c13242d.f38490d;
            c13244f2.f38504e = i2;
            f0.add(c13244f2);
            C13248j c13248j2 = c13242d.f38491e;
            c13248j2.f38521e = i3;
            f0.add(c13248j2);
        } else {
            f0.add(c13242d.f38492f);
        }
        if (c13242d.f38488b) {
            if (c13242d.f38489c.m13090c()) {
                f0.add(c13242d.f38497k);
            }
            if (c13242d.f38487a) {
                f0.add(c13242d.f38499m.m10997H().isEnabled() ? c13242d.f38495i : c13242d.f38494h);
                if (f0.size() < 5) {
                    f0.add(c13242d.f38496j);
                }
            }
        }
        List<AbstractC8626c> F0 = i.F0(f0, new C13241c(f0.size() < 4 ? i.T(new BottomBarButtonType[]{BottomBarButtonType.CALLS, BottomBarButtonType.MESSAGES, BottomBarButtonType.HOME, BottomBarButtonType.INVITE, BottomBarButtonType.PREMIUM, BottomBarButtonType.ASSISTANT, BottomBarButtonType.BLOCKING, BottomBarButtonType.CONTACTS}) : i.T(new BottomBarButtonType[]{BottomBarButtonType.CALLS, BottomBarButtonType.MESSAGES, BottomBarButtonType.HOME, BottomBarButtonType.CONTACTS, BottomBarButtonType.INVITE, BottomBarButtonType.PREMIUM, BottomBarButtonType.ASSISTANT, BottomBarButtonType.BLOCKING})));
        BottomBarView bottomBarView = this.f15640q;
        Objects.requireNonNull(bottomBarView);
        l.e(F0, "newButtons");
        if (F0.size() < 2) {
            String str = "Cannot render bottom bar, to few buttons requested: " + F0;
            return;
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(F0, 10));
        for (AbstractC8626c abstractC8626c : F0) {
            arrayList.add(Integer.valueOf(abstractC8626c.mo21983c()));
        }
        List r = x.r(x.l(x.k(i.h(s1.d0.j.j(0, bottomBarView.getChildCount())), new C8630g(bottomBarView)), C8631h.f26486b));
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(r, 10));
        Iterator it = r.iterator();
        while (true) {
            Integer num = null;
            if (!it.hasNext()) {
                break;
            }
            AbstractC8626c state3 = ((C8627d) it.next()).getState();
            if (state3 != null) {
                num = Integer.valueOf(state3.mo21983c());
            }
            arrayList2.add(num);
        }
        if (r.size() == arrayList.size() && !(!l.a(arrayList2, arrayList))) {
            for (Object obj : r) {
                if (i4 < 0) {
                    i.N0();
                    throw null;
                } else {
                    ((C8627d) obj).setState((AbstractC8626c) F0.get(i4));
                    i4++;
                }
            }
            return;
        }
        bottomBarView.removeAllViews();
        if (bottomBarView.f10466t != null) {
            if (!F0.isEmpty()) {
                for (AbstractC8626c abstractC8626c2 : F0) {
                    BottomBarButtonType mo21981e = abstractC8626c2.mo21981e();
                    C8627d c8627d = bottomBarView.f10466t;
                    if (mo21981e == ((c8627d == null || (state2 = c8627d.getState()) == null) ? null : state2.mo21981e())) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                bottomBarView.f10466t = null;
            }
        }
        C26389d c26389d = new C26389d();
        c26389d.m1966e(bottomBarView);
        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(F0, 10));
        for (AbstractC8626c abstractC8626c3 : F0) {
            arrayList3.add(Integer.valueOf(abstractC8626c3.mo21983c()));
        }
        int[] R0 = i.R0(arrayList3);
        if (R0.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        c26389d.m1961j(R0[0]).f73891d.f73912R = 0;
        c26389d.m1964g(R0[0], 6, 0, 6, -1);
        for (int i5 = 1; i5 < R0.length; i5++) {
            int i6 = R0[i5];
            int i7 = R0[i5];
            int i8 = i5 - 1;
            c26389d.m1964g(i7, 6, R0[i8], 7, -1);
            c26389d.m1964g(R0[i8], 7, R0[i5], 6, -1);
        }
        c26389d.m1964g(R0[R0.length - 1], 7, 0, 7, -1);
        if (Build.VERSION.SDK_INT >= 30) {
            Context context = bottomBarView.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            WindowMetrics currentWindowMetrics = C19291g.m13529n0(context).getCurrentWindowMetrics();
            l.d(currentWindowMetrics, "context.windowManager.currentWindowMetrics");
            i = currentWindowMetrics.getBounds().width();
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Context context2 = bottomBarView.getContext();
            l.d(context2, AnalyticsConstants.CONTEXT);
            Display defaultDisplay = C19291g.m13529n0(context2).getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getMetrics(displayMetrics);
            }
            i = displayMetrics.widthPixels;
        }
        int size = F0.size();
        int i9 = (i <= 0 || bottomBarView.f10467u * size <= i) ? bottomBarView.f10467u : i / size;
        int i10 = 0;
        for (Object obj2 : F0) {
            if (i10 < 0) {
                i.N0();
                throw null;
            }
            AbstractC8626c abstractC8626c4 = (AbstractC8626c) obj2;
            c26389d.m1961j(abstractC8626c4.mo21983c()).f73891d.f73925c = i9;
            boolean z2 = bottomBarView.f10466t == null && i10 == 0;
            Context context3 = bottomBarView.getContext();
            l.d(context3, AnalyticsConstants.CONTEXT);
            C8627d c8627d2 = new C8627d(context3, null, 0, 6);
            c8627d2.setState(abstractC8626c4);
            c8627d2.setOnClickListener(new View$OnClickListenerC8628e(bottomBarView));
            c8627d2.setOnLongClickListener(new View$OnLongClickListenerC8629f(bottomBarView, abstractC8626c4));
            if (!z2) {
                C8627d c8627d3 = bottomBarView.f10466t;
                if (((c8627d3 == null || (state = c8627d3.getState()) == null) ? null : state.mo21981e()) != abstractC8626c4.mo21981e()) {
                    bottomBarView.addView(c8627d2);
                    i10++;
                }
            }
            C8627d c8627d4 = bottomBarView.f10466t;
            if (c8627d4 == null) {
                bottomBarView.m35808g1(c8627d2, false);
            } else {
                c8627d4.setSelected(false);
                c8627d2.setSelected(true);
                bottomBarView.f10466t = c8627d2;
            }
            bottomBarView.addView(c8627d2);
            i10++;
        }
        c26389d.m1968c(bottomBarView, true);
        bottomBarView.setConstraintSet(null);
        bottomBarView.requestLayout();
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b
    /* renamed from: d8 */
    public AppBarLayout mo28080d8() {
        return this.f15625l;
    }

    /* renamed from: db */
    public final void m34560db() {
        if (!this.f15580O) {
            return;
        }
        BottomBarView bottomBarView = this.f15640q;
        if (bottomBarView == null || bottomBarView.getCurrentButton() != BottomBarButtonType.CALLS) {
            ((AbstractC17348c) ((AbstractC19854f) this.f15601Y0.get()).mo11854a()).mo16236l().mo11830e(((AbstractC19870l) this.f15609f1.get()).mo11845d(), new AbstractC19851d0() { // from class: e.a.e.d0
                @Override // p193e.p194a.p1187r2.AbstractC19851d0
                public final void onResult(Object obj) {
                    TruecallerInit truecallerInit = TruecallerInit.this;
                    Objects.requireNonNull(truecallerInit);
                    truecallerInit.f15574L = ((Integer) obj).intValue();
                    truecallerInit.m34561cb();
                }
            });
            return;
        }
        this.f15574L = 0;
        m34561cb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: eb */
    public final void m34559eb() {
        String str;
        if (this.f15634o == null || !this.f15610g.mo28540W()) {
            return;
        }
        String m16108J = C17422k.m16108J(this.f15659x0, (AbstractC8438a) this.f15661y0.get());
        String string = this.f15659x0.getString("profileAvatar");
        boolean z = this.f15659x0.getBoolean("profileIsCredUser");
        if (!m34580Ia() || this.f15663z0.m10954n().isEnabled()) {
            str = null;
        } else {
            AbstractC8541a abstractC8541a = this.f15659x0;
            l.e(abstractC8541a, "$this$getBusinessName");
            str = abstractC8541a.getString("profileCompanyName");
        }
        String str2 = str;
        if (h.i(str)) {
            str2 = C17422k.m16109I(this.f15659x0);
        }
        String str3 = str2;
        if (h.i(str2)) {
            str3 = getString(C2752R.string.NamePlaceholderCreateProfile);
        }
        DrawerHeaderView drawerHeaderView = this.f15634o;
        String str4 = m16108J;
        if (m16108J == null) {
            str4 = "";
        }
        drawerHeaderView.m34534i1(str3, str4, h.i(string) ? null : Uri.parse(string), ((AbstractC17197v0) this.f15629m0.get()).mo16411D2(), z);
    }

    /* renamed from: fb */
    public final void m34558fb(Fragment fragment) {
        if (fragment instanceof AbstractC8318l) {
            CoordinatorLayout$f coordinatorLayout$f = (CoordinatorLayout$f) this.f15656w.getLayoutParams();
            if ((fragment instanceof C16784b) || (fragment instanceof C16614b)) {
                coordinatorLayout$f.m42994b(null);
            } else if (coordinatorLayout$f.f675a == null) {
                coordinatorLayout$f.m42994b(new AppBarLayout.ScrollingViewBehavior());
            }
            this.f15622k.setVisibility(((AbstractC8318l) fragment).mo10109Wy());
        }
    }

    /* renamed from: hb */
    public final void m34557hb() {
        AbstractC13301p1 abstractC13301p1 = this.f38724a;
        boolean z = (abstractC13301p1 instanceof AbstractC13301p1) && abstractC13301p1.mo21944Di();
        AppBarLayout$b appBarLayout$b = (AppBarLayout$b) this.f15622k.getLayoutParams();
        ((LinearLayout.LayoutParams) appBarLayout$b).bottomMargin = getResources().getDimensionPixelSize(z ? 2131165524 : 2131165536);
        this.f15622k.setLayoutParams(appBarLayout$b);
    }

    @Override // p193e.p194a.p682e.AbstractC13301p1.AbstractC13302a
    /* renamed from: m7 */
    public void mo21943m7() {
        m34557hb();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onActivityResult(int i, int i2, Intent intent) {
        String string;
        TruecallerInit.super.onActivityResult(i, i2, intent);
        if (this.f15592U.mo22826q(i)) {
            return;
        }
        if (i == 7001 && i2 == -1 && this.f15634o != null) {
            m34559eb();
        } else if (i == 7001 && i2 == 10001) {
            startActivityForResult(((C18200a) this.f15614h0.get()).m15455c(this), (int) AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE);
        } else if (i == 7005 && i2 == -1) {
            Bundle extras = intent.getExtras();
            if (extras == null || (string = extras.getString("extra_barcode_value")) == null) {
                return;
            }
            k<String, String> mo10905a = ((AbstractC20629m) this.f15561C0.get()).mo10905a(string);
            Bundle bundle = new Bundle();
            bundle.putString("qr_scan_code", (String) mo10905a.a);
            bundle.putString("qr_partner_name", (String) mo10905a.b);
            Intent intent2 = new Intent((Context) this, (Class<?>) ConfirmProfileActivity.class);
            intent2.putExtras(bundle);
            startActivity(intent2);
        } else {
            for (Fragment fragment : this.f15588S.m42936Q()) {
                if (fragment != null && !fragment.isHidden()) {
                    fragment.onActivityResult(i, i2, intent);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onBackPressed() {
        Fragment m42942K = getSupportFragmentManager().m42942K("premium");
        if (m42942K == null || !m42942K.isVisible() || !m42942K.getChildFragmentManager().m42919d0()) {
            if (Build.VERSION.SDK_INT < 31 || !((AbstractC19215b) this.f15618i1.get()).mo13855Y1()) {
                super.onBackPressed();
            } else {
                finish();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C25398c c25398c = this.f15637p;
        c25398c.f70835a.mo3597c();
        c25398c.m3670f();
        C15314a c15314a = C15314a.f43582g;
        l.e(configuration, "newConfig");
        C15314a.f43581f = configuration;
        if (C15314a.m18931h()) {
            C15314a.m18929j(configuration);
            m34567Va(this, "calls", true, null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010a  */
    /* JADX WARN: Type inference failed for: r1v45, types: [com.google.android.material.appbar.AppBarLayout$BaseBehavior$a, e.a.e.t1] */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 2992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.TruecallerInit.onCreate(android.os.Bundle):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C2752R.C2756menu.main_menu, menu);
        MenuItem findItem = menu.findItem(C2752R.C2754id.action_carrier_menu);
        AbstractC18977k.C18979b mo14270a = C18995r0.m14265a(this).mo14270a();
        if (AbstractC18977k.m14269c(mo14270a)) {
            findItem.setVisible(true);
            findItem.setIcon(mo14270a.f53117b);
            findItem.setTitle(mo14270a.f53119d);
        }
        return TruecallerInit.super.onCreateOptionsMenu(menu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onDestroy() {
        super.onDestroy();
        if (!this.f15564E) {
            return;
        }
        C18995r0.f53125a = null;
        getContentResolver().unregisterContentObserver(this.f15613h);
        this.f15613h = null;
        Handler handler = this.f15645r1;
        if (handler != null) {
            handler.removeMessages(1);
            this.f15645r1 = null;
        }
        PermissionPoller permissionPoller = this.f15582P;
        if (permissionPoller == null) {
            return;
        }
        permissionPoller.f15304b.removeCallbacks(permissionPoller);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onNewIntent(Intent intent) {
        TruecallerInit.super.onNewIntent(intent);
        setIntent(intent);
        m34575Na();
        ((CleverTapManager) this.f15577M0.get()).mayBeProcessNotificationExtras(intent);
        this.f15586R = intent.getStringExtra("AppUserInteraction.Context");
        m34552ya(intent);
        if (this.f15640q == null) {
            return;
        }
        m34573Pa();
        m34574Oa(intent);
        ((AbstractC6448d) this.f15593U0.get()).mo30942a(this);
        ReferralManager referralManager = this.f15590T;
        if (referralManager != null) {
            referralManager.mo13067Is(intent.getData());
            C17422k.m16084d0(intent, this.f15590T);
        }
        AbstractC13289n1 abstractC13289n1 = this.f38724a;
        if (abstractC13289n1 instanceof AbstractC13289n1) {
            abstractC13289n1.mo10112Cc(intent);
        }
        m34578Ka(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        C25398c c25398c = this.f15637p;
        Objects.requireNonNull(c25398c);
        if (menuItem == null || menuItem.getItemId() != 16908332 || !c25398c.f70839e) {
            z = false;
        } else {
            c25398c.m3669g();
            z = true;
        }
        if (z) {
            return true;
        }
        if (menuItem.getItemId() == 2131361948) {
            AbstractC18977k.C18979b mo14270a = C18995r0.m14265a(this).mo14270a();
            if (AbstractC18977k.m14269c(mo14270a)) {
                View inflate = View.inflate(this, C2752R.layout.view_carrier_menu, null);
                g$a g_a = new g$a(this);
                g_a.m3653p(inflate);
                g m3668a = g_a.m3668a();
                TextView textView = (TextView) inflate.findViewById(2131366361);
                textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, mo14270a.f53118c, 0);
                textView.setText(mo14270a.f53119d);
                ListView listView = (ListView) inflate.findViewById(C2752R.C2754id.list_carrier);
                listView.setAdapter((ListAdapter) new C18967f(this, getResources().getStringArray(mo14270a.f53120e)));
                listView.setOnItemClickListener(new C18965e(m3668a, this, mo14270a));
                m3668a.show();
                TrueApp.m36032b0().mo10154s().mo12776C4().mo13271e(new AbstractC19502g.C19504b.C19505a("CARRIER_Menu_Opened", null, C22128a.m8667T("Partner", mo14270a.f53116a), null));
            }
        }
        return TruecallerInit.super.onOptionsItemSelected(menuItem);
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onPause() {
        super.onPause();
        m34577La(false);
        AbstractC13289n1 abstractC13289n1 = this.f38724a;
        if (abstractC13289n1 instanceof AbstractC13289n1) {
            abstractC13289n1.mo10106bx(false);
        }
        this.f15560C = false;
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentError(int i, String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f15639p1;
        if (abstractC17006a != null) {
            abstractC17006a.onPaymentError(i, str);
        }
    }

    @Override // com.razorpay.PaymentResultWithDataListener
    public void onPaymentSuccess(String str, PaymentData paymentData) {
        AbstractC17005k.AbstractC17006a abstractC17006a = this.f15639p1;
        if (abstractC17006a != null) {
            abstractC17006a.mo16648a(str, paymentData);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        TruecallerInit.super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 7004) {
            if (i != 7008 || this.f38725b.mo19352e().length <= 0) {
                return;
            }
            RequiredPermissionsActivity.m34830qa(this);
            finish();
        } else if (iArr.length <= 0 || iArr[0] != 0) {
        } else {
            getIntent();
            AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) getApplicationContext();
            ((AbstractC21187w1) abstractApplicationC8442a).mo10154s();
            Objects.requireNonNull(abstractApplicationC8442a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.TruecallerInit.onResume():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onStart() {
        super.onStart();
        m34559eb();
        if (this.f15663z0.m10944x().isEnabled()) {
            this.f15623k0.mo15401a(new C13175c0(this));
        }
        boolean z = true;
        if (!this.f15562D) {
            ((AbstractC17348c) ((AbstractC19854f) this.f15601Y0.get()).mo11854a()).mo16223y();
            this.f15562D = true;
        }
        if (this.f15616i) {
            this.f15616i = false;
            SyncPhoneBookService.m34744a(this, false);
        }
        C19291g.m13572Y0(this, this.f15627l1, "com.truecaller.notification.action.NOTIFICATIONS_UPDATED");
        C19291g.m13572Y0(this, this.f15630m1, "com.truecaller.action.UPDATE_CALL_BADGE");
        C19291g.m13572Y0(this, this.f15633n1, C8410d.f26088a);
        C19291g.m13572Y0(this, this.f15636o1, "BizProfileRefreshNotifier.ACTION_BIZ_PROFILE_REFRESHED");
        m34562bb();
        ReferralManager referralManager = this.f15590T;
        if (referralManager != null) {
            referralManager.mo13064Kx();
        }
        if (!((C17030a1) this.f15603Z0.get()).m16622a() || this.f15659x0.getBoolean("subscriptionPaymentFailedViewShownOnce")) {
            z = false;
        }
        C8336c c8336c = this.f15649t;
        C8334a c8334a = c8336c.f25665p;
        c8334a.f25645a = z;
        c8334a.f25647c.setColor(z ? c8336c.f25664o : c8336c.f25663n);
        c8336c.invalidateSelf();
        ((AbstractC6116g0) this.f15657w0.get()).mo31769d();
        if (this.f15580O) {
            ((AbstractC6116g0) this.f15657w0.get()).mo31770b(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.AbstractC13325w0
    public void onStop() {
        super.onStop();
        this.f15645r1.removeMessages(1);
        C27062a.m968b(this).m965e(this.f15627l1);
        C27062a.m968b(this).m965e(this.f15630m1);
        C27062a.m968b(this).m965e(this.f15633n1);
        C27062a.m968b(this).m965e(this.f15636o1);
        ((AbstractC6116g0) this.f15657w0.get()).mo31767f();
        if (this.f15580O) {
            ((AbstractC6116g0) this.f15657w0.get()).mo31768e(this);
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    /* renamed from: pa */
    public int mo21930pa() {
        return 2130970255;
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    /* renamed from: qa */
    public boolean mo21929qa() {
        if (this.f15628m.m42966o(8388611)) {
            this.f15628m.m42978c(8388611);
            return true;
        }
        com.truecaller.common.p156ui.fab.FloatingActionButton m34584Ea = m34584Ea();
        if (m34584Ea != null && m34584Ea.f11185i) {
            m34584Ea.m35688c();
            return true;
        }
        AbstractC13335y0 m42942K = this.f15588S.m42942K("TAG_CALL_LOG_FRAGMENT");
        if ((m42942K instanceof AbstractC13335y0) && m42942K.mo21904or()) {
            return true;
        }
        return m34581Ha();
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6116g0.AbstractC6117a
    /* renamed from: s2 */
    public void mo29936s2(C6114f0 c6114f0, C6124i0 c6124i0) {
        this.f15576M = c6114f0.f20305a + c6114f0.f20306b;
        m34561cb();
    }

    @Override // p193e.p194a.p682e.AbstractC13325w0
    /* renamed from: sa */
    public void mo21927sa(AbstractC13329x0 abstractC13329x0, String str) {
        AssertionUtil.OnlyInDebug.fail("switchFragment() is unavailable for TruecallerInit");
    }

    @Override // p193e.p194a.p372b0.p373a.p390w.AbstractC8343c.AbstractC8344a
    /* renamed from: v7 */
    public void mo28649v7(boolean z) {
        if (this.f15662z == z) {
            return;
        }
        this.f15662z = z;
        ArrayList arrayList = new ArrayList();
        com.truecaller.common.p156ui.fab.FloatingActionButton m34584Ea = m34584Ea();
        int dimensionPixelSize = z ? getResources().getDimensionPixelSize(C2752R.dimen.floating_action_button_y_translation) : 0;
        if (m34584Ea != null) {
            arrayList.add(ObjectAnimator.ofFloat(m34584Ea, View.TRANSLATION_Y, dimensionPixelSize));
        }
        if (this.f15658x.getVisibility() == 0) {
            arrayList.add(ObjectAnimator.ofFloat(this.f15658x, View.TRANSLATION_Y, dimensionPixelSize));
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(this.f15660y);
        animatorSet.start();
    }

    @Override // p193e.p194a.p804h.p806b.AbstractC14611i
    /* renamed from: x5 */
    public void mo19932x5(DialerMode dialerMode, String str) {
        m34566Wa(dialerMode, str, FilterType.NONE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ya */
    public final void m34552ya(Intent intent) {
        if (C26467a.m1801a(this, "android.permission.CALL_PHONE") != 0) {
            C26413b.m1895g(this, new String[]{"android.permission.CALL_PHONE"}, AdError.INCORRECT_STATE_ERROR);
            return;
        }
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) getApplicationContext();
        ((AbstractC21187w1) abstractApplicationC8442a).mo10154s();
        Objects.requireNonNull(abstractApplicationC8442a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: za */
    public final void m34551za(boolean z) {
        ArrayList arrayList = new ArrayList();
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(arrayList, "participants");
        Intent putExtra = new Intent((Context) this, (Class<?>) NewConversationActivity.class).putExtra("new_group_chat", z).putExtra("pre_fill_participants", arrayList);
        l.d(putExtra, "Intent(context, NewConve…RTICIPANTS, participants)");
        startActivity(putExtra);
    }
}
