package android.support.p001v4.media.session;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeConverter;
import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.icu.text.DecimalFormatSymbols;
import android.media.MediaFormat;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.os.StrictMode;
import android.os.Trace;
import android.support.p001v4.media.MediaDescriptionCompat;
import android.text.Html;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.LongSparseArray;
import android.util.Property;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.ActionMode;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.core.C0122R;
import androidx.databinding.library.baseAdapters.C0139R;
import androidx.fragment.C0158R;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.LiveData;
import androidx.media2.exoplayer.external.video.ColorInfo;
import androidx.recyclerview.widget.RecyclerView;
import androidx.versionedparcelable.ParcelImpl;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.DtbConstants;
import com.google.common.util.concurrent.ListenableFuture;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import n3.r.a.s0;
import n3.v.x;
import n3.z.a1;
import n3.z.b1;
import n3.z.d3;
import n3.z.i2;
import n3.z.j2;
import n3.z.q0;
import n3.z.u2;
import n3.z.v2;
import n3.z.w;
import n3.z.x2;
import n3.z.y2;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1719m3.p1720a.p1722b.p1724b.p1725a.AbstractC25360a;
import p1727n3.p1734b.p1743f.AbstractC25560y0;
import p1727n3.p1734b.p1743f.View$OnLongClickListenerC25548u0;
import p1727n3.p1744b0.p1745a.AbstractC25617q;
import p1727n3.p1744b0.p1745a.AbstractC25622u;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1746c.p1747a.p1748a.C25628a;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25764a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25814a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25816c;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25821h;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25822i;
import p1727n3.p1758e.p1759a.p1766f.i$a;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.C26077m0;
import p1727n3.p1758e.p1767b.C26079n0;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.C25942c0;
import p1727n3.p1758e.p1767b.p1768j1.C25953f0;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25959g1;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b.C26023c;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b.ExecutorC26016a;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b.ScheduledExecutorServiceC26017b;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1790h.p1791a.C26250e;
import p1727n3.p1795i.p1799b.p1800h.C26361c;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26365g;
import p1727n3.p1795i.p1799b.p1800h.C26367i;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26379n;
import p1727n3.p1803i0.AbstractC26407e;
import p1727n3.p1807k.p1809b.p1811d.AbstractC26483c;
import p1727n3.p1807k.p1809b.p1811d.C26482b;
import p1727n3.p1807k.p1809b.p1811d.C26484d;
import p1727n3.p1807k.p1809b.p1811d.C26485e;
import p1727n3.p1807k.p1809b.p1811d.C26486f;
import p1727n3.p1807k.p1812c.C26495c;
import p1727n3.p1807k.p1812c.p1813l.AbstractC26504a;
import p1727n3.p1807k.p1816e.C26512d;
import p1727n3.p1807k.p1816e.C26515g;
import p1727n3.p1807k.p1817f.C26522e;
import p1727n3.p1807k.p1818g.C26538b;
import p1727n3.p1807k.p1821i.AbstractC26606k;
import p1727n3.p1807k.p1821i.AbstractC26607l;
import p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d;
import p1727n3.p1807k.p1821i.p1823g0.C26595a;
import p1727n3.p1807k.p1821i.p1823g0.C26596b;
import p1727n3.p1807k.p1821i.p1823g0.C26597c;
import p1727n3.p1807k.p1824j.AbstractC26635f;
import p1727n3.p1807k.p1824j.AbstractC26639j;
import p1727n3.p1807k.p1824j.ActionMode$CallbackC26637h;
import p1727n3.p1849n.AbstractC26867h;
import p1727n3.p1849n.p1850o.AbstractC26879c;
import p1727n3.p1849n.p1850o.AbstractC26880d;
import p1727n3.p1849n.p1850o.AbstractC26881e;
import p1727n3.p1849n.p1850o.C26877a;
import p1727n3.p1849n.p1850o.C26878b;
import p1727n3.p1859r.p1860a.C26951p;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27034w;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27004g;
import p1727n3.p1868v.C27033v0;
import p1727n3.p1868v.C27037x0;
import p1727n3.p1868v.C27042z0;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.AbstractC27160c;
import p1727n3.p1874y.p1876b.p1877a.p1881p0.C27163e;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p1727n3.p1909z.AbstractC27557c1;
import p1727n3.p1909z.AbstractC27592q1;
import p1727n3.p1909z.AbstractC27603v;
import p1727n3.p1909z.AbstractC27615z0;
import p1727n3.p1909z.C27555b2;
import p1727n3.p1909z.C27569g3;
import p1727n3.p1909z.C27602t2;
import p1727n3.p1909z.C27613y0;
import p1727n3.p1909z.EnumC27565f3;
import p1727n3.p1909z.EnumC27612y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.g0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.u1;
import q3.a.w2.i;
import q3.a.x2.d1;
import q3.a.x2.f;
import q3.a.y1;
import q3.a.y2.q;
import s1.a.a.a.v0.f.d;
import s1.a.c;
import s1.d0.j;
import s1.g;
import s1.k;
import s1.s;
import s1.u.z;
import s1.w.f;
import s1.w.h;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: android.support.v4.media.session.MediaSessionCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat.class */
public class MediaSessionCompat {

    /* renamed from: a */
    public static Field f22a;

    /* renamed from: b */
    public static boolean f23b;

    /* renamed from: c */
    public static Class<?> f24c;

    /* renamed from: d */
    public static boolean f25d;

    /* renamed from: e */
    public static Field f26e;

    /* renamed from: f */
    public static boolean f27f;

    /* renamed from: g */
    public static Field f28g;

    /* renamed from: h */
    public static boolean f29h;

    /* renamed from: i */
    public static long f30i;

    /* renamed from: j */
    public static Method f31j;

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem.class */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0009a();

        /* renamed from: a */
        public final MediaDescriptionCompat f32a;

        /* renamed from: b */
        public final long f33b;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$QueueItem$a.class */
        public class C0009a implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        public QueueItem(Parcel parcel) {
            this.f32a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f33b = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MediaSession.QueueItem {Description=");
            m8728C.append(this.f32a);
            m8728C.append(", Id=");
            return C22128a.m8693K2(m8728C, this.f33b, " }");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f32a.writeToParcel(parcel, i);
            parcel.writeLong(this.f33b);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper.class */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0010a();

        /* renamed from: a */
        public ResultReceiver f34a;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$a.class */
        public class C0010a implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        public ResultReceiverWrapper(Parcel parcel) {
            this.f34a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f34a.writeToParcel(parcel, i);
        }
    }

    /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token.class */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0011a();

        /* renamed from: a */
        public final Object f35a;

        /* renamed from: b */
        public final Object f36b;

        /* renamed from: c */
        public AbstractC25360a f37c;

        /* renamed from: d */
        public AbstractC26407e f38d;

        /* renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/MediaSessionCompat$Token$a.class */
        public class C0011a implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }

            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i) {
                return new Token[i];
            }
        }

        public Token(Object obj) {
            this.f35a = new Object();
            this.f36b = obj;
            this.f37c = null;
            this.f38d = null;
        }

        public Token(Object obj, AbstractC25360a abstractC25360a, AbstractC26407e abstractC26407e) {
            this.f35a = new Object();
            this.f36b = obj;
            this.f37c = abstractC25360a;
            this.f38d = abstractC26407e;
        }

        /* renamed from: a */
        public void m43178a(AbstractC26407e abstractC26407e) {
            synchronized (this.f35a) {
                this.f38d = abstractC26407e;
            }
        }

        /* renamed from: b */
        public Bundle m43177b() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
            synchronized (this.f35a) {
                AbstractC25360a abstractC25360a = this.f37c;
                if (abstractC25360a != null) {
                    bundle.putBinder("android.support.v4.media.session.EXTRA_BINDER", abstractC25360a.asBinder());
                }
                AbstractC26407e abstractC26407e = this.f38d;
                if (abstractC26407e != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable("a", new ParcelImpl(abstractC26407e));
                    bundle.putParcelable("android.support.v4.media.session.SESSION_TOKEN2", bundle2);
                }
            }
            return bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f36b;
            if (obj2 == null) {
                if (token.f36b != null) {
                    z = false;
                }
                return z;
            }
            Object obj3 = token.f36b;
            if (obj3 != null) {
                return obj2.equals(obj3);
            }
            return false;
        }

        public int hashCode() {
            Object obj = this.f36b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable((Parcelable) this.f36b, i);
        }
    }

    /* renamed from: A */
    public static int m43322A(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: A0 */
    public static final g0 m43321A0(AbstractC25677q abstractC25677q) {
        l.e(abstractC25677q, "$this$transactionDispatcher");
        Map<String, Object> backingFieldMap = abstractC25677q.getBackingFieldMap();
        l.d(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("TransactionDispatcher");
        g0 g0Var = obj;
        if (obj == null) {
            Executor transactionExecutor = abstractC25677q.getTransactionExecutor();
            l.d(transactionExecutor, "transactionExecutor");
            g0Var = d.b1(transactionExecutor);
            backingFieldMap.put("TransactionDispatcher", g0Var);
        }
        return (g0) g0Var;
    }

    /* renamed from: A1 */
    public static final <T> f<T> m43320A1(p<? super y2<T>, ? super s1.w.d<? super s>, ? extends Object> pVar) {
        l.e(pVar, "block");
        return d.L(new d1(new x2(pVar, (s1.w.d) null)), -2, (i) null, 2, (Object) null);
    }

    /* renamed from: B */
    public static final <T> C27613y0 m43319B(AbstractC27615z0<T> abstractC27615z0, AbstractC27615z0<T> abstractC27615z02, C25586h.AbstractC25591e<T> abstractC25591e) {
        l.e(abstractC27615z0, "$this$computeDiff");
        l.e(abstractC27615z02, "newList");
        l.e(abstractC25591e, "diffCallback");
        boolean z = true;
        C25586h.C25590d m3181a = C25586h.m3181a(new a1(abstractC27615z0, abstractC27615z02, abstractC25591e, abstractC27615z0.m8b(), abstractC27615z02.m8b()), true);
        l.d(m3181a, "DiffUtil.calculateDiff(\n…    },\n        true\n    )");
        Collection j = j.j(0, abstractC27615z0.m8b());
        if (!(j instanceof Collection) || !j.isEmpty()) {
            Iterator<T> it = j.iterator();
            while (it.hasNext()) {
                if (m3181a.m3180a(((z) it).a()) != -1) {
                    break;
                }
            }
        }
        z = false;
        return new C27613y0(m3181a, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r0 > r7) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0 > r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r0 > r8) goto L36;
     */
    /* renamed from: B0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m43318B0(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43318B0(java.lang.String):int[]");
    }

    /* renamed from: B1 */
    public static void m43317B1(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: C */
    public static int m43316C(RecyclerView.C0347z c0347z, AbstractC25622u abstractC25622u, View view, View view2, RecyclerView.AbstractC0329o abstractC0329o, boolean z) {
        if (abstractC0329o.getChildCount() == 0 || c0347z.m42710b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0329o.getPosition(view) - abstractC0329o.getPosition(view2)) + 1;
        }
        return Math.min(abstractC25622u.mo3124l(), abstractC25622u.mo3134b(view2) - abstractC25622u.mo3131e(view));
    }

    /* renamed from: C0 */
    public static final i0 m43315C0(AbstractC27040y0 abstractC27040y0) {
        l.e(abstractC27040y0, "$this$viewModelScope");
        i0 i0Var = (i0) abstractC27040y0.getTag("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY");
        if (i0Var != null) {
            return i0Var;
        }
        u1 n = d.n((p1) null, 1);
        t0 t0Var = t0.a;
        Object tagIfAbsent = abstractC27040y0.setTagIfAbsent("androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY", new C27004g(f.a.a.d(n, q.c.K0())));
        l.d(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (i0) tagIfAbsent;
    }

    /* renamed from: C1 */
    public static int m43314C1(int i) {
        int i2;
        if (i == 0) {
            i2 = 0;
        } else if (i == 1) {
            i2 = 90;
        } else if (i == 2) {
            i2 = 180;
        } else if (i != 3) {
            throw new IllegalArgumentException(C22128a.m8611i2("Unsupported surface rotation: ", i));
        } else {
            i2 = 270;
        }
        return i2;
    }

    /* renamed from: D */
    public static int m43313D(RecyclerView.C0347z c0347z, AbstractC25622u abstractC25622u, View view, View view2, RecyclerView.AbstractC0329o abstractC0329o, boolean z, boolean z2) {
        if (abstractC0329o.getChildCount() == 0 || c0347z.m42710b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c0347z.m42710b() - Math.max(abstractC0329o.getPosition(view), abstractC0329o.getPosition(view2))) - 1) : Math.max(0, Math.min(abstractC0329o.getPosition(view), abstractC0329o.getPosition(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(abstractC25622u.mo3134b(view2) - abstractC25622u.mo3131e(view)) / (Math.abs(abstractC0329o.getPosition(view) - abstractC0329o.getPosition(view2)) + 1))) + (abstractC25622u.mo3125k() - abstractC25622u.mo3131e(view)));
    }

    /* renamed from: D0 */
    public static boolean m43312D0(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: D1 */
    public static Bitmap m43311D1(Drawable drawable, int i, int i2, Bitmap.Config config, int i3) {
        Bitmap bitmap;
        if ((i3 & 1) != 0) {
            i = drawable.getIntrinsicWidth();
        }
        if ((i3 & 2) != 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        l.e(drawable, "<this>");
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (i == bitmapDrawable.getIntrinsicWidth() && i2 == bitmapDrawable.getIntrinsicHeight()) {
                bitmap = bitmapDrawable.getBitmap();
                l.d(bitmap, "bitmap");
            } else {
                bitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i, i2, true);
                l.d(bitmap, "createScaledBitmap(bitmap, width, height, true)");
            }
        } else {
            Rect bounds = drawable.getBounds();
            l.d(bounds, "bounds");
            int i4 = bounds.left;
            int i5 = bounds.top;
            int i6 = bounds.right;
            int i7 = bounds.bottom;
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            drawable.setBounds(0, 0, i, i2);
            drawable.draw(new Canvas(createBitmap));
            drawable.setBounds(i4, i5, i6, i7);
            l.d(createBitmap, "bitmap");
            bitmap = createBitmap;
        }
        return bitmap;
    }

    /* renamed from: E */
    public static int m43310E(RecyclerView.C0347z c0347z, AbstractC25622u abstractC25622u, View view, View view2, RecyclerView.AbstractC0329o abstractC0329o, boolean z) {
        if (abstractC0329o.getChildCount() == 0 || c0347z.m42710b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c0347z.m42710b();
        }
        return (int) (((abstractC25622u.mo3134b(view2) - abstractC25622u.mo3131e(view)) / (Math.abs(abstractC0329o.getPosition(view) - abstractC0329o.getPosition(view2)) + 1)) * c0347z.m42710b());
    }

    /* renamed from: E0 */
    public static int m43309E0(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: E1 */
    public static List<byte[]> m43308E1(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    @Deprecated
    /* renamed from: F */
    public static String m43307F(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : TextUtils.isEmpty(str2) ? str : C22128a.m8717E2("(", str, ") AND (", str2, ")");
    }

    /* renamed from: F0 */
    public static int m43306F0(int i) {
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i != 256) {
                throw new IllegalArgumentException(C22128a.m8611i2("type needs to be >= FIRST and <= LAST, type=", i));
            }
            return 8;
        }
        return 0;
    }

    /* renamed from: F1 */
    public static LiveData m43305F1(AbstractC27603v.AbstractC27605b abstractC27605b, AbstractC27592q1.C27595c c27595c, Object obj, AbstractC27592q1.AbstractC27593a abstractC27593a, Executor executor, int i) {
        Executor executor2;
        Executor executor3 = C25628a.f71802e;
        if ((i & 8) != 0) {
            l.d(executor3, "ArchTaskExecutor.getIOThreadExecutor()");
            executor2 = executor3;
        } else {
            executor2 = null;
        }
        l.e(abstractC27605b, "$this$toLiveData");
        l.e(c27595c, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(executor2, "fetchExecutor");
        l.e(abstractC27605b, "dataSourceFactory");
        l.e(c27595c, DTBMetricsConfiguration.CONFIG_DIR);
        h1 h1Var = h1.a;
        l.d(executor3, "ArchTaskExecutor.getIOThreadExecutor()");
        d.b1(executor3);
        l.e(executor2, "fetchExecutor");
        g0 b1 = d.b1(executor2);
        l.e(b1, "fetchDispatcher");
        d3 d3Var = new d3(b1, new w(abstractC27605b, b1));
        Executor executor4 = C25628a.f71801d;
        l.d(executor4, "ArchTaskExecutor.getMainThreadExecutor()");
        return new q0(h1Var, (Object) null, c27595c, (AbstractC27592q1.AbstractC27593a) null, d3Var, d.b1(executor4), b1);
    }

    /* renamed from: G */
    public static void m43304G(long j, C27434m c27434m, AbstractC27190p[] abstractC27190pArr) {
        int i;
        while (c27434m.m340a() > 1) {
            int m43230i1 = m43230i1(c27434m);
            int m43230i12 = m43230i1(c27434m);
            int i2 = c27434m.f77201b + m43230i12;
            if (m43230i12 == -1 || m43230i12 > c27434m.m340a()) {
                i = c27434m.f77202c;
            } else {
                i = i2;
                if (m43230i1 == 4) {
                    i = i2;
                    if (m43230i12 >= 8) {
                        int m326o = c27434m.m326o();
                        int m321t = c27434m.m321t();
                        int m337d = m321t == 49 ? c27434m.m337d() : 0;
                        int m326o2 = c27434m.m326o();
                        if (m321t == 47) {
                            c27434m.m341A(1);
                        }
                        boolean z = m326o == 181 && (m321t == 49 || m321t == 47) && m326o2 == 3;
                        boolean z2 = z;
                        if (m321t == 49) {
                            z2 = z & (m337d == 1195456820);
                        }
                        i = i2;
                        if (z2) {
                            m43301H(j, c27434m, abstractC27190pArr);
                            i = i2;
                        }
                    }
                }
            }
            c27434m.m315z(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01e3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x019e -> B:33:0x01a6). Please submit an issue!!! */
    /* renamed from: G0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R, T extends R> java.lang.Object m43303G0(p1727n3.p1909z.C27569g3<T> r7, s1.z.b.q<? super T, ? super T, ? super s1.w.d<? super R>, ? extends java.lang.Object> r8, s1.w.d<? super p1727n3.p1909z.C27569g3<R>> r9) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43303G0(n3.z.g3, s1.z.b.q, s1.w.d):java.lang.Object");
    }

    /* renamed from: G1 */
    public static final int m43302G1(AbstractC27615z0<?> abstractC27615z0, C27613y0 c27613y0, AbstractC27615z0<?> abstractC27615z02, int i) {
        int m3180a;
        l.e(abstractC27615z0, "$this$transformAnchorIndex");
        l.e(c27613y0, "diffResult");
        l.e(abstractC27615z02, "newList");
        if (!c27613y0.f77839b) {
            return j.e(i, j.j(0, abstractC27615z02.m9a()));
        }
        int m7c = i - abstractC27615z0.m7c();
        int m8b = abstractC27615z0.m8b();
        if (m7c >= 0 && m8b > m7c) {
            for (int i2 = 0; i2 <= 29; i2++) {
                int i3 = i2 / 2;
                int i4 = 1;
                if (i2 % 2 == 1) {
                    i4 = -1;
                }
                int i5 = (i3 * i4) + m7c;
                if (i5 >= 0 && i5 < abstractC27615z0.m8b() && (m3180a = c27613y0.f77838a.m3180a(i5)) != -1) {
                    return abstractC27615z02.m7c() + m3180a;
                }
            }
        }
        return j.e(i, j.j(0, abstractC27615z02.m9a()));
    }

    /* renamed from: H */
    public static void m43301H(long j, C27434m c27434m, AbstractC27190p[] abstractC27190pArr) {
        int m326o = c27434m.m326o();
        if (!((m326o & 64) != 0)) {
            return;
        }
        c27434m.m341A(1);
        int i = (m326o & 31) * 3;
        int i2 = c27434m.f77201b;
        for (AbstractC27190p abstractC27190p : abstractC27190pArr) {
            c27434m.m315z(i2);
            abstractC27190p.mo739d(c27434m, i);
            abstractC27190p.mo741b(j, 1, i, 0, null);
        }
    }

    /* renamed from: H0 */
    public static C27555b2 m43300H0(C27555b2 c27555b2, EnumC27565f3 enumC27565f3, s1.z.b.q qVar, int i) {
        EnumC27565f3 enumC27565f32 = (i & 1) != 0 ? EnumC27565f3.FULLY_COMPLETE : null;
        l.e(c27555b2, "$this$insertSeparators");
        l.e(enumC27565f32, "terminalSeparatorType");
        l.e(qVar, "generator");
        q3.a.x2.f<AbstractC27557c1<T>> fVar = c27555b2.f77624a;
        l.e(fVar, "$this$insertEventSeparators");
        l.e(enumC27565f32, "terminalSeparatorType");
        l.e(qVar, "generator");
        return new C27555b2(new u2(fVar, new C27602t2(enumC27565f32, new v2(qVar, (s1.w.d) null))), c27555b2.f77625b);
    }

    /* renamed from: H1 */
    public static Bundle m43299H1(Bundle bundle) {
        m43260Y(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException e) {
            return null;
        }
    }

    /* renamed from: I */
    public static float[] m43298I(float[] fArr, int i, int i2) {
        if (i <= i2) {
            int length = fArr.length;
            if (i < 0 || i > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = i2 - i;
            int min = Math.min(i3, length - i);
            float[] fArr2 = new float[i3];
            System.arraycopy(fArr, i, fArr2, 0, min);
            return fArr2;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if ((!"REL".equals(r0) && r0.compareTo("S") >= 0) != false) goto L12;
     */
    /* renamed from: I0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m43297I0() {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            r1 = 31
            if (r0 >= r1) goto L32
            java.lang.String r0 = android.os.Build.VERSION.CODENAME
            r5 = r0
            java.lang.String r0 = "REL"
            r1 = r5
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L1d
            goto L2c
        L1d:
            r0 = r5
            java.lang.String r1 = "S"
            int r0 = r0.compareTo(r1)
            if (r0 < 0) goto L2c
            r0 = 1
            r3 = r0
            goto L2e
        L2c:
            r0 = 0
            r3 = r0
        L2e:
            r0 = r3
            if (r0 == 0) goto L34
        L32:
            r0 = 1
            r4 = r0
        L34:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43297I0():boolean");
    }

    /* renamed from: I1 */
    public static <T extends Drawable> T m43296I1(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable instanceof AbstractC26504a) {
            drawable2 = ((AbstractC26504a) drawable).m1725b();
        }
        return (T) drawable2;
    }

    /* renamed from: J */
    public static boolean m43295J(File file, Resources resources, int i) {
        InputStream inputStream;
        Throwable th;
        try {
            inputStream = resources.openRawResource(i);
            try {
                boolean m43292K = m43292K(file, inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                    }
                }
                return m43292K;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: J0 */
    public static boolean m43294J0(Rect rect, Rect rect2, int i) {
        boolean z = true;
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            return (i2 > i3 || rect.left >= i3) && rect.left > rect2.left;
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            return (i4 > i5 || rect.top >= i5) && rect.top > rect2.top;
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            return (i6 < i7 || rect.right <= i7) && rect.right < rect2.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 >= i9 && rect.bottom > i9) || rect.bottom >= rect2.bottom) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: J1 */
    public static boolean m43293J1(C26363d.EnumC26364a enumC26364a, C26363d.EnumC26364a enumC26364a2, C26363d.EnumC26364a enumC26364a3, C26363d.EnumC26364a enumC26364a4) {
        C26363d.EnumC26364a enumC26364a5 = C26363d.EnumC26364a.MATCH_PARENT;
        C26363d.EnumC26364a enumC26364a6 = C26363d.EnumC26364a.WRAP_CONTENT;
        C26363d.EnumC26364a enumC26364a7 = C26363d.EnumC26364a.FIXED;
        return (enumC26364a3 == enumC26364a7 || enumC26364a3 == enumC26364a6 || (enumC26364a3 == enumC26364a5 && enumC26364a != enumC26364a6)) || (enumC26364a4 == enumC26364a7 || enumC26364a4 == enumC26364a6 || (enumC26364a4 == enumC26364a5 && enumC26364a2 != enumC26364a6));
    }

    /* renamed from: K */
    public static boolean m43292K(File file, InputStream inputStream) {
        Throwable th;
        IOException e;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                fileOutputStream2 = new FileOutputStream(file, false);
            } catch (IOException e2) {
                e = e2;
                fileOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    fileOutputStream2.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e3) {
                    }
                }
            }
            fileOutputStream2.close();
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return true;
        } catch (IOException e4) {
            e = e4;
            fileOutputStream = fileOutputStream2;
            fileOutputStream3 = fileOutputStream;
            e.getMessage();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e5) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream2;
            if (fileOutputStream3 != null) {
                try {
                    fileOutputStream3.close();
                } catch (IOException e6) {
                }
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th;
        }
    }

    /* renamed from: K0 */
    public static boolean m43291K0() {
        try {
            if (f31j == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError e) {
        }
        boolean z = false;
        try {
            if (f31j == null) {
                f30i = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f31j = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            z = ((Boolean) f31j.invoke(null, Long.valueOf(f30i))).booleanValue();
        } catch (Exception e2) {
            if (e2 instanceof InvocationTargetException) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof RuntimeException)) {
                    throw new RuntimeException(cause);
                }
                throw ((RuntimeException) cause);
            }
        }
        return z;
    }

    /* renamed from: K1 */
    public static void m43290K1(Context context, C25942c0 c25942c0, C26077m0 c26077m0) throws C25953f0 {
        Integer num;
        if (c26077m0 != null) {
            try {
                Integer m2738c = c26077m0.m2738c();
                num = m2738c;
                if (m2738c == null) {
                    C26103y0.m2720e("CameraValidator", "No lens facing info in the availableCamerasSelector, don't verify the camera lens facing.", null);
                    return;
                }
            } catch (IllegalStateException e) {
                C26103y0.m2723b("CameraValidator", "Cannot get lens facing from the availableCamerasSelector don't verify the camera lens facing.", e);
                return;
            }
        } else {
            num = null;
        }
        StringBuilder m8728C = C22128a.m8728C("Verifying camera lens facing on ");
        m8728C.append(Build.DEVICE);
        m8728C.append(", lensFacingInteger: ");
        m8728C.append(num);
        C26103y0.m2724a("CameraValidator", m8728C.toString(), null);
        PackageManager packageManager = context.getPackageManager();
        try {
            if (packageManager.hasSystemFeature("android.hardware.camera") && (c26077m0 == null || num.intValue() == 1)) {
                C26077m0.f72753c.m2737d(c25942c0.m2873a());
            }
            if (!packageManager.hasSystemFeature("android.hardware.camera.front")) {
                return;
            }
            if (c26077m0 != null && num.intValue() != 0) {
                return;
            }
            C26077m0.f72752b.m2737d(c25942c0.m2873a());
        } catch (IllegalArgumentException e2) {
            StringBuilder m8728C2 = C22128a.m8728C("Camera LensFacing verification failed, existing cameras: ");
            m8728C2.append(c25942c0.m2873a());
            C26103y0.m2723b("CameraValidator", m8728C2.toString(), null);
            throw new C25953f0("Expected camera missing from device.", e2);
        }
    }

    /* renamed from: L */
    public static C26079n0 m43289L(C25764a c25764a) {
        int i = c25764a.f72157a;
        int i2 = 5;
        if (i == 1) {
            i2 = 1;
        } else if (i == 2) {
            i2 = 2;
        } else if (i == 3) {
            i2 = 3;
        } else if (i == 4) {
            i2 = 4;
        } else if (i != 5) {
            i2 = i != 10001 ? 0 : 6;
        }
        return new C26079n0(i2, c25764a);
    }

    /* renamed from: L0 */
    public static boolean m43288L0() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: L1 */
    public static boolean m43287L1(int i, C27434m c27434m, boolean z) throws C27074c0 {
        if (c27434m.m340a() < 7) {
            if (!z) {
                throw new C27074c0(C22128a.m8690L1(29, "too short header: ", c27434m.m340a()));
            }
            return false;
        } else if (c27434m.m326o() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw new C27074c0(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "));
        } else if (c27434m.m326o() == 118 && c27434m.m326o() == 111 && c27434m.m326o() == 114 && c27434m.m326o() == 98 && c27434m.m326o() == 105 && c27434m.m326o() == 115) {
            return true;
        } else {
            if (!z) {
                throw new C27074c0("expected characters 'vorbis'");
            }
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x013f, code lost:
        if (r17 == false) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0171 A[LOOP:3: B:30:0x00b5->B:58:0x0171, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x016b A[SYNTHETIC] */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1807k.p1812c.C26495c[] m43286M(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43286M(java.lang.String):n3.k.c.c[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: M0 */
    public static LiveData m43285M0(s1.w.f fVar, long j, p pVar, int i) {
        if ((i & 1) != 0) {
            fVar = h.a;
        }
        ?? r8 = j;
        if ((i & 2) != 0) {
            r8 = 5000;
        }
        l.f(fVar, AnalyticsConstants.CONTEXT);
        l.f(pVar, "block");
        return new n3.v.h(fVar, (long) r8, pVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a1, code lost:
        if (r9 != null) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f8  */
    /* renamed from: M1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object m43284M1(p1727n3.p1751c0.AbstractC25677q r6, s1.z.b.l<? super s1.w.d<? super R>, ? extends java.lang.Object> r7, s1.w.d<? super R> r8) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43284M1(n3.c0.q, s1.z.b.l, s1.w.d):java.lang.Object");
    }

    /* renamed from: N */
    public static Path m43283N(String str) {
        Path path = new Path();
        C26495c[] m43286M = m43286M(str);
        if (m43286M != null) {
            try {
                C26495c.m1741b(m43286M, path);
                return path;
            } catch (RuntimeException e) {
                throw new RuntimeException(C22128a.m8543z2("Error in parsing ", str), e);
            }
        }
        return null;
    }

    /* renamed from: N0 */
    public static C26951p m43282N0(Context context, Fragment fragment, boolean z, boolean z2) {
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i = C0158R.C0160id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i) != null) {
                fragment.mContainer.setTag(i, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
            if (onCreateAnimation != null) {
                return new C26951p(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
            if (onCreateAnimator != null) {
                return new C26951p(onCreateAnimator);
            }
            int i2 = popEnterAnim;
            if (popEnterAnim == 0) {
                i2 = popEnterAnim;
                if (nextTransition != 0) {
                    i2 = nextTransition != 4097 ? nextTransition != 4099 ? nextTransition != 8194 ? -1 : z ? C0158R.animator.fragment_close_enter : C0158R.animator.fragment_close_exit : z ? C0158R.animator.fragment_fade_enter : C0158R.animator.fragment_fade_exit : z ? C0158R.animator.fragment_open_enter : C0158R.animator.fragment_open_exit;
                }
            }
            if (i2 == 0) {
                return null;
            }
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i2));
            boolean z3 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
                    if (loadAnimation != null) {
                        return new C26951p(loadAnimation);
                    }
                    z3 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z3 = false;
                }
            }
            if (z3) {
                return null;
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
                if (loadAnimator == null) {
                    return null;
                }
                return new C26951p(loadAnimator);
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                if (loadAnimation2 == null) {
                    return null;
                }
                return new C26951p(loadAnimation2);
            }
        }
        return null;
    }

    /* renamed from: N1 */
    public static ActionMode.Callback m43281N1(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC26637h) || callback == null) ? callback : new ActionMode$CallbackC26637h(callback, textView);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m43280O(p1727n3.p1751c0.AbstractC25677q r6, s1.w.d<? super s1.w.f> r7) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43280O(n3.c0.q, s1.w.d):java.lang.Object");
    }

    /* renamed from: O0 */
    public static ScheduledExecutorService m43279O0() {
        ScheduledExecutorService scheduledExecutorService;
        if (C26023c.f72678a != null) {
            scheduledExecutorService = C26023c.f72678a;
        } else {
            synchronized (C26023c.class) {
                try {
                    if (C26023c.f72678a == null) {
                        C26023c.f72678a = new ScheduledExecutorServiceC26017b(new Handler(Looper.getMainLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            scheduledExecutorService = C26023c.f72678a;
        }
        return scheduledExecutorService;
    }

    /* renamed from: P */
    public static final <VM extends AbstractC27040y0> g<VM> m43278P(Fragment fragment, c<VM> cVar, a<? extends C26993b1> aVar, a<? extends C26986a1.AbstractC26987b> aVar2) {
        l.e(fragment, "$this$createViewModelLazy");
        l.e(cVar, "viewModelClass");
        l.e(aVar, "storeProducer");
        if (aVar2 == null) {
            aVar2 = new s0<>(fragment);
        }
        return new C27042z0(cVar, aVar, aVar2);
    }

    /* renamed from: P0 */
    public static int m43277P0(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i3 = rect.left;
            i2 = rect2.right;
        } else if (i == 33) {
            i3 = rect.top;
            i2 = rect2.bottom;
        } else if (i == 66) {
            i3 = rect2.left;
            i2 = rect.right;
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            i3 = rect2.top;
            i2 = rect.bottom;
        }
        return Math.max(0, i3 - i2);
    }

    /* renamed from: Q */
    public static InputConnection m43276Q(InputConnection inputConnection, EditorInfo editorInfo, AbstractC26598d abstractC26598d) {
        String[] strArr;
        if (editorInfo != null) {
            if (abstractC26598d == null) {
                throw new IllegalArgumentException("onCommitContentListener must be non-null");
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 25) {
                return new C26596b(inputConnection, false, abstractC26598d);
            }
            String[] strArr2 = C26595a.f74486a;
            if (i >= 25) {
                String[] strArr3 = editorInfo.contentMimeTypes;
                strArr = strArr2;
                if (strArr3 != null) {
                    strArr = strArr3;
                }
            } else {
                Bundle bundle = editorInfo.extras;
                if (bundle == null) {
                    strArr = strArr2;
                } else {
                    String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                    String[] strArr4 = stringArray;
                    if (stringArray == null) {
                        strArr4 = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                    }
                    strArr = strArr2;
                    if (strArr4 != null) {
                        strArr = strArr4;
                    }
                }
            }
            return strArr.length == 0 ? inputConnection : new C26597c(inputConnection, false, abstractC26598d);
        }
        throw new IllegalArgumentException("editorInfo must be non-null");
    }

    /* renamed from: Q0 */
    public static <X, Y> LiveData<Y> m43275Q0(LiveData<X> liveData, AbstractC25640a<X, Y> abstractC25640a) {
        n3.v.i0 i0Var = new n3.v.i0();
        i0Var.m(liveData, new C27033v0(i0Var, abstractC25640a));
        return i0Var;
    }

    /* renamed from: R */
    public static <T extends AbstractC25677q> AbstractC25677q.C25678a<T> m43274R(Context context, Class<T> cls, String str) {
        if (str.trim().length() != 0) {
            return new AbstractC25677q.C25678a<>(context, cls, str);
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
    }

    /* renamed from: R0 */
    public static final <T, R> C27555b2<R> m43273R0(C27555b2<T> c27555b2, p<? super T, ? super s1.w.d<? super R>, ? extends Object> pVar) {
        l.e(c27555b2, "$this$map");
        l.e(pVar, "transform");
        return new C27555b2<>(new j2(c27555b2.f77624a, pVar), c27555b2.f77625b);
    }

    /* renamed from: S */
    public static String m43272S(C25795k c25795k, Integer num, List<String> list) throws C25764a {
        if (num == null) {
            return null;
        }
        String str = null;
        if (list.contains(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
            if (!list.contains("1")) {
                str = null;
            } else if (num.intValue() == 1) {
                str = null;
                if (((Integer) c25795k.m2990b(DtbConstants.NETWORK_TYPE_UNKNOWN).m2995a(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
                    str = "1";
                }
            } else {
                str = null;
                if (num.intValue() == 0) {
                    str = null;
                    if (((Integer) c25795k.m2990b("1").m2995a(CameraCharacteristics.LENS_FACING)).intValue() == 0) {
                        str = DtbConstants.NETWORK_TYPE_UNKNOWN;
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: S0 */
    public static void m43271S0(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            m43269T0(mediaFormat, "color-transfer", colorInfo.f1143c);
            m43269T0(mediaFormat, "color-standard", colorInfo.f1141a);
            m43269T0(mediaFormat, "color-range", colorInfo.f1142b);
            byte[] bArr = colorInfo.f1144d;
            if (bArr == null) {
                return;
            }
            mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: T */
    public static C26495c[] m43270T(C26495c[] c26495cArr) {
        if (c26495cArr == null) {
            return null;
        }
        C26495c[] c26495cArr2 = new C26495c[c26495cArr.length];
        for (int i = 0; i < c26495cArr.length; i++) {
            c26495cArr2[i] = new C26495c(c26495cArr[i]);
        }
        return c26495cArr2;
    }

    /* renamed from: T0 */
    public static void m43269T0(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: U */
    public static Executor m43268U() {
        ExecutorC26016a executorC26016a;
        if (ExecutorC26016a.f72667a != null) {
            executorC26016a = ExecutorC26016a.f72667a;
        } else {
            synchronized (ExecutorC26016a.class) {
                try {
                    if (ExecutorC26016a.f72667a == null) {
                        ExecutorC26016a.f72667a = new ExecutorC26016a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            executorC26016a = ExecutorC26016a.f72667a;
        }
        return executorC26016a;
    }

    /* renamed from: U0 */
    public static int m43267U0(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            int i2 = rect.left;
            return Math.abs(((rect.width() / 2) + i2) - ((rect2.width() / 2) + rect2.left));
        }
        int i3 = rect.top;
        return Math.abs(((rect.height() / 2) + i3) - ((rect2.height() / 2) + rect2.top));
    }

    /* renamed from: V */
    public static final <T> void m43266V(AbstractC27615z0<T> abstractC27615z0, AbstractC25617q abstractC25617q, AbstractC27615z0<T> abstractC27615z02, C27613y0 c27613y0) {
        int i;
        l.e(abstractC27615z0, "$this$dispatchDiff");
        l.e(abstractC25617q, "callback");
        l.e(abstractC27615z02, "newList");
        l.e(c27613y0, "diffResult");
        if (c27613y0.f77839b) {
            l.e(abstractC27615z0, "oldList");
            l.e(abstractC27615z02, "newList");
            l.e(abstractC25617q, "callback");
            l.e(c27613y0, "diffResult");
            AbstractC25617q b1Var = new b1(abstractC27615z0, abstractC27615z02, abstractC25617q);
            c27613y0.f77838a.m3179b(b1Var);
            EnumC27612y enumC27612y = EnumC27612y.PLACEHOLDER_POSITION_CHANGE;
            int min = Math.min(((b1) b1Var).f.m7c(), ((b1) b1Var).a);
            int m7c = ((b1) b1Var).g.m7c() - ((b1) b1Var).a;
            boolean z = false;
            if (m7c > 0) {
                if (min > 0) {
                    ((b1) b1Var).h.onChanged(0, min, enumC27612y);
                }
                ((b1) b1Var).h.onInserted(0, m7c);
            } else if (m7c < 0) {
                ((b1) b1Var).h.onRemoved(0, -m7c);
                int i2 = min + m7c;
                if (i2 > 0) {
                    ((b1) b1Var).h.onChanged(0, i2, enumC27612y);
                }
            }
            ((b1) b1Var).a = ((b1) b1Var).g.m7c();
            int min2 = Math.min(((b1) b1Var).f.m6d(), ((b1) b1Var).b);
            int m6d = ((b1) b1Var).g.m6d();
            int i3 = ((b1) b1Var).b;
            int i4 = m6d - i3;
            int i5 = ((b1) b1Var).a + ((b1) b1Var).c + i3;
            int i6 = i5 - min2;
            if (i6 != ((b1) b1Var).f.m9a() - min2) {
                z = true;
            }
            if (i4 > 0) {
                ((b1) b1Var).h.onInserted(i5, i4);
                i = min2;
            } else {
                i = min2;
                if (i4 < 0) {
                    ((b1) b1Var).h.onRemoved(i5 + i4, -i4);
                    i = min2 + i4;
                }
            }
            if (i > 0 && z) {
                ((b1) b1Var).h.onChanged(i6, i, enumC27612y);
            }
            ((b1) b1Var).b = ((b1) b1Var).g.m6d();
            return;
        }
        l.e(abstractC25617q, "callback");
        l.e(abstractC27615z0, "oldList");
        l.e(abstractC27615z02, "newList");
        int max = Math.max(abstractC27615z0.m7c(), abstractC27615z02.m7c());
        int min3 = Math.min(abstractC27615z0.m8b() + abstractC27615z0.m7c(), abstractC27615z02.m8b() + abstractC27615z02.m7c());
        int i7 = min3 - max;
        if (i7 > 0) {
            abstractC25617q.onRemoved(max, i7);
            abstractC25617q.onInserted(max, i7);
        }
        int min4 = Math.min(max, min3);
        int max2 = Math.max(max, min3);
        int m7c2 = abstractC27615z0.m7c();
        int m9a = abstractC27615z02.m9a();
        int i8 = m7c2;
        if (m7c2 > m9a) {
            i8 = m9a;
        }
        int m8b = abstractC27615z0.m8b() + abstractC27615z0.m7c();
        int m9a2 = abstractC27615z02.m9a();
        int i9 = m8b;
        if (m8b > m9a2) {
            i9 = m9a2;
        }
        EnumC27612y enumC27612y2 = EnumC27612y.ITEM_TO_PLACEHOLDER;
        int i10 = min4 - i8;
        if (i10 > 0) {
            abstractC25617q.onChanged(i8, i10, enumC27612y2);
        }
        int i11 = i9 - max2;
        if (i11 > 0) {
            abstractC25617q.onChanged(max2, i11, enumC27612y2);
        }
        int m7c3 = abstractC27615z02.m7c();
        int m9a3 = abstractC27615z0.m9a();
        int i12 = m7c3;
        if (m7c3 > m9a3) {
            i12 = m9a3;
        }
        int m8b2 = abstractC27615z02.m8b() + abstractC27615z02.m7c();
        int m9a4 = abstractC27615z0.m9a();
        int i13 = m8b2;
        if (m8b2 > m9a4) {
            i13 = m9a4;
        }
        EnumC27612y enumC27612y3 = EnumC27612y.PLACEHOLDER_TO_ITEM;
        int i14 = min4 - i12;
        if (i14 > 0) {
            abstractC25617q.onChanged(i12, i14, enumC27612y3);
        }
        int i15 = i13 - max2;
        if (i15 > 0) {
            abstractC25617q.onChanged(max2, i15, enumC27612y3);
        }
        int m9a5 = abstractC27615z02.m9a() - abstractC27615z0.m9a();
        if (m9a5 > 0) {
            abstractC25617q.onInserted(abstractC27615z0.m9a(), m9a5);
        } else if (m9a5 >= 0) {
        } else {
            abstractC25617q.onRemoved(abstractC27615z0.m9a() + m9a5, -m9a5);
        }
    }

    /* renamed from: V0 */
    public static ByteBuffer m43265V0(Context context, CancellationSignal cancellationSignal, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                    return null;
                }
                openFileDescriptor.close();
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                openFileDescriptor.close();
                return map;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: W */
    public static <X> LiveData<X> m43264W(LiveData<X> liveData) {
        n3.v.i0 i0Var = new n3.v.i0();
        i0Var.m(liveData, new C27037x0(i0Var));
        return i0Var;
    }

    /* renamed from: W0 */
    public static TypedArray m43263W0(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: X */
    public static void m43262X() {
        if (C27445x.f77229a >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: X0 */
    public static <T> ObjectAnimator m43261X0(T t, Property<T, PointF> property, Path path) {
        return ObjectAnimator.ofObject(t, property, (TypeConverter) null, path);
    }

    /* renamed from: Y */
    public static void m43260Y(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    /* renamed from: Y0 */
    public static ObjectAnimator m43259Y0(float f, float f2, View view) {
        return ObjectAnimator.ofFloat(view, "translationY", f, f2);
    }

    /* renamed from: Z */
    public static final <T> C27555b2<T> m43258Z(C27555b2<T> c27555b2, p<? super T, ? super s1.w.d<? super Boolean>, ? extends Object> pVar) {
        l.e(c27555b2, "$this$filter");
        l.e(pVar, "predicate");
        return new C27555b2<>(new i2(c27555b2.f77624a, pVar), c27555b2.f77625b);
    }

    /* renamed from: Z0 */
    public static AnimatorSet m43257Z0(float f, float f2, View[] viewArr) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (viewArr.length == 0) {
            return animatorSet;
        }
        AnimatorSet.Builder play = animatorSet.play(m43259Y0(f, f2, viewArr[0]));
        for (int i = 1; i < viewArr.length; i++) {
            play.with(m43259Y0(f, f2, viewArr[i]));
        }
        return animatorSet;
    }

    /* renamed from: a */
    public static void m43256a() {
        AbstractC27160c<C27163e> abstractC27160c = AbstractC27160c.f75990a;
    }

    /* renamed from: a0 */
    public static C26379n m43255a0(C26363d c26363d, int i, ArrayList<C26379n> arrayList, C26379n c26379n) {
        C26379n c26379n2;
        int i2;
        int i3;
        int i4;
        int i5 = i == 0 ? c26363d.f73671F0 : c26363d.f73673G0;
        if (i5 != -1 && (c26379n == null || i5 != c26379n.f73826b)) {
            int i6 = 0;
            while (true) {
                c26379n2 = c26379n;
                if (i6 >= arrayList.size()) {
                    break;
                }
                c26379n2 = arrayList.get(i6);
                if (c26379n2.f73826b != i5) {
                    i6++;
                } else if (c26379n != null) {
                    c26379n.m2010d(i, c26379n2);
                    arrayList.remove(c26379n);
                }
            }
        } else {
            c26379n2 = c26379n;
            if (i5 != -1) {
                return c26379n;
            }
        }
        C26379n c26379n3 = c26379n2;
        if (c26379n2 == null) {
            C26379n c26379n4 = c26379n2;
            if (c26363d instanceof C26367i) {
                C26367i c26367i = (C26367i) c26363d;
                int i7 = 0;
                while (true) {
                    if (i7 >= c26367i.f73775I0) {
                        i2 = -1;
                        break;
                    }
                    C26363d c26363d2 = c26367i.f73774H0[i7];
                    if (i == 0 && (i4 = c26363d2.f73671F0) != -1) {
                        i2 = i4;
                        break;
                    } else if (i == 1 && (i3 = c26363d2.f73673G0) != -1) {
                        i2 = i3;
                        break;
                    } else {
                        i7++;
                    }
                }
                c26379n4 = c26379n2;
                if (i2 != -1) {
                    int i8 = 0;
                    while (true) {
                        c26379n4 = c26379n2;
                        if (i8 >= arrayList.size()) {
                            break;
                        }
                        c26379n4 = arrayList.get(i8);
                        if (c26379n4.f73826b == i2) {
                            break;
                        }
                        i8++;
                    }
                }
            }
            C26379n c26379n5 = c26379n4;
            if (c26379n4 == null) {
                c26379n5 = new C26379n(i);
            }
            arrayList.add(c26379n5);
            c26379n3 = c26379n5;
        }
        if (c26379n3.m2013a(c26363d)) {
            if (c26363d instanceof C26365g) {
                C26365g c26365g = (C26365g) c26363d;
                C26361c c26361c = c26365g.f73771K0;
                int i9 = 0;
                if (c26365g.f73772L0 == 0) {
                    i9 = 1;
                }
                c26361c.m2105c(i9, arrayList, c26379n3);
            }
            if (i == 0) {
                c26363d.f73671F0 = c26379n3.f73826b;
                c26363d.f73670F.m2105c(i, arrayList, c26379n3);
                c26363d.f73674H.m2105c(i, arrayList, c26379n3);
            } else {
                c26363d.f73673G0 = c26379n3.f73826b;
                c26363d.f73672G.m2105c(i, arrayList, c26379n3);
                c26363d.f73676J.m2105c(i, arrayList, c26379n3);
                c26363d.f73675I.m2105c(i, arrayList, c26379n3);
            }
            c26363d.f73679M.m2105c(i, arrayList, c26379n3);
        }
        return c26379n3;
    }

    /* renamed from: a1 */
    public static InputConnection m43254a1(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (viewParent instanceof AbstractC25560y0) {
                    editorInfo.hintText = ((AbstractC25560y0) viewParent).m3242i5();
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        return inputConnection;
    }

    /* renamed from: b */
    public static final <R, T extends R> void m43253b(List<C27569g3<R>> list, R r, C27569g3<T> c27569g3, C27569g3<T> c27569g32, int i, int i2) {
        l.e(list, "$this$addSeparatorPage");
        int[] iArr = null;
        int[] iArr2 = c27569g3 != null ? c27569g3.f77687a : null;
        if (c27569g32 != null) {
            iArr = c27569g32.f77687a;
        }
        if (iArr2 != null && iArr != null) {
            l.e(iArr2, "$this$plus");
            l.e(iArr, "elements");
            int length = iArr2.length;
            int length2 = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr2, length + length2);
            System.arraycopy(iArr, 0, copyOf, length, length2);
            l.d(copyOf, "result");
            l.e(copyOf, "$this$distinct");
            l.e(copyOf, "$this$toMutableSet");
            LinkedHashSet linkedHashSet = new LinkedHashSet(C25225a.m3942Y1(copyOf.length));
            l.e(copyOf, "$this$toCollection");
            l.e(linkedHashSet, "destination");
            for (int i3 : copyOf) {
                linkedHashSet.add(Integer.valueOf(i3));
            }
            iArr2 = s1.u.i.R0(s1.u.i.E0(s1.u.i.S0(linkedHashSet)));
        } else if (iArr2 == null && iArr != null) {
            iArr2 = iArr;
        } else if (iArr2 == null || iArr != null) {
            throw new IllegalArgumentException("Separator page expected adjacentPageBefore or adjacentPageAfter, but both were null.");
        }
        l.e(list, "$this$addSeparatorPage");
        l.e(iArr2, "originalPageOffsets");
        if (r == null) {
            return;
        }
        list.add(m43218m1(r, iArr2, i, i2));
    }

    /* renamed from: b0 */
    public static C26379n m43252b0(ArrayList<C26379n> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C26379n c26379n = arrayList.get(i2);
            if (i == c26379n.f73826b) {
                return c26379n;
            }
        }
        return null;
    }

    /* renamed from: b1 */
    public static boolean m43251b1(ViewParent viewParent, View view, float f, float f2, boolean z) {
        try {
            return viewParent.onNestedFling(view, f, f2, z);
        } catch (AbstractMethodError e) {
            String str = "ViewParent " + viewParent + " does not implement interface method onNestedFling";
            return false;
        }
    }

    @Deprecated
    /* renamed from: c */
    public static String[] m43250c(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return strArr2;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    /* renamed from: c0 */
    public static void m43249c0(Object obj) {
        LongSparseArray longSparseArray;
        if (!f25d) {
            try {
                f24c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
            }
            f25d = true;
        }
        Class<?> cls = f24c;
        if (cls == null) {
            return;
        }
        if (!f27f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f26e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
            }
            f27f = true;
        }
        Field field = f26e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return;
        }
        longSparseArray.clear();
    }

    /* renamed from: c1 */
    public static boolean m43248c1(ViewParent viewParent, View view, float f, float f2) {
        try {
            return viewParent.onNestedPreFling(view, f, f2);
        } catch (AbstractMethodError e) {
            String str = "ViewParent " + viewParent + " does not implement interface method onNestedPreFling";
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0429, code lost:
        if (r0 == 2) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0459, code lost:
        if (r0 == 2) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x045c, code lost:
        r37 = true;
        r30 = r29;
        r26 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x046a, code lost:
        r37 = false;
        r26 = r16;
        r30 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x05f5, code lost:
        if (r0[r19].f73646f.f73644d == r28) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02e0, code lost:
        if (r0[r0].f73646f.f73644d == r14) goto L78;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m43247d(n3.i.b.h.e r10, p1727n3.p1795i.p1799b.C26355d r11, java.util.ArrayList<p1727n3.p1795i.p1799b.p1800h.C26363d> r12, int r13) {
        /*
            Method dump skipped, instructions count: 4031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43247d(n3.i.b.h.e, n3.i.b.d, java.util.ArrayList, int):void");
    }

    /* renamed from: d0 */
    public static Spanned m43246d0(String str, int i) {
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, i) : Html.fromHtml(str);
    }

    /* renamed from: d1 */
    public static void m43245d1(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof AbstractC26606k) {
            ((AbstractC26606k) viewParent).m1588j0(view, i, i2, iArr, i3);
        } else if (i3 != 0) {
        } else {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                String str = "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll";
            }
        }
    }

    /* renamed from: e */
    public static void m43244e(CaptureRequest.Builder builder, AbstractC25968j0 abstractC25968j0) {
        n3.e.a.f.i m2922a = i$a.m2921b(abstractC25968j0).m2922a();
        for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : m2922a.mo2848d()) {
            CaptureRequest.Key key = (CaptureRequest.Key) abstractC25969a.mo2822b();
            try {
                builder.set(key, m2922a.getConfig().mo2851a(abstractC25969a));
            } catch (IllegalArgumentException e) {
                C26103y0.m2723b("CaptureRequestBuilder", "CaptureRequest.Key is not supported: " + key, null);
            }
        }
    }

    /* renamed from: e0 */
    public static C25959g1 m43243e0(C25785e c25785e) {
        ArrayList arrayList = new ArrayList();
        Integer num = (Integer) c25785e.m2995a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num != null && num.intValue() == 2) {
            arrayList.add(new C25814a(c25785e));
        }
        Integer num2 = (Integer) c25785e.m2995a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num2 != null) {
            num2.intValue();
        }
        Set<String> set = C25822i.f72262a;
        Integer num3 = (Integer) c25785e.m2995a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        Objects.requireNonNull(num3);
        int intValue = num3.intValue();
        Set<String> set2 = C25822i.f72262a;
        String str = Build.DEVICE;
        Locale locale = Locale.US;
        if (set2.contains(str.toLowerCase(locale)) && C25822i.f72263b.contains(Integer.valueOf(intValue))) {
            arrayList.add(new C25822i());
        }
        List<String> list = C25821h.f72261a;
        String str2 = Build.BRAND;
        if ("SAMSUNG".equals(str2.toUpperCase(locale)) && C25821h.f72261a.contains(Build.MODEL.toUpperCase(locale)) && ((Integer) c25785e.m2995a(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
            arrayList.add(new C25821h());
        }
        if ("SAMSUNG".equals(str2.toUpperCase(locale)) && Build.MODEL.toUpperCase(locale).startsWith("SM-N920") && ((Integer) c25785e.m2995a(CameraCharacteristics.LENS_FACING)).intValue() == 1) {
            arrayList.add(new C25816c());
        }
        return new C25959g1(arrayList);
    }

    /* renamed from: e1 */
    public static void m43242e1(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (viewParent instanceof AbstractC26607l) {
            ((AbstractC26607l) viewParent).m1585z0(view, i, i2, i3, i4, i5, iArr);
            return;
        }
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        if (viewParent instanceof AbstractC26606k) {
            ((AbstractC26606k) viewParent).m1589J(view, i, i2, i3, i4, i5);
        } else if (i5 != 0) {
        } else {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                String str = "ViewParent " + viewParent + " does not implement interface method onNestedScroll";
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
        if (r6.bottom <= r8.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
        if (r6.right <= r8.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        if (r6.top >= r8.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0076, code lost:
        if (r6.left >= r8.right) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0079, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007f, code lost:
        r12 = false;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m43241f(int r5, android.graphics.Rect r6, android.graphics.Rect r7, android.graphics.Rect r8) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43241f(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    /* renamed from: f0 */
    public static int m43240f0(Cursor cursor, String str) {
        int i;
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex("`" + str + "`");
        if (columnIndex2 >= 0) {
            return columnIndex2;
        }
        if (Build.VERSION.SDK_INT > 25) {
            i = -1;
        } else if (str.length() == 0) {
            i = -1;
        } else {
            String[] columnNames = cursor.getColumnNames();
            String m8543z2 = C22128a.m8543z2(StringConstant.DOT, str);
            String m8725C2 = C22128a.m8725C2(StringConstant.DOT, str, "`");
            int i2 = 0;
            while (true) {
                i = -1;
                if (i2 >= columnNames.length) {
                    break;
                }
                String str2 = columnNames[i2];
                if (str2.length() < str.length() + 2 || (!str2.endsWith(m8543z2) && (str2.charAt(0) != '`' || !str2.endsWith(m8725C2)))) {
                    i2++;
                }
            }
            i = i2;
        }
        return i;
    }

    /* renamed from: f1 */
    public static AbstractC26483c m43239f1(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        C26486f c26486f;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlPullParser.require(2, null, "font-family");
            if (xmlPullParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0122R.styleable.FontFamily);
                String string = obtainAttributes.getString(C0122R.styleable.FontFamily_fontProviderAuthority);
                String string2 = obtainAttributes.getString(C0122R.styleable.FontFamily_fontProviderPackage);
                String string3 = obtainAttributes.getString(C0122R.styleable.FontFamily_fontProviderQuery);
                int resourceId = obtainAttributes.getResourceId(C0122R.styleable.FontFamily_fontProviderCerts, 0);
                int integer = obtainAttributes.getInteger(C0122R.styleable.FontFamily_fontProviderFetchStrategy, 1);
                int integer2 = obtainAttributes.getInteger(C0122R.styleable.FontFamily_fontProviderFetchTimeout, 500);
                String string4 = obtainAttributes.getString(C0122R.styleable.FontFamily_fontProviderSystemFontFamily);
                obtainAttributes.recycle();
                if (string == null || string2 == null || string3 == null) {
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("font")) {
                                TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0122R.styleable.FontFamilyFont);
                                int i = C0122R.styleable.FontFamilyFont_fontWeight;
                                if (!obtainAttributes2.hasValue(i)) {
                                    i = C0122R.styleable.FontFamilyFont_android_fontWeight;
                                }
                                int i2 = obtainAttributes2.getInt(i, 400);
                                int i3 = C0122R.styleable.FontFamilyFont_fontStyle;
                                if (!obtainAttributes2.hasValue(i3)) {
                                    i3 = C0122R.styleable.FontFamilyFont_android_fontStyle;
                                }
                                boolean z = 1 == obtainAttributes2.getInt(i3, 0);
                                int i4 = C0122R.styleable.FontFamilyFont_ttcIndex;
                                if (!obtainAttributes2.hasValue(i4)) {
                                    i4 = C0122R.styleable.FontFamilyFont_android_ttcIndex;
                                }
                                int i5 = C0122R.styleable.FontFamilyFont_fontVariationSettings;
                                if (!obtainAttributes2.hasValue(i5)) {
                                    i5 = C0122R.styleable.FontFamilyFont_android_fontVariationSettings;
                                }
                                String string5 = obtainAttributes2.getString(i5);
                                int i6 = obtainAttributes2.getInt(i4, 0);
                                int i7 = C0122R.styleable.FontFamilyFont_font;
                                if (!obtainAttributes2.hasValue(i7)) {
                                    i7 = C0122R.styleable.FontFamilyFont_android_font;
                                }
                                int resourceId2 = obtainAttributes2.getResourceId(i7, 0);
                                String string6 = obtainAttributes2.getString(i7);
                                obtainAttributes2.recycle();
                                while (xmlPullParser.next() != 3) {
                                    m43317B1(xmlPullParser);
                                }
                                arrayList.add(new C26485e(string6, i2, z, string5, i6, resourceId2));
                            } else {
                                m43317B1(xmlPullParser);
                            }
                        }
                    }
                    c26486f = arrayList.isEmpty() ? null : new C26484d((C26485e[]) arrayList.toArray(new C26485e[arrayList.size()]));
                } else {
                    while (xmlPullParser.next() != 3) {
                        m43317B1(xmlPullParser);
                    }
                    c26486f = new C26486f(new C26522e(string, string2, string3, m43233h1(resources, resourceId)), integer, integer2, string4);
                }
            } else {
                m43317B1(xmlPullParser);
                c26486f = null;
            }
            return c26486f;
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: g */
    public static boolean m43238g(int i, Rect rect, Rect rect2) {
        boolean z = true;
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            if (rect2.right < rect.left || rect2.left > rect.right) {
                z = false;
            }
            return z;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    /* renamed from: g0 */
    public static int m43237g0(Cursor cursor, String str) {
        String str2;
        int m43240f0 = m43240f0(cursor, str);
        if (m43240f0 >= 0) {
            return m43240f0;
        }
        try {
            str2 = Arrays.toString(cursor.getColumnNames());
        } catch (Exception e) {
            str2 = "";
        }
        throw new IllegalArgumentException(C22128a.m8721D2("column '", str, "' does not exist. Available columns: ", str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0112 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0114  */
    /* renamed from: g1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1874y.p1876b.p1877a.p1882q0.p1890x.C27299b m43236g1(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43236g1(n3.y.b.a.q0.d):n3.y.b.a.q0.x.b");
    }

    /* renamed from: h */
    public static void m43235h(String str) {
        if (C27445x.f77229a >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: h0 */
    public static final AbstractC27034w m43234h0(AbstractC27028u abstractC27028u) {
        y1 y1Var;
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        l.e(abstractC27028u, "$this$coroutineScope");
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) abstractC27028u.f75565a.get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            u1 n = d.n((p1) null, 1);
            t0 t0Var = t0.a;
            y1Var = q.c;
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(abstractC27028u, f.a.a.d(n, y1Var.K0()));
        } while (!abstractC27028u.f75565a.compareAndSet(null, lifecycleCoroutineScopeImpl));
        d.w2(lifecycleCoroutineScopeImpl, y1Var.K0(), (j0) null, new x(lifecycleCoroutineScopeImpl, (s1.w.d) null), 2, (Object) null);
        return lifecycleCoroutineScopeImpl;
    }

    /* renamed from: h1 */
    public static List<List<byte[]>> m43233h1(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (obtainTypedArray.getType(0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m43308E1(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m43308E1(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    /* renamed from: i */
    public static CaptureRequest m43232i(C25956g0 c25956g0, CameraDevice cameraDevice, Map<AbstractC25980k0, Surface> map) throws CameraAccessException {
        if (cameraDevice == null) {
            return null;
        }
        List<AbstractC25980k0> m2868a = c25956g0.m2868a();
        ArrayList arrayList = new ArrayList();
        for (AbstractC25980k0 abstractC25980k0 : m2868a) {
            Surface surface = map.get(abstractC25980k0);
            if (surface == null) {
                throw new IllegalArgumentException("DeferrableSurface not in configuredSurfaceMap");
            }
            arrayList.add(surface);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        CaptureRequest.Builder createCaptureRequest = cameraDevice.createCaptureRequest(c25956g0.f72574c);
        m43244e(createCaptureRequest, c25956g0.f72573b);
        AbstractC25968j0 abstractC25968j0 = c25956g0.f72573b;
        AbstractC25968j0.AbstractC25969a<Integer> abstractC25969a = C25956g0.f72570g;
        if (abstractC25968j0.mo2849c(abstractC25969a)) {
            createCaptureRequest.set(CaptureRequest.JPEG_ORIENTATION, (Integer) c25956g0.f72573b.mo2851a(abstractC25969a));
        }
        AbstractC25968j0 abstractC25968j02 = c25956g0.f72573b;
        AbstractC25968j0.AbstractC25969a<Integer> abstractC25969a2 = C25956g0.f72571h;
        if (abstractC25968j02.mo2849c(abstractC25969a2)) {
            createCaptureRequest.set(CaptureRequest.JPEG_QUALITY, Byte.valueOf(((Integer) c25956g0.f72573b.mo2851a(abstractC25969a2)).byteValue()));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            createCaptureRequest.addTarget((Surface) it.next());
        }
        createCaptureRequest.setTag(c25956g0.f72577f);
        return createCaptureRequest.build();
    }

    /* renamed from: i0 */
    public static <T> ListenableFuture<T> m43231i0(AbstractC26249d<T> abstractC26249d) {
        C26247b<T> c26247b = new C26247b<>();
        C26250e<T> c26250e = new C26250e<>(c26247b);
        c26247b.f73170b = c26250e;
        c26247b.f73169a = abstractC26249d.getClass();
        try {
            Object mo2255a = abstractC26249d.mo2255a(c26247b);
            if (mo2255a != null) {
                c26247b.f73169a = mo2255a;
            }
        } catch (Exception e) {
            c26250e.f73174b.m2264i(e);
        }
        return c26250e;
    }

    /* renamed from: i1 */
    public static int m43230i1(C27434m c27434m) {
        int i = 0;
        while (c27434m.m340a() != 0) {
            int m326o = c27434m.m326o();
            int i2 = i + m326o;
            i = i2;
            if (m326o != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public static void m43229j(Object obj, StringBuilder sb) {
        if (obj == null) {
            sb.append(AnalyticsConstants.NULL);
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        String str = simpleName;
        if (simpleName.length() <= 0) {
            String name = obj.getClass().getName();
            int lastIndexOf = name.lastIndexOf(46);
            str = name;
            if (lastIndexOf > 0) {
                str = name.substring(lastIndexOf + 1);
            }
        }
        sb.append(str);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    /* renamed from: j0 */
    public static int m43228j0(MediaFormat mediaFormat, String str, int i) {
        try {
            return mediaFormat.getInteger(str);
        } catch (ClassCastException | NullPointerException e) {
            return i;
        }
    }

    /* renamed from: j1 */
    public static long m43227j1(C27434m c27434m, int i, int i2) {
        byte[] bArr;
        c27434m.m315z(i);
        if (c27434m.m340a() < 5) {
            return -9223372036854775807L;
        }
        int m337d = c27434m.m337d();
        if ((8388608 & m337d) != 0 || ((2096896 & m337d) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (!((m337d & 32) != 0) || c27434m.m326o() < 7 || c27434m.m340a() < 7) {
            return -9223372036854775807L;
        }
        if (!((c27434m.m326o() & 16) == 16)) {
            return -9223372036854775807L;
        }
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, new byte[6], 0, 6);
        c27434m.f77201b += 6;
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((bArr[4] & 255) >> 7);
    }

    /* renamed from: k */
    public static final Bundle m43226k(k<String, ? extends Object>... kVarArr) {
        l.e(kVarArr, "pairs");
        Bundle bundle = new Bundle(kVarArr.length);
        int length = kVarArr.length;
        int i = 0;
        while (i < length) {
            k<String, ? extends Object> kVar = kVarArr[i];
            i++;
            String str = (String) kVar.a;
            Object obj = kVar.b;
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                bundle.putByte(str, ((Number) obj).byteValue());
            } else if (obj instanceof Character) {
                bundle.putChar(str, ((Character) obj).charValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Float) {
                bundle.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Integer) {
                bundle.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Short) {
                bundle.putShort(str, ((Number) obj).shortValue());
            } else if (obj instanceof Bundle) {
                bundle.putBundle(str, (Bundle) obj);
            } else if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof boolean[]) {
                bundle.putBooleanArray(str, (boolean[]) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof char[]) {
                bundle.putCharArray(str, (char[]) obj);
            } else if (obj instanceof double[]) {
                bundle.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof float[]) {
                bundle.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof int[]) {
                bundle.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle.putLongArray(str, (long[]) obj);
            } else if (obj instanceof short[]) {
                bundle.putShortArray(str, (short[]) obj);
            } else if (obj instanceof Object[]) {
                Class<?> componentType = obj.getClass().getComponentType();
                l.c(componentType);
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    bundle.putParcelableArray(str, (Parcelable[]) obj);
                } else if (String.class.isAssignableFrom(componentType)) {
                    bundle.putStringArray(str, (String[]) obj);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    bundle.putCharSequenceArray(str, (CharSequence[]) obj);
                } else if (!Serializable.class.isAssignableFrom(componentType)) {
                    String canonicalName = componentType.getCanonicalName();
                    throw new IllegalArgumentException("Illegal value array type " + ((Object) canonicalName) + " for key \"" + str + '\"');
                } else {
                    bundle.putSerializable(str, (Serializable) obj);
                }
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (obj instanceof IBinder) {
                bundle.putBinder(str, (IBinder) obj);
            } else if (obj instanceof Size) {
                bundle.putSize(str, (Size) obj);
            } else if (!(obj instanceof SizeF)) {
                String canonicalName2 = obj.getClass().getCanonicalName();
                throw new IllegalArgumentException("Illegal value type " + ((Object) canonicalName2) + " for key \"" + str + '\"');
            } else {
                bundle.putSizeF(str, (SizeF) obj);
            }
        }
        return bundle;
    }

    /* renamed from: k0 */
    public static C26512d m43225k0(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? new C26512d(new C26515g(configuration.getLocales())) : C26512d.m1719a(configuration.locale);
    }

    /* renamed from: k1 */
    public static String m43224k1(StringBuilder sb, int i, int i2) {
        int i3;
        int i4;
        if (i >= i2) {
            return sb.toString();
        }
        int i5 = i;
        if (sb.charAt(i) == '/') {
            i5 = i + 1;
        }
        int i6 = i5;
        int i7 = i6;
        while (i6 <= i2) {
            if (i6 == i2) {
                i3 = i6;
            } else if (sb.charAt(i6) == '/') {
                i3 = i6 + 1;
            } else {
                i6++;
            }
            int i8 = i7 + 1;
            if (i6 == i8 && sb.charAt(i7) == '.') {
                sb.delete(i7, i3);
                i2 -= i3 - i7;
            } else {
                if (i6 == i7 + 2 && sb.charAt(i7) == '.' && sb.charAt(i8) == '.') {
                    i4 = sb.lastIndexOf(StringConstant.SLASH, i7 - 2) + 1;
                    int i9 = i4 > i5 ? i4 : i5;
                    sb.delete(i9, i3);
                    i2 -= i3 - i9;
                } else {
                    i4 = i6 + 1;
                }
                i7 = i4;
            }
            i6 = i7;
        }
        return sb.toString();
    }

    /* renamed from: l */
    public static Map<AbstractC25921g1, Rect> m43223l(Rect rect, boolean z, Rational rational, int i, int i2, int i3, Map<AbstractC25921g1, Size> map) {
        RectF rectF;
        m43214o(rect.width() > 0 && rect.height() > 0, "Cannot compute viewport crop rects zero sized sensor rect.");
        RectF rectF2 = new RectF(rect);
        HashMap hashMap = new HashMap();
        RectF rectF3 = new RectF(rect);
        for (Map.Entry<AbstractC25921g1, Size> entry : map.entrySet()) {
            Matrix matrix = new Matrix();
            RectF rectF4 = new RectF(0.0f, 0.0f, entry.getValue().getWidth(), entry.getValue().getHeight());
            matrix.setRectToRect(rectF4, rectF2, Matrix.ScaleToFit.CENTER);
            hashMap.put(entry.getKey(), matrix);
            RectF rectF5 = new RectF();
            matrix.mapRect(rectF5, rectF4);
            rectF3.intersect(rectF5);
        }
        Rational rational2 = (i == 90 || i == 270) ? rational == null ? rational : new Rational(rational.getDenominator(), rational.getNumerator()) : new Rational(rational.getNumerator(), rational.getDenominator());
        if (i2 == 3) {
            rectF = rectF3;
        } else {
            Matrix matrix2 = new Matrix();
            RectF rectF6 = new RectF(0.0f, 0.0f, rational2.getNumerator(), rational2.getDenominator());
            if (i2 == 0) {
                matrix2.setRectToRect(rectF6, rectF3, Matrix.ScaleToFit.START);
            } else if (i2 == 1) {
                matrix2.setRectToRect(rectF6, rectF3, Matrix.ScaleToFit.CENTER);
            } else if (i2 != 2) {
                throw new IllegalStateException(C22128a.m8611i2("Unexpected scale type: ", i2));
            } else {
                matrix2.setRectToRect(rectF6, rectF3, Matrix.ScaleToFit.END);
            }
            RectF rectF7 = new RectF();
            matrix2.mapRect(rectF7, rectF6);
            boolean z2 = (i3 == 1) ^ z;
            boolean z3 = i == 0 && !z2;
            boolean z4 = i == 90 && z2;
            rectF = rectF7;
            if (!z3) {
                if (z4) {
                    rectF = rectF7;
                } else {
                    boolean z5 = i == 0 && z2;
                    boolean z6 = i == 270 && !z2;
                    if (z5 || z6) {
                        float centerX = rectF3.centerX();
                        float f = rectF7.right;
                        float f2 = centerX + centerX;
                        rectF = new RectF(f2 - f, rectF7.top, f2 - rectF7.left, rectF7.bottom);
                    } else {
                        boolean z7 = i == 90 && !z2;
                        boolean z8 = i == 180 && z2;
                        if (z7 || z8) {
                            float centerY = rectF3.centerY();
                            float f3 = rectF7.left;
                            float f4 = rectF7.bottom;
                            float f5 = centerY + centerY;
                            rectF = new RectF(f3, f5 - f4, rectF7.right, f5 - rectF7.top);
                        } else {
                            boolean z9 = i == 180 && !z2;
                            boolean z10 = i == 270 && z2;
                            if (!z9 && !z10) {
                                throw new IllegalArgumentException("Invalid argument: mirrored " + z2 + " rotation " + i);
                            }
                            float centerY2 = rectF3.centerY();
                            float f6 = rectF7.left;
                            float f7 = rectF7.bottom;
                            float f8 = centerY2 + centerY2;
                            RectF rectF8 = new RectF(f6, f8 - f7, rectF7.right, f8 - rectF7.top);
                            float centerX2 = rectF3.centerX();
                            float f9 = rectF8.right;
                            float f10 = centerX2 + centerX2;
                            rectF = new RectF(f10 - f9, rectF8.top, f10 - rectF8.left, rectF8.bottom);
                        }
                    }
                }
            }
        }
        HashMap hashMap2 = new HashMap();
        RectF rectF9 = new RectF();
        Matrix matrix3 = new Matrix();
        for (Map.Entry entry2 : hashMap.entrySet()) {
            ((Matrix) entry2.getValue()).invert(matrix3);
            matrix3.mapRect(rectF9, rectF);
            Rect rect2 = new Rect();
            rectF9.round(rect2);
            hashMap2.put((AbstractC25921g1) entry2.getKey(), rect2);
        }
        return hashMap2;
    }

    /* renamed from: l0 */
    public static String m43222l0() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder m8728C = C22128a.m8728C(".(");
        m8728C.append(stackTraceElement.getFileName());
        m8728C.append(StringConstant.COLON);
        m8728C.append(stackTraceElement.getLineNumber());
        m8728C.append(")");
        return m8728C.toString();
    }

    /* renamed from: l1 */
    public static Uri m43221l1(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        String str4 = str;
        if (str == null) {
            str4 = "";
        }
        String str5 = str2;
        if (str2 == null) {
            str5 = "";
        }
        int[] m43318B0 = m43318B0(str5);
        if (m43318B0[0] != -1) {
            sb.append(str5);
            m43224k1(sb, m43318B0[1], m43318B0[2]);
            str3 = sb.toString();
        } else {
            int[] m43318B02 = m43318B0(str4);
            if (m43318B0[3] == 0) {
                sb.append((CharSequence) str4, 0, m43318B02[3]);
                sb.append(str5);
                str3 = sb.toString();
            } else if (m43318B0[2] == 0) {
                sb.append((CharSequence) str4, 0, m43318B02[2]);
                sb.append(str5);
                str3 = sb.toString();
            } else if (m43318B0[1] != 0) {
                int i = m43318B02[0] + 1;
                sb.append((CharSequence) str4, 0, i);
                sb.append(str5);
                str3 = m43224k1(sb, m43318B0[1] + i, i + m43318B0[2]);
            } else if (str5.charAt(m43318B0[1]) == '/') {
                sb.append((CharSequence) str4, 0, m43318B02[1]);
                sb.append(str5);
                str3 = m43224k1(sb, m43318B02[1], m43318B02[1] + m43318B0[2]);
            } else if (m43318B02[0] + 2 >= m43318B02[1] || m43318B02[1] != m43318B02[2]) {
                int lastIndexOf = str4.lastIndexOf(47, m43318B02[2] - 1);
                int i2 = lastIndexOf == -1 ? m43318B02[1] : lastIndexOf + 1;
                sb.append((CharSequence) str4, 0, i2);
                sb.append(str5);
                str3 = m43224k1(sb, m43318B02[1], i2 + m43318B0[2]);
            } else {
                sb.append((CharSequence) str4, 0, m43318B02[1]);
                sb.append('/');
                sb.append(str5);
                str3 = m43224k1(sb, m43318B02[1], m43318B02[1] + m43318B0[2] + 1);
            }
        }
        return Uri.parse(str3);
    }

    /* renamed from: m */
    public static boolean m43220m(C26495c[] c26495cArr, C26495c[] c26495cArr2) {
        if (c26495cArr == null || c26495cArr2 == null || c26495cArr.length != c26495cArr2.length) {
            return false;
        }
        for (int i = 0; i < c26495cArr.length; i++) {
            if (c26495cArr[i].f74281a != c26495cArr2[i].f74281a || c26495cArr[i].f74282b.length != c26495cArr2[i].f74282b.length) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: m0 */
    public static String m43219m0(Context context, int i) {
        if (i != -1) {
            try {
                return context.getResources().getResourceEntryName(i);
            } catch (Exception e) {
                return C22128a.m8611i2("?", i);
            }
        }
        return "UNKNOWN";
    }

    /* renamed from: m1 */
    public static final <T> C27569g3<T> m43218m1(T t, int[] iArr, int i, int i2) {
        l.e(t, "separator");
        l.e(iArr, "originalPageOffsets");
        return new C27569g3<>(iArr, C25225a.m3962T1(t), i, C25225a.m3962T1(Integer.valueOf(i2)));
    }

    /* renamed from: n */
    public static void m43217n(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: n0 */
    public static String m43216n0(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            return "UNKNOWN";
        }
    }

    /* renamed from: n1 */
    public static void m43215n1(TextView textView, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        if (Build.VERSION.SDK_INT >= 27) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        } else if (!(textView instanceof AbstractC26635f)) {
        } else {
            ((AbstractC26635f) textView).setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }
    }

    /* renamed from: o */
    public static void m43214o(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: o0 */
    public static C26482b m43213o0(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        C26482b c26482b;
        if (m43312D0(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return new C26482b(null, null, typedValue.data);
            }
            try {
                c26482b = C26482b.m1769a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            } catch (Exception e) {
                c26482b = null;
            }
            if (c26482b != null) {
                return c26482b;
            }
        }
        return new C26482b(null, null, i2);
    }

    /* renamed from: o1 */
    public static void m43212o1(TextView textView, ColorStateList colorStateList) {
        Objects.requireNonNull(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC26639j)) {
        } else {
            ((AbstractC26639j) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: p */
    public static void m43211p(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: p0 */
    public static String m43210p0(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m43312D0(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: p1 */
    public static void m43209p1(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(C22128a.m8690L1(15, "csd-", i), ByteBuffer.wrap(list.get(i)));
        }
    }

    /* renamed from: q */
    public static void m43208q(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: q0 */
    public static Intent m43207q0(Activity activity) {
        Intent parentActivityIntent = activity.getParentActivityIntent();
        if (parentActivityIntent != null) {
            return parentActivityIntent;
        }
        String m43201s0 = m43201s0(activity);
        if (m43201s0 == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(activity, m43201s0);
        try {
            return m43198t0(activity, componentName) == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: q1 */
    public static void m43206q1(TextView textView, int i) {
        m43205r(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i <= Math.abs(i2)) {
            return;
        }
        textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
    }

    /* renamed from: r */
    public static int m43205r(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: r0 */
    public static Intent m43204r0(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String m43198t0 = m43198t0(context, componentName);
        if (m43198t0 == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), m43198t0);
        return m43198t0(context, componentName2) == null ? Intent.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    /* renamed from: r1 */
    public static final void m43203r1(Fragment fragment, String str, Bundle bundle) {
        l.e(fragment, "$this$setFragmentResult");
        l.e(str, "requestKey");
        l.e(bundle, "result");
        fragment.getParentFragmentManager().m42897o0(str, bundle);
    }

    /* renamed from: s */
    public static int m43202s(int i, int i2, int i3) {
        if (i < i2 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    /* renamed from: s0 */
    public static String m43201s0(Activity activity) {
        try {
            return m43198t0(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: s1 */
    public static void m43200s1(TextView textView, int i) {
        m43205r(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: t */
    public static void m43199t() {
        m43187x(m43288L0(), "Not in application's main thread");
    }

    /* renamed from: t0 */
    public static String m43198t0(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String string;
        PackageManager packageManager = context.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        int i2 = 640;
        if (i >= 29) {
            i2 = 269222528;
        } else if (i >= 24) {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        String str2 = string;
        if (string.charAt(0) == '.') {
            str2 = context.getPackageName() + string;
        }
        return str2;
    }

    /* renamed from: t1 */
    public static void m43197t1(TextView textView, int i) {
        m43205r(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: u */
    public static <T> T m43196u(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: u0 */
    public static final g0 m43195u0(AbstractC25677q abstractC25677q) {
        l.e(abstractC25677q, "$this$queryDispatcher");
        Map<String, Object> backingFieldMap = abstractC25677q.getBackingFieldMap();
        l.d(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("QueryDispatcher");
        g0 g0Var = obj;
        if (obj == null) {
            Executor queryExecutor = abstractC25677q.getQueryExecutor();
            l.d(queryExecutor, "queryExecutor");
            g0Var = d.b1(queryExecutor);
            backingFieldMap.put("QueryDispatcher", g0Var);
        }
        return (g0) g0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1 A[RETURN] */
    /* renamed from: u1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m43194u1(android.widget.TextView r4, java.lang.CharSequence r5) {
        /*
            r0 = r4
            java.lang.CharSequence r0 = r0.getText()
            r6 = r0
            r0 = r5
            r1 = r6
            if (r0 == r1) goto La7
            r0 = r5
            if (r0 != 0) goto L1a
            r0 = r6
            int r0 = r0.length()
            if (r0 != 0) goto L1a
            goto La7
        L1a:
            r0 = r5
            boolean r0 = r0 instanceof android.text.Spanned
            if (r0 == 0) goto L2a
            r0 = r5
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto La2
            return
        L2a:
            r0 = 0
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L36
            r0 = 1
            r8 = r0
            goto L39
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r6
            if (r0 != 0) goto L43
            r0 = 1
            r9 = r0
            goto L46
        L43:
            r0 = 0
            r9 = r0
        L46:
            r0 = r8
            r1 = r9
            if (r0 == r1) goto L53
        L4d:
            r0 = 1
            r9 = r0
            goto L9c
        L53:
            r0 = r5
            if (r0 != 0) goto L5d
            r0 = r7
            r9 = r0
            goto L9c
        L5d:
            r0 = r5
            int r0 = r0.length()
            r10 = r0
            r0 = r10
            r1 = r6
            int r1 = r1.length()
            if (r0 == r1) goto L73
            goto L4d
        L73:
            r0 = 0
            r8 = r0
        L76:
            r0 = r7
            r9 = r0
            r0 = r8
            r1 = r10
            if (r0 >= r1) goto L9c
            r0 = r5
            r1 = r8
            char r0 = r0.charAt(r1)
            r1 = r6
            r2 = r8
            char r1 = r1.charAt(r2)
            if (r0 == r1) goto L96
            goto L4d
        L96:
            int r8 = r8 + 1
            goto L76
        L9c:
            r0 = r9
            if (r0 != 0) goto La2
            return
        La2:
            r0 = r4
            r1 = r5
            r0.setText(r1)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.p001v4.media.session.MediaSessionCompat.m43194u1(android.widget.TextView, java.lang.CharSequence):void");
    }

    /* renamed from: v */
    public static int m43193v(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String permissionToOp = AppOpsManager.permissionToOp(str);
        if (permissionToOp == null) {
            return 0;
        }
        String str3 = str2;
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str3 = packagesForUid[0];
        }
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, str3) != 0 ? -2 : 0;
    }

    /* renamed from: v0 */
    public static int m43192v0(int i, int i2, boolean z) {
        int i3 = z ? ((i2 - i) + 360) % 360 : (i2 + i) % 360;
        if (C26103y0.m2722c("CameraOrientationUtil")) {
            C26103y0.m2724a("CameraOrientationUtil", String.format("getRelativeImageRotation: destRotationDegrees=%s, sourceRotationDegrees=%s, isOppositeFacing=%s, result=%s", Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z), Integer.valueOf(i3)), null);
        }
        return i3;
    }

    /* renamed from: v1 */
    public static void m43191v1(TextView textView, AbstractC26880d abstractC26880d, AbstractC26881e abstractC26881e, AbstractC26879c abstractC26879c, AbstractC26867h abstractC26867h) {
        C26878b c26878b = null;
        if (abstractC26867h != null) {
            c26878b = new C26878b(null, null, abstractC26867h, null);
        }
        int i = C0139R.C0141id.textWatcher;
        SparseArray<WeakHashMap<View, WeakReference<?>>> sparseArray = C26877a.f75139a;
        Object tag = textView.getTag(i);
        textView.setTag(i, c26878b);
        TextWatcher textWatcher = (TextWatcher) tag;
        if (textWatcher != null) {
            textView.removeTextChangedListener(textWatcher);
        }
        if (c26878b != null) {
            textView.addTextChangedListener(c26878b);
        }
    }

    /* renamed from: w */
    public static int m43190w(Context context, String str) {
        return m43193v(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    /* renamed from: w0 */
    public static String m43189w0(MotionLayout motionLayout, int i) {
        return i == -1 ? "UNDEFINED" : motionLayout.getContext().getResources().getResourceEntryName(i);
    }

    /* renamed from: w1 */
    public static void m43188w1(Drawable drawable, int i) {
        drawable.setTint(i);
    }

    /* renamed from: x */
    public static void m43187x(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalStateException(str);
    }

    /* renamed from: x0 */
    public static File m43186x0(Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        StringBuilder m8728C = C22128a.m8728C(".font");
        m8728C.append(Process.myPid());
        m8728C.append(StringConstant.DASH);
        m8728C.append(Process.myTid());
        m8728C.append(StringConstant.DASH);
        String sb = m8728C.toString();
        for (int i = 0; i < 100; i++) {
            File file = new File(cacheDir, C22128a.m8611i2(sb, i));
            if (file.createNewFile()) {
                return file;
            }
        }
        return null;
    }

    /* renamed from: x1 */
    public static void m43185x1(Drawable drawable, ColorStateList colorStateList) {
        drawable.setTintList(colorStateList);
    }

    /* renamed from: y */
    public static void m43184y(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: y0 */
    public static C26538b.C26539a m43183y0(TextView textView) {
        TextDirectionHeuristic textDirectionHeuristic;
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new C26538b.C26539a(textView.getTextMetricsParams());
        }
        TextPaint textPaint = new TextPaint(textView.getPaint());
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int breakStrategy = textView.getBreakStrategy();
        int hyphenationFrequency = textView.getHyphenationFrequency();
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            boolean z = false;
            if (i < 28 || (textView.getInputType() & 15) != 3) {
                if (textView.getLayoutDirection() == 1) {
                    z = true;
                }
                switch (textView.getTextDirection()) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (!z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                            break;
                        } else {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                }
            } else {
                byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            }
        }
        return new C26538b.C26539a(textPaint, textDirectionHeuristic, breakStrategy, hyphenationFrequency);
    }

    /* renamed from: y1 */
    public static void m43182y1(Drawable drawable, PorterDuff.Mode mode) {
        drawable.setTintMode(mode);
    }

    /* renamed from: z */
    public static float m43181z(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    /* renamed from: z0 */
    public static String m43180z0(TextView textView) {
        return textView.getText().toString();
    }

    /* renamed from: z1 */
    public static void m43179z1(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        View$OnLongClickListenerC25548u0 view$OnLongClickListenerC25548u0 = View$OnLongClickListenerC25548u0.f71502j;
        if (view$OnLongClickListenerC25548u0 != null && view$OnLongClickListenerC25548u0.f71504a == view) {
            View$OnLongClickListenerC25548u0.m3279c(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnLongClickListenerC25548u0(view, charSequence);
            return;
        }
        View$OnLongClickListenerC25548u0 view$OnLongClickListenerC25548u02 = View$OnLongClickListenerC25548u0.f71503k;
        if (view$OnLongClickListenerC25548u02 != null && view$OnLongClickListenerC25548u02.f71504a == view) {
            view$OnLongClickListenerC25548u02.m3280b();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }
}
