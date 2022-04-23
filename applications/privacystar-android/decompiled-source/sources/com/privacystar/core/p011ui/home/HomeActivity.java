package com.privacystar.core.p011ui.home;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.PopupMenu;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.Toolbar;
import android.support.transition.TransitionManager;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.github.rahatarmanahmed.cpv.CircularProgressView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.activity_log.HomeListAdapter;
import com.privacystar.core.data.activity_log.LogExpandedAction;
import com.privacystar.core.data.activity_log.PSLogFilters;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.LookupHistory;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.providers.LocalLogProvider;
import com.privacystar.core.data.providers.LogProvider;
import com.privacystar.core.p011ui.BaseActivity;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.home.HomeContextDialogInterfaceImpl;
import com.privacystar.core.p011ui.home.HomeContract;
import com.privacystar.core.p011ui.intro.af_overlay_permissions.AFOverlayPermissionDialogFragment;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.util.AnimationUtil;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.util.StartupMessagingUtil;
import com.privacystar.core.p011ui.widgets.ContextMenuRecyclerView;
import com.privacystar.core.p011ui.widgets.EdgeSnapHelper;
import com.privacystar.core.p011ui.widgets.LogContextDialogFragment;
import com.privacystar.core.p011ui.widgets.LookaheadLinearLayoutManager;
import com.privacystar.core.p011ui.widgets.OverlayPermissionDialog;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.service.IViewClickCallback;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.EventHelper;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.service.workers.CampaignWorkerManager;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.HomeActivityBlockingUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import com.privacystar.core.util.enums.CarrierMobileCode;
import io.reactivex.Completable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\t\n\u0002\b\u000b\u0018��2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u00042\u00020\u0005:\u0004â\u0001ã\u0001B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010Y\u001a\u00020\bH\u0016J\u0010\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020!2\u0006\u0010_\u001a\u00020\u0003H\u0016J\u0012\u0010`\u001a\u00020[2\b\u0010a\u001a\u0004\u0018\u00010]H\u0016J\u0010\u0010b\u001a\u00020!2\u0006\u0010_\u001a\u00020\u0003H\u0016J \u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\b2\u0006\u0010f\u001a\u00020\b2\u0006\u0010g\u001a\u00020\u001aH\u0002J\b\u0010h\u001a\u00020[H\u0016J\b\u0010i\u001a\u00020[H\u0016J\b\u0010j\u001a\u00020[H\u0016J#\u0010k\u001a\u00020l2\f\u0010m\u001a\b\u0012\u0004\u0012\u00020]0n2\u0006\u0010o\u001a\u00020pH\u0003¢\u0006\u0002\u0010qJ\b\u0010r\u001a\u00020[H\u0016J\u0010\u0010s\u001a\u00020[2\u0006\u0010t\u001a\u00020dH\u0002J\b\u0010u\u001a\u00020[H\u0016J\b\u0010v\u001a\u00020[H\u0002J\b\u0010w\u001a\u00020[H\u0016J\b\u0010x\u001a\u00020\bH\u0016J\b\u0010y\u001a\u00020%H\u0002J\r\u0010z\u001a\u00020\bH\u0016¢\u0006\u0002\u0010{J\u0010\u0010|\u001a\u00020[2\u0006\u0010}\u001a\u00020\fH\u0002J\u0010\u0010~\u001a\u00020[2\u0006\u0010\u007f\u001a\u00020\bH\u0002J\u0012\u0010\u0080\u0001\u001a\u00020[2\u0007\u0010\u0081\u0001\u001a\u00020lH\u0002J\u0011\u0010\u0082\u0001\u001a\u00020[2\u0006\u0010}\u001a\u00020\fH\u0002J\t\u0010\u0083\u0001\u001a\u00020!H\u0016J\t\u0010\u0084\u0001\u001a\u00020!H\u0016J\t\u0010\u0085\u0001\u001a\u00020!H\u0016J\t\u0010\u0086\u0001\u001a\u00020!H\u0016J\t\u0010\u0087\u0001\u001a\u00020[H\u0017J\t\u0010\u0088\u0001\u001a\u00020!H\u0016J\t\u0010\u0089\u0001\u001a\u00020!H\u0016J\t\u0010\u008a\u0001\u001a\u00020!H\u0016J\u0013\u0010\u008b\u0001\u001a\u00020[2\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020[2\u0007\u0010\u008f\u0001\u001a\u00020\u0003H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020[2\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020[2\u0006\u0010\\\u001a\u00020]H\u0016J\t\u0010\u0090\u0001\u001a\u00020[H\u0016J\u0011\u0010\u0091\u0001\u001a\u00020[2\u0006\u0010_\u001a\u00020\u0003H\u0016J\u0013\u0010\u0092\u0001\u001a\u00020[2\b\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0016J\t\u0010\u0093\u0001\u001a\u00020[H\u0016J\t\u0010\u0094\u0001\u001a\u00020[H\u0016J\t\u0010\u0095\u0001\u001a\u00020[H\u0016J\t\u0010\u0096\u0001\u001a\u00020[H\u0016J\u0012\u0010\u0097\u0001\u001a\u00020[2\u0007\u0010\u0098\u0001\u001a\u00020\bH\u0016J\u001b\u0010\u0097\u0001\u001a\u00020[2\u0007\u0010\u0099\u0001\u001a\u00020\b2\u0007\u0010\u009a\u0001\u001a\u00020\bH\u0016J\t\u0010\u009b\u0001\u001a\u00020[H\u0016J\u0015\u0010\u009c\u0001\u001a\u00020[2\n\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009e\u0001H\u0014J\t\u0010\u009f\u0001\u001a\u00020[H\u0014J\u0013\u0010 \u0001\u001a\u00020!2\b\u0010¡\u0001\u001a\u00030¢\u0001H\u0002J\u001b\u0010£\u0001\u001a\u00020[2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u007f\u001a\u00020\bH\u0016J.\u0010¤\u0001\u001a\u00020[2\u0007\u0010¥\u0001\u001a\u00020\b2\f\u0010m\u001a\b\u0012\u0004\u0012\u00020]0n2\u0006\u0010o\u001a\u00020pH\u0016¢\u0006\u0003\u0010¦\u0001J\t\u0010§\u0001\u001a\u00020[H\u0014J\u0012\u0010¨\u0001\u001a\u00020[2\u0007\u0010\u008f\u0001\u001a\u00020\u0003H\u0016J\u0014\u0010©\u0001\u001a\u00020!2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003H\u0016J)\u0010ª\u0001\u001a\u00020[2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00032\u0007\u0010\u0098\u0001\u001a\u00020\b2\n\u0010«\u0001\u001a\u0005\u0018\u00010¬\u0001H\u0016J\t\u0010\u00ad\u0001\u001a\u00020[H\u0016J\t\u0010®\u0001\u001a\u00020[H\u0016J\t\u0010¯\u0001\u001a\u00020[H\u0016J\t\u0010°\u0001\u001a\u00020[H\u0016J\u0012\u0010±\u0001\u001a\u00020[2\u0007\u0010²\u0001\u001a\u00020]H\u0002J\t\u0010³\u0001\u001a\u00020[H\u0002J\t\u0010´\u0001\u001a\u00020[H\u0016J\t\u0010µ\u0001\u001a\u00020[H\u0016J\t\u0010¶\u0001\u001a\u00020[H\u0002J\u0013\u0010·\u0001\u001a\u00020[2\b\u0010¸\u0001\u001a\u00030¹\u0001H\u0016J\t\u0010º\u0001\u001a\u00020[H\u0016J\u0013\u0010»\u0001\u001a\u00020[2\b\u0010¸\u0001\u001a\u00030¹\u0001H\u0016J\t\u0010¼\u0001\u001a\u00020[H\u0016J\u0012\u0010½\u0001\u001a\u00020[2\u0007\u0010¾\u0001\u001a\u00020\bH\u0016J\t\u0010¿\u0001\u001a\u00020[H\u0016J\t\u0010À\u0001\u001a\u00020[H\u0016J\t\u0010Á\u0001\u001a\u00020[H\u0017J\t\u0010Â\u0001\u001a\u00020[H\u0016J\t\u0010Ã\u0001\u001a\u00020!H\u0016J\t\u0010Ä\u0001\u001a\u00020!H\u0016J\t\u0010Å\u0001\u001a\u00020!H\u0016J\u0012\u0010Æ\u0001\u001a\u00020[2\u0007\u0010Ç\u0001\u001a\u00020!H\u0016J\u0012\u0010È\u0001\u001a\u00020[2\u0007\u0010Ç\u0001\u001a\u00020!H\u0016J\u0012\u0010É\u0001\u001a\u00020[2\u0007\u0010Ç\u0001\u001a\u00020!H\u0016J\t\u0010Ê\u0001\u001a\u00020[H\u0016J\u0012\u0010Ë\u0001\u001a\u00020[2\u0007\u0010Ç\u0001\u001a\u00020!H\u0016J\t\u0010Ì\u0001\u001a\u00020[H\u0016J\u0012\u0010Í\u0001\u001a\u00020[2\u0007\u0010\u008f\u0001\u001a\u00020\u0003H\u0016J\t\u0010Î\u0001\u001a\u00020[H\u0002J\t\u0010Ï\u0001\u001a\u00020[H\u0016J\t\u0010Ð\u0001\u001a\u00020[H\u0002J\u0012\u0010Ñ\u0001\u001a\u00020[2\u0007\u0010Ò\u0001\u001a\u00020!H\u0016J\t\u0010Ó\u0001\u001a\u00020[H\u0016J\t\u0010Ô\u0001\u001a\u00020[H\u0002J\u0012\u0010Õ\u0001\u001a\u00020[2\u0007\u0010Ö\u0001\u001a\u00020!H\u0016J$\u0010×\u0001\u001a\u00020[2\u0006\u0010t\u001a\u00020d2\b\u0010Ø\u0001\u001a\u00030Ù\u00012\u0007\u0010Ú\u0001\u001a\u00020\bH\u0002J\t\u0010Û\u0001\u001a\u00020[H\u0002J\u0012\u0010Ü\u0001\u001a\u00020[2\u0007\u0010Ý\u0001\u001a\u00020!H\u0002J\u0011\u0010Þ\u0001\u001a\u00020!2\u0006\u0010_\u001a\u00020\u0003H\u0016J\u0011\u0010ß\u0001\u001a\u00020!2\u0006\u0010_\u001a\u00020\u0003H\u0016J\t\u0010à\u0001\u001a\u00020[H\u0016J\t\u0010á\u0001\u001a\u00020[H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0086D¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020'X\u0082.¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020*X\u0082.¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020,X\u0082.¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010/\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u00100\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u00101\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u00106\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u00108\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010;\u001a\u0004\u0018\u00010<X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010=\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u0010>\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u000e\u0010?\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010@\u001a\u00020AX\u0082.¢\u0006\u0002\n��R\u000e\u0010B\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010C\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010D\u001a\u00020EX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010F\u001a\u00020GX\u0082.¢\u0006\u0002\n��R\u000e\u0010H\u001a\u00020\u0014X\u0082.¢\u0006\u0002\n��R\u000e\u0010I\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u000e\u0010J\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u000e\u0010K\u001a\u000202X\u0082.¢\u0006\u0002\n��R\u0010\u0010L\u001a\u0004\u0018\u00010MX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010N\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010O\u001a\u00020PX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010Q\u001a\u00020RX\u0082.¢\u0006\u0002\n��R\u000e\u0010S\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010T\u001a\u00020!X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010U\u001a\u00020VX\u0082.¢\u0006\u0002\n��R\u000e\u0010W\u001a\u00020\u0016X\u0082.¢\u0006\u0002\n��R\u000e\u0010X\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��¨\u0006ä\u0001"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeActivity;", "Lcom/privacystar/core/ui/BaseActivity;", "Lcom/privacystar/core/service/IViewClickCallback;", "Lcom/privacystar/core/data/call/call_details/CallDetails;", "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;", "Lcom/privacystar/core/ui/home/HomeContract$View;", "()V", "ALPHA_ANIMATION_DURATION", "", "getALPHA_ANIMATION_DURATION", "()I", "PERCENT_TO_SHOW_CONTAINER", "", "getPERCENT_TO_SHOW_CONTAINER", "()F", "adapter", "Lcom/privacystar/core/data/activity_log/HomeListAdapter;", "alertBannerLayout", "Landroid/widget/RelativeLayout;", "alertBannerLocation", "Landroid/widget/LinearLayout;", "alertBannerSubtitleTv", "Landroid/widget/TextView;", "alertView", "Landroid/support/v7/widget/CardView;", "allowCallLogPermissionListener", "Landroid/view/View$OnClickListener;", "allowContactPermissionListener", "allowMultiplePermissionListener", "allowPhoneStatePermissionListener", "appBarLayout", "Landroid/support/design/widget/AppBarLayout;", "checkingPermissions", "", "contactChangeObserver", "Landroid/database/ContentObserver;", "contentProvider", "Lcom/privacystar/core/data/providers/LogProvider;", "contentRecyclerView", "Lcom/privacystar/core/ui/widgets/ContextMenuRecyclerView;", "contentShaderLayout", "contextDialogInstance", "Lcom/privacystar/core/ui/home/HomeContextDialogInterfaceImpl;", "coordinatorLayout", "Landroid/support/design/widget/CoordinatorLayout;", "emptyContainerAllowPermissionClicked", "emptyListAllowPermissionTV", "emptyListContainerLL", "emptyListPermissionSubtitleTV", "filterButton", "Landroid/widget/ImageView;", "filterMenu", "Landroid/support/v7/widget/PopupMenu;", "filterTitleTv", "goToSettingsListener", "headerFrameLayout", "headerLogo", "invalidNumberContainer", "isAppBarVisible", "layoutManager", "Lcom/privacystar/core/ui/widgets/LookaheadLinearLayoutManager;", "listEmptyContainer", "listEmptyIcon", "listEmptyTextView", "numberSearchField", "Landroid/widget/AutoCompleteTextView;", "onPlayStoreClick", "onUpgradeToPremiumClicked", "presenter", "Lcom/privacystar/core/ui/home/HomePresenter;", "progressSpinner", "Lcom/github/rahatarmanahmed/cpv/CircularProgressView;", "rootLayout", "searchBarLayout", "searchButton", "searchIcon", "snapHelper", "Lcom/privacystar/core/ui/widgets/EdgeSnapHelper;", "startSearchListener", "subsChanged", "Lcom/privacystar/core/ui/PSActivity$OnSubscriptionChangedListener;", "suggestionArrayAdapter", "Lcom/privacystar/core/ui/home/HomeActivityHistoryArrayAdapter;", "titleContainerVisible", "titleVisible", "toolBar", "Landroid/support/v7/widget/Toolbar;", "upgradeToPremiumButton", "verifyNumberListener", "adapterItemCount", "addNumberToLookupHistory", "", "number", "", "approveEntry", "callDetails", "attemptPurchase", "productID", "blockEntry", "buildAlertBanner", "Landroid/view/View;", "title", "buttonTitle", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "changeThemeForSprint", "checkAndSetFullUX", "checkIfPremiumUser", "checkPermissionGrantResults", "Lcom/privacystar/core/util/PermissionUtils$PermissionRequestResult;", "permissions", "", "grantResults", "", "([Ljava/lang/String;[I)Lcom/privacystar/core/util/PermissionUtils$PermissionRequestResult;", "checkPurchases", "clearAndAddViewToAlertBanner", "v", "clearNumberSearchField", "dismissKeyboard", "endSearching", "getActiveNavDrawerItem", "getContentProvider", "getOldPosition", "()Ljava/lang/Integer;", "handleAlphaOnTitle", "percentage", "handleAppBarDisplay", "offset", "handleRequestPermissionResult", "requestResult", "handleToolbarTitleVisibility", "hasCallLogPermission", "hasContactPermission", "hasDrawOverlayPermission", "hasPhoneStatePermission", "initializeEventListeners", "isContentShaderVisible", "isSearchFeatureAvailable", "isUsingGP", "launchAddContact", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "launchCallerDetail", "entry", "launchNumberVerificationFragment", "launchReport", "launchSendMessage", "launchSettings", "launchSubscriptionFragment", "notifyContentProviderChanged", "notifyDatasetChanged", "notifyItemChanged", FirebaseAnalytics.Param.INDEX, "start", "end", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onFilterChange", "newFilter", "Landroid/view/MenuItem;", "onOffsetChanged", "onRequestPermissionsResult", "requestCode", "(I[Ljava/lang/String;[I)V", "onResume", "onViewClick", "onViewLongClick", "onViewSpecialClick", "expandedAction", "Lcom/privacystar/core/data/activity_log/LogExpandedAction;", "openPlayStore", "prepareForSearch", "registerContactChangeObserver", "removeAlertBanner", "requestPermission", "permissionName", "requestPermissions", "resetCachedContacts", "scheduleWelcomeSubscriberMessage", FirebaseAnalytics.Event.SEARCH, "setAdapterFilter", "filter", "Lcom/privacystar/core/data/activity_log/PSLogFilters;", "setExpandingAnimation", "setFilterTitleText", "setHasReachedHomeActivity", "setNewPosition", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "setupFilterMenu", "setupRecycler", "setupStartupMessageTimer", "setupSuggestionAdapter", "shouldShowCallLogPermission", "shouldShowContactPermission", "shouldShowPhoneStatePermission", "showAlertBannerCallLogMissing", "takeToSettings", "showAlertBannerContactMissing", "showAlertBannerMultiplePermissionsMissing", "showAlertBannerNumberVerification", "showAlertBannerPhoneStateMissing", "showCallLogPermissionNativeDialog", "showContextDialog", "showHideNoCalls", "showInvalidNumberMessage", "showKeyboard", "showOverlayPermissionDialog", "isFullScreen", "showPaywall", "showStartupMessaging", "showUpgradeToPremium", "isVisible", "startAlphaAnimation", "duration", "", "visibility", "suppressSearchField", "triggerContentRefresh", "fullRefresh", "unapproveEntry", "unblockEntry", "updateContentProvider", "updateGPCache", "ContactChangeObserver", "SearchFieldTextWatcher", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeActivity.class */
public final class HomeActivity extends BaseActivity implements IViewClickCallback<CallDetails>, AppBarLayout.OnOffsetChangedListener, HomeContract.View {
    private HashMap _$_findViewCache;
    private HomeListAdapter adapter;
    private RelativeLayout alertBannerLayout;
    private LinearLayout alertBannerLocation;
    private TextView alertBannerSubtitleTv;
    private CardView alertView;
    private AppBarLayout appBarLayout;
    private boolean checkingPermissions;
    private ContentObserver contactChangeObserver;
    private LogProvider contentProvider;
    private ContextMenuRecyclerView contentRecyclerView;
    private RelativeLayout contentShaderLayout;
    private HomeContextDialogInterfaceImpl contextDialogInstance;
    private CoordinatorLayout coordinatorLayout;
    private TextView emptyListAllowPermissionTV;
    private LinearLayout emptyListContainerLL;
    private TextView emptyListPermissionSubtitleTV;
    private ImageView filterButton;
    private PopupMenu filterMenu;
    private TextView filterTitleTv;
    private LinearLayout headerFrameLayout;
    private ImageView headerLogo;
    private LinearLayout invalidNumberContainer;
    private boolean isAppBarVisible;
    private LookaheadLinearLayoutManager layoutManager;
    private LinearLayout listEmptyContainer;
    private ImageView listEmptyIcon;
    private TextView listEmptyTextView;
    private AutoCompleteTextView numberSearchField;
    private CircularProgressView progressSpinner;
    private LinearLayout rootLayout;
    private RelativeLayout searchBarLayout;
    private ImageView searchButton;
    private ImageView searchIcon;
    private final EdgeSnapHelper snapHelper;
    private HomeActivityHistoryArrayAdapter suggestionArrayAdapter;
    private boolean titleVisible;
    private Toolbar toolBar;
    private TextView upgradeToPremiumButton;
    private final float PERCENT_TO_SHOW_CONTAINER = 0.1f;
    private final int ALPHA_ANIMATION_DURATION = 200;
    private boolean titleContainerVisible = true;
    private final HomePresenter presenter = new HomePresenter(this);
    private final PSActivity.OnSubscriptionChangedListener subsChanged = new PSActivity.OnSubscriptionChangedListener() { // from class: com.privacystar.core.ui.home.HomeActivity$subsChanged$1
        @Override // com.privacystar.core.p011ui.PSActivity.OnSubscriptionChangedListener
        public final void onSubscriptionChanged(boolean z) {
            HomePresenter homePresenter;
            Timber.m37d("Subscription Changed, isActive: [" + z + ']', new Object[0]);
            homePresenter = HomeActivity.this.presenter;
            homePresenter.onSubscriptionChanged(z);
        }
    };
    private final View.OnClickListener onUpgradeToPremiumClicked = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$onUpgradeToPremiumClicked$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            HomePresenter homePresenter;
            String string = HomeActivity.this.getString(C1566R.string.play_store_sku_premium_annual);
            homePresenter = HomeActivity.this.presenter;
            homePresenter.upgradeToPremiumClicked(string);
        }
    };
    private final View.OnClickListener startSearchListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$startSearchListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("startSearchListener", new Object[0]);
            HomeActivity.this.search();
        }
    };
    private final View.OnClickListener onPlayStoreClick = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$onPlayStoreClick$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m28v("Google Play was clicked, launching PlayStore intent.", new Object[0]);
            SystemUtil.openPlayStore$default(SystemUtil.INSTANCE, HomeActivity.this, 0, 2, null);
        }
    };
    private final View.OnClickListener emptyContainerAllowPermissionClicked = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$emptyContainerAllowPermissionClicked$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            HomePresenter homePresenter;
            homePresenter = HomeActivity.this.presenter;
            homePresenter.emptyListAllowPermissionClicked();
        }
    };
    private final View.OnClickListener verifyNumberListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$verifyNumberListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            HomePresenter homePresenter;
            homePresenter = HomeActivity.this.presenter;
            homePresenter.onVerifyNumberClicked();
        }
    };
    private final View.OnClickListener allowContactPermissionListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$allowContactPermissionListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("Verify Button on Banner for Contact Clicked", new Object[0]);
            HomeActivity.this.removeAlertBanner();
            HomeActivity.this.requestPermission("android.permission.READ_CONTACTS");
        }
    };
    private final View.OnClickListener allowCallLogPermissionListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$allowCallLogPermissionListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("Allow Button on Banner for Call log Permission Clicked", new Object[0]);
            HomeActivity.this.removeAlertBanner();
            HomeActivity.this.requestPermission("android.permission.READ_CALL_LOG");
        }
    };
    private final View.OnClickListener allowPhoneStatePermissionListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$allowPhoneStatePermissionListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("Allow Button on Banner for Phone State Permission Clicked", new Object[0]);
            HomeActivity.this.removeAlertBanner();
            HomeActivity.this.requestPermission("android.permission.READ_PHONE_STATE");
        }
    };
    private final View.OnClickListener allowMultiplePermissionListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$allowMultiplePermissionListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Timber.m37d("Enable Button on Banner for Multiple Permissions Clicked", new Object[0]);
            HomeActivity.this.removeAlertBanner();
            HomeActivity.this.requestPermissions();
        }
    };
    private final View.OnClickListener goToSettingsListener = new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$goToSettingsListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            HomePresenter homePresenter;
            Timber.m37d("GO TO SETTINGS button Clicked", new Object[0]);
            homePresenter = HomeActivity.this.presenter;
            homePresenter.goToSettingsClicked();
        }
    };

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeActivity$ContactChangeObserver;", "Landroid/database/ContentObserver;", "(Lcom/privacystar/core/ui/home/HomeActivity;)V", "onChange", "", "selfChange", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.home.HomeActivity$ContactChangeObserver */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeActivity$ContactChangeObserver.class */
    private final class ContactChangeObserver extends ContentObserver {
        public ContactChangeObserver() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            Timber.m28v("Contacts changed, updating any cached contacts", new Object[0]);
            HomeActivity.this.resetCachedContacts();
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J*\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeActivity$SearchFieldTextWatcher;", "Landroid/text/TextWatcher;", "(Lcom/privacystar/core/ui/home/HomeActivity;)V", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", "start", "", "count", "after", "onTextChanged", "before", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.home.HomeActivity$SearchFieldTextWatcher */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeActivity$SearchFieldTextWatcher.class */
    private final class SearchFieldTextWatcher implements TextWatcher {
        public SearchFieldTextWatcher() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
            if (r4 != null) goto L_0x0025;
         */
        @Override // android.text.TextWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void afterTextChanged(@org.jetbrains.annotations.Nullable android.text.Editable r4) {
            /*
                r3 = this;
                r0 = r3
                com.privacystar.core.ui.home.HomeActivity r0 = com.privacystar.core.p011ui.home.HomeActivity.this
                com.privacystar.core.ui.home.HomeActivityHistoryArrayAdapter r0 = com.privacystar.core.p011ui.home.HomeActivity.access$getSuggestionArrayAdapter$li(r0)
                if (r0 == 0) goto L_0x002a
                r0 = r3
                com.privacystar.core.ui.home.HomeActivity r0 = com.privacystar.core.p011ui.home.HomeActivity.this
                com.privacystar.core.ui.home.HomeActivityHistoryArrayAdapter r0 = com.privacystar.core.p011ui.home.HomeActivity.access$getSuggestionArrayAdapter$p(r0)
                r5 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0022
                r0 = r4
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L_0x0022
                goto L_0x0025
            L_0x0022:
                java.lang.String r0 = ""
                r4 = r0
            L_0x0025:
                r0 = r5
                r1 = r4
                r0.setTextBeingSearched(r1)
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.home.HomeActivity.SearchFieldTextWatcher.afterTextChanged(android.text.Editable):void");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @NotNull
    public static final /* synthetic */ HomeActivityHistoryArrayAdapter access$getSuggestionArrayAdapter$p(HomeActivity homeActivity) {
        HomeActivityHistoryArrayAdapter homeActivityHistoryArrayAdapter = homeActivity.suggestionArrayAdapter;
        if (homeActivityHistoryArrayAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestionArrayAdapter");
        }
        return homeActivityHistoryArrayAdapter;
    }

    private final View buildAlertBanner(int i, int i2, View.OnClickListener onClickListener) {
        View banner = getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_action, (ViewGroup) null);
        ((TextView) banner.findViewById(C1566R.C1569id.error_banner_title_tv)).setText(i);
        TextView textView = (TextView) banner.findViewById(C1566R.C1569id.error_banner_button_tv);
        textView.setText(i2);
        textView.setOnClickListener(onClickListener);
        Intrinsics.checkExpressionValueIsNotNull(banner, "banner");
        return banner;
    }

    @TargetApi(23)
    private final PermissionUtils.PermissionRequestResult checkPermissionGrantResults(String[] strArr, int[] iArr) {
        PermissionUtils.PermissionRequestResult permissionRequestResult;
        if (Build.VERSION.SDK_INT < 23) {
            Timber.m25w("method should not be called unless permissions have been checked.", new Object[0]);
            return PermissionUtils.PermissionRequestResult.INVALID;
        }
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (iArr[i] == -1) {
                EventHelper.INSTANCE.handlePermissionsResultEvent(str, false);
                if (!shouldShowRequestPermissionRationale(str)) {
                    Timber.m34e("User denied permission with \"never ask again\": %s", strArr[i]);
                    permissionRequestResult = PermissionUtils.PermissionRequestResult.NEVER_ASK_AGAIN;
                } else {
                    Timber.m34e("User denied permission: %s", strArr[i]);
                    permissionRequestResult = PermissionUtils.PermissionRequestResult.DENIED;
                }
                return permissionRequestResult;
            }
            Timber.m37d("User granted permission: %s", strArr[i]);
            EventHelper.INSTANCE.handlePermissionsResultEvent(str, true);
        }
        return PermissionUtils.PermissionRequestResult.GRANTED;
    }

    private final void clearAndAddViewToAlertBanner(View view) {
        removeAlertBanner();
        Timber.m37d("Adding a new banner content", new Object[0]);
        LinearLayout linearLayout = this.alertBannerLocation;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertBannerLocation");
        }
        linearLayout.addView(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissKeyboard() {
        Object systemService = getSystemService("input_method");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        if (getCurrentFocus() != null) {
            View currentFocus = getCurrentFocus();
            if (currentFocus == null) {
                Intrinsics.throwNpe();
            }
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.clearFocus();
    }

    private final LogProvider getContentProvider() {
        LogProvider logProvider = LocalLogProvider.getLogProvider(PSLogFilters.ALL_ACTIVITY);
        Intrinsics.checkExpressionValueIsNotNull(logProvider, "LocalLogProvider.getLogP…SLogFilters.ALL_ACTIVITY)");
        return logProvider;
    }

    private final void handleAlphaOnTitle(float f) {
        if (f >= this.PERCENT_TO_SHOW_CONTAINER) {
            if (this.titleContainerVisible) {
                this.presenter.titleContainerVisible();
                RelativeLayout relativeLayout = this.searchBarLayout;
                if (relativeLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("searchBarLayout");
                }
                startAlphaAnimation(relativeLayout, this.ALPHA_ANIMATION_DURATION, 4);
                this.titleContainerVisible = false;
            }
        } else if (!this.titleContainerVisible) {
            RelativeLayout relativeLayout2 = this.searchBarLayout;
            if (relativeLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchBarLayout");
            }
            startAlphaAnimation(relativeLayout2, this.ALPHA_ANIMATION_DURATION, 0);
            this.titleContainerVisible = true;
        }
    }

    private final void handleAppBarDisplay(int i) {
        int dpToPx = DensityUtil.dpToPx(PSApplication.context(), 3);
        Toolbar toolbar = this.toolBar;
        if (toolbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolBar");
        }
        if (i - dpToPx <= toolbar.getHeight()) {
            if (!this.isAppBarVisible) {
                AppBarLayout appBarLayout = this.appBarLayout;
                if (appBarLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
                }
                appBarLayout.setVisibility(0);
                this.isAppBarVisible = true;
            }
        } else if (this.isAppBarVisible) {
            AppBarLayout appBarLayout2 = this.appBarLayout;
            if (appBarLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
            }
            appBarLayout2.setVisibility(4);
            this.isAppBarVisible = false;
        }
    }

    private final void handleRequestPermissionResult(PermissionUtils.PermissionRequestResult permissionRequestResult) {
        this.checkingPermissions = false;
        Timber.m37d("Handling permission request results: %s", permissionRequestResult.toString());
        switch (permissionRequestResult) {
            case GRANTED:
                this.presenter.onAllPermissionsGranted();
                return;
            case DENIED:
            case NEVER_ASK_AGAIN:
            default:
                return;
            case INVALID:
                Timber.m37d("Did not receive a valid permissions request result.", new Object[0]);
                return;
        }
    }

    private final void handleToolbarTitleVisibility(float f) {
        if (f >= this.PERCENT_TO_SHOW_CONTAINER) {
            if (!this.titleVisible) {
                ImageView imageView = this.searchIcon;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("searchIcon");
                }
                startAlphaAnimation(imageView, this.ALPHA_ANIMATION_DURATION, 0);
                this.titleVisible = true;
            }
        } else if (this.titleVisible) {
            ImageView imageView2 = this.searchIcon;
            if (imageView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchIcon");
            }
            startAlphaAnimation(imageView2, this.ALPHA_ANIMATION_DURATION, 4);
            this.titleVisible = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean onFilterChange(MenuItem menuItem) {
        PSLogFilters pSLogFilters;
        switch (menuItem.getItemId()) {
            case C1566R.C1569id.home_filter_all_activity /* 2131296782 */:
                pSLogFilters = PSLogFilters.ALL_ACTIVITY;
                break;
            case C1566R.C1569id.home_filter_block_activity /* 2131296783 */:
                pSLogFilters = PSLogFilters.BLOCK_ACTIVITY;
                break;
            default:
                Timber.m25w("Undefined menu item. No filter changes made.", new Object[0]);
                return false;
        }
        this.presenter.onFilterChanged(pSLogFilters);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestPermission(String str) {
        Timber.m37d("Requesting permission %s", str);
        if (Build.VERSION.SDK_INT >= 23 && !this.checkingPermissions) {
            EventHelper.INSTANCE.handlePermissionRequestEvent(str);
            this.checkingPermissions = true;
            requestPermissions(new String[]{str}, PermissionUtils.EULA_PERMISSION_REQUEST);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestPermissions() {
        if (Build.VERSION.SDK_INT >= 23 && !this.checkingPermissions) {
            String[] generalPermissions = PermissionUtils.getGeneralPermissions();
            String[] unownedPermissions = PermissionUtils.getUnownedPermissions(this, (String[]) Arrays.copyOf(generalPermissions, generalPermissions.length));
            boolean z = false;
            for (String permission : unownedPermissions) {
                EventHelper eventHelper = EventHelper.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(permission, "permission");
                eventHelper.handlePermissionRequestEvent(permission);
            }
            Intrinsics.checkExpressionValueIsNotNull(unownedPermissions, "unownedPermissions");
            if (unownedPermissions.length == 0) {
                z = true;
            }
            if (!z) {
                this.checkingPermissions = true;
                requestPermissions(unownedPermissions, PermissionUtils.EULA_PERMISSION_REQUEST);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void search() {
        Timber.m37d("searched", new Object[0]);
        HomePresenter homePresenter = this.presenter;
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        if (homePresenter.onSearch(autoCompleteTextView.getText().toString())) {
            dismissKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showHideNoCalls() {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        if (homeListAdapter.getItemCount() == 0) {
            HomeListAdapter homeListAdapter2 = this.adapter;
            if (homeListAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            }
            if (homeListAdapter2.getListFilter() == PSLogFilters.BLOCK_ACTIVITY) {
                LinearLayout linearLayout = this.listEmptyContainer;
                if (linearLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("listEmptyContainer");
                }
                linearLayout.setVisibility(0);
                LinearLayout linearLayout2 = this.emptyListContainerLL;
                if (linearLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("emptyListContainerLL");
                }
                linearLayout2.setVisibility(8);
                TextView textView = this.listEmptyTextView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("listEmptyTextView");
                }
                textView.setText(C1566R.string.blocked_calls_list_empty);
                ImageView imageView = this.listEmptyIcon;
                if (imageView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("listEmptyIcon");
                }
                imageView.setVisibility(0);
                return;
            }
            LinearLayout linearLayout3 = this.listEmptyContainer;
            if (linearLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listEmptyContainer");
            }
            linearLayout3.setVisibility(8);
            LinearLayout linearLayout4 = this.emptyListContainerLL;
            if (linearLayout4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("emptyListContainerLL");
            }
            linearLayout4.setVisibility(0);
            if (!PermissionUtils.hasCallLogPermission(this)) {
                TextView textView2 = this.emptyListPermissionSubtitleTV;
                if (textView2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("emptyListPermissionSubtitleTV");
                }
                textView2.setVisibility(0);
                TextView textView3 = this.emptyListAllowPermissionTV;
                if (textView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("emptyListAllowPermissionTV");
                }
                textView3.setVisibility(0);
                return;
            }
            TextView textView4 = this.emptyListPermissionSubtitleTV;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("emptyListPermissionSubtitleTV");
            }
            textView4.setVisibility(8);
            TextView textView5 = this.emptyListAllowPermissionTV;
            if (textView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("emptyListAllowPermissionTV");
            }
            textView5.setVisibility(8);
            return;
        }
        LinearLayout linearLayout5 = this.listEmptyContainer;
        if (linearLayout5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listEmptyContainer");
        }
        linearLayout5.setVisibility(8);
        LinearLayout linearLayout6 = this.emptyListContainerLL;
        if (linearLayout6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emptyListContainerLL");
        }
        linearLayout6.setVisibility(8);
    }

    private final void showKeyboard() {
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.requestFocus();
        Object systemService = getSystemService("input_method");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        }
        InputMethodManager inputMethodManager = (InputMethodManager) systemService;
        AutoCompleteTextView autoCompleteTextView2 = this.numberSearchField;
        if (autoCompleteTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        inputMethodManager.showSoftInput(autoCompleteTextView2, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showStartupMessaging() {
        try {
            if (!PreferenceUtil.getStartupMessagingSeen()) {
                if (LicenseFeatureRealm.isFeatureAvailable(Feature.NEIGHBORHOOD_SPOOFING) || !InformationUtil.isFirstInstall()) {
                    Timber.m37d("Showing neighborhood spoofing explainer", new Object[0]);
                    StartupMessagingUtil.Companion companion = StartupMessagingUtil.Companion;
                    LinearLayout linearLayout = this.rootLayout;
                    if (linearLayout == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("rootLayout");
                    }
                    companion.handleStartupMessaging(linearLayout, this);
                } else {
                    Timber.m37d("Cannot show neighborhood Spoofing explainer - user not subscribed and new user", new Object[0]);
                    setDrawerButtonBadgeVisible(true);
                    PreferenceUtil.putNewFeatureExplained(false);
                    PreferenceUtil.putJumpToSpoofingSetting(true);
                    PreferenceUtil.putStartupMessagingSeen(true);
                }
                PreferenceUtil.putStartupMessagingSeen(true);
                return;
            }
            Timber.m37d("Already shown startup messaging", new Object[0]);
        } catch (Exception e) {
            Timber.m33e(e);
            PreferenceUtil.putStartupMessagingSeen(true);
        }
    }

    private final void startAlphaAnimation(View view, long j, int i) {
        AlphaAnimation alphaAnimation = i == 0 ? new AlphaAnimation(0.0f, 1.0f) : new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setFillAfter(true);
        view.startAnimation(alphaAnimation);
    }

    private final void suppressSearchField() {
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.setVisibility(8);
        LinearLayout linearLayout = this.headerFrameLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerFrameLayout");
        }
        linearLayout.getLayoutParams().height -= (int) (getResources().getDimension(C1566R.dimen.home_activity_search_height) + DensityUtil.dpToPx(this, 24));
        LinearLayout linearLayout2 = this.headerFrameLayout;
        if (linearLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerFrameLayout");
        }
        linearLayout2.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void triggerContentRefresh(boolean z) {
        this.presenter.onTriggerContentRefresh(z);
    }

    @Override // com.privacystar.core.p011ui.BaseActivity
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.privacystar.core.p011ui.BaseActivity
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public int adapterItemCount() {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return homeListAdapter.getItemCount();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void addNumberToLookupHistory(@NotNull String number) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        try {
            final LookupHistory lookupHistory = new LookupHistory();
            lookupHistory.setNumber(number);
            lookupHistory.setAdded(new Date());
            getRealm().executeTransactionAsync(new Realm.Transaction() { // from class: com.privacystar.core.ui.home.HomeActivity$addNumberToLookupHistory$1
                @Override // io.realm.Realm.Transaction
                public final void execute(Realm realm) {
                    realm.copyToRealmOrUpdate((Realm) LookupHistory.this, new ImportFlag[0]);
                }
            });
            HomeActivityHistoryArrayAdapter homeActivityHistoryArrayAdapter = this.suggestionArrayAdapter;
            if (homeActivityHistoryArrayAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("suggestionArrayAdapter");
            }
            homeActivityHistoryArrayAdapter.insert(number, 0);
        } catch (Exception e) {
            Timber.m34e(e.getMessage(), new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean approveEntry(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        return HomeActivityBlockingUtil.approveEntry(callDetails, this);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void attemptPurchase(@Nullable String str) {
        BillingHelper.attemptPurchase(this, str, IABV3Helper.SkuType.SUBSCRIPTION);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean blockEntry(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        return HomeActivityBlockingUtil.blockEntry(callDetails, this);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void changeThemeForSprint() {
        if (ThemeUtil.carrierCode.getId() == CarrierMobileCode.SPRINT_PREPAID.getId()) {
            Timber.m37d("Applying color filter to header logo.", new Object[0]);
            ImageView imageView = this.headerLogo;
            if (imageView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("headerLogo");
            }
            imageView.setColorFilter(ThemeUtil.resolveAttributeColor(this, C1566R.C1567attr.colorPrimaryLabel), PorterDuff.Mode.MULTIPLY);
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void checkAndSetFullUX() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        if (BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(this, realm)) {
            RelativeLayout relativeLayout = this.alertBannerLayout;
            if (relativeLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("alertBannerLayout");
            }
            relativeLayout.setVisibility(8);
            return;
        }
        Timber.m37d("This build should suppress subscriber UX.", new Object[0]);
        suppressSearchField();
        RelativeLayout relativeLayout2 = this.alertBannerLayout;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertBannerLayout");
        }
        relativeLayout2.setVisibility(0);
        TextView textView = this.alertBannerSubtitleTv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertBannerSubtitleTv");
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void checkIfPremiumUser() {
        if (!SubscriptionRealm.isSubscriptionActive(getRealm())) {
            TextView textView = this.upgradeToPremiumButton;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("upgradeToPremiumButton");
            }
            textView.setVisibility(0);
            return;
        }
        TextView textView2 = this.upgradeToPremiumButton;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("upgradeToPremiumButton");
        }
        textView2.setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void checkPurchases() {
        BillingHelper.checkPurchases(this);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void clearNumberSearchField() {
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.setText((CharSequence) null);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void endSearching() {
        Timber.m37d("endSearching", new Object[0]);
        RelativeLayout relativeLayout = this.contentShaderLayout;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentShaderLayout");
        }
        relativeLayout.setVisibility(4);
        Timber.m37d("Disabling suggestion list", new Object[0]);
        CardView cardView = this.alertView;
        if (cardView != null) {
            ViewParent parent = cardView.getParent();
            if (parent == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
            }
            ((ViewGroup) parent).removeView(cardView);
        }
        this.alertView = null;
        dismissKeyboard();
    }

    public final int getALPHA_ANIMATION_DURATION() {
        return this.ALPHA_ANIMATION_DURATION;
    }

    @Override // com.privacystar.core.p011ui.BaseActivity, com.privacystar.core.p011ui.BaseContract.View
    public int getActiveNavDrawerItem() {
        return getNavigationHomeItem();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    @NotNull
    public Integer getOldPosition() {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return Integer.valueOf(homeListAdapter.getExpandedPosition());
    }

    public final float getPERCENT_TO_SHOW_CONTAINER() {
        return this.PERCENT_TO_SHOW_CONTAINER;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean hasCallLogPermission() {
        return PermissionUtils.checkPermission(this, "android.permission.READ_CALL_LOG");
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean hasContactPermission() {
        return PermissionUtils.checkPermission(this, "android.permission.READ_CONTACTS");
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean hasDrawOverlayPermission() {
        return Build.VERSION.SDK_INT >= 23 ? Settings.canDrawOverlays(this) : true;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean hasPhoneStatePermission() {
        return PermissionUtils.checkPermission(this, "android.permission.READ_PHONE_STATE");
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    @SuppressLint({"ClickableViewAccessibility"})
    public void initializeEventListeners() {
        ImageView imageView = this.searchButton;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchButton");
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$initializeEventListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Timber.m37d("searchButton clicked", new Object[0]);
                HomeActivity.this.search();
            }
        });
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.privacystar.core.ui.home.HomeActivity$initializeEventListeners$2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z = false;
                Timber.m37d("numberSearchField.setOnEditorActionListener", new Object[0]);
                if (i == 3) {
                    z = true;
                }
                if (z) {
                    HomeActivity.this.search();
                }
                return z;
            }
        });
        AutoCompleteTextView autoCompleteTextView2 = this.numberSearchField;
        if (autoCompleteTextView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.privacystar.core.ui.home.HomeActivity$initializeEventListeners$3
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                HomePresenter homePresenter;
                Timber.m37d("numberSearchField.setOnFocusChangeListener isFocused: [" + z + ']', new Object[0]);
                homePresenter = HomeActivity.this.presenter;
                homePresenter.onSearchFocused(z);
            }
        });
        RelativeLayout relativeLayout = this.contentShaderLayout;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentShaderLayout");
        }
        relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.privacystar.core.ui.home.HomeActivity$initializeEventListeners$4
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                HomePresenter homePresenter;
                Timber.m37d("contentShaderLayout.setOnTouchListener", new Object[0]);
                homePresenter = HomeActivity.this.presenter;
                homePresenter.onContentShaderClicked();
                return true;
            }
        });
        LinearLayout linearLayout = this.rootLayout;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootLayout");
        }
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.privacystar.core.ui.home.HomeActivity$initializeEventListeners$5
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                HomePresenter homePresenter;
                Timber.m37d("TouchEvent on home_view_root", new Object[0]);
                homePresenter = HomeActivity.this.presenter;
                homePresenter.onRootLayoutTouched();
                HomeActivity.this.dismissKeyboard();
                return false;
            }
        });
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean isContentShaderVisible() {
        RelativeLayout relativeLayout = this.contentShaderLayout;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentShaderLayout");
        }
        return relativeLayout.getVisibility() == 0;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean isSearchFeatureAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(getRealm(), Feature.MANUAL_CID_LOOKUP);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean isUsingGP() {
        return BuildUtil.INSTANCE.doesVariantHaveGpPurchases(this);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchAddContact(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        HomeContextDialogInterfaceImpl homeContextDialogInterfaceImpl = this.contextDialogInstance;
        if (homeContextDialogInterfaceImpl == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contextDialogInstance");
        }
        homeContextDialogInterfaceImpl.launchAddContact(caller);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchCallerDetail(@NotNull CallDetails entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        Caller caller = entry.getCaller();
        Intrinsics.checkExpressionValueIsNotNull(caller, "entry.caller");
        launchCallerDetail(caller);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchCallerDetail(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        LookupHandler.getInstance().lookupUncachedCaller(getRealm(), caller.getNumber(), LookupRequest.LookupType.MANUAL);
        createBackStack(detailIntent(CallerDetailsFragment.class, caller));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchCallerDetail(@NotNull String number) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        CircularProgressView circularProgressView = this.progressSpinner;
        if (circularProgressView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressSpinner");
        }
        circularProgressView.setVisibility(0);
        CircularProgressView circularProgressView2 = this.progressSpinner;
        if (circularProgressView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressSpinner");
        }
        circularProgressView2.startAnimation();
        Caller populatedCaller = CallerFactory.getInstance().getPopulatedCaller(number);
        Intrinsics.checkExpressionValueIsNotNull(populatedCaller, "CallerFactory.getInstanc…etPopulatedCaller(number)");
        populatedCaller.populateLocally();
        AnalyticsManager.INSTANCE.fire(Event.ManualLookupEvent.INSTANCE);
        launchCallerDetail(populatedCaller);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchNumberVerificationFragment() {
        startActivity(new Intent(this, IntroActivity.class));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchReport(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        HomeContextDialogInterfaceImpl homeContextDialogInterfaceImpl = this.contextDialogInstance;
        if (homeContextDialogInterfaceImpl == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contextDialogInstance");
        }
        homeContextDialogInterfaceImpl.launchReport(callDetails);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchSendMessage(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        HomeContextDialogInterfaceImpl homeContextDialogInterfaceImpl = this.contextDialogInstance;
        if (homeContextDialogInterfaceImpl == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contextDialogInstance");
        }
        homeContextDialogInterfaceImpl.launchSendMessage(caller);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchSettings() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void launchSubscriptionFragment() {
        startActivity(DetailActivity.subscriptionIntent(this));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void notifyContentProviderChanged() {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.notifyContentProviderChanged();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void notifyDatasetChanged() {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.notifyDataSetChanged();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void notifyItemChanged(int i) {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.notifyItemChanged(i);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void notifyItemChanged(int i, int i2) {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.notifyItemRangeChanged(i, i2);
    }

    @Override // com.privacystar.core.p011ui.BaseActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.presenter.onBackPressed()) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.BaseActivity, com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1566R.C1571layout.home_activity);
        View findViewById = findViewById(C1566R.C1569id.home_view_root);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.home_view_root)");
        this.rootLayout = (LinearLayout) findViewById;
        View findViewById2 = findViewById(2131297212);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(R.id.search_bar)");
        this.searchBarLayout = (RelativeLayout) findViewById2;
        View findViewById3 = findViewById(C1566R.C1569id.home_activity_invalid_number_container);
        Intrinsics.checkExpressionValueIsNotNull(findViewById3, "findViewById(R.id.home_a…invalid_number_container)");
        this.invalidNumberContainer = (LinearLayout) findViewById3;
        View findViewById4 = findViewById(C1566R.C1569id.app_bar_layout);
        Intrinsics.checkExpressionValueIsNotNull(findViewById4, "findViewById(R.id.app_bar_layout)");
        this.appBarLayout = (AppBarLayout) findViewById4;
        View findViewById5 = findViewById(C1566R.C1569id.main_toolbar);
        Intrinsics.checkExpressionValueIsNotNull(findViewById5, "findViewById(R.id.main_toolbar)");
        this.toolBar = (Toolbar) findViewById5;
        View findViewById6 = findViewById(C1566R.C1569id.header_frame_layout);
        Intrinsics.checkExpressionValueIsNotNull(findViewById6, "findViewById(R.id.header_frame_layout)");
        this.headerFrameLayout = (LinearLayout) findViewById6;
        View findViewById7 = findViewById(C1566R.C1569id.pstar_nav_bar_logo);
        Intrinsics.checkExpressionValueIsNotNull(findViewById7, "findViewById(R.id.pstar_nav_bar_logo)");
        this.headerLogo = (ImageView) findViewById7;
        View findViewById8 = findViewById(C1566R.C1569id.ps_search_icon);
        Intrinsics.checkExpressionValueIsNotNull(findViewById8, "findViewById(R.id.ps_search_icon)");
        this.searchIcon = (ImageView) findViewById8;
        View findViewById9 = findViewById(C1566R.C1569id.home_activity_alert_banner);
        Intrinsics.checkExpressionValueIsNotNull(findViewById9, "findViewById(R.id.home_activity_alert_banner)");
        this.alertBannerLayout = (RelativeLayout) findViewById9;
        View findViewById10 = findViewById(C1566R.C1569id.home_activity_alert_banner_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(findViewById10, "findViewById(R.id.home_a…ty_alert_banner_subtitle)");
        this.alertBannerSubtitleTv = (TextView) findViewById10;
        View findViewById11 = findViewById(C1566R.C1569id.content_recycler_view);
        Intrinsics.checkExpressionValueIsNotNull(findViewById11, "findViewById(R.id.content_recycler_view)");
        this.contentRecyclerView = (ContextMenuRecyclerView) findViewById11;
        View findViewById12 = findViewById(C1566R.C1569id.search_field);
        Intrinsics.checkExpressionValueIsNotNull(findViewById12, "findViewById(R.id.search_field)");
        this.numberSearchField = (AutoCompleteTextView) findViewById12;
        View findViewById13 = findViewById(C1566R.C1569id.content_shader);
        Intrinsics.checkExpressionValueIsNotNull(findViewById13, "findViewById(R.id.content_shader)");
        this.contentShaderLayout = (RelativeLayout) findViewById13;
        View findViewById14 = findViewById(C1566R.C1569id.cid_progress_spinner);
        Intrinsics.checkExpressionValueIsNotNull(findViewById14, "findViewById(R.id.cid_progress_spinner)");
        this.progressSpinner = (CircularProgressView) findViewById14;
        View findViewById15 = findViewById(C1566R.C1569id.filter_list_button);
        Intrinsics.checkExpressionValueIsNotNull(findViewById15, "findViewById(R.id.filter_list_button)");
        this.filterButton = (ImageView) findViewById15;
        View findViewById16 = findViewById(C1566R.C1569id.filter_title_text_view);
        Intrinsics.checkExpressionValueIsNotNull(findViewById16, "findViewById(R.id.filter_title_text_view)");
        this.filterTitleTv = (TextView) findViewById16;
        View findViewById17 = findViewById(C1566R.C1569id.home_list_empty_container);
        Intrinsics.checkExpressionValueIsNotNull(findViewById17, "findViewById(R.id.home_list_empty_container)");
        this.listEmptyContainer = (LinearLayout) findViewById17;
        View findViewById18 = findViewById(C1566R.C1569id.home_list_empty_text_view);
        Intrinsics.checkExpressionValueIsNotNull(findViewById18, "findViewById(R.id.home_list_empty_text_view)");
        this.listEmptyTextView = (TextView) findViewById18;
        View findViewById19 = findViewById(C1566R.C1569id.home_block_list_empty_icon);
        Intrinsics.checkExpressionValueIsNotNull(findViewById19, "findViewById(R.id.home_block_list_empty_icon)");
        this.listEmptyIcon = (ImageView) findViewById19;
        View findViewById20 = findViewById(C1566R.C1569id.home_activity_alert_banner_location);
        Intrinsics.checkExpressionValueIsNotNull(findViewById20, "findViewById(R.id.home_a…ty_alert_banner_location)");
        this.alertBannerLocation = (LinearLayout) findViewById20;
        View findViewById21 = findViewById(C1566R.C1569id.home_activity_upgrade_to_premium);
        Intrinsics.checkExpressionValueIsNotNull(findViewById21, "findViewById(R.id.home_a…ivity_upgrade_to_premium)");
        this.upgradeToPremiumButton = (TextView) findViewById21;
        View findViewById22 = findViewById(C1566R.C1569id.home_activity_coordinator);
        Intrinsics.checkExpressionValueIsNotNull(findViewById22, "findViewById(R.id.home_activity_coordinator)");
        this.coordinatorLayout = (CoordinatorLayout) findViewById22;
        View findViewById23 = findViewById(C1566R.C1569id.home_list_empty_container_ll);
        Intrinsics.checkExpressionValueIsNotNull(findViewById23, "findViewById(R.id.home_list_empty_container_ll)");
        this.emptyListContainerLL = (LinearLayout) findViewById23;
        View findViewById24 = findViewById(C1566R.C1569id.home_activity_empty_list_allow_permission);
        Intrinsics.checkExpressionValueIsNotNull(findViewById24, "findViewById(R.id.home_a…ty_list_allow_permission)");
        this.emptyListAllowPermissionTV = (TextView) findViewById24;
        View findViewById25 = findViewById(C1566R.C1569id.home_activity_empty_list_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(findViewById25, "findViewById(R.id.home_a…vity_empty_list_subtitle)");
        this.emptyListPermissionSubtitleTV = (TextView) findViewById25;
        View findViewById26 = findViewById(C1566R.C1569id.search_btn);
        Intrinsics.checkExpressionValueIsNotNull(findViewById26, "findViewById(R.id.search_btn)");
        this.searchButton = (ImageView) findViewById26;
        TextView textView = this.upgradeToPremiumButton;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("upgradeToPremiumButton");
        }
        textView.setOnClickListener(this.onUpgradeToPremiumClicked);
        ImageView imageView = this.searchIcon;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchIcon");
        }
        imageView.setOnClickListener(this.startSearchListener);
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        autoCompleteTextView.addTextChangedListener(new SearchFieldTextWatcher());
        TextView textView2 = this.alertBannerSubtitleTv;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertBannerSubtitleTv");
        }
        textView2.setOnClickListener(this.onPlayStoreClick);
        TextView textView3 = this.emptyListAllowPermissionTV;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("emptyListAllowPermissionTV");
        }
        textView3.setOnClickListener(this.emptyContainerAllowPermissionClicked);
        if (restartAppIfPermissionsMissing()) {
            finishAffinity();
            return;
        }
        this.presenter.viewCreated();
        AppBarLayout appBarLayout = this.appBarLayout;
        if (appBarLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        appBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
        ImageView imageView2 = this.searchIcon;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchIcon");
        }
        imageView2.setVisibility(4);
        RelativeLayout relativeLayout = this.searchBarLayout;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchBarLayout");
        }
        relativeLayout.setVisibility(0);
        AnalyticsUtil analyticsUtil = AnalyticsUtil.INSTANCE;
        String name = getClass().getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "javaClass.name");
        analyticsUtil.trackDetailView(name);
        attachObserver(this.subsChanged);
        this.contextDialogInstance = new HomeContextDialogInterfaceImpl(this, new HomeContextDialogInterfaceImpl.OnTriggerContentRefresh() { // from class: com.privacystar.core.ui.home.HomeActivity$onCreate$1
            @Override // com.privacystar.core.p011ui.home.HomeContextDialogInterfaceImpl.OnTriggerContentRefresh
            public void triggerContentRefresh(boolean z) {
                HomeActivity.this.triggerContentRefresh(z);
            }
        });
        View findViewById27 = findViewById(C1566R.C1569id.menu_icon);
        if (findViewById27 != null) {
            findViewById27.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$onCreate$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HomePresenter homePresenter;
                    HomeActivity.this.onNavigationButtonClicked();
                    homePresenter = HomeActivity.this.presenter;
                    homePresenter.onNavigationDrawerOpened();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.BaseActivity, com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this.contactChangeObserver != null) {
            ContentResolver contentResolver = getContentResolver();
            ContentObserver contentObserver = this.contactChangeObserver;
            if (contentObserver == null) {
                Intrinsics.throwNpe();
            }
            contentResolver.unregisterContentObserver(contentObserver);
        }
        super.onDestroy();
    }

    @Override // android.support.design.widget.AppBarLayout.OnOffsetChangedListener, android.support.design.widget.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(@Nullable AppBarLayout appBarLayout, int i) {
        float abs = Math.abs(i) / (appBarLayout != null ? appBarLayout.getTotalScrollRange() : 150);
        handleAppBarDisplay(i);
        handleAlphaOnTitle(abs);
        handleToolbarTitleVisibility(abs);
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity, android.support.p001v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkParameterIsNotNull(permissions, "permissions");
        Intrinsics.checkParameterIsNotNull(grantResults, "grantResults");
        PermissionUtils.PermissionRequestResult checkPermissionGrantResults = checkPermissionGrantResults(permissions, grantResults);
        if (i != 98769) {
            Timber.m25w("Unhandled Permission request code - how was this even requested?", new Object[0]);
        } else {
            handleRequestPermissionResult(checkPermissionGrantResults);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.presenter.onActivityResumed();
    }

    public void onViewClick(@NotNull CallDetails entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        Timber.m28v("Item clicked", new Object[0]);
        this.presenter.onListItemClicked(entry);
    }

    public boolean onViewLongClick(@Nullable CallDetails callDetails) {
        this.presenter.onListItemLongClick(callDetails);
        return true;
    }

    public void onViewSpecialClick(@Nullable CallDetails callDetails, int i, @Nullable LogExpandedAction logExpandedAction) {
        this.presenter.onListItemSpecialClick(callDetails, i, logExpandedAction);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void openPlayStore() {
        Timber.m28v("Google Play was clicked, launching PlayStore intent.", new Object[0]);
        SystemUtil.openPlayStore$default(SystemUtil.INSTANCE, this, 0, 2, null);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void prepareForSearch() {
        AppBarLayout appBarLayout = this.appBarLayout;
        if (appBarLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("appBarLayout");
        }
        appBarLayout.setExpanded(true, true);
        showKeyboard();
        RelativeLayout relativeLayout = this.contentShaderLayout;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentShaderLayout");
        }
        relativeLayout.setVisibility(0);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void registerContactChangeObserver() {
        this.contactChangeObserver = new ContactChangeObserver();
        if (hasContactPermission()) {
            ContentResolver contentResolver = getContentResolver();
            Uri uri = ContactsContract.Contacts.CONTENT_URI;
            ContentObserver contentObserver = this.contactChangeObserver;
            if (contentObserver == null) {
                Intrinsics.throwNpe();
            }
            contentResolver.registerContentObserver(uri, true, contentObserver);
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void removeAlertBanner() {
        Timber.m37d("Removing the content of the banner", new Object[0]);
        LinearLayout linearLayout = this.alertBannerLocation;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("alertBannerLocation");
        }
        linearLayout.removeAllViews();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void resetCachedContacts() {
        CallerFactory instance = CallerFactory.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "CallerFactory.getInstance()");
        Collection<Caller> allCallersCloned = instance.getAllCallersCloned();
        if (allCallersCloned != null) {
            for (Caller caller : allCallersCloned) {
                caller.resetContactInfo();
            }
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void scheduleWelcomeSubscriberMessage() {
        CampaignWorkerManager.INSTANCE.scheduleWelcomeSubscriberMessage();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setAdapterFilter(@NotNull PSLogFilters filter) {
        Intrinsics.checkParameterIsNotNull(filter, "filter");
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.setListFilter(filter);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setExpandingAnimation() {
        ContextMenuRecyclerView contextMenuRecyclerView = this.contentRecyclerView;
        if (contextMenuRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentRecyclerView");
        }
        TransitionManager.beginDelayedTransition(contextMenuRecyclerView, AnimationUtil.getDetailsExpansionTransition());
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setFilterTitleText(@NotNull PSLogFilters filter) {
        int i;
        Intrinsics.checkParameterIsNotNull(filter, "filter");
        switch (filter) {
            case ALL_ACTIVITY:
                i = C1566R.string.home_filter_long_title_all;
                break;
            case BLOCK_ACTIVITY:
                i = C1566R.string.home_filter_long_title_block;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        TextView textView = this.filterTitleTv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filterTitleTv");
        }
        textView.setText(i);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setHasReachedHomeActivity() {
        synchronized (this) {
            PSActivity.hasReachedHomeActivity = true;
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setNewPosition(int i) {
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.setExpandedPosition(i);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setupFilterMenu() {
        HomeActivity homeActivity = this;
        ImageView imageView = this.filterButton;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filterButton");
        }
        this.filterMenu = new PopupMenu(homeActivity, imageView);
        PopupMenu popupMenu = this.filterMenu;
        if (popupMenu == null) {
            Intrinsics.throwNpe();
        }
        popupMenu.getMenuInflater().inflate(C1566R.C1572menu.home_filter_menu, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$setupFilterMenu$$inlined$let$lambda$1
            @Override // android.support.p004v7.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem item) {
                boolean onFilterChange;
                HomeActivity homeActivity2 = HomeActivity.this;
                Intrinsics.checkExpressionValueIsNotNull(item, "item");
                onFilterChange = homeActivity2.onFilterChange(item);
                return onFilterChange;
            }
        });
        ImageView imageView2 = this.filterButton;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filterButton");
        }
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.home.HomeActivity$setupFilterMenu$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PopupMenu popupMenu2;
                popupMenu2 = HomeActivity.this.filterMenu;
                if (popupMenu2 != null) {
                    popupMenu2.show();
                }
            }
        });
        setFilterTitleText(PSLogFilters.ALL_ACTIVITY);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setupRecycler() {
        this.contentProvider = getContentProvider();
        this.layoutManager = new LookaheadLinearLayoutManager(this, 0.5f);
        this.adapter = new HomeListAdapter(getRealm(), this.contentProvider, this, this.layoutManager);
        HomeListAdapter homeListAdapter = this.adapter;
        if (homeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        homeListAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.privacystar.core.ui.home.HomeActivity$setupRecycler$1
            @Override // android.support.p004v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                super.onChanged();
                HomeActivity.this.showHideNoCalls();
            }
        });
        ContextMenuRecyclerView contextMenuRecyclerView = this.contentRecyclerView;
        if (contextMenuRecyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentRecyclerView");
        }
        HomeListAdapter homeListAdapter2 = this.adapter;
        if (homeListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        contextMenuRecyclerView.setAdapter(homeListAdapter2);
        ContextMenuRecyclerView contextMenuRecyclerView2 = this.contentRecyclerView;
        if (contextMenuRecyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentRecyclerView");
        }
        contextMenuRecyclerView2.setLayoutManager(this.layoutManager);
        ContextMenuRecyclerView contextMenuRecyclerView3 = this.contentRecyclerView;
        if (contextMenuRecyclerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentRecyclerView");
        }
        contextMenuRecyclerView3.setItemAnimator(null);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    @SuppressLint({"CheckResult"})
    public void setupStartupMessageTimer() {
        Completable.timer(3L, TimeUnit.SECONDS, AndroidSchedulers.mainThread()).subscribe(new Action() { // from class: com.privacystar.core.ui.home.HomeActivity$setupStartupMessageTimer$1
            @Override // io.reactivex.functions.Action
            public final void run() {
                HomeActivity.this.showStartupMessaging();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void setupSuggestionAdapter() {
        RealmResults findAll = getRealm().where(LookupHistory.class).sort("added", Sort.DESCENDING).findAll();
        Intrinsics.checkExpressionValueIsNotNull(findAll, "realm.where(LookupHistor…ort.DESCENDING).findAll()");
        RealmResults<LookupHistory> realmResults = findAll;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(realmResults, 10));
        for (LookupHistory it : realmResults) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(it.getNumber());
        }
        this.suggestionArrayAdapter = new HomeActivityHistoryArrayAdapter(this, C1566R.C1571layout.home_activity_search_history_popup_item, CollectionsKt.toMutableList((Collection) arrayList));
        AutoCompleteTextView autoCompleteTextView = this.numberSearchField;
        if (autoCompleteTextView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("numberSearchField");
        }
        HomeActivityHistoryArrayAdapter homeActivityHistoryArrayAdapter = this.suggestionArrayAdapter;
        if (homeActivityHistoryArrayAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("suggestionArrayAdapter");
        }
        autoCompleteTextView.setAdapter(homeActivityHistoryArrayAdapter);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean shouldShowCallLogPermission() {
        return Build.VERSION.SDK_INT >= 23 ? shouldShowRequestPermissionRationale("android.permission.READ_CALL_LOG") : false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean shouldShowContactPermission() {
        return Build.VERSION.SDK_INT >= 23 ? shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS") : false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean shouldShowPhoneStatePermission() {
        return Build.VERSION.SDK_INT >= 23 ? shouldShowRequestPermissionRationale("android.permission.READ_PHONE_STATE") : false;
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showAlertBannerCallLogMissing(boolean z) {
        int i;
        Timber.m37d("Call Log permission is not allowed. Showing alert banner", new Object[0]);
        View.OnClickListener onClickListener = this.allowCallLogPermissionListener;
        if (z) {
            Timber.m37d("Call Log permission was dismissed with the never_ask_again option", new Object[0]);
            i = C1566R.string.home_alert_banner_go_to_settings_button;
            onClickListener = this.goToSettingsListener;
        } else {
            i = C1566R.string.home_alert_banner_permission_button;
        }
        clearAndAddViewToAlertBanner(buildAlertBanner(C1566R.string.home_alert_banner_call_log_title, i, onClickListener));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showAlertBannerContactMissing(boolean z) {
        int i;
        View.OnClickListener onClickListener = this.allowContactPermissionListener;
        if (z) {
            Timber.m37d("Contact permission was dismissed with the never_ask_again option", new Object[0]);
            i = C1566R.string.home_alert_banner_go_to_settings_button;
            onClickListener = this.goToSettingsListener;
        } else {
            i = C1566R.string.home_alert_banner_permission_button;
        }
        clearAndAddViewToAlertBanner(buildAlertBanner(C1566R.string.home_alert_banner_contacts_title, i, onClickListener));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showAlertBannerMultiplePermissionsMissing(boolean z) {
        int i;
        View.OnClickListener onClickListener = this.allowMultiplePermissionListener;
        if (z) {
            Timber.m37d("Multiple Permissions were dismissed with never ask again option", new Object[0]);
            i = C1566R.string.home_alert_banner_go_to_settings_button;
            onClickListener = this.goToSettingsListener;
        } else {
            i = C1566R.string.home_alert_banner_multiple_permissions_button;
        }
        clearAndAddViewToAlertBanner(buildAlertBanner(C1566R.string.home_alert_banner_multiple_permissions_title, i, onClickListener));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showAlertBannerNumberVerification() {
        clearAndAddViewToAlertBanner(buildAlertBanner(C1566R.string.home_alert_banner_account_inactive_title, C1566R.string.home_alert_banner_account_inactive_button, this.verifyNumberListener));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showAlertBannerPhoneStateMissing(boolean z) {
        int i;
        Timber.m37d("Phone State permission is not allowed. Showing alert banner", new Object[0]);
        View.OnClickListener onClickListener = this.allowPhoneStatePermissionListener;
        if (z) {
            Timber.m37d("Phone state permission was dismissed with the never_ask_again option", new Object[0]);
            i = C1566R.string.home_alert_banner_go_to_settings_button;
            onClickListener = this.goToSettingsListener;
        } else {
            i = C1566R.string.home_alert_banner_permission_button;
        }
        clearAndAddViewToAlertBanner(buildAlertBanner(C1566R.string.home_alert_banner_manage_phone_title, i, onClickListener));
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showCallLogPermissionNativeDialog() {
        this.allowCallLogPermissionListener.onClick(null);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showContextDialog(@NotNull CallDetails entry) {
        Intrinsics.checkParameterIsNotNull(entry, "entry");
        HomeContextDialogInterfaceImpl homeContextDialogInterfaceImpl = this.contextDialogInstance;
        if (homeContextDialogInterfaceImpl == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contextDialogInstance");
        }
        getSupportFragmentManager().beginTransaction().add(LogContextDialogFragment.newInstance(entry, homeContextDialogInterfaceImpl), "context_fragment").commitAllowingStateLoss();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showInvalidNumberMessage() {
        if (this.presenter.shouldShowErrorAsDialog()) {
            Timber.m37d("showing invalid number message as dialog", new Object[0]);
            if (this.alertView == null) {
                HomeActivity homeActivity = this;
                LayoutInflater from = LayoutInflater.from(homeActivity);
                LinearLayout linearLayout = this.invalidNumberContainer;
                if (linearLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("invalidNumberContainer");
                }
                View inflate = from.inflate(C1566R.C1571layout.search_error_card, (ViewGroup) linearLayout, false);
                if (inflate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.CardView");
                }
                this.alertView = (CardView) inflate;
                CardView cardView = this.alertView;
                if (cardView != null) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    int dpToPx = DensityUtil.dpToPx(homeActivity, 10);
                    layoutParams.setMargins(dpToPx, dpToPx, dpToPx, 0);
                    cardView.setLayoutParams(layoutParams);
                    LinearLayout linearLayout2 = this.invalidNumberContainer;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("invalidNumberContainer");
                    }
                    linearLayout2.addView(this.alertView);
                    return;
                }
                return;
            }
            return;
        }
        Timber.m37d("showing invalid number message as snackbar", new Object[0]);
        PSSnackBars pSSnackBars = PSSnackBars.INSTANCE;
        CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coordinatorLayout");
        }
        PSSnackBars.getTopToBottomNoActionSnack$default(pSSnackBars, coordinatorLayout, this, C1566R.string.search_error_details_ten_digits, true, false, 16, null).show();
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showOverlayPermissionDialog(boolean z) {
        if (z) {
            if (!PreferenceUtil.getIsCampaignFromNotification()) {
                AFOverlayPermissionDialogFragment.Companion companion = AFOverlayPermissionDialogFragment.Companion;
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
                companion.showWithCallbacks(supportFragmentManager, null, null);
                PreferenceUtil.putIsFirstHomeActivityVisitThisLaunch(false);
            }
        } else if (Build.VERSION.SDK_INT >= 23) {
            FragmentManager fm = getSupportFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(fm, "fm");
            OverlayPermissionDialog.INSTANCE.newOverlayPermissionsDialog(this, fm).show(fm, "PermissionDialog");
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showPaywall() {
        AFWelcomeDialogFragment.Companion companion = AFWelcomeDialogFragment.Companion;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
        companion.showWithCallback(supportFragmentManager, false, true, HomeActivity$showPaywall$1.INSTANCE);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void showUpgradeToPremium(boolean z) {
        TextView textView = this.upgradeToPremiumButton;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("upgradeToPremiumButton");
        }
        textView.setVisibility(z ? 0 : 8);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean unapproveEntry(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        return HomeActivityBlockingUtil.unapproveEntry(callDetails, getRealm());
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public boolean unblockEntry(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        return HomeActivityBlockingUtil.unblockEntry(callDetails, this);
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void updateContentProvider() {
        LogProvider logProvider = this.contentProvider;
        if (logProvider != null) {
            logProvider.update();
        }
    }

    @Override // com.privacystar.core.p011ui.home.HomeContract.View
    public void updateGPCache() {
        Timber.m28v("Refreshing GP purchase cache.", new Object[0]);
        BillingHelper.checkPurchases(this);
    }
}
