package com.truecaller.flashsdk.p166ui.incoming;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.RemoteException;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.util.Property;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.core.FlashMediaService;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.QueuedFlash;
import com.truecaller.flashsdk.p166ui.base.BaseFlashActivity;
import com.truecaller.flashsdk.p166ui.customviews.ArrowView;
import com.truecaller.flashsdk.p166ui.customviews.BouncingView;
import com.truecaller.flashsdk.p166ui.customviews.FlashAttachButton;
import com.truecaller.flashsdk.p166ui.customviews.FlashContactHeaderView;
import com.truecaller.flashsdk.p166ui.customviews.FlashReceiveFooterView;
import com.truecaller.log.UnmutedException;
import e.m.a.f.k.j;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.g;
import n3.g0.e;
import o3.c.b;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1789g0.AbstractC26214m;
import p1727n3.p1789g0.C26189a;
import p1727n3.p1789g0.C26191c;
import p1727n3.p1789g0.C26221p;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1789g0.C26225s;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1818g.p1819f.C26548b;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1366a.p1367a.C21469a;
import p193e.p194a.p1365y.p1366a.p1372g.C21505c;
import p193e.p194a.p1365y.p1366a.p1372g.View$OnClickListenerC21503a;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.AbstractC21513e;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21509a;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21510b;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21515f;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21517g;
import p193e.p194a.p1365y.p1366a.p1372g.p1373f.C21518h;
import p193e.p194a.p1365y.p1366a.p1374h.AbstractC21538t;
import p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v;
import p193e.p194a.p1365y.p1366a.p1374h.C21519a;
import p193e.p194a.p1365y.p1366a.p1374h.C21520b;
import p193e.p194a.p1365y.p1366a.p1374h.C21521c;
import p193e.p194a.p1365y.p1366a.p1374h.C21522d;
import p193e.p194a.p1365y.p1366a.p1374h.C21523e;
import p193e.p194a.p1365y.p1366a.p1374h.C21524f;
import p193e.p194a.p1365y.p1366a.p1374h.C21525g;
import p193e.p194a.p1365y.p1366a.p1374h.C21526h;
import p193e.p194a.p1365y.p1366a.p1374h.C21527i;
import p193e.p194a.p1365y.p1366a.p1374h.C21528j;
import p193e.p194a.p1365y.p1366a.p1374h.C21529k;
import p193e.p194a.p1365y.p1366a.p1374h.C21530l;
import p193e.p194a.p1365y.p1366a.p1374h.C21531m;
import p193e.p194a.p1365y.p1366a.p1374h.C21532n;
import p193e.p194a.p1365y.p1366a.p1374h.C21533o;
import p193e.p194a.p1365y.p1366a.p1374h.C21534p;
import p193e.p194a.p1365y.p1366a.p1374h.C21535q;
import p193e.p194a.p1365y.p1366a.p1374h.C21536r;
import p193e.p194a.p1365y.p1366a.p1374h.C21537s;
import p193e.p194a.p1365y.p1366a.p1378k.View$OnClickListenerC21577e;
import p193e.p194a.p1365y.p1366a.p1379l.C21584c;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1387e.AbstractC21728g;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.h;
import s1.d0.i;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0094\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\r\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0004ò\u0002õ\u0002\u0018��2\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00022\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b:\u0002\u0088\u0003B\b¢\u0006\u0005\b\u0087\u0003\u0010\u000eJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0016\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010\u000eJ\u000f\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001a\u0010\u000eJ\u000f\u0010\u001b\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001b\u0010\u000eJ\u000f\u0010\u001c\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001c\u0010\u000eJ\u0019\u0010\u001f\u001a\u00020\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\fH\u0016¢\u0006\u0004\b!\u0010\u000eJ\u0017\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\fH\u0016¢\u0006\u0004\b&\u0010\u000eJ\u0017\u0010)\u001a\u00020\f2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\fH\u0016¢\u0006\u0004\b+\u0010\u000eJ\u000f\u0010,\u001a\u00020\fH\u0016¢\u0006\u0004\b,\u0010\u000eJ\u0017\u0010.\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0011H\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\f2\u0006\u00100\u001a\u00020\u0011H\u0016¢\u0006\u0004\b1\u0010/J\u001f\u00105\u001a\u00020\f2\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\f2\u0006\u00107\u001a\u00020'H\u0016¢\u0006\u0004\b8\u0010*J\u0017\u0010:\u001a\u00020\f2\u0006\u00109\u001a\u000202H\u0016¢\u0006\u0004\b:\u0010;J\u0017\u0010=\u001a\u00020\f2\u0006\u0010<\u001a\u00020'H\u0016¢\u0006\u0004\b=\u0010*J\u000f\u0010>\u001a\u00020\fH\u0014¢\u0006\u0004\b>\u0010\u000eJ\u0017\u0010A\u001a\u00020\u00112\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u0017\u0010C\u001a\u00020\u00112\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bC\u0010BJ\u0017\u0010E\u001a\u00020\f2\u0006\u0010D\u001a\u000202H\u0016¢\u0006\u0004\bE\u0010;J\u000f\u0010F\u001a\u00020\fH\u0016¢\u0006\u0004\bF\u0010\u000eJ\u0017\u0010G\u001a\u00020\f2\u0006\u0010D\u001a\u000202H\u0016¢\u0006\u0004\bG\u0010;J\u0017\u0010H\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010K\u001a\u00020\f2\u0006\u0010J\u001a\u00020\u0011H\u0016¢\u0006\u0004\bK\u0010/J\u0017\u0010M\u001a\u00020\f2\u0006\u0010L\u001a\u00020\u0011H\u0016¢\u0006\u0004\bM\u0010/J/\u0010R\u001a\u00020\f2\u0006\u0010N\u001a\u0002022\u0006\u0010O\u001a\u00020'2\u0006\u0010P\u001a\u00020'2\u0006\u0010Q\u001a\u00020'H\u0016¢\u0006\u0004\bR\u0010SJ\u0019\u0010U\u001a\u00020\f2\b\b\u0001\u0010T\u001a\u00020'H\u0016¢\u0006\u0004\bU\u0010*J\u0017\u0010X\u001a\u00020\f2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020\f2\u0006\u0010Z\u001a\u00020'H\u0016¢\u0006\u0004\b[\u0010*J\u000f\u0010\\\u001a\u00020\fH\u0016¢\u0006\u0004\b\\\u0010\u000eJ\u0017\u0010_\u001a\u00020\f2\u0006\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b_\u0010`J\u0017\u0010b\u001a\u00020\f2\u0006\u0010a\u001a\u00020\u0011H\u0016¢\u0006\u0004\bb\u0010/J\u000f\u0010c\u001a\u00020\fH\u0016¢\u0006\u0004\bc\u0010\u000eJ\u000f\u0010d\u001a\u00020\fH\u0016¢\u0006\u0004\bd\u0010\u000eJ\u001f\u0010g\u001a\u00020\f2\u0006\u0010N\u001a\u00020e2\u0006\u0010f\u001a\u00020\u0011H\u0016¢\u0006\u0004\bg\u0010hJ\u0017\u0010j\u001a\u00020\f2\u0006\u0010i\u001a\u00020\u0011H\u0016¢\u0006\u0004\bj\u0010/J\u001f\u0010m\u001a\u00020\f2\u0006\u0010k\u001a\u0002022\u0006\u0010l\u001a\u000202H\u0016¢\u0006\u0004\bm\u00106J'\u0010q\u001a\u00020\f2\u0006\u0010n\u001a\u0002022\u0006\u0010o\u001a\u0002022\u0006\u0010p\u001a\u000202H\u0016¢\u0006\u0004\bq\u0010rJ/\u0010t\u001a\u00020\f2\u0006\u0010k\u001a\u0002022\u0006\u0010s\u001a\u0002022\u0006\u0010o\u001a\u0002022\u0006\u0010p\u001a\u000202H\u0016¢\u0006\u0004\bt\u0010uJ\u000f\u0010v\u001a\u00020\fH\u0016¢\u0006\u0004\bv\u0010\u000eJ\u000f\u0010w\u001a\u00020\fH\u0016¢\u0006\u0004\bw\u0010\u000eJ\u000f\u0010x\u001a\u00020\fH\u0016¢\u0006\u0004\bx\u0010\u000eJ\u000f\u0010y\u001a\u00020\fH\u0016¢\u0006\u0004\by\u0010\u000eJ\u0017\u0010z\u001a\u00020\f2\u0006\u00107\u001a\u00020'H\u0016¢\u0006\u0004\bz\u0010*J\u0017\u0010|\u001a\u00020\f2\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0004\b|\u0010;J\u0018\u0010\u007f\u001a\u00020\f2\u0006\u0010~\u001a\u00020}H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u001b\u0010\u0082\u0001\u001a\u00020\f2\u0007\u0010~\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\"\u0010\u0085\u0001\u001a\u00020\f2\u0007\u0010\u0084\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\b\u0085\u0001\u00106J\u001a\u0010\u0087\u0001\u001a\u00020\f2\u0007\u0010\u0086\u0001\u001a\u000202H\u0016¢\u0006\u0005\b\u0087\u0001\u0010;J\u0019\u0010\u0088\u0001\u001a\u00020\f2\u0006\u00107\u001a\u00020'H\u0016¢\u0006\u0005\b\u0088\u0001\u0010*J\u0011\u0010\u0089\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0089\u0001\u0010\u000eJ#\u0010\u008b\u0001\u001a\u00020\f2\u0006\u0010#\u001a\u00020'2\u0007\u0010\u008a\u0001\u001a\u00020'H\u0016¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\"\u0010\u008e\u0001\u001a\u00020\f2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\b\u008e\u0001\u00106J\"\u0010\u008f\u0001\u001a\u00020\f2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\b\u008f\u0001\u00106J+\u0010\u0091\u0001\u001a\u00020\f2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u0002022\u0007\u0010\u0090\u0001\u001a\u000202H\u0016¢\u0006\u0005\b\u0091\u0001\u0010rJ+\u0010\u0092\u0001\u001a\u00020\f2\u0007\u0010\u008d\u0001\u001a\u0002022\u0006\u0010{\u001a\u0002022\u0007\u0010\u0090\u0001\u001a\u000202H\u0016¢\u0006\u0005\b\u0092\u0001\u0010rJ\"\u0010\u0094\u0001\u001a\u00020\f2\u0007\u0010\u0093\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\b\u0094\u0001\u00106J\"\u0010\u0097\u0001\u001a\u00020\f2\u000e\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0095\u0001H\u0016¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\"\u0010\u0099\u0001\u001a\u00020\f2\u000e\u0010\u0096\u0001\u001a\t\u0012\u0004\u0012\u0002020\u0095\u0001H\u0016¢\u0006\u0006\b\u0099\u0001\u0010\u0098\u0001J$\u0010\u009c\u0001\u001a\u00020\u00112\u0007\u0010\u009a\u0001\u001a\u0002022\u0007\u0010\u009b\u0001\u001a\u000202H\u0016¢\u0006\u0006\b\u009c\u0001\u0010\u009d\u0001J\u001a\u0010\u009e\u0001\u001a\u00020\f2\u0007\u0010\u009a\u0001\u001a\u000202H\u0016¢\u0006\u0005\b\u009e\u0001\u0010;J\u001a\u0010 \u0001\u001a\u00020\f2\u0007\u0010\u009f\u0001\u001a\u00020\u0011H\u0016¢\u0006\u0005\b \u0001\u0010/J\u001a\u0010¢\u0001\u001a\u00020\f2\u0007\u0010¡\u0001\u001a\u00020'H\u0016¢\u0006\u0005\b¢\u0001\u0010*J\u0011\u0010£\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b£\u0001\u0010\u000eJ\u0011\u0010¤\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b¤\u0001\u0010\u000eJ\u0011\u0010¥\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b¥\u0001\u0010\u000eJ\u0011\u0010¦\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b¦\u0001\u0010\u000eJ\u0011\u0010§\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b§\u0001\u0010\u000eJ\u0011\u0010¨\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b¨\u0001\u0010\u000eJ\u001c\u0010«\u0001\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030©\u0001H\u0016¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u001c\u0010®\u0001\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030\u00ad\u0001H\u0016¢\u0006\u0006\b®\u0001\u0010¯\u0001J\u001a\u0010±\u0001\u001a\u00020\f2\u0007\u0010°\u0001\u001a\u00020'H\u0016¢\u0006\u0005\b±\u0001\u0010*J\u001a\u0010³\u0001\u001a\u00020\f2\u0007\u0010²\u0001\u001a\u00020'H\u0016¢\u0006\u0005\b³\u0001\u0010*J\u0011\u0010´\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b´\u0001\u0010\u000eJ\u0011\u0010µ\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bµ\u0001\u0010\u000eJ\u001c\u0010¶\u0001\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030©\u0001H\u0016¢\u0006\u0006\b¶\u0001\u0010¬\u0001J\u001c\u0010·\u0001\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030©\u0001H\u0016¢\u0006\u0006\b·\u0001\u0010¬\u0001J\u001c\u0010¸\u0001\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030©\u0001H\u0016¢\u0006\u0006\b¸\u0001\u0010¬\u0001J%\u0010¼\u0001\u001a\u00020\u00112\u0007\u0010¹\u0001\u001a\u00020'2\b\u0010»\u0001\u001a\u00030º\u0001H\u0016¢\u0006\u0006\b¼\u0001\u0010½\u0001J-\u0010Á\u0001\u001a\u00020\f2\u0007\u0010¾\u0001\u001a\u0002022\b\u0010À\u0001\u001a\u00030¿\u00012\u0006\u0010D\u001a\u000202H\u0016¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J\u0019\u0010Ã\u0001\u001a\u00020\f2\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\bÃ\u0001\u0010;J\"\u0010Ä\u0001\u001a\u00020\f2\u0007\u0010\u0084\u0001\u001a\u0002022\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\bÄ\u0001\u00106J%\u0010È\u0001\u001a\u00020\f2\b\u0010Æ\u0001\u001a\u00030Å\u00012\u0007\u0010Ç\u0001\u001a\u000202H\u0016¢\u0006\u0006\bÈ\u0001\u0010É\u0001J\u0011\u0010Ê\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bÊ\u0001\u0010\u000eJ5\u0010Ð\u0001\u001a\u00020\f2\u0007\u0010Ë\u0001\u001a\u00020'2\u000e\u0010Í\u0001\u001a\t\u0012\u0004\u0012\u0002020Ì\u00012\b\u0010Ï\u0001\u001a\u00030Î\u0001H\u0016¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u0011\u0010Ò\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bÒ\u0001\u0010\u000eJ\u0011\u0010Ó\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bÓ\u0001\u0010\u000eJ\u0019\u0010Ô\u0001\u001a\u00020\f2\u0006\u0010{\u001a\u000202H\u0016¢\u0006\u0005\bÔ\u0001\u0010;J\u001a\u0010Ö\u0001\u001a\u00020\f2\u0007\u0010Õ\u0001\u001a\u000202H\u0016¢\u0006\u0005\bÖ\u0001\u0010;J\u001c\u0010Ø\u0001\u001a\u00020\f2\b\u0010×\u0001\u001a\u00030Å\u0001H\u0016¢\u0006\u0006\bØ\u0001\u0010Ù\u0001J\u0011\u0010Ú\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bÚ\u0001\u0010\u000eJ\u0011\u0010Û\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bÛ\u0001\u0010\u000eJ\u001c\u0010Þ\u0001\u001a\u00020\f2\b\u0010Ý\u0001\u001a\u00030Ü\u0001H\u0016¢\u0006\u0006\bÞ\u0001\u0010ß\u0001J\u0011\u0010à\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bà\u0001\u0010\u000eJ%\u0010â\u0001\u001a\u00020\f2\u0006\u0010#\u001a\u00020'2\t\b\u0001\u0010á\u0001\u001a\u00020'H\u0016¢\u0006\u0006\bâ\u0001\u0010\u008c\u0001J\u0019\u0010ã\u0001\u001a\u00020\f2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0005\bã\u0001\u0010%J#\u0010ç\u0001\u001a\u00020\f2\u000f\u0010æ\u0001\u001a\n\u0012\u0005\u0012\u00030å\u00010ä\u0001H\u0016¢\u0006\u0006\bç\u0001\u0010\u0098\u0001J$\u0010ê\u0001\u001a\u00020\f2\u0007\u0010è\u0001\u001a\u00020'2\u0007\u0010é\u0001\u001a\u00020'H\u0016¢\u0006\u0006\bê\u0001\u0010\u008c\u0001J\u001a\u0010ì\u0001\u001a\u00020\f2\u0007\u0010ë\u0001\u001a\u00020'H\u0016¢\u0006\u0005\bì\u0001\u0010*J\u0011\u0010í\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bí\u0001\u0010\u000eJ\u0011\u0010î\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bî\u0001\u0010\u000eJ\u0011\u0010ï\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bï\u0001\u0010\u000eJ\u0011\u0010ð\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bð\u0001\u0010\u000eJ\u0011\u0010ñ\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bñ\u0001\u0010\u000eJ\u0011\u0010ò\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bò\u0001\u0010\u000eJ\u0011\u0010ó\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bó\u0001\u0010\u000eJ\"\u0010ô\u0001\u001a\u00020\f2\u0006\u0010{\u001a\u0002022\u0006\u0010-\u001a\u00020\u0011H\u0016¢\u0006\u0006\bô\u0001\u0010õ\u0001J\u0011\u0010ö\u0001\u001a\u00020\fH\u0014¢\u0006\u0005\bö\u0001\u0010\u000eJ\u0011\u0010÷\u0001\u001a\u00020\fH\u0014¢\u0006\u0005\b÷\u0001\u0010\u000eJ\u0011\u0010ø\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\bø\u0001\u0010\u000eJ*\u0010ý\u0001\u001a\u00020\u00112\n\u0010ú\u0001\u001a\u0005\u0018\u00010ù\u00012\n\u0010ü\u0001\u001a\u0005\u0018\u00010û\u0001H\u0016¢\u0006\u0006\bý\u0001\u0010þ\u0001J(\u0010ÿ\u0001\u001a\u00020\u00112\n\u0010ú\u0001\u001a\u0005\u0018\u00010ù\u00012\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\bÿ\u0001\u0010\u0080\u0002J(\u0010\u0081\u0002\u001a\u00020\u00112\n\u0010ú\u0001\u001a\u0005\u0018\u00010ù\u00012\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0006\b\u0081\u0002\u0010\u0080\u0002J\u001e\u0010\u0082\u0002\u001a\u00020\f2\n\u0010ú\u0001\u001a\u0005\u0018\u00010ù\u0001H\u0016¢\u0006\u0006\b\u0082\u0002\u0010\u0083\u0002J\u001c\u0010\u0084\u0002\u001a\u00020\f2\b\u0010ª\u0001\u001a\u00030©\u0001H\u0016¢\u0006\u0006\b\u0084\u0002\u0010¬\u0001J\u0011\u0010\u0085\u0002\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0085\u0002\u0010\u000eJ\u0011\u0010\u0086\u0002\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0086\u0002\u0010\u000eJ\u001c\u0010\u0087\u0002\u001a\u00020\f2\b\u0010N\u001a\u0004\u0018\u00010eH\u0016¢\u0006\u0006\b\u0087\u0002\u0010\u0088\u0002J\u0019\u0010\u0089\u0002\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u0011H\u0016¢\u0006\u0005\b\u0089\u0002\u0010/R\u001c\u0010\u008d\u0002\u001a\u0005\u0018\u00010\u008a\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010\u008c\u0002R\u001a\u0010\u0091\u0002\u001a\u00030\u008e\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008f\u0002\u0010\u0090\u0002R\u0019\u0010\u0094\u0002\u001a\u00030\u0092\u00028\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bj\u0010\u0093\u0002R\u001a\u0010\u0098\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0096\u0002\u0010\u0097\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0099\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010\u009a\u0002R\u001a\u0010\u009f\u0002\u001a\u00030\u009c\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009d\u0002\u0010\u009e\u0002R\u001a\u0010£\u0002\u001a\u00030 \u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¡\u0002\u0010¢\u0002R\u001a\u0010¥\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¤\u0002\u0010\u0097\u0002R\u001a\u0010©\u0002\u001a\u00030¦\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b§\u0002\u0010¨\u0002R\u001a\u0010\u00ad\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b«\u0002\u0010¬\u0002R\u001a\u0010¯\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b®\u0002\u0010¬\u0002R\u0019\u0010²\u0002\u001a\u00020V8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b°\u0002\u0010±\u0002R\u001a\u0010´\u0002\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bd\u0010³\u0002R\u001a\u0010¸\u0002\u001a\u00030µ\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¶\u0002\u0010·\u0002R\u0018\u0010º\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bW\u0010¹\u0002R\u0019\u0010¼\u0002\u001a\u00020V8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b»\u0002\u0010±\u0002R\u001c\u0010¿\u0002\u001a\u0005\u0018\u00010½\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010¾\u0002R\u001a\u0010Ã\u0002\u001a\u00030À\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0002\u0010Â\u0002R\u001a\u0010Ç\u0002\u001a\u00030Ä\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÅ\u0002\u0010Æ\u0002R\u001a\u0010É\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÈ\u0002\u0010¬\u0002R\u0019\u0010Ë\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÊ\u0002\u0010¹\u0002R\u001a\u0010Í\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÌ\u0002\u0010¬\u0002R\u0019\u0010Î\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u0018\u0010\u0097\u0002R\u0019\u0010Ð\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0002\u0010¹\u0002R\u001a\u0010Ò\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÑ\u0002\u0010¬\u0002R\u001a\u0010Ô\u0002\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÓ\u0002\u0010¬\u0002R*\u0010Ü\u0002\u001a\u00030Õ\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\bÖ\u0002\u0010×\u0002\u001a\u0006\bØ\u0002\u0010Ù\u0002\"\u0006\bÚ\u0002\u0010Û\u0002R\u0019\u0010Þ\u0002\u001a\u00020V8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÝ\u0002\u0010±\u0002R\u0019\u0010à\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0002\u0010¹\u0002R\u001a\u0010ä\u0002\u001a\u00030á\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bâ\u0002\u0010ã\u0002R\u001b\u0010æ\u0002\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bå\u0002\u0010±\u0002R\u001a\u0010è\u0002\u001a\u00030\u0095\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bç\u0002\u0010\u0097\u0002R\u001c\u0010ë\u0002\u001a\u0005\u0018\u00010ù\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0002\u0010ê\u0002R\u001a\u0010ï\u0002\u001a\u00030ì\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bí\u0002\u0010î\u0002R\u001a\u0010ñ\u0002\u001a\u00030 \u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bð\u0002\u0010¢\u0002R\u001a\u0010ô\u0002\u001a\u00030ò\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bì\u0001\u0010ó\u0002R\u001a\u0010ø\u0002\u001a\u00030õ\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bö\u0002\u0010÷\u0002R\u001a\u0010ú\u0002\u001a\u00030\u0099\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bù\u0002\u0010\u009a\u0002R\u0019\u0010ü\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bû\u0002\u0010¹\u0002R\u0019\u0010þ\u0002\u001a\u00020V8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bý\u0002\u0010±\u0002R\u001a\u0010\u0080\u0003\u001a\u00030 \u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÿ\u0002\u0010¢\u0002R\u001a\u0010\u0082\u0003\u001a\u00030ª\u00028\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0081\u0003\u0010¬\u0002R\u001a\u0010\u0086\u0003\u001a\u00030\u0083\u00038\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0003\u0010\u0085\u0003¨\u0006\u0089\u0003"}, d2 = {"Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;", "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;", "Le/a/y/a/h/v;", "Le/a/y/a/h/t;", "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView;", "Lcom/truecaller/flashsdk/ui/customviews/FlashReceiveFooterView$a;", "Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;", "Landroid/view/View$OnClickListener;", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;", "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;", "Lcom/google/android/gms/maps/OnMapReadyCallback;", "Landroid/view/ActionMode$Callback;", "Ls1/s;", "ya", "()V", "Landroid/content/Intent;", "intent", "", "wa", "(Landroid/content/Intent;)Z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "g0", "ba", "m9", "M6", "c6", "Lcom/google/android/gms/maps/GoogleMap;", "googleMap", "O3", "(Lcom/google/android/gms/maps/GoogleMap;)V", "o6", "Landroid/graphics/drawable/Drawable;", "drawable", "oa", "(Landroid/graphics/drawable/Drawable;)V", "v6", "", "themeColor", "s6", "(I)V", "x6", "U5", "enable", "D6", "(Z)V", "showOverlay", "K9", "", "firstLine", "boldText", "i5", "(Ljava/lang/String;Ljava/lang/String;)V", RemoteMessageConst.Notification.COLOR, "H7", "contactImageUrl", "S4", "(Ljava/lang/String;)V", "drawableRes", "f5", "onStart", "Landroid/view/Menu;", "menu", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "onPrepareOptionsMenu", AnalyticsConstants.NAME, "L6", "w8", "W5", "j6", "(Landroid/content/Intent;)V", "showQuickReplies", "a6", "showHint", "c7", "text", "initialSelectionStart", "initialSelectionEnd", "finalSelectionEnd", "N4", "(Ljava/lang/String;III)V", "buttonTextColor", "S6", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "position", "v2", "u1", "Le/a/y/e/i;", "emoticon", "s", "(Le/a/y/e/i;)V", "cursorVisible", "l5", "p8", "p0", "", "isMessageTypeLocation", "N2", "(Ljava/lang/CharSequence;Z)V", "hasFocus", "V", "placeName", "locationImageUrl", "R9", "location", "lat", "long", "A5", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "locationMessage", "j5", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "F9", "o9", "B5", "N6", "b6", "message", "J6", "Le/a/y/a/g/f/a;", "displayableEmojiAttributes", "q6", "(Le/a/y/a/g/f/a;)V", "Le/a/y/a/g/f/g;", "h6", "(Le/a/y/a/g/f/g;)V", "mapImageUrl", "Q9", "hint", "c5", "K6", "x7", "tintColor", "y6", "(II)V", "imageUrl", "O4", "n5", "wallpaperUrl", "r9", "ia", "videoUrl", "d5", "", "responses", "A6", "(Ljava/util/List;)V", "R6", "mapUri", "packageString", "O6", "(Ljava/lang/String;Ljava/lang/String;)Z", "G6", "startAnimation", "Z5", VastIconXmlManager.DURATION, "J8", "z6", "X6", "H6", "O9", "W9", "e6", "Lcom/truecaller/flashsdk/models/Flash;", "flash", "V6", "(Lcom/truecaller/flashsdk/models/Flash;)V", "Lcom/truecaller/flashsdk/models/QueuedFlash;", "U7", "(Lcom/truecaller/flashsdk/models/QueuedFlash;)V", "progress", "Q6", "progressLeft", "d6", "u6", "G5", "S7", "V8", "Y5", "keyCode", "Landroid/view/KeyEvent;", "keyEvent", "onKeyDown", "(ILandroid/view/KeyEvent;)Z", "history", "", "toPhone", "k6", "(Ljava/lang/String;JLjava/lang/String;)V", "B6", "z7", "Landroid/net/Uri;", "contentUriFromBitmap", "imageDescription", "m6", "(Landroid/net/Uri;Ljava/lang/String;)V", "s7", "requestCode", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "b5", "F6", "o", "action", "r6", "imageUri", "Z0", "(Landroid/net/Uri;)V", "e8", "T6", "Lcom/truecaller/flashsdk/models/ImageFlash;", "imageFlash", "V5", "(Lcom/truecaller/flashsdk/models/ImageFlash;)V", "z0", "headerTextColor", "q5", "W6", "", "Le/a/y/a/g/c;", "menuItems", "X5", "imageId", "colorId", "l8", "id", "u0", "o0", "q0", "T4", "p5", "T7", "U9", "M4", "J7", "(Ljava/lang/String;Z)V", "onStop", "onDestroy", "c8", "Landroid/view/ActionMode;", AnalyticsConstants.MODE, "Landroid/view/MenuItem;", "item", "onActionItemClicked", "(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z", "onCreateActionMode", "(Landroid/view/ActionMode;Landroid/view/Menu;)Z", "onPrepareActionMode", "onDestroyActionMode", "(Landroid/view/ActionMode;)V", "s9", "I6", "w6", "T0", "(Ljava/lang/CharSequence;)V", "A0", "Le/a/y/a/g/f/e;", "E", "Le/a/y/a/g/f/e;", "emojiLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "k0", "Landroidx/constraintlayout/widget/ConstraintLayout;", "flashUIContainer", "Landroid/widget/ProgressBar;", "Landroid/widget/ProgressBar;", "progressbar", "Landroid/widget/ImageView;", "Y", "Landroid/widget/ImageView;", "overlayImage", "Landroid/widget/FrameLayout;", "Landroid/widget/FrameLayout;", "mapContainerV2", "Landroidx/appcompat/widget/AppCompatTextView;", "J", "Landroidx/appcompat/widget/AppCompatTextView;", "flashText", "Landroid/widget/Button;", "Q", "Landroid/widget/Button;", "btnNo", "l0", "closeReplyContact", "Landroid/widget/EditText;", "s0", "Landroid/widget/EditText;", "editMessageText", "Landroid/widget/TextView;", "K", "Landroid/widget/TextView;", "imageText", "R", "replyWithText", "n0", "Landroid/view/View;", "buttonContainer", "Lcom/google/android/gms/maps/GoogleMap;", "map", "Landroid/content/IntentFilter;", "C", "Landroid/content/IntentFilter;", "flashServiceFilter", "Landroid/content/Intent;", "finishReplyIntent", "m0", "emojiDivider", "Lcom/google/android/gms/maps/MapView;", "Lcom/google/android/gms/maps/MapView;", "mapView", "Landroid/animation/AnimatorSet;", "A", "Landroid/animation/AnimatorSet;", "animSet", "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;", "S", "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;", "swipeView", "L", "imageTextV2", "y", "flashActiveIntent", "W", "overlayName", "overlayBackgroundImage", "z", "flashStopRingerIntent", "X", "overlayCaller", "N", "videoText", "Landroid/app/WallpaperManager;", "u", "Landroid/app/WallpaperManager;", "getWallpaperManager", "()Landroid/app/WallpaperManager;", "setWallpaperManager", "(Landroid/app/WallpaperManager;)V", "wallpaperManager", "h0", "bodyContainer", "x", "flashMinimizeIntent", "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;", "r0", "Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;", "attachView", "M", "imageTextV2Container", "j0", "imageContentV2", "t0", "Landroid/view/ActionMode;", "receiveTextActionMode", "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;", "arrowView", "O", "btnYes", "com/truecaller/flashsdk/ui/incoming/FlashActivity$o", "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$o;", "uploadMediaReceiver", "com/truecaller/flashsdk/ui/incoming/FlashActivity$d", "D", "Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$d;", "flashServiceReceiver", "i0", "imageContainerV2", "w", "finishStopProgressIntent", "U", "layerView", "P", "btnOk", "Z", "overlayFlashFromText", "Ljava/lang/Runnable;", "B", "Ljava/lang/Runnable;", "animRunnable", "<init>", C22021b.f61237c, "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity.class */
public final class FlashActivity extends BaseFlashActivity<AbstractC21542v, AbstractC21538t, FlashReceiveFooterView> implements AbstractC21542v, FlashReceiveFooterView.AbstractC3948a, BouncingView.AbstractC3941c, View.OnClickListener, FlashContactHeaderView.AbstractC3947a, FlashAttachButton.AbstractC3943a, OnMapReadyCallback, ActionMode.Callback {

    /* renamed from: C */
    public final IntentFilter f12117C;

    /* renamed from: E */
    public AbstractC21513e f12119E;

    /* renamed from: J */
    public AppCompatTextView f12120J;

    /* renamed from: K */
    public TextView f12121K;

    /* renamed from: L */
    public TextView f12122L;

    /* renamed from: M */
    public View f12123M;

    /* renamed from: N */
    public TextView f12124N;

    /* renamed from: O */
    public Button f12125O;

    /* renamed from: P */
    public Button f12126P;

    /* renamed from: Q */
    public Button f12127Q;

    /* renamed from: R */
    public TextView f12128R;

    /* renamed from: S */
    public BouncingView f12129S;

    /* renamed from: T */
    public ArrowView f12130T;

    /* renamed from: U */
    public View f12131U;

    /* renamed from: V */
    public ProgressBar f12132V;

    /* renamed from: W */
    public TextView f12133W;

    /* renamed from: X */
    public TextView f12134X;

    /* renamed from: Y */
    public ImageView f12135Y;

    /* renamed from: Z */
    public TextView f12136Z;

    /* renamed from: g0 */
    public ImageView f12137g0;

    /* renamed from: h0 */
    public View f12138h0;

    /* renamed from: i0 */
    public FrameLayout f12139i0;

    /* renamed from: j0 */
    public ImageView f12140j0;

    /* renamed from: k0 */
    public ConstraintLayout f12141k0;

    /* renamed from: l0 */
    public ImageView f12142l0;

    /* renamed from: m0 */
    public View f12143m0;

    /* renamed from: n0 */
    public View f12144n0;

    /* renamed from: o0 */
    public MapView f12145o0;

    /* renamed from: p0 */
    public GoogleMap f12146p0;

    /* renamed from: q0 */
    public FrameLayout f12147q0;

    /* renamed from: r0 */
    public FlashAttachButton f12148r0;

    /* renamed from: s0 */
    public EditText f12149s0;

    /* renamed from: t0 */
    public ActionMode f12150t0;
    @Inject

    /* renamed from: u */
    public WallpaperManager f12151u;

    /* renamed from: v */
    public final Intent f12153v = new Intent("type_flash_replied");

    /* renamed from: w */
    public final Intent f12154w = new Intent("type_stop_progress");

    /* renamed from: x */
    public final Intent f12155x = new Intent("type_flash_minimized");

    /* renamed from: y */
    public final Intent f12156y = new Intent("type_flash_active");

    /* renamed from: z */
    public final Intent f12157z = new Intent("type_stop_ringer");

    /* renamed from: A */
    public final AnimatorSet f12115A = new AnimatorSet();

    /* renamed from: B */
    public final Runnable f12116B = new RunnableC3954c();

    /* renamed from: D */
    public final C3955d f12118D = new C3955d();

    /* renamed from: u0 */
    public final C3966o f12152u0 = new C3966o();

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$a.class */
    public static final class View$OnClickListenerC3952a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f12158a;

        /* renamed from: b */
        public final /* synthetic */ Object f12159b;

        public View$OnClickListenerC3952a(int i, Object obj) {
            this.f12158a = i;
            this.f12159b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f12158a;
            if (i == 0) {
                ((FlashActivity) this.f12159b).m35365ta().mo9539u();
            } else if (i != 1) {
                throw null;
            } else {
                ((FlashActivity) this.f12159b).m35365ta().mo9419e1(16908332);
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$b.class */
    public static final class C3953b implements GoogleMap.InfoWindowAdapter {

        /* renamed from: a */
        public final Context f12160a;

        /* renamed from: b */
        public final String f12161b;

        public C3953b(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "message");
            this.f12160a = context;
            this.f12161b = str;
        }

        @Override // com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
        /* renamed from: a */
        public View mo35326a(Marker marker) {
            return null;
        }

        @Override // com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
        /* renamed from: b */
        public View mo35325b(Marker marker) {
            View inflate = View.inflate(this.f12160a, C3909R.layout.layout_map_info_window, null);
            View findViewById = inflate.findViewById(C3909R.C3911id.title);
            l.d(findViewById, "view.findViewById<TextView>(R.id.title)");
            ((TextView) findViewById).setText(this.f12161b);
            l.d(inflate, ViewAction.VIEW);
            return inflate;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$c.class */
    public static final class RunnableC3954c implements Runnable {
        public RunnableC3954c() {
            FlashActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            FlashActivity.this.f12115A.start();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$d */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$d.class */
    public static final class C3955d extends BroadcastReceiver {
        public C3955d() {
            FlashActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            FlashActivity.this.m35365ta().mo9553f(intent.getExtras(), intent.getAction());
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$e */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$e.class */
    public static final class View$OnClickListenerC3956e implements View.OnClickListener {
        public View$OnClickListenerC3956e() {
            FlashActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FlashActivity.this.m35365ta().mo9539u();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$f */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$f.class */
    public static final class C3957f implements Toolbar.AbstractC0082f {
        public C3957f() {
            FlashActivity.this = r4;
        }

        @Override // androidx.appcompat.widget.Toolbar.AbstractC0082f
        public final boolean onMenuItemClick(MenuItem menuItem) {
            FlashActivity flashActivity = FlashActivity.this;
            l.d(menuItem, "it");
            return flashActivity.onOptionsItemSelected(menuItem);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$g */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$g.class */
    public static final class C3958g implements GoogleMap.OnMapClickListener {
        public C3958g() {
            FlashActivity.this = r4;
        }

        @Override // com.google.android.gms.maps.GoogleMap.OnMapClickListener
        /* renamed from: a */
        public final void mo35334a(LatLng latLng) {
            FlashActivity.this.m35365ta().mo9539u();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$h */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$h.class */
    public static final class C3959h extends C26221p {

        /* renamed from: b */
        public final /* synthetic */ boolean f12168b;

        public C3959h(boolean z) {
            FlashActivity.this = r4;
            this.f12168b = z;
        }

        @Override // p1727n3.p1789g0.AbstractC26214m.AbstractC26218d
        /* renamed from: d */
        public void mo2491d(AbstractC26214m abstractC26214m) {
            l.e(abstractC26214m, "transition");
            if (this.f12168b) {
                FlashAttachButton flashAttachButton = FlashActivity.this.f12148r0;
                if (flashAttachButton != null) {
                    flashAttachButton.setVisibility(0);
                } else {
                    l.l("attachView");
                    throw null;
                }
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$i */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$i.class */
    public static final class C3960i extends AnimatorListenerAdapter {
        public C3960i() {
            FlashActivity.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animation");
            super.onAnimationEnd(animator);
            FlashActivity.this.m35365ta().mo9543q();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$j */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$j.class */
    public static final class View$OnTouchListenerC3961j implements View.OnTouchListener {
        public View$OnTouchListenerC3961j() {
            FlashActivity.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            view.performClick();
            FlashActivity.this.m35365ta().mo9547n();
            return true;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$k */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$k.class */
    public static final class DialogInterface$OnClickListenerC3962k implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3962k() {
            FlashActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            FlashActivity.this.m35365ta().mo9554e();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$l */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$l.class */
    public static final class RunnableC3963l implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ String f12173b;

        public RunnableC3963l(String str) {
            FlashActivity.this = r4;
            this.f12173b = str;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.flashsdk.ui.incoming.FlashActivity, java.lang.Object, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v40, types: [android.content.Context, com.truecaller.flashsdk.ui.incoming.FlashActivity, java.lang.Object, android.app.Activity] */
        @Override // java.lang.Runnable
        public final void run() {
            ?? r0 = FlashActivity.this;
            String string = r0.getString(C3909R.string.tip_first_received_flash, new Object[]{this.f12173b});
            l.d(string, "getString(R.string.tip_first_received_flash, name)");
            int i = true & true ? C3909R.C3910drawable.flash_ic_tooltip_center_bottom : 0;
            l.e((Object) r0, AnalyticsConstants.CONTEXT);
            l.e(string, "toolTipText");
            View inflate = LayoutInflater.from(r0).inflate(C3909R.layout.flash_v2_pop_up, (ViewGroup) null);
            View findViewById = inflate.findViewById(C3909R.C3911id.text);
            l.d(findViewById, "view.findViewById<TextView>(R.id.text)");
            ((TextView) findViewById).setText(string);
            PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, false);
            popupWindow.setBackgroundDrawable(new ColorDrawable());
            popupWindow.setAnimationStyle(16973826);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setTouchInterceptor(new C21584c.View$OnTouchListenerC21585a(popupWindow));
            Object obj = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(r0, i);
            if (m1789b != null) {
                m1789b.setColorFilter(C19291g.m13538k0(r0, C3909R.attr.theme_contrast_bg), PorterDuff.Mode.SRC_IN);
            }
            l.d(inflate, ViewAction.VIEW);
            inflate.setBackground(m1789b);
            FlashContactHeaderView m35369pa = FlashActivity.this.m35369pa();
            l.e(m35369pa, ViewAction.VIEW);
            Context context = m35369pa.getContext();
            Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
            if (!((Activity) context).isFinishing() && m35369pa.getApplicationWindowToken() != null) {
                View contentView = popupWindow.getContentView();
                contentView.measure(0, 0);
                l.d(contentView, "contentView");
                popupWindow.showAsDropDown(m35369pa, (m35369pa.getMeasuredWidth() / 2) - (contentView.getMeasuredWidth() / 2), 0);
            }
            ?? r02 = FlashActivity.this;
            String string2 = r02.getString(C3909R.string.tip_first_flash_reply);
            l.d(string2, "getString(R.string.tip_first_flash_reply)");
            int i2 = true & true ? C3909R.C3910drawable.flash_ic_tooltip_center_bottom : 0;
            l.e((Object) r02, AnalyticsConstants.CONTEXT);
            l.e(string2, "toolTipText");
            View inflate2 = LayoutInflater.from(r02).inflate(C3909R.layout.flash_v2_pop_up, (ViewGroup) null);
            View findViewById2 = inflate2.findViewById(C3909R.C3911id.text);
            l.d(findViewById2, "view.findViewById<TextView>(R.id.text)");
            ((TextView) findViewById2).setText(string2);
            PopupWindow popupWindow2 = new PopupWindow(inflate2, -2, -2, false);
            popupWindow2.setBackgroundDrawable(new ColorDrawable());
            popupWindow2.setAnimationStyle(16973826);
            popupWindow2.setOutsideTouchable(true);
            popupWindow2.setTouchInterceptor(new C21584c.View$OnTouchListenerC21585a(popupWindow2));
            Object obj2 = C26467a.f74235a;
            Drawable m1789b2 = C26467a.C26470c.m1789b(r02, i2);
            if (m1789b2 != null) {
                m1789b2.setColorFilter(C19291g.m13538k0(r02, C3909R.attr.theme_contrast_bg), PorterDuff.Mode.SRC_IN);
            }
            l.d(inflate2, ViewAction.VIEW);
            inflate2.setBackground(m1789b2);
            TextView textView = FlashActivity.this.f12128R;
            if (textView == null) {
                l.l("replyWithText");
                throw null;
            }
            l.e(textView, ViewAction.VIEW);
            Context context2 = textView.getContext();
            Objects.requireNonNull(context2, "null cannot be cast to non-null type android.app.Activity");
            if (((Activity) context2).isFinishing() || textView.getApplicationWindowToken() == null) {
                return;
            }
            View contentView2 = popupWindow2.getContentView();
            contentView2.measure(0, 0);
            int measuredWidth = textView.getMeasuredWidth() / 2;
            l.d(contentView2, "contentView");
            popupWindow2.showAsDropDown(textView, measuredWidth - (contentView2.getMeasuredWidth() / 2), -(contentView2.getMeasuredHeight() + textView.getMeasuredHeight() + 0));
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$m */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$m.class */
    public static final class View$OnClickListenerC3964m implements View.OnClickListener {
        public View$OnClickListenerC3964m() {
            FlashActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FlashActivity.this.m35365ta().mo9548l(FlashActivity.this.m35366sa().isShown());
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$n */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$n.class */
    public static final class C3965n implements GoogleMap.OnInfoWindowClickListener {
        public C3965n(C3953b c3953b, String str, String str2, String str3) {
            FlashActivity.this = r4;
        }

        @Override // com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener
        /* renamed from: a */
        public final void mo35333a(Marker marker) {
            FlashActivity.this.m35365ta().mo9548l(true);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.incoming.FlashActivity$o */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/incoming/FlashActivity$o.class */
    public static final class C3966o extends BroadcastReceiver {
        public C3966o() {
            FlashActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            Bundle extras = intent.getExtras();
            if (extras != null) {
                FlashActivity.this.m35365ta().mo9556a(extras.getString("extra_state"), (ImageFlash) extras.getParcelable("extra_image_flash"));
            }
        }
    }

    public FlashActivity() {
        IntentFilter intentFilter = new IntentFilter("type_publish_progress");
        intentFilter.addAction("type_flash_timer_expired");
        intentFilter.addAction("type_flash_received");
        this.f12117C = intentFilter;
    }

    /* renamed from: xa */
    public static final Intent m35336xa(Context context, QueuedFlash queuedFlash, boolean z) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(queuedFlash, "flash");
        Intent intent = new Intent(context, FlashActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(536870912);
        intent.addFlags(67108864);
        intent.putExtra("flash", queuedFlash);
        intent.putExtra("ACTION", "flashing");
        intent.putExtra("show_overlay", z);
        return intent;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: A0 */
    public void mo9644A0(boolean z) {
        m35368qa().m9576n1(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: A5 */
    public void mo9643A5(String str, String str2, String str3) {
        l.e(str, "location");
        l.e(str2, "lat");
        l.e(str3, "long");
        C3953b c3953b = new C3953b(this, str);
        GoogleMap googleMap = this.f12146p0;
        if (googleMap != null) {
            Button button = this.f12127Q;
            if (button == null) {
                l.l("btnNo");
                throw null;
            }
            int i = C3909R.C3910drawable.bg_solid_white_rad_24dp;
            Object obj = C26467a.f74235a;
            button.setBackground(C26467a.C26470c.m1789b(this, i));
            Button button2 = this.f12125O;
            if (button2 == null) {
                l.l("btnYes");
                throw null;
            }
            button2.setBackground(C26467a.C26470c.m1789b(this, i));
            Button button3 = this.f12126P;
            if (button3 == null) {
                l.l("btnOk");
                throw null;
            }
            button3.setBackground(C26467a.C26470c.m1789b(this, i));
            ((FlashReceiveFooterView) m35368qa()).setBackground(C26467a.C26470c.m1789b(this, C3909R.C3910drawable.flash_round_button_default_v2));
            m35335ya();
            View view = this.f12143m0;
            if (view == null) {
                l.l("emojiDivider");
                throw null;
            }
            view.setVisibility(8);
            View view2 = this.f12144n0;
            if (view2 == null) {
                l.l("buttonContainer");
                throw null;
            }
            view2.setVisibility(8);
            FlashAttachButton flashAttachButton = this.f12148r0;
            if (flashAttachButton == null) {
                l.l("attachView");
                throw null;
            }
            flashAttachButton.setVisibility(8);
            googleMap.m38706c(c3953b);
            C17891a1.C17902k.m15616e1(googleMap, Double.parseDouble(str2), Double.parseDouble(str3), true);
            FlashReceiveFooterView flashReceiveFooterView = (FlashReceiveFooterView) m35368qa();
            flashReceiveFooterView.getRecentEmojiLayout().setVisibility(8);
            flashReceiveFooterView.getMoreEmojis().setVisibility(8);
            ((FlashReceiveFooterView) m35368qa()).m35350r1();
            ((FlashReceiveFooterView) m35368qa()).m35349t1();
            ((FlashReceiveFooterView) m35368qa()).m35348u1();
            ((FlashReceiveFooterView) m35368qa()).m9576n1(true);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: A6 */
    public void mo9533A6(List<String> list) {
        l.e(list, "responses");
        if (list.size() < 3) {
            return;
        }
        Button button = this.f12125O;
        if (button == null) {
            l.l("btnYes");
            throw null;
        }
        button.setText(list.get(0));
        Button button2 = this.f12126P;
        if (button2 == null) {
            l.l("btnOk");
            throw null;
        }
        button2.setText(list.get(1));
        Button button3 = this.f12127Q;
        if (button3 != null) {
            button3.setText(list.get(2));
        } else {
            l.l("btnNo");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: B5 */
    public void mo9642B5() {
        FlashReceiveFooterView m35368qa = m35368qa();
        m35368qa.m35346w1(8);
        EditText editText = m35368qa.f12112B;
        if (editText != null) {
            editText.setText((CharSequence) null);
        } else {
            l.l("editMessageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: B6 */
    public void mo9532B6(String str) {
        l.e(str, "message");
        m35368qa().setMessageText(str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: D6 */
    public void mo9531D6(boolean z) {
        AbstractC26214m eVar = new e();
        eVar.f73086f.add(m35369pa());
        eVar.f73086f.add(m35368qa());
        View view = this.f12144n0;
        if (view == null) {
            l.l("buttonContainer");
            throw null;
        }
        eVar.f73086f.add(view);
        eVar.mo2506a(new C3959h(z));
        eVar.f73083c = 400L;
        C26191c c26191c = new C26191c();
        View view2 = this.f12123M;
        if (view2 != null) {
            c26191c.f73086f.add(view2);
        }
        c26191c.f73083c = 400L;
        C26225s c26225s = new C26225s();
        c26225s.m2507P(0);
        c26225s.m2510M(c26191c);
        c26225s.m2510M(eVar);
        ConstraintLayout constraintLayout = this.f12141k0;
        if (constraintLayout != null) {
            C26222q.m2523a(constraintLayout, c26225s);
        } else {
            l.l("flashUIContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: F6 */
    public void mo9530F6() {
        m35364va().setVisibility(0);
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        View view = this.f12123M;
        if (view != null) {
            view.setVisibility(8);
        }
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setVisibility(8);
        TextView textView = this.f12128R;
        if (textView == null) {
            l.l("replyWithText");
            throw null;
        }
        textView.setVisibility(8);
        FlashReceiveFooterView m35368qa = m35368qa();
        EditText editText = this.f12149s0;
        if (editText == null) {
            l.l("editMessageText");
            throw null;
        }
        m35368qa.m9576n1(!TextUtils.isEmpty(editText.getText()));
        ImageView imageView2 = this.f12060j;
        if (imageView2 == null) {
            return;
        }
        imageView2.setBackground(null);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: F9 */
    public void mo9640F9() {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        flashAttachButton.setVisibility(0);
        FlashReceiveFooterView m35368qa = m35368qa();
        m35368qa.getRecentEmojiLayout().setVisibility(0);
        m35368qa.getMoreEmojis().setVisibility(0);
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setVisibility(8);
        View view = this.f12143m0;
        if (view == null) {
            l.l("emojiDivider");
            throw null;
        }
        view.setVisibility(0);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(0);
        m35364va().setVisibility(0);
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        View view2 = this.f12144n0;
        if (view2 == null) {
            l.l("buttonContainer");
            throw null;
        }
        view2.setVisibility(0);
        m35366sa().setVisibility(8);
        TextView textView = this.f12122L;
        if (textView == null) {
            l.l("imageTextV2");
            throw null;
        }
        textView.setVisibility(8);
        m35368qa().m9583h1();
        FrameLayout frameLayout2 = this.f12147q0;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        MapView mapView = this.f12064n;
        if (mapView != null) {
            mapView.f6240a.m38754j();
        }
        MapView mapView2 = this.f12064n;
        if (mapView2 != null) {
            mapView2.f6240a.m38761c();
        }
        FlashReceiveFooterView m35368qa2 = m35368qa();
        EditText editText = this.f12149s0;
        if (editText != null) {
            m35368qa2.m9576n1(!TextUtils.isEmpty(editText.getText()));
        } else {
            l.l("editMessageText");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.BouncingView.AbstractC3941c
    /* renamed from: G5 */
    public void mo35332G5() {
        m35365ta().mo9546o();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: G6 */
    public void mo9529G6(String str) {
        l.e(str, "mapUri");
        mo9487j6(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: H6 */
    public void mo9528H6() {
        if (this.f12115A.isRunning()) {
            this.f12115A.end();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: H7 */
    public void mo9527H7(int i) {
        ProgressBar progressBar = this.f12132V;
        if (progressBar == null) {
            l.l("progressbar");
            throw null;
        }
        progressBar.getProgressDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        ProgressBar progressBar2 = this.f12132V;
        if (progressBar2 != null) {
            progressBar2.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        } else {
            l.l("progressbar");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: I6 */
    public void mo9526I6() {
        MenuItem findItem = m35369pa().getMenu().findItem(C3909R.C3911id.action_download);
        l.d(findItem, "contactHeaderView.menu.f…tem(R.id.action_download)");
        findItem.setVisible(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: J6 */
    public void mo9525J6(String str) {
        l.e(str, "message");
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setText(str);
        AppCompatTextView appCompatTextView2 = this.f12120J;
        if (appCompatTextView2 == null) {
            l.l("flashText");
            throw null;
        } else if (C26548b.m1694g()) {
            Linkify.addLinks(appCompatTextView2, 15);
        } else {
            CharSequence text = appCompatTextView2.getText();
            if (text instanceof Spannable) {
                if (!C26548b.m1698c((Spannable) text, 15)) {
                    return;
                }
                C26548b.m1700a(appCompatTextView2);
                return;
            }
            SpannableString valueOf = SpannableString.valueOf(text);
            if (!C26548b.m1698c(valueOf, 15)) {
                return;
            }
            C26548b.m1700a(appCompatTextView2);
            appCompatTextView2.setText(valueOf);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: J7 */
    public void mo9635J7(String str, boolean z) {
        l.e(str, "message");
        FlashReceiveFooterView m35368qa = m35368qa();
        Objects.requireNonNull(m35368qa);
        l.e(str, "message");
        EditText editText = m35368qa.f12112B;
        if (editText == null) {
            l.l("editMessageText");
            throw null;
        }
        editText.setEnabled(z);
        editText.setText(str);
        editText.setSelection(str.length());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: J8 */
    public void mo9524J8(int i) {
        this.f12055e.postDelayed(this.f12116B, i);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: K6 */
    public void mo9523K6(int i) {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton != null) {
            flashAttachButton.setBackgroundColor(i);
        } else {
            l.l("attachView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: K9 */
    public void mo9522K9(boolean z) {
        View view = this.f12131U;
        if (view == null) {
            l.l("layerView");
            throw null;
        }
        Property property = View.TRANSLATION_Y;
        Resources resources = getResources();
        int i = C3909R.dimen.bouncing_view_jump;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, 0.0f, -resources.getDimension(i));
        l.d(ofFloat, "animator");
        ofFloat.setDuration(400);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        View view2 = this.f12131U;
        if (view2 == null) {
            l.l("layerView");
            throw null;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, View.TRANSLATION_Y, -getResources().getDimension(i), 0.0f);
        l.d(ofFloat2, "animator1");
        ofFloat2.setDuration(800);
        ofFloat2.setStartDelay(50);
        ofFloat2.setInterpolator(new BounceInterpolator());
        this.f12115A.playSequentially(ofFloat, ofFloat2);
        ofFloat2.addListener(new C3960i());
        View view3 = this.f12131U;
        if (view3 == null) {
            l.l("layerView");
            throw null;
        }
        view3.setOnTouchListener(new View$OnTouchListenerC3961j());
        BouncingView bouncingView = this.f12129S;
        if (bouncingView == null) {
            l.l("swipeView");
            throw null;
        }
        bouncingView.f12091c = this;
        if (z) {
            return;
        }
        mo35332G5();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: L6 */
    public void mo9521L6(String str) {
        l.e(str, AnalyticsConstants.NAME);
        m35369pa().post(new RunnableC3963l(str));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: M4 */
    public void mo9631M4() {
        m35368qa().m9582i1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: M6 */
    public void mo9520M6() {
        Button button = this.f12127Q;
        if (button == null) {
            l.l("btnNo");
            throw null;
        }
        int i = C3909R.C3910drawable.bg_solid_white_rad_24dp;
        Object obj = C26467a.f74235a;
        button.setBackground(C26467a.C26470c.m1789b(this, i));
        Button button2 = this.f12125O;
        if (button2 == null) {
            l.l("btnYes");
            throw null;
        }
        button2.setBackground(C26467a.C26470c.m1789b(this, i));
        Button button3 = this.f12126P;
        if (button3 == null) {
            l.l("btnOk");
            throw null;
        }
        button3.setBackground(C26467a.C26470c.m1789b(this, i));
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        MapView mapView = this.f12145o0;
        if (mapView != null) {
            mapView.setVisibility(0);
        }
        FrameLayout frameLayout = this.f12147q0;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        View view = this.f12144n0;
        if (view == null) {
            l.l("buttonContainer");
            throw null;
        }
        view.setVisibility(0);
        ((FlashReceiveFooterView) m35368qa()).m35351q1();
        m35364va().setVisibility(8);
        TextView textView = this.f12128R;
        if (textView != null) {
            textView.setVisibility(8);
        } else {
            l.l("replyWithText");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashReceiveFooterView.AbstractC3948a
    /* renamed from: N2 */
    public void mo35343N2(CharSequence charSequence, boolean z) {
        l.e(charSequence, "text");
        m35365ta().mo9537w(charSequence, z);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: N4 */
    public void mo9630N4(String str, int i, int i2, int i3) {
        l.e(str, "text");
        FlashReceiveFooterView m35368qa = m35368qa();
        Objects.requireNonNull(m35368qa);
        l.e(str, "emoji");
        EditText editText = m35368qa.f12112B;
        if (editText == null) {
            l.l("editMessageText");
            throw null;
        }
        editText.getText().replace(i, i2, str);
        EditText editText2 = m35368qa.f12112B;
        if (editText2 != null) {
            editText2.setSelection(i3);
        } else {
            l.l("editMessageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: N6 */
    public void mo9519N6() {
        ImageView imageView = this.f12137g0;
        if (imageView == null) {
            l.l("overlayBackgroundImage");
            throw null;
        }
        imageView.setAlpha(0.2f);
        try {
            ImageView imageView2 = this.f12137g0;
            if (imageView2 == null) {
                l.l("overlayBackgroundImage");
                throw null;
            }
            WallpaperManager wallpaperManager = this.f12151u;
            if (wallpaperManager != null) {
                imageView2.setImageDrawable(wallpaperManager.getDrawable());
            } else {
                l.l("wallpaperManager");
                throw null;
            }
        } catch (Exception e) {
            C10480a.m26061I1(new UnmutedException.C4147f("exception setting flash wallpaper"));
        }
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    /* renamed from: O3 */
    public void mo29248O3(GoogleMap googleMap) {
        this.f12146p0 = googleMap;
        m35365ta().mo9654a1();
        GoogleMap googleMap2 = this.f12146p0;
        if (googleMap2 != null) {
            try {
                googleMap2.f6237a.m38694L(new j(new C3958g()));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: O4 */
    public void mo9628O4(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        super.mo9628O4(str, str2);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        TextView textView = this.f12121K;
        if (textView != null) {
            textView.setText(str2);
        } else {
            l.l("imageText");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: O6 */
    public boolean mo9518O6(String str, String str2) {
        l.e(str, "mapUri");
        l.e(str2, "packageString");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage(str2);
        if (getIntent().resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
        }
        return getIntent().resolveActivity(getPackageManager()) != null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: O9 */
    public void mo9517O9() {
        ArrowView arrowView = this.f12130T;
        if (arrowView != null) {
            arrowView.m35359d();
        } else {
            l.l("arrowView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: Q6 */
    public void mo9516Q6(int i) {
        ProgressBar progressBar = this.f12132V;
        if (progressBar == null) {
            l.l("progressbar");
            throw null;
        }
        progressBar.setMax(i);
        ProgressBar progressBar2 = this.f12132V;
        if (progressBar2 != null) {
            progressBar2.setProgress(i);
        } else {
            l.l("progressbar");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: Q9 */
    public void mo9515Q9(String str, String str2) {
        l.e(str, "mapImageUrl");
        l.e(str2, "message");
        mo9628O4(str, str2);
        ImageView imageView = this.f12059i;
        if (imageView != null) {
            imageView.setOnClickListener(new View$OnClickListenerC3964m());
        } else {
            l.l("imageContent");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: R6 */
    public void mo9514R6(List<String> list) {
        l.e(list, "responses");
        Button button = this.f12125O;
        if (button == null) {
            l.l("btnYes");
            throw null;
        }
        button.setText(list.get(0));
        Button button2 = this.f12127Q;
        if (button2 == null) {
            l.l("btnNo");
            throw null;
        }
        button2.setText(list.get(1));
        Button button3 = this.f12126P;
        if (button3 != null) {
            button3.setVisibility(8);
        } else {
            l.l("btnOk");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: R9 */
    public void mo9623R9(String str, String str2) {
        l.e(str, "placeName");
        l.e(str2, "locationImageUrl");
        m35368qa().m35347v1(str, str2, m35367ra());
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: S4 */
    public void mo9622S4(String str) {
        l.e(str, "contactImageUrl");
        super.mo9622S4(str);
        C22234h mo8414k = m35367ra().mo8414k();
        mo8414k.mo8420V(str);
        C22234h mo8087u = ((C22234h) C17891a1.C17902k.m15597l((C21852d) mo8414k, Uri.parse(str))).mo8102f().mo8087u(C3909R.C3910drawable.ic_empty_avatar);
        ImageView imageView = this.f12135Y;
        if (imageView != null) {
            mo8087u.m8427O(imageView);
        } else {
            l.l("overlayImage");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: S6 */
    public void mo9513S6(int i) {
        g$a g_a = new g$a(this);
        g_a.m3664e(C3909R.string.block_profile_popup_description);
        g_a.m3660i(C3909R.string.sfc_ok, new DialogInterface$OnClickListenerC3962k());
        g_a.m3662g(C3909R.string.cancel, null);
        g m3668a = g_a.m3668a();
        l.d(m3668a, "dialog.create()");
        m3668a.show();
        Button d = m3668a.d(-1);
        Button d2 = m3668a.d(-2);
        d.setTextColor(i);
        d2.setTextColor(i);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: S7 */
    public void mo9512S7(Flash flash) {
        l.e(flash, "flash");
        this.f12155x.putExtra("extra_flash", flash);
        m35337wa(this.f12155x);
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashReceiveFooterView.AbstractC3948a
    /* renamed from: T0 */
    public void mo35342T0(CharSequence charSequence) {
        m35365ta().mo9423T0(charSequence);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: T4 */
    public void mo9621T4() {
        m35368qa().m9579l1();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: T6 */
    public void mo9511T6() {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        flashAttachButton.setVisibility(0);
        FlashReceiveFooterView m35368qa = m35368qa();
        m35368qa.getRecentEmojiLayout().setVisibility(0);
        m35368qa.getMoreEmojis().setVisibility(0);
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setVisibility(8);
        View view = this.f12143m0;
        if (view == null) {
            l.l("emojiDivider");
            throw null;
        }
        view.setVisibility(0);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(0);
        m35364va().setVisibility(0);
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        View view2 = this.f12144n0;
        if (view2 == null) {
            l.l("buttonContainer");
            throw null;
        }
        view2.setVisibility(0);
        FlashReceiveFooterView m35368qa2 = m35368qa();
        ProgressBar progressBar = m35368qa2.f60054x;
        if (progressBar == null) {
            l.l("sendMessageProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView2 = m35368qa2.f60052v;
        if (imageView2 == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView2.setVisibility(0);
        ImageView imageView3 = m35368qa2.f60052v;
        if (imageView3 == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView3.setImageResource(C3909R.C3910drawable.flash_reply_button_selector);
        FlashReceiveFooterView m35368qa3 = m35368qa();
        EditText editText = this.f12149s0;
        if (editText != null) {
            m35368qa3.m9576n1(!TextUtils.isEmpty(editText.getText()));
        } else {
            l.l("editMessageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: T7 */
    public void mo9620T7() {
        m35368qa().m9579l1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: U5 */
    public void mo9510U5() {
        m35369pa().setVisibility(0);
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        int i = C3909R.C3910drawable.flash_gradient_image_bg;
        Object obj = C26467a.f74235a;
        frameLayout.setForeground(C26467a.C26470c.m1789b(this, i));
        ((FlashReceiveFooterView) m35368qa()).setVisibility(0);
        View view = this.f12144n0;
        if (view != null) {
            view.setVisibility(0);
        } else {
            l.l("buttonContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: U7 */
    public void mo9509U7(QueuedFlash queuedFlash) {
        l.e(queuedFlash, "flash");
        this.f12156y.putExtra("extra_flash", queuedFlash);
        m35337wa(this.f12156y);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: U9 */
    public void mo9618U9() {
        m35368qa().m9578m1();
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashReceiveFooterView.AbstractC3948a
    /* renamed from: V */
    public void mo35341V(boolean z) {
        m35365ta().mo9544p(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: V5 */
    public void mo9508V5(ImageFlash imageFlash) {
        l.e(imageFlash, "imageFlash");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(imageFlash, "imageFlash");
        Intent intent = new Intent((Context) this, (Class<?>) FlashMediaService.class);
        intent.putExtra("extra_image_flash", imageFlash);
        startService(intent);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: V6 */
    public void mo9507V6(Flash flash) {
        l.e(flash, "flash");
        this.f12154w.putExtra("extra_flash", flash);
        m35337wa(this.f12154w);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: V8 */
    public void mo9506V8(Flash flash) {
        l.e(flash, "flash");
        this.f12157z.putExtra("extra_flash", flash);
        m35337wa(this.f12157z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: W5 */
    public void mo9505W5(String str) {
        l.e(str, AnalyticsConstants.NAME);
        String string = getString(C3909R.string.flash_miss_popup, new Object[]{str});
        l.d(string, "getString(R.string.flash_miss_popup, name)");
        int i = C3909R.C3910drawable.flash_ic_tooltip_center_bottom;
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
        TextView textView = this.f12136Z;
        if (textView == null) {
            l.l("overlayFlashFromText");
            throw null;
        }
        l.e(textView, ViewAction.VIEW);
        Context context = textView.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        if (((Activity) context).isFinishing() || textView.getApplicationWindowToken() == null) {
            return;
        }
        View contentView = popupWindow.getContentView();
        contentView.measure(0, 0);
        int measuredWidth = textView.getMeasuredWidth() / 2;
        l.d(contentView, "contentView");
        popupWindow.showAsDropDown(textView, measuredWidth - (contentView.getMeasuredWidth() / 2), -(contentView.getMeasuredHeight() + textView.getMeasuredHeight() + 0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: W6 */
    public void mo9504W6(Drawable drawable) {
        l.e(drawable, "drawable");
        C19291g.m13522p1(this, drawable, C3909R.attr.theme_flash_round_button_color);
        ((FlashReceiveFooterView) m35368qa()).setBackground(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: W9 */
    public void mo9503W9() {
        getWindow().clearFlags(128);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: X5 */
    public void mo9502X5(List<C21505c> list) {
        l.e(list, "menuItems");
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton != null) {
            flashAttachButton.setMenuItems(list);
        } else {
            l.l("attachView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: X6 */
    public void mo9501X6() {
        this.f12055e.removeCallbacks(this.f12116B);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: Y5 */
    public void mo9500Y5(Flash flash) {
        l.e(flash, "flash");
        this.f12153v.putExtra("extra_flash", flash);
        m35337wa(this.f12153v);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: Z0 */
    public void mo9499Z0(Uri uri) {
        l.e(uri, "imageUri");
        C21852d<Bitmap> mo8415f = m35367ra().mo8415f();
        mo8415f.f61767J = uri;
        mo8415f.f61771N = true;
        ImageView imageView = this.f12140j0;
        if (imageView == null) {
            l.l("imageContentV2");
            throw null;
        }
        mo8415f.m8429M(new BaseFlashActivity.C3934a(this, imageView));
        m35368qa().m9576n1(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: Z5 */
    public void mo9498Z5(boolean z) {
        View view = this.f12131U;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        } else {
            l.l("layerView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: a6 */
    public void mo9497a6(boolean z) {
        int i = z ? 0 : 8;
        Button button = this.f12125O;
        if (button == null) {
            l.l("btnYes");
            throw null;
        }
        button.setVisibility(i);
        Button button2 = this.f12126P;
        if (button2 == null) {
            l.l("btnOk");
            throw null;
        }
        button2.setVisibility(i);
        Button button3 = this.f12127Q;
        if (button3 != null) {
            button3.setVisibility(i);
        } else {
            l.l("btnNo");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: b5 */
    public void mo9615b5() {
        super.mo9615b5();
        ConstraintLayout constraintLayout = this.f12141k0;
        if (constraintLayout == null) {
            l.l("flashUIContainer");
            throw null;
        }
        constraintLayout.removeView(this.f12119E);
        m35369pa().getMenu().removeGroup(C3909R.C3911id.header_action_group);
        m35368qa().setVisibility(0);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(0);
        View view = this.f12143m0;
        if (view == null) {
            l.l("emojiDivider");
            throw null;
        }
        view.setVisibility(0);
        TextView textView = this.f12128R;
        if (textView == null) {
            l.l("replyWithText");
            throw null;
        }
        textView.setVisibility(8);
        FlashReceiveFooterView m35368qa = m35368qa();
        m35368qa.m35346w1(8);
        EditText editText = m35368qa.f12112B;
        if (editText == null) {
            l.l("editMessageText");
            throw null;
        }
        editText.setText((CharSequence) null);
        mo9497a6(true);
        mo9493c7(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: b6 */
    public void mo9496b6(int i) {
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(i);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: ba */
    public void mo9495ba() {
        View findViewById = findViewById(C3909R.C3911id.receiveImageTextV2);
        l.d(findViewById, "findViewById(R.id.receiveImageTextV2)");
        this.f12122L = (TextView) findViewById;
        this.f12123M = findViewById(C3909R.C3911id.receiveImageTextV2Container);
        View findViewById2 = findViewById(C3909R.C3911id.flashImageContainerV2);
        l.d(findViewById2, "findViewById(R.id.flashImageContainerV2)");
        this.f12139i0 = (FrameLayout) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.imageContentV2);
        l.d(findViewById3, "findViewById(R.id.imageContentV2)");
        this.f12140j0 = (ImageView) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.closeButtonContact);
        l.d(findViewById4, "findViewById(R.id.closeButtonContact)");
        ImageView imageView = (ImageView) findViewById4;
        this.f12142l0 = imageView;
        imageView.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        ImageView imageView2 = this.f12140j0;
        if (imageView2 == null) {
            l.l("imageContentV2");
            throw null;
        }
        imageView2.setOnClickListener(new View$OnClickListenerC3952a(0, this));
        ImageView imageView3 = this.f12142l0;
        if (imageView3 == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView3.setOnClickListener(new View$OnClickListenerC3952a(1, this));
        TextView textView = this.f12122L;
        if (textView != null) {
            textView.setCustomSelectionActionModeCallback(this);
        } else {
            l.l("imageTextV2");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: c5 */
    public void mo9614c5(String str) {
        l.e(str, "hint");
        m35368qa().setCameraModeHint(str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: c6 */
    public void mo9494c6() {
        FrameLayout frameLayout = this.f12147q0;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        FrameLayout frameLayout2 = this.f12139i0;
        if (frameLayout2 == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout2.setVisibility(8);
        TextView textView = this.f12122L;
        if (textView != null) {
            textView.setVisibility(8);
        } else {
            l.l("imageTextV2");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: c7 */
    public void mo9493c7(boolean z) {
        TextView textView = this.f12128R;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        } else {
            l.l("replyWithText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: c8 */
    public void mo9613c8() {
        ActionMode actionMode = this.f12150t0;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: d5 */
    public void mo9612d5(String str, String str2) {
        l.e(str, "videoUrl");
        l.e(str2, "message");
        super.mo9612d5(str, str2);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        TextView textView = this.f12124N;
        if (textView == null) {
            l.l("videoText");
            throw null;
        }
        textView.setEnabled(false);
        TextView textView2 = this.f12124N;
        if (textView2 != null) {
            textView2.setText(str2);
        } else {
            l.l("videoText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: d6 */
    public void mo9492d6(int i) {
        ProgressBar progressBar = this.f12132V;
        if (progressBar != null) {
            progressBar.setProgress(i);
        } else {
            l.l("progressbar");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: e6 */
    public void mo9491e6() {
        AbstractC21513e abstractC21513e = this.f12119E;
        if (abstractC21513e != null) {
            Context context = abstractC21513e.getContext();
            Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
            Window window = ((Activity) context).getWindow();
            l.d(window, "(context as Activity).window");
            View decorView = window.getDecorView();
            l.d(decorView, "(context as Activity).window.decorView");
            View rootView = decorView.getRootView();
            l.d(rootView, "(context as Activity).window.decorView.rootView");
            int height = rootView.getHeight();
            C26225s c26225s = new C26225s();
            C26191c c26191c = new C26191c();
            c26191c.f73083c = height * 4;
            C26189a c26189a = new C26189a();
            c26189a.f73032a = C26189a.m2561b(90.0f);
            c26189a.f73033b = C26189a.m2561b(90.0f);
            c26225s.m2510M(c26191c);
            c26225s.m2510M(new C21515f());
            C26222q.m2523a(abstractC21513e, c26225s);
            AbstractC21513e.C21514a c21514a = abstractC21513e.f60060u;
            if (c21514a == null) {
                return;
            }
            z it = new i(1, abstractC21513e.getChildCount()).iterator();
            while (((h) it).hasNext()) {
                int a = it.a();
                View childAt = abstractC21513e.getChildAt(a - 1);
                if (childAt instanceof TextView) {
                    TextView textView = (TextView) childAt;
                    ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                    Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
                    c0111a.f660z = abstractC21513e.f60059t.nextFloat();
                    abstractC21513e.mo9567h1(c0111a);
                    textView.setPivotX(textView.getWidth() / 2.0f);
                    textView.setPivotY(textView.getHeight() / 2.0f);
                    float nextFloat = abstractC21513e.f60059t.nextFloat() * 20.0f;
                    float f = nextFloat;
                    if (a % 2 == 0) {
                        f = -nextFloat;
                    }
                    textView.setRotation(f);
                } else if (childAt instanceof Guideline) {
                    Guideline guideline = (Guideline) childAt;
                    ViewGroup.LayoutParams layoutParams2 = guideline.getLayoutParams();
                    Objects.requireNonNull(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.C0111a c0111a2 = (ConstraintLayout.C0111a) layoutParams2;
                    c0111a2.f627c = c21514a.f60064d;
                    guideline.setLayoutParams(c0111a2);
                }
            }
            abstractC21513e.requestLayout();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: e8 */
    public void mo9490e8() {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        flashAttachButton.setVisibility(8);
        FlashReceiveFooterView m35368qa = m35368qa();
        m35368qa.getRecentEmojiLayout().setVisibility(8);
        m35368qa.getMoreEmojis().setVisibility(8);
        m35368qa().m35350r1();
        FrameLayout frameLayout = this.f12147q0;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        View view = this.f12143m0;
        if (view == null) {
            l.l("emojiDivider");
            throw null;
        }
        view.setVisibility(8);
        TextView textView = this.f12128R;
        if (textView == null) {
            l.l("replyWithText");
            throw null;
        }
        textView.setVisibility(8);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        m35364va().setVisibility(8);
        View view2 = this.f12123M;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        View view3 = this.f12144n0;
        if (view3 == null) {
            l.l("buttonContainer");
            throw null;
        }
        view3.setVisibility(8);
        FrameLayout frameLayout2 = this.f12139i0;
        if (frameLayout2 == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout2.setVisibility(0);
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        m35368qa().m35349t1();
        m35368qa().m35348u1();
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: f5 */
    public void mo9610f5(int i) {
        super.mo9610f5(i);
        ImageView imageView = this.f12135Y;
        if (imageView != null) {
            imageView.setImageResource(i);
        } else {
            l.l("overlayImage");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: g0 */
    public void mo9609g0() {
        super.mo9609g0();
        View findViewById = findViewById(C3909R.C3911id.textReceiveFlash);
        l.d(findViewById, "findViewById(R.id.textReceiveFlash)");
        this.f12120J = (AppCompatTextView) findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.receiveImageText);
        l.d(findViewById2, "findViewById(R.id.receiveImageText)");
        this.f12121K = (TextView) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.videoText);
        l.d(findViewById3, "findViewById(R.id.videoText)");
        this.f12124N = (TextView) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.btnYes);
        l.d(findViewById4, "findViewById(R.id.btnYes)");
        this.f12125O = (Button) findViewById4;
        View findViewById5 = findViewById(C3909R.C3911id.btnOk);
        l.d(findViewById5, "findViewById(R.id.btnOk)");
        this.f12126P = (Button) findViewById5;
        View findViewById6 = findViewById(C3909R.C3911id.btnNo);
        l.d(findViewById6, "findViewById(R.id.btnNo)");
        this.f12127Q = (Button) findViewById6;
        View findViewById7 = findViewById(C3909R.C3911id.replyWithText);
        l.d(findViewById7, "findViewById(R.id.replyWithText)");
        this.f12128R = (TextView) findViewById7;
        View findViewById8 = findViewById(C3909R.C3911id.swipeView);
        l.d(findViewById8, "findViewById(R.id.swipeView)");
        this.f12129S = (BouncingView) findViewById8;
        View findViewById9 = findViewById(C3909R.C3911id.arrowView);
        l.d(findViewById9, "findViewById(R.id.arrowView)");
        this.f12130T = (ArrowView) findViewById9;
        int i = C3909R.C3911id.overLayViewContainer;
        View findViewById10 = findViewById(i);
        l.d(findViewById10, "findViewById(R.id.overLayViewContainer)");
        this.f12131U = findViewById10;
        View findViewById11 = findViewById(C3909R.C3911id.progressBar);
        l.d(findViewById11, "findViewById(R.id.progressBar)");
        this.f12132V = (ProgressBar) findViewById11;
        View findViewById12 = findViewById(C3909R.C3911id.overlayName);
        l.d(findViewById12, "findViewById(R.id.overlayName)");
        this.f12133W = (TextView) findViewById12;
        int i2 = C3909R.C3911id.overlayCaller;
        View findViewById13 = findViewById(i2);
        l.d(findViewById13, "findViewById(R.id.overlayCaller)");
        this.f12134X = (TextView) findViewById13;
        View findViewById14 = findViewById(C3909R.C3911id.overlayUserImage);
        l.d(findViewById14, "findViewById(R.id.overlayUserImage)");
        this.f12135Y = (ImageView) findViewById14;
        View findViewById15 = findViewById(i2);
        l.d(findViewById15, "findViewById(R.id.overlayCaller)");
        this.f12136Z = (TextView) findViewById15;
        View findViewById16 = findViewById(C3909R.C3911id.imageOverlayBackground);
        l.d(findViewById16, "findViewById(R.id.imageOverlayBackground)");
        this.f12137g0 = (ImageView) findViewById16;
        View findViewById17 = findViewById(C3909R.C3911id.bodyStub);
        l.d(findViewById17, "findViewById(R.id.bodyStub)");
        this.f12138h0 = findViewById17;
        View findViewById18 = findViewById(C3909R.C3911id.root_container);
        l.d(findViewById18, "findViewById(R.id.root_container)");
        this.f12141k0 = (ConstraintLayout) findViewById18;
        View findViewById19 = findViewById(C3909R.C3911id.buttonContainer);
        l.d(findViewById19, "findViewById(R.id.buttonContainer)");
        this.f12144n0 = findViewById19;
        View findViewById20 = findViewById(C3909R.C3911id.footerEmojiDivider);
        l.d(findViewById20, "findViewById(R.id.footerEmojiDivider)");
        this.f12143m0 = findViewById20;
        View findViewById21 = findViewById(C3909R.C3911id.edit_message_text);
        l.d(findViewById21, "findViewById(R.id.edit_message_text)");
        this.f12149s0 = (EditText) findViewById21;
        BouncingView bouncingView = this.f12129S;
        if (bouncingView == null) {
            l.l("swipeView");
            throw null;
        }
        bouncingView.setDragViewResId(i);
        m35368qa().setActionListener(this);
        m35369pa().setContactClickListener$flash_release(this);
        Button button = this.f12127Q;
        if (button == null) {
            l.l("btnNo");
            throw null;
        }
        button.setOnClickListener(this);
        Button button2 = this.f12125O;
        if (button2 == null) {
            l.l("btnYes");
            throw null;
        }
        button2.setOnClickListener(this);
        Button button3 = this.f12126P;
        if (button3 == null) {
            l.l("btnOk");
            throw null;
        }
        button3.setOnClickListener(this);
        TextView textView = this.f12136Z;
        if (textView == null) {
            l.l("overlayFlashFromText");
            throw null;
        }
        l.e(textView, "$this$updateFlashEmojiTextWithIcon");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText());
        C17891a1.C17902k.m15631Z0(textView, spannableStringBuilder);
        textView.setText(spannableStringBuilder);
        View view = this.f12144n0;
        if (view == null) {
            l.l("buttonContainer");
            throw null;
        }
        view.setVisibility(0);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setCustomSelectionActionModeCallback(this);
        m35368qa().m9576n1(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: h6 */
    public void mo9489h6(C21517g c21517g) {
        l.e(c21517g, "displayableEmojiAttributes");
        C21518h c21518h = new C21518h(this);
        this.f12119E = c21518h;
        c21518h.setEmojiAttributes$flash_release(c21517g);
        ConstraintLayout constraintLayout = this.f12141k0;
        if (constraintLayout != null) {
            constraintLayout.addView(this.f12119E, new ConstraintLayout.C0111a(-1, -1));
        } else {
            l.l("flashUIContainer");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: i5 */
    public void mo9606i5(String str, String str2) {
        l.e(str, "firstLine");
        l.e(str2, "boldText");
        super.mo9606i5(str, str2);
        TextView textView = this.f12133W;
        if (textView == null) {
            l.l("overlayName");
            throw null;
        }
        textView.setText(str2);
        TextView textView2 = this.f12134X;
        if (textView2 != null) {
            textView2.setText(str);
        } else {
            l.l("overlayCaller");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: ia */
    public void mo9488ia(String str, String str2, String str3) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        l.e(str3, "wallpaperUrl");
        mo9598n5(str, str2);
        ImageView imageView = this.f12137g0;
        if (imageView == null) {
            l.l("overlayBackgroundImage");
            throw null;
        }
        imageView.setAlpha(0.2f);
        C22234h mo8414k = m35367ra().mo8414k();
        mo8414k.mo8420V(str3);
        C21852d c21852d = (C21852d) mo8414k;
        ImageView imageView2 = this.f12137g0;
        if (imageView2 == null) {
            l.l("overlayBackgroundImage");
            throw null;
        }
        c21852d.m8427O(imageView2);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        TextView textView = this.f12121K;
        if (textView != null) {
            textView.setText(str2);
        } else {
            l.l("imageText");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: j5 */
    public void mo9605j5(String str, String str2, String str3, String str4) {
        l.e(str, "placeName");
        l.e(str2, "locationMessage");
        l.e(str3, "lat");
        l.e(str4, "long");
        C3953b c3953b = new C3953b(this, str);
        GoogleMap googleMap = this.f12146p0;
        if (googleMap != null) {
            m35335ya();
            View view = this.f12144n0;
            if (view == null) {
                l.l("buttonContainer");
                throw null;
            }
            view.setVisibility(0);
            ((FlashReceiveFooterView) m35368qa()).m35351q1();
            googleMap.m38706c(c3953b);
            try {
                googleMap.f6237a.m38685z0(new e.m.a.f.k.g(new C3965n(c3953b, str3, str4, str2)));
                C17891a1.C17902k.m15616e1(googleMap, Double.parseDouble(str3), Double.parseDouble(str4), true);
                View view2 = this.f12123M;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                TextView textView = this.f12122L;
                if (textView == null) {
                    l.l("imageTextV2");
                    throw null;
                }
                textView.setVisibility(0);
                TextView textView2 = this.f12122L;
                if (textView2 != null) {
                    textView2.setText(str2);
                } else {
                    l.l("imageTextV2");
                    throw null;
                }
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: j6 */
    public void mo9487j6(Intent intent) {
        l.e(intent, "intent");
        startActivity(intent);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: k6 */
    public void mo9486k6(String str, long j, String str2) {
        l.e(str, "history");
        l.e(str2, AnalyticsConstants.NAME);
        ConstraintLayout constraintLayout = this.f12141k0;
        if (constraintLayout == null) {
            l.l("flashUIContainer");
            throw null;
        }
        constraintLayout.removeView(this.f12119E);
        C19286f.m13679Y(m35368qa(), false, 0L, 2);
        m35368qa().m9584g1();
        Menu menu = m35369pa().getMenu();
        int i = C3909R.C3911id.header_action_group;
        menu.setGroupEnabled(i, false);
        m35369pa().getMenu().setGroupVisible(i, false);
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.dismiss();
        }
        m35368qa().setVisibility(8);
        m35366sa().setVisibility(8);
        View view = this.f12062l;
        if (view == null) {
            l.l("videoContainer");
            throw null;
        }
        view.setVisibility(8);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        mo9497a6(false);
        mo9493c7(false);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i2 = C3909R.C3911id.waiting_container;
        c26907a.m1120m(i2, View$OnClickListenerC21577e.f60211n.m9410a(str, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, str2, false, j), null);
        c26907a.f75322f = 4097;
        c26907a.mo1126g();
        View findViewById = findViewById(i2);
        l.d(findViewById, ViewAction.VIEW);
        findViewById.setVisibility(0);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: l5 */
    public void mo9601l5(boolean z) {
        m35368qa().setMessageCursorVisible(z);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: l8 */
    public void mo9485l8(int i, int i2) {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        Drawable m13535l0 = C19291g.m13535l0(flashAttachButton.getContext(), i, i2);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…ontext, imageId, colorId)");
        flashAttachButton.setDrawable(m13535l0);
        flashAttachButton.setVisibility(0);
        if (!flashAttachButton.f12099c) {
            return;
        }
        LinearLayout linearLayout = flashAttachButton.f12102f;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            linearLayout.setVisibility(4);
        }
        View view = flashAttachButton.f12103g;
        if (view != null) {
            view.animate().cancel();
            view.setVisibility(4);
        }
        flashAttachButton.f12100d = false;
        flashAttachButton.f12099c = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: m6 */
    public void mo9484m6(Uri uri, String str) {
        l.e(uri, "contentUriFromBitmap");
        l.e(str, "imageDescription");
        C21469a c21469a = new C21469a();
        Intent intent = getIntent();
        l.d(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.putString("share_image", uri.toString());
        }
        if (extras != null) {
            extras.putString("share_text", str);
        }
        c21469a.setArguments(extras);
        c21469a.show(getSupportFragmentManager(), c21469a.getTag());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: m9 */
    public void mo9599m9() {
        this.f12147q0 = (FrameLayout) findViewById(C3909R.C3911id.flashMapContainerV2);
        MapView mapView = (MapView) findViewById(C3909R.C3911id.flashMapView);
        this.f12145o0 = mapView;
        if (mapView != null) {
            mapView.m38703b(null);
            mapView.m38704a(this);
            mapView.f6240a.m38757g();
        }
        FrameLayout frameLayout = this.f12147q0;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View$OnClickListenerC3956e());
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: n5 */
    public void mo9598n5(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        super.mo9598n5(str, str2);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        View view = this.f12123M;
        if (view != null) {
            view.setVisibility(0);
        }
        TextView textView = this.f12122L;
        if (textView == null) {
            l.l("imageTextV2");
            throw null;
        }
        textView.setVisibility(0);
        TextView textView2 = this.f12122L;
        if (textView2 != null) {
            textView2.setText(str2);
        } else {
            l.l("imageTextV2");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: o */
    public void mo9483o(String str) {
        l.e(str, "message");
        View$OnClickListenerC21577e m42943J = getSupportFragmentManager().m42943J(C3909R.C3911id.waiting_container);
        if (m42943J != null) {
            m42943J.m9411OA(str);
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashAttachButton.AbstractC3943a
    /* renamed from: o0 */
    public void mo35340o0() {
        m35365ta().mo9545o0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: o6 */
    public void mo9482o6() {
        Button button = this.f12127Q;
        if (button == null) {
            l.l("btnNo");
            throw null;
        }
        int i = C3909R.C3910drawable.bg_solid_white_rad_24dp;
        Object obj = C26467a.f74235a;
        button.setBackground(C26467a.C26470c.m1789b(this, i));
        Button button2 = this.f12125O;
        if (button2 == null) {
            l.l("btnYes");
            throw null;
        }
        button2.setBackground(C26467a.C26470c.m1789b(this, i));
        Button button3 = this.f12126P;
        if (button3 == null) {
            l.l("btnOk");
            throw null;
        }
        button3.setBackground(C26467a.C26470c.m1789b(this, i));
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        View view = this.f12123M;
        if (view != null) {
            view.setVisibility(0);
        }
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setVisibility(0);
        View view2 = this.f12144n0;
        if (view2 == null) {
            l.l("buttonContainer");
            throw null;
        }
        view2.setVisibility(0);
        ((FlashReceiveFooterView) m35368qa()).m35351q1();
        m35364va().setVisibility(8);
        TextView textView = this.f12128R;
        if (textView == null) {
            l.l("replyWithText");
            throw null;
        }
        textView.setVisibility(8);
        FrameLayout frameLayout2 = this.f12147q0;
        if (frameLayout2 == null) {
            return;
        }
        frameLayout2.setVisibility(8);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: o9 */
    public void mo9596o9() {
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: oa */
    public void mo9481oa(Drawable drawable) {
        l.e(drawable, "drawable");
        Button button = this.f12127Q;
        if (button == null) {
            l.l("btnNo");
            throw null;
        }
        button.setBackground(drawable);
        Button button2 = this.f12125O;
        if (button2 == null) {
            l.l("btnYes");
            throw null;
        }
        button2.setBackground(drawable);
        Button button3 = this.f12126P;
        if (button3 != null) {
            button3.setBackground(drawable);
        } else {
            l.l("btnOk");
            throw null;
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        m35365ta().mo9538v(view.getId(), ((Button) view).getText().toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(2621568, 2621568);
        C21533o c21533o = new C21533o(this);
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        C25225a.m3846s(c21533o, C21533o.class);
        C25225a.m3846s(m9331a, AbstractC21666a.class);
        C21532n c21532n = new C21532n(m9331a);
        C21524f c21524f = new C21524f(m9331a);
        C21522d c21522d = new C21522d(m9331a);
        C21530l c21530l = new C21530l(m9331a);
        C21531m c21531m = new C21531m(m9331a);
        C21521c c21521c = new C21521c(m9331a);
        C21519a c21519a = new C21519a(m9331a);
        C21535q c21535q = new C21535q(c21533o);
        Object obj = b.c;
        if (!(c21535q instanceof b)) {
            c21535q = new b(c21535q);
        }
        C21534p c21534p = new C21534p(c21533o, c21535q);
        if (!(c21534p instanceof b)) {
            c21534p = new b(c21534p);
        }
        C21536r c21536r = new C21536r(c21533o, c21532n, c21524f, c21522d, c21530l, c21531m, c21521c, c21519a, c21534p, new C21526h(m9331a), new C21528j(m9331a), new C21527i(m9331a), new C21523e(m9331a), new C21525g(m9331a), new C21529k(m9331a), new C21520b(m9331a));
        if (!(c21536r instanceof b)) {
            c21536r = new b(c21536r);
        }
        C21537s c21537s = new C21537s(c21533o, c21535q);
        if (!(c21537s instanceof b)) {
            c21537s = new b(c21537s);
        }
        this.f12051a = (AbstractC21538t) c21536r.get();
        Objects.requireNonNull(m9331a.mo9213b(), "Cannot return null from a non-@Nullable component method");
        AbstractC8541a mo9211d = m9331a.mo9211d();
        Objects.requireNonNull(mo9211d, "Cannot return null from a non-@Nullable component method");
        this.f12052b = mo9211d;
        this.f12151u = (WallpaperManager) c21537s.get();
        AbstractC8541a abstractC8541a = this.f12052b;
        if (abstractC8541a == null) {
            l.l("coreSettings");
            throw null;
        }
        setContentView(abstractC8541a.getBoolean("featureShareImageInFlash") ? C3909R.layout.activity_receive_flashv2 : C3909R.layout.activity_receive_flash);
        ((AbstractC21538t) m35365ta()).mo9650f1(this);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        this.f12150t0 = actionMode;
        return true;
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public boolean onCreateOptionsMenu(Menu menu) {
        l.e(menu, "menu");
        m35369pa().m43079n(C3909R.C3913menu.menu_incoming_header);
        m35369pa().setOnMenuItemClickListener(new C3957f());
        return super.onCreateOptionsMenu(menu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public void onDestroy() {
        super.onDestroy();
        MapView mapView = this.f12145o0;
        if (mapView != null) {
            mapView.f6240a.m38761c();
        }
        C27062a.m968b(this).m965e(this.f12118D);
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f12150t0 = null;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        l.e(keyEvent, "keyEvent");
        return m35365ta().mo9549i(keyEvent) || FlashActivity.super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onPrepareOptionsMenu(Menu menu) {
        l.e(menu, "menu");
        return ((AbstractC21538t) m35365ta()).mo9552g() && FlashActivity.super.onPrepareOptionsMenu(menu);
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        m35365ta().mo9551g1(i, strArr, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        FlashActivity.super.onStart();
        C27062a.m968b(this).m967c(this.f12118D, this.f12117C);
        C27062a.m968b(this).m967c(this.f12152u0, new IntentFilter("action_image_flash"));
        ((AbstractC21538t) m35365ta()).onStart();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStop() {
        FlashActivity.super.onStop();
        Object systemService = getSystemService("power");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        if (!((PowerManager) systemService).isInteractive()) {
            return;
        }
        AbstractC21538t abstractC21538t = (AbstractC21538t) m35365ta();
        String messageText = ((FlashReceiveFooterView) m35368qa()).getMessageText();
        ImageView imageView = ((FlashReceiveFooterView) m35368qa()).f12113C;
        if (imageView == null) {
            l.l("mapView");
            throw null;
        }
        abstractC21538t.mo9540t(messageText, imageView.getVisibility() == 0);
        C27062a.m968b(this).m965e(this.f12152u0);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p0 */
    public void mo9595p0() {
        m35368qa().m35348u1();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p5 */
    public void mo9594p5() {
        m35368qa().m9582i1();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p8 */
    public void mo9593p8() {
        m35368qa().m35349t1();
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashAttachButton.AbstractC3943a
    /* renamed from: q0 */
    public void mo35339q0() {
        m35365ta().mo9542q0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: q5 */
    public void mo9592q5(int i, int i2) {
        m35369pa().setBackground(C19291g.m13600P(this, i));
        m35369pa().setHeaderTextColor(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: q6 */
    public void mo9480q6(C21509a c21509a) {
        l.e(c21509a, "displayableEmojiAttributes");
        C21510b c21510b = new C21510b(this);
        this.f12119E = c21510b;
        c21510b.setEmojiAttributes$flash_release(c21509a);
        ConstraintLayout constraintLayout = this.f12141k0;
        if (constraintLayout != null) {
            constraintLayout.addView(this.f12119E, new ConstraintLayout.C0111a(-1, -1));
        } else {
            l.l("flashUIContainer");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: r6 */
    public void mo9479r6(String str) {
        l.e(str, "action");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: r9 */
    public void mo9478r9(String str, String str2, String str3) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        l.e(str3, "wallpaperUrl");
        mo9628O4(str, str2);
        ImageView imageView = this.f12137g0;
        if (imageView == null) {
            l.l("overlayBackgroundImage");
            throw null;
        }
        imageView.setAlpha(0.2f);
        C22234h mo8414k = m35367ra().mo8414k();
        mo8414k.mo8420V(str3);
        C21852d c21852d = (C21852d) mo8414k;
        ImageView imageView2 = this.f12137g0;
        if (imageView2 == null) {
            l.l("overlayBackgroundImage");
            throw null;
        }
        c21852d.m8427O(imageView2);
        AppCompatTextView appCompatTextView = this.f12120J;
        if (appCompatTextView == null) {
            l.l("flashText");
            throw null;
        }
        appCompatTextView.setVisibility(8);
        TextView textView = this.f12121K;
        if (textView != null) {
            textView.setText(str2);
        } else {
            l.l("imageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1387e.C21737k.AbstractC21738a
    /* renamed from: s */
    public void mo9141s(C21733i c21733i) {
        l.e(c21733i, "emoticon");
        m35365ta().mo9651d1(m35368qa().getMessageText(), c21733i, m35368qa().getSelectionStart(), m35368qa().getSelectionEnd());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: s6 */
    public void mo9477s6(int i) {
        Button button = this.f12127Q;
        if (button == null) {
            l.l("btnNo");
            throw null;
        }
        button.setTextColor(i);
        Button button2 = this.f12125O;
        if (button2 == null) {
            l.l("btnYes");
            throw null;
        }
        button2.setTextColor(i);
        Button button3 = this.f12126P;
        if (button3 != null) {
            button3.setTextColor(i);
        } else {
            l.l("btnOk");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: s7 */
    public void mo9476s7() {
        m35365ta().mo9550h(this.f12068r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: s9 */
    public void mo9475s9(Flash flash) {
        l.e(flash, "flash");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(flash, "flash");
        Intent intent = new Intent((Context) this, (Class<?>) FlashMediaService.class);
        intent.setAction("action_image_download");
        intent.putExtra("extra_flash", flash);
        startService(intent);
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashAttachButton.AbstractC3943a
    /* renamed from: u0 */
    public void mo35338u0(int i) {
        m35365ta().mo9648k1(i);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a
    /* renamed from: u1 */
    public void mo9573u1() {
        Boolean mo9147h;
        AbstractC21538t m35365ta = m35365ta();
        String messageText = m35368qa().getMessageText();
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            boolean isShowing = abstractC21728g.isShowing();
            AbstractC21728g abstractC21728g2 = this.f12061k;
            if (abstractC21728g2 == null || (mo9147h = abstractC21728g2.mo9147h()) == null) {
                return;
            }
            m35365ta.mo9656Y0(messageText, isShowing, mo9147h.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: u6 */
    public void mo9474u6() {
        C27062a.m968b(this).m965e(this.f12118D);
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    /* renamed from: ua */
    public View mo35330ua() {
        BouncingView bouncingView = this.f12129S;
        if (bouncingView != null) {
            return bouncingView;
        }
        l.l("swipeView");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a
    /* renamed from: v2 */
    public void mo9572v2(int i) {
        m35365ta().mo9649j1(m35368qa().getMessageText(), i, m35368qa().getSelectionStart(), m35368qa().getSelectionEnd());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: v6 */
    public void mo9473v6() {
        View findViewById = findViewById(C3909R.C3911id.flashAttachButton);
        l.d(findViewById, "findViewById(R.id.flashAttachButton)");
        this.f12148r0 = (FlashAttachButton) findViewById;
        m35368qa().m35351q1();
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        LayoutInflater.from(flashAttachButton.getContext()).inflate(C3909R.layout.flash_attach_viewv2, flashAttachButton);
        flashAttachButton.setClipChildren(false);
        flashAttachButton.f12101e = (ImageView) flashAttachButton.findViewById(C3909R.C3911id.fab_icon);
        flashAttachButton.f12102f = (LinearLayout) flashAttachButton.findViewById(C3909R.C3911id.fab_menu);
        View findViewById2 = flashAttachButton.findViewById(C3909R.C3911id.fab_backdrop);
        flashAttachButton.f12103g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View$OnClickListenerC21503a(flashAttachButton));
        }
        ImageView imageView = flashAttachButton.f12101e;
        if (imageView != null) {
            imageView.setElevation(C8605o.m28238b(flashAttachButton.getContext(), 6.0f));
        }
        Resources resources = flashAttachButton.getResources();
        l.d(resources, "resources");
        flashAttachButton.f12104h = resources.getConfiguration().orientation == 2;
        ImageView imageView2 = flashAttachButton.f12101e;
        if (imageView2 != null) {
            imageView2.setOnClickListener(flashAttachButton);
        }
        flashAttachButton.setVisibility(0);
        flashAttachButton.setFabActionListener(this);
        m35365ta().mo9541r();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: w6 */
    public void mo9472w6() {
        MenuItem findItem = m35369pa().getMenu().findItem(C3909R.C3911id.action_download);
        l.d(findItem, "contactHeaderView.menu.f…tem(R.id.action_download)");
        findItem.setVisible(false);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: w8 */
    public void mo9590w8() {
        m35368qa().m9580k1(C3909R.string.tip_reply_with_location);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: wa */
    public final boolean m35337wa(Intent intent) {
        return C27062a.m968b(this).m966d(intent);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: x6 */
    public void mo9471x6() {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        flashAttachButton.setVisibility(8);
        m35368qa().setVisibility(8);
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setForeground(null);
        m35369pa().setVisibility(8);
        View view = this.f12144n0;
        if (view != null) {
            view.setVisibility(8);
        } else {
            l.l("buttonContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: x7 */
    public void mo9470x7() {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        ImageView imageView = flashAttachButton.f12101e;
        if (imageView == null) {
            return;
        }
        imageView.setBackground(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: y6 */
    public void mo9469y6(int i, int i2) {
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        Drawable m13535l0 = C19291g.m13535l0(this, i, i2);
        l.d(m13535l0, "ThemeUtils.getTintedDraw…his, drawable, tintColor)");
        flashAttachButton.setDrawable(m13535l0);
    }

    /* renamed from: ya */
    public final void m35335ya() {
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        MapView mapView = this.f12145o0;
        if (mapView != null) {
            mapView.setVisibility(0);
        }
        FrameLayout frameLayout = this.f12147q0;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        m35364va().setVisibility(8);
        TextView textView = this.f12122L;
        if (textView == null) {
            l.l("imageTextV2");
            throw null;
        }
        textView.setVisibility(8);
        TextView textView2 = this.f12128R;
        if (textView2 != null) {
            textView2.setVisibility(8);
        } else {
            l.l("replyWithText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: z0 */
    public void mo9468z0() {
        FrameLayout frameLayout = this.f12139i0;
        if (frameLayout == null) {
            l.l("imageContainerV2");
            throw null;
        }
        frameLayout.setVisibility(8);
        m35364va().setVisibility(0);
        ImageView imageView = this.f12142l0;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        FlashAttachButton flashAttachButton = this.f12148r0;
        if (flashAttachButton == null) {
            l.l("attachView");
            throw null;
        }
        flashAttachButton.setVisibility(8);
        FlashReceiveFooterView m35368qa = m35368qa();
        EditText editText = m35368qa.f12112B;
        if (editText == null) {
            l.l("editMessageText");
            throw null;
        }
        editText.setEnabled(true);
        m35368qa.getSendMessageProgress().setVisibility(8);
        m35368qa.getSendMessage().setImageResource(C3909R.C3910drawable.flash_reply_button_selector);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: z6 */
    public void mo9467z6() {
        ArrowView arrowView = this.f12130T;
        if (arrowView != null) {
            arrowView.m35357f();
        } else {
            l.l("arrowView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1374h.AbstractC21542v
    /* renamed from: z7 */
    public void mo9466z7(String str, String str2) {
        l.e(str, "mapImageUrl");
        l.e(str2, "message");
        m35368qa().m35347v1(str2, str, m35367ra());
    }
}
