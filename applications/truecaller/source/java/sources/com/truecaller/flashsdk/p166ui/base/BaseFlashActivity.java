package com.truecaller.flashsdk.p166ui.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.MraidCloseCommand;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsRequest$Builder;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.location.SettingsClient;
import com.google.android.gms.location.zzae;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.assist.FetchAddressIntentService;
import com.truecaller.flashsdk.p166ui.UniformEmojiLayout;
import com.truecaller.flashsdk.p166ui.customviews.FlashContactHeaderView;
import com.truecaller.flashsdk.p166ui.onboarding.FlashOnBoardingActivity;
import e.f.a.r.k.f;
import e.m.a.f.q.a0;
import e.m.a.f.q.b0;
import e.m.a.f.q.o;
import e.m.a.j.a.c;
import e.m.a.j.a.d;
import java.lang.ref.WeakReference;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.AbstractC25407j;
import p1727n3.p1734b.p1743f.C25554w0;
import p1727n3.p1788g.C26177c;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1366a.p1370e.AbstractC21488b;
import p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e;
import p193e.p194a.p1365y.p1366a.p1370e.C21487a;
import p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d;
import p193e.p194a.p1365y.p1366a.p1379l.C21584c;
import p193e.p194a.p1365y.p1381b.AbstractC21629z;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1387e.AbstractC21728g;
import p193e.p194a.p1365y.p1387e.C21729h;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1365y.p1387e.C21737k;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¾\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b&\u0018��*\b\b��\u0010\u0002*\u00020\u0001*\u000e\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u00028��0\u0003*\u0010\b\u0002\u0010\u0007*\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00052\u00020\b2\u00020\u00012\b\u0012\u0004\u0012\u00020\n0\t2\u00020\u00062\u00020\u000b2\u00020\f2\u00020\r:\u0006\u0083\u0002û\u0001Â\u0001B\b¢\u0006\u0005\b\u0082\u0002\u0010\u0018J\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001d\u0010\u001cJ\u001f\u0010!\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001eH\u0017¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001eH\u0017¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0019H\u0017¢\u0006\u0004\b'\u0010\u001cJ\u001b\u0010+\u001a\u00020\u00102\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(¢\u0006\u0004\b+\u0010,J#\u00101\u001a\u00020\u00102\f\u0010.\u001a\b\u0012\u0004\u0012\u00020)0-2\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J\u001f\u00105\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017¢\u0006\u0004\b5\u0010\"J\u001f\u00106\u001a\u00020\u00102\u0006\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017¢\u0006\u0004\b6\u0010\"J\u001f\u00108\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u001e2\u0006\u00104\u001a\u00020\u001eH\u0017¢\u0006\u0004\b8\u0010\"J\u000f\u0010:\u001a\u000209H&¢\u0006\u0004\b:\u0010;J\u0017\u0010?\u001a\u00020>2\u0006\u0010=\u001a\u00020<H\u0017¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0010¢\u0006\u0004\bA\u0010\u0018J\r\u0010B\u001a\u00020\u0010¢\u0006\u0004\bB\u0010\u0018J\r\u0010C\u001a\u00020\u0010¢\u0006\u0004\bC\u0010\u0018J\r\u0010D\u001a\u00020\u0010¢\u0006\u0004\bD\u0010\u0018J\r\u0010E\u001a\u00020\u0010¢\u0006\u0004\bE\u0010\u0018J\u0015\u0010G\u001a\u00020\u00102\u0006\u0010F\u001a\u00020>¢\u0006\u0004\bG\u0010HJ\r\u0010I\u001a\u00020\u0010¢\u0006\u0004\bI\u0010\u0018J\u0017\u0010K\u001a\u00020\u00102\u0006\u0010J\u001a\u00020>H\u0016¢\u0006\u0004\bK\u0010HJ\u0017\u0010M\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016¢\u0006\u0004\bM\u0010\u001cJ-\u0010Q\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00192\f\u0010N\u001a\b\u0012\u0004\u0012\u00020\u001e0(2\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0010H\u0016¢\u0006\u0004\bS\u0010\u0018J\u001d\u0010V\u001a\u00020\u00102\f\u0010U\u001a\b\u0012\u0004\u0012\u00020\n0TH\u0016¢\u0006\u0004\bV\u0010WJ\u0017\u0010Z\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bZ\u0010[J)\u0010^\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u00192\u0006\u0010\\\u001a\u00020\u00192\b\u0010]\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u00020\u0010H\u0017¢\u0006\u0004\b`\u0010\u0018J\u0017\u0010c\u001a\u00020\u00102\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\u0010H\u0017¢\u0006\u0004\be\u0010\u0018J\u0017\u0010f\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u001eH\u0016¢\u0006\u0004\bf\u0010%J\u000f\u0010g\u001a\u00020\u0010H\u0016¢\u0006\u0004\bg\u0010\u0018J'\u0010m\u001a\u00020\u00102\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020j2\u0006\u0010l\u001a\u00020>H\u0016¢\u0006\u0004\bm\u0010nJ\u001f\u0010q\u001a\u00020\u00102\u0006\u0010i\u001a\u00020h2\u0006\u0010p\u001a\u00020oH\u0016¢\u0006\u0004\bq\u0010rJ\u0017\u0010s\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u001eH\u0016¢\u0006\u0004\bs\u0010%J\u0017\u0010t\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016¢\u0006\u0004\bt\u0010\u001cJ\u0017\u0010u\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0019H\u0016¢\u0006\u0004\bu\u0010\u001cJ\u001f\u0010x\u001a\u00020\u00102\u0006\u0010w\u001a\u00020v2\u0006\u0010L\u001a\u00020\u0019H\u0016¢\u0006\u0004\bx\u0010yJ\u0015\u0010z\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u001e¢\u0006\u0004\bz\u0010%J\r\u0010{\u001a\u00020\u0010¢\u0006\u0004\b{\u0010\u0018J\r\u0010|\u001a\u00020\u0013¢\u0006\u0004\b|\u0010}J\u0018\u0010\u0080\u0001\u001a\u00020>2\u0006\u0010\u007f\u001a\u00020~¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\u0010¢\u0006\u0005\b\u0082\u0001\u0010\u0018J\u001a\u0010\u0084\u0001\u001a\u00020\u00102\u0007\u0010\u0083\u0001\u001a\u00020\u0019H\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u001cJ\u0011\u0010\u0085\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u0018J\u0011\u0010\u0086\u0001\u001a\u00020\u0010H\u0017¢\u0006\u0005\b\u0086\u0001\u0010\u0018J\u0011\u0010\u0087\u0001\u001a\u00020\u0010H\u0014¢\u0006\u0005\b\u0087\u0001\u0010\u0018R,\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0089\u0001\u0010\u008a\u0001\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R*\u0010\u0097\u0001\u001a\u00030\u0090\u00018\u0004@\u0004X\u0084.¢\u0006\u0018\n\u0006\b\u0091\u0001\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R,\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0099\u0001\u0010\u009a\u0001\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R,\u0010§\u0001\u001a\u0005\u0018\u00010 \u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b¡\u0001\u0010¢\u0001\u001a\u0006\b£\u0001\u0010¤\u0001\"\u0006\b¥\u0001\u0010¦\u0001R(\u0010\u00ad\u0001\u001a\u0002098\u0004@\u0004X\u0084.¢\u0006\u0017\n\u0006\b¨\u0001\u0010©\u0001\u001a\u0005\bª\u0001\u0010;\"\u0006\b«\u0001\u0010¬\u0001R,\u0010µ\u0001\u001a\u0005\u0018\u00010®\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R'\u0010¸\u0001\u001a\u0002098\u0004@\u0004X\u0084.¢\u0006\u0016\n\u0005\bz\u0010©\u0001\u001a\u0005\b¶\u0001\u0010;\"\u0006\b·\u0001\u0010¬\u0001R,\u0010À\u0001\u001a\u0005\u0018\u00010¹\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\bº\u0001\u0010»\u0001\u001a\u0006\b¼\u0001\u0010½\u0001\"\u0006\b¾\u0001\u0010¿\u0001R*\u0010È\u0001\u001a\u00030Á\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R*\u0010Ì\u0001\u001a\u00030¹\u00018\u0004@\u0004X\u0084.¢\u0006\u0018\n\u0006\bÉ\u0001\u0010»\u0001\u001a\u0006\bÊ\u0001\u0010½\u0001\"\u0006\bË\u0001\u0010¿\u0001R\u001b\u0010Ï\u0001\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010Î\u0001R\u001a\u0010Ó\u0001\u001a\u00030Ð\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R#\u0010Ù\u0001\u001a\u00030Ô\u00018D@\u0004X\u0084\u0084\u0002¢\u0006\u0010\n\u0006\bÕ\u0001\u0010Ö\u0001\u001a\u0006\b×\u0001\u0010Ø\u0001R\"\u0010ß\u0001\u001a\u00030Ú\u00018\u0004@\u0004X\u0084\u0004¢\u0006\u0010\n\u0006\bÛ\u0001\u0010Ü\u0001\u001a\u0006\bÝ\u0001\u0010Þ\u0001R\u001c\u0010ã\u0001\u001a\u0005\u0018\u00010à\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010â\u0001R)\u0010ê\u0001\u001a\u00028\u00028\u0004@\u0004X\u0084.¢\u0006\u0018\n\u0006\bä\u0001\u0010å\u0001\u001a\u0006\bæ\u0001\u0010ç\u0001\"\u0006\bè\u0001\u0010é\u0001R*\u0010ò\u0001\u001a\u00030ë\u00018\u0004@\u0004X\u0084.¢\u0006\u0018\n\u0006\bì\u0001\u0010í\u0001\u001a\u0006\bî\u0001\u0010ï\u0001\"\u0006\bð\u0001\u0010ñ\u0001R\u001a\u0010ö\u0001\u001a\u00030ó\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bô\u0001\u0010õ\u0001R\u001a\u0010ú\u0001\u001a\u00030÷\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R)\u0010\u0081\u0002\u001a\u00028\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bû\u0001\u0010ü\u0001\u001a\u0006\bý\u0001\u0010þ\u0001\"\u0006\bÿ\u0001\u0010\u0080\u0002¨\u0006\u0084\u0002"}, d2 = {"Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;", "Le/a/y/a/e/e;", "PresenterView", "Le/a/y/a/e/b;", "Presenter", "Le/a/y/a/g/d;", "Le/a/y/a/g/d$a;", "FooterView", "Ln3/b/a/h;", "Lcom/google/android/gms/tasks/OnCompleteListener;", "Lcom/google/android/gms/location/LocationSettingsResponse;", "Le/a/y/e/h$c;", "Le/m/a/j/a/c$a;", "Le/a/y/e/k$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "g0", "()V", "", RemoteMessageConst.Notification.COLOR, "J4", "(I)V", "j8", "", "firstLine", "boldText", "i5", "(Ljava/lang/String;Ljava/lang/String;)V", "contactImageUrl", "S4", "(Ljava/lang/String;)V", "drawableRes", "f5", "", "Le/a/y/e/i;", "emojisList", "o5", "([Lcom/truecaller/flashsdk/emojicons/Emoticon;)V", "Le/a/y/b/z;", "recentEmojiManager", "", RemoteMessageConst.f7718TO, "R4", "(Le/a/y/b/z;J)V", "imageUrl", "message", "O4", "n5", "videoUrl", "d5", "Landroid/view/View;", "ua", "()Landroid/view/View;", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "N8", "U4", "Z4", "r8", "H4", "showEmojis", "P4", "(Z)V", "e9", "showLocationView", "O0", "requestCode", "D7", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "h8", "Lcom/google/android/gms/tasks/Task;", "task", "onComplete", "(Lcom/google/android/gms/tasks/Task;)V", "Lcom/google/android/gms/common/api/ResolvableApiException;", "exception", "h5", "(Lcom/google/android/gms/common/api/ResolvableApiException;)V", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Q4", "Landroid/location/Location;", "lastLocation", "I4", "(Landroid/location/Location;)V", "L4", "K7", "V9", "Le/m/a/j/a/c$c;", "provider", "Le/m/a/j/a/c;", "youTubePlayer", "wasRestored", "k1", "(Le/m/a/j/a/c$c;Le/m/a/j/a/c;Z)V", "Le/m/a/j/a/b;", "youTubeInitializationResult", "G1", "(Le/m/a/j/a/c$c;Le/m/a/j/a/b;)V", "K4", "k5", "m5", "Landroid/net/Uri;", "fileUri", "Q5", "(Landroid/net/Uri;I)V", "l", MraidCloseCommand.NAME, "H9", "()Landroid/content/Intent;", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "S0", "keyBoardHeight", "w5", "M7", "b5", "onDestroy", "Landroid/graphics/Bitmap;", "r", "Landroid/graphics/Bitmap;", "getBitmapImageContent", "()Landroid/graphics/Bitmap;", "setBitmapImageContent", "(Landroid/graphics/Bitmap;)V", "bitmapImageContent", "Landroidx/appcompat/widget/Toolbar;", "q", "Landroidx/appcompat/widget/Toolbar;", "va", "()Landroidx/appcompat/widget/Toolbar;", "setToolbar", "(Landroidx/appcompat/widget/Toolbar;)V", "toolbar", "Lcom/google/android/gms/maps/GoogleMap;", "s", "Lcom/google/android/gms/maps/GoogleMap;", "getGoogleMap", "()Lcom/google/android/gms/maps/GoogleMap;", "setGoogleMap", "(Lcom/google/android/gms/maps/GoogleMap;)V", "googleMap", "Le/a/y/e/g;", "k", "Le/a/y/e/g;", "getEmojiKeyboard", "()Le/a/y/e/g;", "setEmojiKeyboard", "(Le/a/y/e/g;)V", "emojiKeyboard", "h", "Landroid/view/View;", "sa", "setImageContainer", "(Landroid/view/View;)V", "imageContainer", "Lcom/google/android/gms/maps/MapView;", "n", "Lcom/google/android/gms/maps/MapView;", "getMapViewV2", "()Lcom/google/android/gms/maps/MapView;", "setMapViewV2", "(Lcom/google/android/gms/maps/MapView;)V", "mapViewV2", "getVideoContainer", "setVideoContainer", "videoContainer", "Landroid/widget/ImageView;", "j", "Landroid/widget/ImageView;", "getImageBackground", "()Landroid/widget/ImageView;", "setImageBackground", "(Landroid/widget/ImageView;)V", "imageBackground", "Le/a/b0/o/a;", C22021b.f61237c, "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "i", "getImageContent", "setImageContent", "imageContent", "d", "Le/m/a/j/a/c;", "player", "Landroid/os/ResultReceiver;", "o", "Landroid/os/ResultReceiver;", "addressResultReceiver", "Le/a/z3/e;", AbstractC2405c.f7629a, "Ls1/g;", "ra", "()Le/a/z3/e;", "glide", "Landroid/os/Handler;", "e", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler", "Landroid/widget/ProgressBar;", "m", "Landroid/widget/ProgressBar;", "imageProgressBar", "f", "Le/a/y/a/g/d;", "qa", "()Le/a/y/a/g/d;", "setFooterView", "(Le/a/y/a/g/d;)V", "footerView", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;", "g", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;", "pa", "()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;", "setContactHeaderView", "(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;)V", "contactHeaderView", "Lcom/google/android/gms/location/FusedLocationProviderClient;", "p", "Lcom/google/android/gms/location/FusedLocationProviderClient;", "fusedLocationClient", "Le/a/y/c/b;", "t", "Le/a/y/c/b;", "flashManager", "a", "Le/a/y/a/e/b;", "ta", "()Le/a/y/a/e/b;", "setPresenter", "(Le/a/y/a/e/b;)V", "presenter", "<init>", "AddressResultReceiver", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity.class */
public abstract class BaseFlashActivity<PresenterView extends AbstractC21492e, Presenter extends AbstractC21488b<PresenterView>, FooterView extends AbstractView$OnClickListenerC21506d<? extends AbstractView$OnClickListenerC21506d.AbstractC21507a>> extends h implements AbstractC21492e, OnCompleteListener<LocationSettingsResponse>, AbstractView$OnClickListenerC21506d.AbstractC21507a, C21729h.AbstractC21732c, c.a, C21737k.AbstractC21738a {
    @Inject

    /* renamed from: a */
    public Presenter f12051a;
    @Inject

    /* renamed from: b */
    public AbstractC8541a f12052b;

    /* renamed from: d */
    public c f12054d;

    /* renamed from: f */
    public FooterView f12056f;

    /* renamed from: g */
    public FlashContactHeaderView f12057g;

    /* renamed from: h */
    public View f12058h;

    /* renamed from: i */
    public ImageView f12059i;

    /* renamed from: j */
    public ImageView f12060j;

    /* renamed from: k */
    public AbstractC21728g f12061k;

    /* renamed from: l */
    public View f12062l;

    /* renamed from: m */
    public ProgressBar f12063m;

    /* renamed from: n */
    public MapView f12064n;

    /* renamed from: o */
    public ResultReceiver f12065o;

    /* renamed from: p */
    public FusedLocationProviderClient f12066p;

    /* renamed from: q */
    public Toolbar f12067q;

    /* renamed from: r */
    public Bitmap f12068r;

    /* renamed from: s */
    public GoogleMap f12069s;

    /* renamed from: c */
    public final g f12053c = C25225a.m3978P1(new C3938e());

    /* renamed from: e */
    public final Handler f12055e = new Handler();

    /* renamed from: t */
    public final AbstractC21631b f12070t = C21632c.m9330b();

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$AddressResultReceiver */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver.class */
    public final class AddressResultReceiver extends ResultReceiver {

        /* renamed from: a */
        public final /* synthetic */ BaseFlashActivity f12071a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AddressResultReceiver(BaseFlashActivity baseFlashActivity, Handler handler) {
            super(handler);
            l.e(handler, "handler");
            this.f12071a = baseFlashActivity;
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            l.e(bundle, "resultData");
            this.f12071a.m35365ta().mo9658V0(bundle);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$a.class */
    public class C3934a extends f<Bitmap> {

        /* renamed from: e */
        public final ImageView f12072e;

        /* renamed from: f */
        public final /* synthetic */ BaseFlashActivity f12073f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3934a(BaseFlashActivity baseFlashActivity, ImageView imageView) {
            super(imageView);
            l.e(imageView, "imageView");
            this.f12073f = baseFlashActivity;
            this.f12072e = imageView;
        }

        /* renamed from: m */
        public void mo35362k(Bitmap bitmap) {
            if (bitmap != null) {
                if (bitmap.getWidth() > bitmap.getHeight()) {
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams.gravity = 17;
                    layoutParams.setMargins(0, 0, 0, 100);
                    this.f12072e.setLayoutParams(layoutParams);
                    ImageView imageView = this.f12073f.f12060j;
                    if (imageView != null) {
                        l.e(imageView, "$this$setBlurBitmapBackground");
                        l.e(bitmap, "image");
                        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * 0.05f), Math.round(bitmap.getHeight() * 0.05f), false);
                        Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
                        RenderScript create = RenderScript.create(imageView.getContext());
                        l.d(create, "RenderScript.create(context)");
                        ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
                        Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
                        Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
                        create2.setRadius(7.5f);
                        create2.setInput(createFromBitmap);
                        create2.forEach(createFromBitmap2);
                        createFromBitmap2.copyTo(createBitmap);
                        imageView.setBackground(new BitmapDrawable(imageView.getResources(), createBitmap));
                    }
                    this.f12072e.setScaleType(ImageView.ScaleType.FIT_XY);
                } else {
                    this.f12072e.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams2.gravity = 17;
                    layoutParams2.setMargins(0, 0, 0, 0);
                    this.f12072e.setLayoutParams(layoutParams2);
                }
                this.f12072e.setImageBitmap(bitmap);
                this.f12073f.f12068r = bitmap;
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$b.class */
    public final class C3935b extends BaseFlashActivity<PresenterView, Presenter, FooterView>.C3934a {

        /* renamed from: g */
        public final /* synthetic */ BaseFlashActivity f12074g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3935b(BaseFlashActivity baseFlashActivity, ImageView imageView) {
            super(baseFlashActivity, imageView);
            l.e(imageView, "imageView");
            this.f12074g = baseFlashActivity;
        }

        /* renamed from: g */
        public void m35363g(Drawable drawable) {
            l((Object) null);
            ((ImageView) ((e.f.a.r.k.l) this).a).setImageDrawable(drawable);
            ProgressBar progressBar = this.f12074g.f12063m;
            if (progressBar != null) {
                progressBar.setVisibility(0);
            }
        }

        @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity.C3934a
        /* renamed from: k */
        public void mo35362k(Object obj) {
            super.mo35362k((Bitmap) obj);
            ProgressBar progressBar = this.f12074g.f12063m;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }

        @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity.C3934a
        /* renamed from: m */
        public void mo35361m(Bitmap bitmap) {
            super.mo35362k(bitmap);
            ProgressBar progressBar = this.f12074g.f12063m;
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$c.class */
    public static final /* synthetic */ class C3936c extends j implements s1.z.b.l<Location, s> {
        public C3936c(AbstractC21488b abstractC21488b) {
            super(1, abstractC21488b, AbstractC21488b.class, "onLastLocationObtained", "onLastLocationObtained(Landroid/location/Location;)V", 0);
        }

        /* renamed from: d */
        public Object m35360d(Object obj) {
            ((AbstractC21488b) ((b) this).b).mo9655Z0((Location) obj);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$d */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$d.class */
    public static final class C3937d extends LocationCallback {
        public C3937d() {
            BaseFlashActivity.this = r4;
        }

        @Override // com.google.android.gms.location.LocationCallback
        public void onLocationAvailability(LocationAvailability locationAvailability) {
            if (locationAvailability != null) {
                if (!(!locationAvailability.o2())) {
                    locationAvailability = null;
                }
                if (locationAvailability == null) {
                    return;
                }
                BaseFlashActivity.this.m35365ta().mo9657X0(null);
            }
        }

        @Override // com.google.android.gms.location.LocationCallback
        public void onLocationResult(LocationResult locationResult) {
            BaseFlashActivity.this.m35365ta().mo9657X0(locationResult != null ? locationResult.o2() : null);
            FusedLocationProviderClient fusedLocationProviderClient = BaseFlashActivity.this.f12066p;
            if (fusedLocationProviderClient != null) {
                fusedLocationProviderClient.c(this);
            } else {
                l.l("fusedLocationClient");
                throw null;
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.base.BaseFlashActivity$e */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/base/BaseFlashActivity$e.class */
    public static final class C3938e extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3938e() {
            super(0);
            BaseFlashActivity.this = r4;
        }

        public Object invoke() {
            C21853e m15655N1 = C17891a1.C17902k.m15655N1(BaseFlashActivity.this);
            l.d(m15655N1, "GlideApp.with(this)");
            return m15655N1;
        }
    }

    public BaseFlashActivity() {
        C26177c<WeakReference<AbstractC25407j>> c26177c = AbstractC25407j.f70858a;
        C25554w0.f71526a = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: D7 */
    public void mo9641D7(int i) {
        C26413b.m1895g(this, new String[]{"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: G1 */
    public void m35372G1(c.c cVar, e.m.a.j.a.b bVar) {
        l.e(cVar, "provider");
        l.e(bVar, "youTubeInitializationResult");
        Toast.makeText((Context) this, (CharSequence) getString(C3909R.string.error_youtube_player), 0).show();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: H4 */
    public final void mo9639H4() {
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: H9 */
    public final Intent mo9638H9() {
        Intent intent = getIntent();
        l.d(intent, "intent");
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: I4 */
    public void mo9637I4(Location location) {
        l.e(location, "lastLocation");
        ResultReceiver resultReceiver = this.f12065o;
        if (resultReceiver == null) {
            l.l("addressResultReceiver");
            throw null;
        }
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(resultReceiver, "resultReceiver");
        l.e(location, "location");
        Intent intent = new Intent((Context) this, (Class<?>) FetchAddressIntentService.class);
        intent.putExtra("com.truecaller.flashsdk.assist.RECEIVER", resultReceiver);
        intent.putExtra("com.truecaller.flashsdk.assist.LOCATION_DATA_EXTRA", location);
        startService(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: J4 */
    public void mo9636J4(int i) {
        Toolbar toolbar = this.f12067q;
        Drawable drawable = null;
        if (toolbar == null) {
            l.l("toolbar");
            throw null;
        }
        setSupportActionBar(toolbar);
        int i2 = C3909R.C3910drawable.ic_close_flash;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, i2);
        if (m1789b != null) {
            drawable = m1789b.mutate();
        }
        if (drawable != null) {
            drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3547t(drawable);
        }
        AbstractC25393a supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 == null) {
            return;
        }
        supportActionBar2.mo3553n(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: K4 */
    public void mo9634K4(String str) {
        l.e(str, "videoUrl");
        e.m.a.j.a.h.l lVar = this.f12054d;
        if (lVar != null) {
            try {
                lVar.b.t1(str, 0);
            } catch (RemoteException e) {
                throw new e.m.a.j.a.h.j(e);
            }
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: K7 */
    public void mo9633K7(String str) {
        l.e(str, "message");
        mo9602l(str);
        FooterView footerview = this.f12056f;
        if (footerview != null) {
            footerview.m9575o1(false);
        } else {
            l.l("footerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: L4 */
    public void mo9632L4() {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.q2(100);
        locationRequest.p2(1);
        LocationRequest.r2(5000L);
        locationRequest.b = 5000L;
        if (!locationRequest.d) {
            locationRequest.c = (long) (5000 / 6.0d);
        }
        locationRequest.o2((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        FusedLocationProviderClient fusedLocationProviderClient = this.f12066p;
        if (fusedLocationProviderClient != null) {
            fusedLocationProviderClient.d(locationRequest, new C3937d(), Looper.getMainLooper());
        } else {
            l.l("fusedLocationClient");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1387e.C21729h.AbstractC21732c
    /* renamed from: M7 */
    public void mo9146M7() {
        Boolean mo9147h;
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g == null || (mo9147h = abstractC21728g.mo9147h()) == null) {
            return;
        }
        boolean booleanValue = mo9147h.booleanValue();
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9417i1(booleanValue);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: N8 */
    public final void mo9629N8() {
        String string = getString(C3909R.string.tip_use_tutorial);
        l.d(string, "getString(R.string.tip_use_tutorial)");
        int i = C3909R.C3910drawable.flash_ic_tooltip_top_right;
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(string, "toolTipText");
        View inflate = LayoutInflater.from(this).inflate(C3909R.layout.flash_v2_pop_up, (ViewGroup) null);
        View findViewById = inflate.findViewById(C3909R.C3911id.text);
        l.d(findViewById, "view.findViewById<TextView>(R.id.text)");
        ((TextView) findViewById).setText(string);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, false);
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        popupWindow.setAnimationStyle(16973826);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(new C21584c.View$OnTouchListenerC21585a(popupWindow));
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, i);
        if (m1789b != null) {
            m1789b.setColorFilter(C19291g.m13538k0(this, C3909R.attr.theme_contrast_bg), PorterDuff.Mode.SRC_IN);
        }
        l.d(inflate, ViewAction.VIEW);
        inflate.setBackground(m1789b);
        Toolbar toolbar = this.f12067q;
        if (toolbar == null) {
            l.l("toolbar");
            throw null;
        }
        l.e(toolbar, ViewAction.VIEW);
        Context context = toolbar.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        if (((Activity) context).isFinishing() || toolbar.getApplicationWindowToken() == null) {
            return;
        }
        popupWindow.getContentView().measure(0, 0);
        int measuredWidth = toolbar.getMeasuredWidth();
        View contentView = popupWindow.getContentView();
        l.d(contentView, "popupWindow.contentView");
        popupWindow.showAsDropDown(toolbar, measuredWidth - contentView.getMeasuredWidth(), (-toolbar.getMeasuredHeight()) / 4);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a
    /* renamed from: O0 */
    public void mo9574O0(boolean z) {
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9660O0(z);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: O4 */
    public void mo9628O4(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        View view = this.f12058h;
        if (view == null) {
            l.l("imageContainer");
            throw null;
        }
        view.setVisibility(0);
        View findViewById = findViewById(C3909R.C3911id.imageContent);
        l.d(findViewById, "findViewById(R.id.imageContent)");
        this.f12059i = (ImageView) findViewById;
        C21852d<Bitmap> mo8415f = m35367ra().mo8415f();
        mo8415f.f61767J = str;
        mo8415f.f61771N = true;
        int i = C3909R.C3910drawable.ic_map_placeholder;
        C21852d<Bitmap> mo8097k = mo8415f.mo8087u(i).mo8097k(i);
        ImageView imageView = this.f12059i;
        if (imageView != null) {
            mo8097k.m8429M(new C3935b(this, imageView));
        } else {
            l.l("imageContent");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: P4 */
    public final void mo9627P4(boolean z) {
        FooterView footerview = this.f12056f;
        if (footerview == null) {
            l.l("footerView");
            throw null;
        }
        ImageView imageView = footerview.f60050t;
        if (imageView != null) {
            imageView.setImageResource(z ? C3909R.C3910drawable.more_emojis : C3909R.C3910drawable.ic_keyboard);
        } else {
            l.l("moreEmojis");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: Q4 */
    public void mo9626Q4() {
        FusedLocationProviderClient fusedLocationProviderClient = this.f12066p;
        if (fusedLocationProviderClient == null) {
            l.l("fusedLocationClient");
            throw null;
        }
        Task b = fusedLocationProviderClient.b();
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            b.m38531g(this, new C21487a(new C3936c(presenter)));
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: Q5 */
    public void mo9625Q5(Uri uri, int i) {
        l.e(uri, "fileUri");
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", uri);
        startActivityForResult(intent, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: R4 */
    public final void mo9624R4(AbstractC21629z<C21733i> abstractC21629z, long j) {
        l.e(abstractC21629z, "recentEmojiManager");
        final C21729h c21729h = new C21729h(this, mo35330ua(), this, abstractC21629z, j);
        if (c21729h.f60539l) {
            c21729h.f60528a.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: e.a.y.e.b
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    C21729h.AbstractC21732c abstractC21732c;
                    C21729h c21729h2 = C21729h.this;
                    Objects.requireNonNull(c21729h2);
                    Rect rect = new Rect();
                    c21729h2.f60528a.getWindowVisibleDisplayFrame(rect);
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    ((WindowManager) c21729h2.f60529b.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                    int i = displayMetrics.heightPixels;
                    Rect rect2 = new Rect();
                    ((Activity) c21729h2.f60529b).getWindow().getDecorView().getWindowVisibleDisplayFrame(rect2);
                    int i2 = (i - rect2.top) - (rect.bottom - rect.top);
                    if (i2 <= 100) {
                        if (!c21729h2.f60536i) {
                            return;
                        }
                        c21729h2.f60536i = false;
                        C21729h.AbstractC21732c abstractC21732c2 = c21729h2.f60532e;
                        if (abstractC21732c2 == null) {
                            return;
                        }
                        abstractC21732c2.mo9146M7();
                        return;
                    }
                    c21729h2.f60533f = i2;
                    c21729h2.setWidth(-1);
                    c21729h2.setHeight(i2);
                    if (!c21729h2.f60536i && (abstractC21732c = c21729h2.f60532e) != null) {
                        abstractC21732c.mo9145w5(c21729h2.f60533f);
                    }
                    c21729h2.f60536i = true;
                    if (!c21729h2.f60537j) {
                        return;
                    }
                    c21729h2.mo9149e();
                    c21729h2.f60537j = false;
                }
            });
        } else {
            int dimension = (int) c21729h.f60529b.getResources().getDimension(C3909R.dimen.keyboard_height);
            c21729h.f60533f = dimension;
            c21729h.setWidth(-1);
            c21729h.setHeight(dimension);
        }
        c21729h.f60532e = this;
        this.f12061k = c21729h;
    }

    /* renamed from: S0 */
    public final void m35371S0() {
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9415l1();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: S4 */
    public void mo9622S4(String str) {
        l.e(str, "contactImageUrl");
        FlashContactHeaderView flashContactHeaderView = this.f12057g;
        if (flashContactHeaderView == null) {
            l.l("contactHeaderView");
            throw null;
        }
        C21853e m35367ra = m35367ra();
        Objects.requireNonNull(flashContactHeaderView);
        l.e(str, "contactImageUrl");
        l.e(m35367ra, "glideRequests");
        Context context = flashContactHeaderView.getContext();
        if (context == null) {
            return;
        }
        int m13645A = C19291g.m13645A(context, 32);
        C22234h mo8414k = m35367ra.mo8414k();
        mo8414k.mo8420V(str);
        ((C22234h) C17891a1.C17902k.m15597l((C21852d) mo8414k, Uri.parse(str))).mo8102f().mo8087u(C3909R.C3910drawable.ic_empty_avatar).mo8088t(m13645A, m13645A).m8427O(flashContactHeaderView.f12109U);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: U4 */
    public final void mo9619U4() {
        FooterView footerview = this.f12056f;
        if (footerview == null) {
            l.l("footerView");
            throw null;
        }
        Context context = footerview.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        Context context2 = footerview.getContext();
        int i = C3909R.string.tip_use_emoji;
        char[] chars = Character.toChars(128077);
        l.d(chars, "Character.toChars(CODE_POINT_THUMBS_UP)");
        String string = context2.getString(i, new String(chars));
        l.d(string, "context.getString(R.stri…s(CODE_POINT_THUMBS_UP)))");
        C21584c c21584c = new C21584c(context, string, C3909R.C3910drawable.flash_ic_tooltip_center_bottom);
        footerview.f60049A = c21584c;
        UniformEmojiLayout uniformEmojiLayout = footerview.f60055y;
        if (uniformEmojiLayout != null) {
            c21584c.m9404a(uniformEmojiLayout, 0);
        } else {
            l.l("recentEmojiLayout");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: V9 */
    public void mo9617V9() {
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: Z4 */
    public final void mo9616Z4() {
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.mo9149e();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: b5 */
    public void mo9615b5() {
        View view = this.f12062l;
        if (view == null) {
            l.l("videoContainer");
            throw null;
        }
        view.setVisibility(8);
        int i = C3909R.C3911id.waiting_container;
        View findViewById = findViewById(i);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment m42943J = supportFragmentManager.m42943J(i);
        C26907a c26907a = new C26907a(supportFragmentManager);
        if (m42943J == null) {
            return;
        }
        c26907a.mo1121l(m42943J);
        c26907a.mo1125h();
        l.d(findViewById, ViewAction.VIEW);
        findViewById.setVisibility(8);
        ImageView imageView = this.f12059i;
        if (imageView == null) {
            l.l("imageContent");
            throw null;
        }
        imageView.setImageDrawable(null);
        ImageView imageView2 = this.f12060j;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
        }
        View view2 = this.f12058h;
        if (view2 == null) {
            l.l("imageContainer");
            throw null;
        }
        view2.setVisibility(8);
        FooterView footerview = this.f12056f;
        if (footerview == null) {
            l.l("footerView");
            throw null;
        }
        footerview.m9575o1(false);
        FooterView footerview2 = this.f12056f;
        if (footerview2 == null) {
            l.l("footerView");
            throw null;
        }
        footerview2.setVisibility(0);
        FooterView footerview3 = this.f12056f;
        if (footerview3 != null) {
            footerview3.m9584g1();
        } else {
            l.l("footerView");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    public final void close() {
        finish();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: d5 */
    public void mo9612d5(String str, String str2) {
        l.e(str, "videoUrl");
        l.e(str2, "message");
        try {
            View view = this.f12062l;
            if (view == null) {
                l.l("videoContainer");
                throw null;
            }
            view.setVisibility(0);
            Presenter presenter = this.f12051a;
            if (presenter == null) {
                l.l("presenter");
                throw null;
            }
            presenter.mo9652c1(str);
            Fragment dVar = new d();
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1131b(C3909R.C3911id.youtubeFragment, dVar);
            c26907a.mo1125h();
            C26232y.m2346i("AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw", "Developer key cannot be null or empty");
            ((d) dVar).d = "AIzaSyCd6tpLEKJi-5w6SDpTpzj6UTZpS47j7fw";
            ((d) dVar).e = this;
            dVar.OA();
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: e9 */
    public final void mo9611e9() {
        l.e(this, AnalyticsConstants.CONTEXT);
        startActivity(new Intent((Context) this, (Class<?>) FlashOnBoardingActivity.class));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: f5 */
    public void mo9610f5(int i) {
        FlashContactHeaderView flashContactHeaderView = this.f12057g;
        if (flashContactHeaderView != null) {
            flashContactHeaderView.f12109U.setImageResource(i);
        } else {
            l.l("contactHeaderView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: g0 */
    public void mo9609g0() {
        View findViewById = findViewById(C3909R.C3911id.flash_contact_header_view);
        l.d(findViewById, "findViewById(R.id.flash_contact_header_view)");
        this.f12057g = (FlashContactHeaderView) findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.footerView);
        l.d(findViewById2, "findViewById(R.id.footerView)");
        this.f12056f = (FooterView) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.toolbarMain);
        l.d(findViewById3, "findViewById(R.id.toolbarMain)");
        this.f12067q = (Toolbar) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.imageContent);
        l.d(findViewById4, "findViewById(R.id.imageContent)");
        this.f12059i = (ImageView) findViewById4;
        View findViewById5 = findViewById(C3909R.C3911id.flashImageContainer);
        l.d(findViewById5, "findViewById(R.id.flashImageContainer)");
        this.f12058h = findViewById5;
        View findViewById6 = findViewById(C3909R.C3911id.flashYoutubeContainer);
        l.d(findViewById6, "findViewById(R.id.flashYoutubeContainer)");
        this.f12062l = findViewById6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: h5 */
    public void mo9608h5(ResolvableApiException resolvableApiException) {
        l.e(resolvableApiException, "exception");
        try {
            resolvableApiException.f5693a.m39041r2(this, 1000);
        } catch (IntentSender.SendIntentException e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: h8 */
    public void mo9607h8() {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.q2(100);
        LocationSettingsRequest$Builder locationSettingsRequest$Builder = new LocationSettingsRequest$Builder();
        locationSettingsRequest$Builder.f6233a.add(locationRequest);
        locationSettingsRequest$Builder.f6234b = true;
        Api.ClientKey<zzaz> clientKey = LocationServices.f6229a;
        SettingsClient settingsClient = new SettingsClient(this);
        b0 m38908a = PendingResultUtil.m38908a(LocationServices.f6232d.checkLocationSettings(settingsClient.asGoogleApiClient(), new LocationSettingsRequest(locationSettingsRequest$Builder.f6233a, locationSettingsRequest$Builder.f6234b, false, (zzae) null)), new LocationSettingsResponse());
        Objects.requireNonNull(m38908a);
        o oVar = new o(TaskExecutors.f6494a, this);
        m38908a.b.m4156a(oVar);
        a0.k(this).l(oVar);
        m38908a.A();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: i5 */
    public void mo9606i5(String str, String str2) {
        l.e(str, "firstLine");
        l.e(str2, "boldText");
        FlashContactHeaderView flashContactHeaderView = this.f12057g;
        if (flashContactHeaderView == null) {
            l.l("contactHeaderView");
            throw null;
        }
        l.e(str, "firstText");
        l.e(str2, "boldText");
        TextView textView = flashContactHeaderView.f12108T;
        l.e(textView, "$this$setHeaderTextWithFlashIcon");
        l.e(str, "firstPart");
        l.e(str2, "boldText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new RelativeSizeSpan(0.9f), 0, spannableStringBuilder.length(), 33);
        C17891a1.C17902k.m15631Z0(textView, spannableStringBuilder);
        spannableStringBuilder.append((CharSequence) str2);
        textView.setText(spannableStringBuilder);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: j8 */
    public final void mo9604j8(int i) {
        ((ImageView) findViewById(C3909R.C3911id.tc_logo)).setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: k1 */
    public void m35370k1(c.c cVar, c cVar2, boolean z) {
        l.e(cVar, "provider");
        l.e(cVar2, "youTubePlayer");
        this.f12054d = cVar2;
        if (!z) {
            try {
                ((e.m.a.j.a.h.l) cVar2).b.p1(c.b.b.name());
                Presenter presenter = this.f12051a;
                if (presenter != null) {
                    presenter.mo9653b1();
                } else {
                    l.l("presenter");
                    throw null;
                }
            } catch (RemoteException e) {
                throw new e.m.a.j.a.h.j(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: k5 */
    public void mo9603k5(int i) {
        C26413b.m1895g(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: l */
    public final void mo9602l(String str) {
        l.e(str, "message");
        Toast.makeText((Context) this, (CharSequence) str, 0).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: m5 */
    public void mo9600m5(int i) {
        C26413b.m1895g(this, new String[]{"android.permission.CAMERA"}, i);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: n5 */
    public void mo9598n5(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        View findViewById = findViewById(C3909R.C3911id.imageContentV2);
        l.d(findViewById, "findViewById(R.id.imageContentV2)");
        this.f12059i = (ImageView) findViewById;
        this.f12060j = (ImageView) findViewById(C3909R.C3911id.imageBackgroundV2);
        this.f12063m = (ProgressBar) findViewById(C3909R.C3911id.imageProgressBar);
        View view = this.f12058h;
        if (view == null) {
            l.l("imageContainer");
            throw null;
        }
        view.setVisibility(8);
        C21852d<Bitmap> mo8415f = m35367ra().mo8415f();
        mo8415f.f61767J = str;
        mo8415f.f61771N = true;
        int i = C3909R.C3910drawable.ic_flash_media_placeholder;
        C21852d<Bitmap> mo8097k = mo8415f.mo8087u(i).mo8097k(i);
        ImageView imageView = this.f12059i;
        if (imageView != null) {
            mo8097k.m8429M(new C3935b(this, imageView));
        } else {
            l.l("imageContent");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: o5 */
    public final void mo9597o5(C21733i[] c21733iArr) {
        l.e(c21733iArr, "emojisList");
        FooterView footerview = this.f12056f;
        if (footerview != null) {
            footerview.setRecentEmojis(c21733iArr);
        } else {
            l.l("footerView");
            throw null;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9647m1(i, i2, intent);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task<LocationSettingsResponse> task) {
        l.e(task, "task");
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9659U0(task);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        BaseFlashActivity.super.onCreate(bundle);
        setTheme(this.f12070t.mo9329A());
        Api.ClientKey<zzaz> clientKey = LocationServices.f6229a;
        FusedLocationProviderClient fusedLocationProviderClient = new FusedLocationProviderClient(this);
        l.d(fusedLocationProviderClient, "LocationServices.getFuse…ationProviderClient(this)");
        this.f12066p = fusedLocationProviderClient;
        this.f12065o = new AddressResultReceiver(this, this.f12055e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        l.e(menu, "menu");
        getMenuInflater().inflate(C3909R.C3913menu.flash_menu_top, menu);
        return BaseFlashActivity.super.onCreateOptionsMenu(menu);
    }

    public void onDestroy() {
        e.m.a.j.a.h.l lVar;
        BaseFlashActivity.super.onDestroy();
        try {
            lVar = this.f12054d;
        } catch (IllegalStateException e) {
            C10480a.m26061I1(e);
        }
        if (lVar != null) {
            try {
                if (lVar.b.c()) {
                    lVar.a(true);
                }
                Presenter presenter = this.f12051a;
                if (presenter != null) {
                    presenter.mo9555c();
                } else {
                    l.l("presenter");
                    throw null;
                }
            } catch (RemoteException e2) {
                throw new e.m.a.j.a.h.j(e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onNewIntent(Intent intent) {
        l.e(intent, "intent");
        BaseFlashActivity.super.onNewIntent(intent);
        setIntent(intent);
        Presenter presenter = this.f12051a;
        if (presenter == null) {
            l.l("presenter");
            throw null;
        }
        presenter.mo9422W0();
        Presenter presenter2 = this.f12051a;
        if (presenter2 != null) {
            presenter2.mo9650f1(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            return presenter.mo9419e1(menuItem.getItemId());
        }
        l.l("presenter");
        throw null;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9551g1(i, strArr, iArr);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final FlashContactHeaderView m35369pa() {
        FlashContactHeaderView flashContactHeaderView = this.f12057g;
        if (flashContactHeaderView != null) {
            return flashContactHeaderView;
        }
        l.l("contactHeaderView");
        throw null;
    }

    /* renamed from: qa */
    public final FooterView m35368qa() {
        FooterView footerview = this.f12056f;
        if (footerview != null) {
            return footerview;
        }
        l.l("footerView");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: r8 */
    public final void mo9591r8() {
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.mo9148f();
        }
    }

    /* renamed from: ra */
    public final C21853e m35367ra() {
        return (C21853e) this.f12053c.getValue();
    }

    /* renamed from: sa */
    public final View m35366sa() {
        View view = this.f12058h;
        if (view != null) {
            return view;
        }
        l.l("imageContainer");
        throw null;
    }

    /* renamed from: ta */
    public final Presenter m35365ta() {
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            return presenter;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: ua */
    public abstract View mo35330ua();

    /* renamed from: va */
    public final Toolbar m35364va() {
        Toolbar toolbar = this.f12067q;
        if (toolbar != null) {
            return toolbar;
        }
        l.l("toolbar");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1387e.C21729h.AbstractC21732c
    /* renamed from: w5 */
    public void mo9145w5(int i) {
        Presenter presenter = this.f12051a;
        if (presenter != null) {
            presenter.mo9418h1();
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
