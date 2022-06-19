package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Application;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.MediaFormat;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.Pair;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.RecentlyNonNull;
import androidx.appcompat.widget.Toolbar;
import com.bumptech.glide.load.ImageHeaderParser;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.clevertap.android.sdk.pushnotification.CTPushNotificationReceiver;
import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.gms.common.C2052R;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzeh;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.common.base.MoreObjects$ToStringHelper;
import com.google.common.base.Platform;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.util.AbstractLocaleUtils;
import com.truecaller.log.AssertionUtil;
import e.b.a.y.j.f;
import e.m.a.g.i.d;
import e.m.a.g.l.a;
import e.m.a.g.o.p;
import e.m.a.g.r.b;
import e.m.a.g.u.e;
import e.m.a.g.u.h;
import e.m.a.h.a.a.j3;
import e.m.a.h.a.a.t0;
import e.m.a.h.a.d.c1;
import e.m.a.h.a.d.d1;
import e.m.a.h.a.d.j1;
import e.m.a.h.a.d.l1;
import e.m.a.h.a.d.m1;
import e.m.a.h.a.d.n1;
import e.m.a.h.a.d.r0;
import e.m.a.h.a.d.s0;
import e.m.a.h.a.d.u0;
import e.m.a.h.a.g.c0;
import e.m.a.h.a.g.g0;
import e.m.a.h.a.g.k;
import e.m.a.h.a.g.q0;
import e.m.a.h.a.h.r;
import e.m.a.h.a.h.s;
import e.m.d.m.o;
import e.m.d.m.u;
import e.m.d.m.v;
import e.m.d.m.w;
import e.m.d.m.y;
import e.m.d.n.j.j.l0;
import e.m.d.n.j.j.m0;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1807k.p1812c.C26493a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.EnumC26850t;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.p1413a0.AbstractC21899m;
import p193e.p1411b.p1412a.p1413a0.C21888b;
import p193e.p1411b.p1412a.p1413a0.C21890d;
import p193e.p1411b.p1412a.p1413a0.C21892f;
import p193e.p1411b.p1412a.p1413a0.C21893g;
import p193e.p1411b.p1412a.p1413a0.C21894h;
import p193e.p1411b.p1412a.p1413a0.C21895i;
import p193e.p1411b.p1412a.p1413a0.C21896j;
import p193e.p1411b.p1412a.p1414b0.C21905e;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1416w.p1418c.C21963h;
import p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m;
import p193e.p1411b.p1412a.p1420y.p1421j.C21980e;
import p193e.p1411b.p1412a.p1420y.p1421j.C21981i;
import p193e.p1432d.p1433a.p1434a.AbstractC22066d;
import p193e.p1432d.p1433a.p1434a.C22072g;
import p193e.p1432d.p1433a.p1434a.C22091p;
import p193e.p1432d.p1436b.p1437a.p1438b.C22108c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.AbstractC22169b;
import p193e.p1432d.p1443e.C22182l;
import p193e.p1432d.p1443e.C22198w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22520w;
import p193e.p1485h.p1486a.p1493c.C22718b0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22712a;
import p193e.p1485h.p1486a.p1493c.p1494a1.C22713b;
import p193e.p1485h.p1486a.p1493c.p1504t0.AbstractC22833b;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22832a;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22835d;
import p193e.p1485h.p1486a.p1493c.p1504t0.C22838f;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1512i.p1513a.p1514a.C22906d;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23652e0;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23884n;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23922l;
import p193e.p1577m.p1578a.p1580b.p1581i.C23995b;
import p193e.p1577m.p1578a.p1580b.p1581i.C23997d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1586b0.AbstractC24041a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24249a;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24422s;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24425u;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24404b;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1608f0.C24405c;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24471a;
import p193e.p1577m.p1578a.p1596c.p1613i1.p1616i.C24472b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
import q3.a.p1;
import q3.a.x;
import s1.w.d;
import s1.z.c.l;
/* renamed from: n3.g0.y */
/* loaded from: classes-dex2jar.jar:n3/g0/y.class */
public class C26232y {

    /* renamed from: a */
    public static zzaa f73140a;

    /* renamed from: b */
    public static t0 f73141b;

    /* renamed from: c */
    public static ThreadPoolExecutor f73142c;

    /* renamed from: A */
    public static String m2488A(AbstractC23698i abstractC23698i) {
        Object obj;
        Object obj2;
        Class<?> cls = abstractC23698i.f65728a;
        if (cls.getName().startsWith("java.time.")) {
            obj = "Java 8 date/time";
            obj2 = "com.fasterxml.jackson.datatype:jackson-datatype-jsr310";
        } else if (!cls.getName().startsWith("org.joda.time.")) {
            return null;
        } else {
            obj = "Joda date/time";
            obj2 = "com.fasterxml.jackson.datatype:jackson-datatype-joda";
        }
        return String.format("%s type %s not supported by default: add Module \"%s\" to enable handling", obj, C23914g.m5747t(abstractC23698i), obj2);
    }

    /* renamed from: A0 */
    public static byte[] m2487A0(String str, int i) {
        if (i == 0) {
            return str.getBytes();
        }
        try {
            return str.getBytes(C22108c.m8797a(i));
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    /* renamed from: A1 */
    public static Metadata m2486A1(C24353e c24353e, boolean z) throws IOException, InterruptedException {
        C24471a c24471a;
        int i;
        if (z) {
            c24471a = null;
        } else {
            i = C24472b.f68320b;
            c24471a = C24471a.f68319a;
        }
        C24798t c24798t = new C24798t(10);
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                i = i2;
                c24353e.m5210e(c24798t.f69504a, 0, 10, false);
                c24798t.m4547C(0);
                if (c24798t.m4527s() != 4801587) {
                    break;
                }
                c24798t.m4546D(3);
                int m4530p = c24798t.m4530p();
                int i3 = m4530p + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(c24798t.f69504a, 0, bArr, 0, 10);
                    c24353e.m5210e(bArr, 10, m4530p, false);
                    metadata = new C24472b(c24471a).m5067c(bArr, i3);
                } else {
                    c24353e.m5214a(m4530p, false);
                }
                i2 = i + i3;
            } catch (EOFException e) {
            }
        }
        c24353e.f67728f = 0;
        c24353e.m5214a(i, false);
        Metadata metadata2 = null;
        if (metadata != null) {
            metadata2 = metadata.f4888a.length == 0 ? null : metadata;
        }
        return metadata2;
    }

    /* renamed from: A2 */
    public static <T> e.m.a.h.a.d.t0<T> m2485A2(Object obj, String str, Class<T> cls) {
        return new e.m.a.h.a.d.t0<>(obj, m2380a3(obj, str), cls);
    }

    /* renamed from: B */
    public static int m2484B(String str, String str2) {
        int glCreateProgram = GLES20.glCreateProgram();
        m2294v();
        m2334l(35633, str, glCreateProgram);
        m2334l(35632, str2, glCreateProgram);
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GLES20.glGetProgramInfoLog(glCreateProgram);
        }
        m2294v();
        return glCreateProgram;
    }

    /* renamed from: B0 */
    public static String m2483B0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str, String str2) {
        if (cleverTapInstanceConfig.f2252m) {
            String m2281y0 = m2281y0(context, m2398W1(cleverTapInstanceConfig, str), str2);
            return m2281y0 != null ? m2281y0 : m2281y0(context, str, str2);
        }
        return m2281y0(context, m2398W1(cleverTapInstanceConfig, str), str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0086 A[LOOP:0: B:3:0x0003->B:15:0x0086, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090 A[EDGE_INSN: B:18:0x0090->B:16:0x0090 ?: BREAK  , SYNTHETIC] */
    /* renamed from: B1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m2482B1(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r7, byte[] r8, int r9, int r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r0 = 0
            r11 = r0
        L3:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L90
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r12 = r0
            r0 = r7
            r1 = r12
            r0.m5212c(r1)
            r0 = r7
            int r0 = r0.f67729g
            r13 = r0
            r0 = r7
            int r0 = r0.f67728f
            r14 = r0
            r0 = r13
            r1 = r14
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L57
            r0 = r7
            r1 = r7
            byte[] r1 = r1.f67727e
            r2 = r14
            r3 = r12
            r4 = 0
            r5 = 1
            int r0 = r0.m5208g(r1, r2, r3, r4, r5)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 != r1) goto L49
            r0 = -1
            r12 = r0
            goto L7d
        L49:
            r0 = r7
            r1 = r7
            int r1 = r1.f67729g
            r2 = r12
            int r1 = r1 + r2
            r0.f67729g = r1
            goto L60
        L57:
            r0 = r12
            r1 = r13
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
        L60:
            r0 = r7
            byte[] r0 = r0.f67727e
            r1 = r7
            int r1 = r1.f67728f
            r2 = r8
            r3 = r9
            r4 = r11
            int r3 = r3 + r4
            r4 = r12
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            r1 = r7
            int r1 = r1.f67728f
            r2 = r12
            int r1 = r1 + r2
            r0.f67728f = r1
        L7d:
            r0 = r12
            r1 = -1
            if (r0 != r1) goto L86
            goto L90
        L86:
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto L3
        L90:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2482B1(e.m.a.c.g1.e, byte[], int, int):int");
    }

    /* renamed from: B2 */
    public static <ResultT> r<ResultT> m2481B2(ResultT resultt) {
        r<ResultT> rVar = new r<>();
        rVar.g(resultt);
        return rVar;
    }

    /* renamed from: C */
    public static int m2480C(int i, int i2) {
        return C26493a.m1747l(i, (Color.alpha(i) * i2) / 255);
    }

    /* renamed from: C0 */
    public static String m2479C0(String str) {
        return C22128a.m8543z2("TransportRuntime.", str);
    }

    /* renamed from: C1 */
    public static boolean m2478C1(AbstractC23652e0 abstractC23652e0, AbstractC23698i abstractC23698i, Type type) {
        if (!abstractC23698i.m6237I(abstractC23652e0.mo6404a(type).f65728a)) {
            return false;
        }
        ParameterizedType m2367d1 = m2367d1(type);
        if (m2367d1 == null || !Objects.equals(abstractC23698i.f65728a, m2367d1.getRawType())) {
            return true;
        }
        Type[] actualTypeArguments = m2367d1.getActualTypeArguments();
        C23884n mo5924j = abstractC23698i.mo5924j();
        if (mo5924j.f66057b.length != actualTypeArguments.length) {
            return false;
        }
        for (int i = 0; i < mo5924j.f66057b.length; i++) {
            if (!m2478C1(abstractC23652e0, mo5924j.m5918d(i), actualTypeArguments[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C2 */
    public static String m2477C2(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(C22128a.m8642b(str.length(), 2, String.valueOf(str2).length(), String.valueOf(str3).length()));
        C22128a.m8666T0(sb, str, StringConstant.COLON, str2, StringConstant.COLON);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: D */
    public static void m2476D(long j, C24798t c24798t, AbstractC24422s[] abstractC24422sArr) {
        int i;
        while (c24798t.m4545a() > 1) {
            int m2458H1 = m2458H1(c24798t);
            int m2458H12 = m2458H1(c24798t);
            int i2 = c24798t.f69505b + m2458H12;
            if (m2458H12 == -1 || m2458H12 > c24798t.m4545a()) {
                i = c24798t.f69506c;
            } else {
                i = i2;
                if (m2458H1 == 4) {
                    i = i2;
                    if (m2458H12 >= 8) {
                        int m4529q = c24798t.m4529q();
                        int m4524v = c24798t.m4524v();
                        int m4541e = m4524v == 49 ? c24798t.m4541e() : 0;
                        int m4529q2 = c24798t.m4529q();
                        if (m4524v == 47) {
                            c24798t.m4546D(1);
                        }
                        boolean z = m4529q == 181 && (m4524v == 49 || m4524v == 47) && m4529q2 == 3;
                        boolean z2 = z;
                        if (m4524v == 49) {
                            z2 = z & (m4541e == 1195456820);
                        }
                        i = i2;
                        if (z2) {
                            m2472E(j, c24798t, abstractC24422sArr);
                            i = i2;
                        }
                    }
                }
            }
            c24798t.m4547C(i);
        }
    }

    /* renamed from: D0 */
    public static b m2475D0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new b(context, resourceId);
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: D1 */
    public static void m2474D1(AnimatorSet animatorSet, List<Animator> list) {
        int size = list.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = list.get(i);
            c = Math.max((long) c, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration((long) c);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }

    /* renamed from: D2 */
    public static final String m2473D2(String str, XmlPullParser xmlPullParser, g0 g0Var) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: E */
    public static void m2472E(long j, C24798t c24798t, AbstractC24422s[] abstractC24422sArr) {
        int m4529q = c24798t.m4529q();
        if (!((m4529q & 64) != 0)) {
            return;
        }
        c24798t.m4546D(1);
        int i = (m4529q & 31) * 3;
        int i2 = c24798t.f69505b;
        for (AbstractC24422s abstractC24422s : abstractC24422sArr) {
            c24798t.m4547C(i2);
            abstractC24422s.mo4929a(c24798t, i);
            abstractC24422s.mo4927c(j, 1, i, 0, null);
        }
    }

    /* renamed from: E0 */
    public static TextView m2471E0(Toolbar toolbar, CharSequence charSequence) {
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    return textView;
                }
            }
        }
        return null;
    }

    /* renamed from: E1 */
    public static void m2470E1(Context context, String str, int i) {
        try {
            m2297u0(context).edit().putInt(str, i).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: E2 */
    public static void m2469E2(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:61:0x051a  */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1485h.p1486a.p1493c.p1494a1.C22712a m2468F(int r4, int r5, java.lang.String... r6) {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2468F(int, int, java.lang.String[]):e.h.a.c.a1.a");
    }

    /* renamed from: F0 */
    public static ImageHeaderParser.ImageType m2467F0(List<ImageHeaderParser> list, InputStream inputStream, AbstractC22301b abstractC22301b) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        C22520w c22520w = inputStream;
        if (!inputStream.markSupported()) {
            c22520w = new C22520w(inputStream, abstractC22301b);
        }
        c22520w.mark(5242880);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                ImageHeaderParser.ImageType mo8178a = list.get(i).mo8178a(c22520w);
                if (mo8178a != ImageHeaderParser.ImageType.UNKNOWN) {
                    return mo8178a;
                }
                c22520w.reset();
            } finally {
                c22520w.reset();
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    /* renamed from: F1 */
    public static void m2466F1(Context context, String str, String str2) {
        try {
            m2297u0(context).edit().putString(str, str2).apply();
        } catch (Throwable th) {
        }
    }

    /* renamed from: F2 */
    public static void m2465F2(zzeh zzehVar, SQLiteDatabase sQLiteDatabase) {
        if (zzehVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                zzehVar.i.m38590a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzehVar.i.m38590a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzehVar.i.m38590a("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            zzehVar.i.m38590a("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    /* renamed from: G */
    public static e.m.a.h.a.g.b m2464G(Context context) {
        c0 c0Var;
        synchronized (q0.class) {
            try {
                if (q0.a == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    k kVar = new k(context);
                    m2461G2(kVar, k.class);
                    q0.a = new c0(kVar);
                }
                c0Var = q0.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return (e.m.a.h.a.g.b) c0Var.k.zza();
    }

    /* renamed from: G0 */
    public static JSONObject m2463G0(Uri uri) {
        JSONObject jSONObject = new JSONObject();
        try {
            UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
            urlQuerySanitizer.setAllowUnregisteredParamaters(true);
            urlQuerySanitizer.parseUrl(uri.toString());
            String m2459H0 = m2459H0("source", urlQuerySanitizer);
            String m2459H02 = m2459H0("medium", urlQuerySanitizer);
            String m2459H03 = m2459H0("campaign", urlQuerySanitizer);
            jSONObject.put(AbstractLocaleUtils.ISO_US, m2459H0);
            jSONObject.put("um", m2459H02);
            jSONObject.put("uc", m2459H03);
            String m2443L0 = m2443L0("medium", urlQuerySanitizer);
            if (m2443L0 != null && m2443L0.matches("^email$|^social$|^search$")) {
                jSONObject.put("wm", m2443L0);
            }
            jSONObject.toString(4);
        } catch (Throwable th) {
        }
        return jSONObject;
    }

    @RecentlyNonNull
    /* renamed from: G1 */
    public static final Object m2462G1(@RecentlyNonNull AbstractC22066d abstractC22066d, @RecentlyNonNull String str, @RecentlyNonNull d<? super C22091p> dVar) {
        x g = s1.a.a.a.v0.f.d.g((p1) null, 1);
        abstractC22066d.mo8814h(str, new C22072g(g));
        return g.A(dVar);
    }

    /* renamed from: G2 */
    public static <T> void m2461G2(T t, Class<T> cls) {
        if (t != null) {
            return;
        }
        throw new IllegalStateException(String.valueOf(cls.getCanonicalName()).concat(" must be set"));
    }

    /* renamed from: H */
    public static FloatBuffer m2460H(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    /* renamed from: H0 */
    public static String m2459H0(String str, UrlQuerySanitizer urlQuerySanitizer) {
        String m2455I0 = m2455I0("utm_" + str, urlQuerySanitizer, true);
        String str2 = m2455I0;
        if (m2455I0 == null) {
            str2 = m2443L0(str, urlQuerySanitizer);
            if (str2 == null) {
                return null;
            }
        }
        return str2;
    }

    /* renamed from: H1 */
    public static int m2458H1(C24798t c24798t) {
        int i = 0;
        while (c24798t.m4545a() != 0) {
            int m4529q = c24798t.m4529q();
            int i2 = i + m4529q;
            i = i2;
            if (m4529q != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: H2 */
    public static void m2457H2(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: I */
    public static Animator m2456I(e.m.a.g.i.d dVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(dVar, d.c.a, d.b.b, new d.e(f, f2, f3));
        d.e revealInfo = dVar.getRevealInfo();
        if (revealInfo != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) dVar, (int) f, (int) f2, revealInfo.c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }

    /* renamed from: I0 */
    public static String m2455I0(String str, UrlQuerySanitizer urlQuerySanitizer, boolean z) {
        if (str == null || urlQuerySanitizer == null) {
            return null;
        }
        try {
            String value = urlQuerySanitizer.getValue(str);
            if (value == null) {
                return null;
            }
            String str2 = value;
            if (z) {
                str2 = value;
                if (value.length() > 120) {
                    str2 = value.substring(0, 120);
                }
            }
            return str2;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: I1 */
    public static long m2454I1(C24798t c24798t, int i, int i2) {
        byte[] bArr;
        c24798t.m4547C(i);
        if (c24798t.m4545a() < 5) {
            return -9223372036854775807L;
        }
        int m4541e = c24798t.m4541e();
        if ((8388608 & m4541e) != 0 || ((2096896 & m4541e) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (!((m4541e & 32) != 0) || c24798t.m4529q() < 7 || c24798t.m4545a() < 7) {
            return -9223372036854775807L;
        }
        if (!((c24798t.m4529q() & 16) == 16)) {
            return -9223372036854775807L;
        }
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, new byte[6], 0, 6);
        c24798t.f69505b += 6;
        return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((bArr[4] & 255) >> 7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
        r9.write(r7, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0086, code lost:
        r12 = r12 - r0;
     */
    /* renamed from: I2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2453I2(byte[] r7, e.m.a.h.a.d.d1 r8, java.io.OutputStream r9, long r10, int r12, long r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2453I2(byte[], e.m.a.h.a.d.d1, java.io.OutputStream, long, int, long):void");
    }

    /* renamed from: J */
    public static e.m.a.g.u.d m2452J(int i) {
        if (i != 0 && i == 1) {
            return new e();
        }
        return new e.m.a.g.u.k();
    }

    /* renamed from: J0 */
    public static int m2451J0(SQLiteDatabase sQLiteDatabase, int i, String str) throws C24249a {
        try {
            if (!m2394X1(sQLiteDatabase, "ExoPlayerVersions")) {
                return -1;
            }
            Cursor query = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", new String[]{Integer.toString(i), str}, null, null, null);
            if (query.getCount() == 0) {
                query.close();
                return -1;
            }
            query.moveToNext();
            int i2 = query.getInt(0);
            query.close();
            return i2;
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: J1 */
    public static C24787m.C24788a m2450J1(C24798t c24798t) {
        long[] jArr;
        long[] jArr2;
        c24798t.m4546D(1);
        int m4527s = c24798t.m4527s();
        long j = c24798t.f69505b + m4527s;
        int i = m4527s / 18;
        long[] jArr3 = new long[i];
        long[] jArr4 = new long[i];
        int i2 = 0;
        while (true) {
            jArr = jArr3;
            jArr2 = jArr4;
            if (i2 >= i) {
                break;
            }
            long m4535k = c24798t.m4535k();
            if (m4535k == -1) {
                jArr = Arrays.copyOf(jArr3, i2);
                jArr2 = Arrays.copyOf(jArr4, i2);
                break;
            }
            jArr3[i2] = m4535k;
            jArr4[i2] = c24798t.m4535k();
            c24798t.m4546D(2);
            i2++;
        }
        c24798t.m4546D((int) (j - c24798t.f69505b));
        return new C24787m.C24788a(jArr, jArr2);
    }

    /* renamed from: J2 */
    public static boolean m2449J2(int i) {
        return i == 2 || i == 7 || i == 3;
    }

    /* renamed from: K */
    public static void m2448K(String str, String str2, Object obj) {
        m2479C0(str);
        String.format(str2, obj);
    }

    /* renamed from: K0 */
    public static JSONObject m2447K0(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                JSONObject m2447K0 = m2447K0((Bundle) obj);
                Iterator<String> keys = m2447K0.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, m2447K0.get(next));
                }
            } else if (str.startsWith("wzrk_")) {
                jSONObject.put(str, bundle.get(str));
            }
        }
        return jSONObject;
    }

    /* renamed from: K1 */
    public static C24425u m2446K1(C24798t c24798t, boolean z, boolean z2) throws C24560m0 {
        if (z) {
            m2356f2(3, c24798t, false);
        }
        String m4532n = c24798t.m4532n((int) c24798t.m4538h());
        int length = m4532n.length();
        long m4538h = c24798t.m4538h();
        String[] strArr = new String[(int) m4538h];
        int i = length + 11 + 4;
        for (int i2 = 0; i2 < m4538h; i2++) {
            strArr[i2] = c24798t.m4532n((int) c24798t.m4538h());
            i = i + 4 + strArr[i2].length();
        }
        if (!z2 || (c24798t.m4529q() & 1) != 0) {
            return new C24425u(m4532n, strArr, i + 1);
        }
        throw new C24560m0("framing bit expected to be set");
    }

    /* renamed from: K2 */
    public static int m2445K2(int i) {
        if (i != 513) {
            if (i == 514) {
                return 2;
            }
            if (i == 769) {
                return 1;
            }
            switch (i) {
                case 257:
                case 259:
                    return 1;
                case 258:
                case 260:
                    return 2;
                default:
                    String valueOf = String.valueOf(Long.toHexString(i));
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
            }
        }
        return 1;
    }

    /* renamed from: L */
    public static void m2444L(List<o<?>> list) {
        int i;
        Set<v> set;
        HashMap hashMap = new HashMap(list.size());
        for (o<?> oVar : list) {
            v vVar = new v(oVar);
            for (Class cls : oVar.a) {
                w wVar = new w(cls, !oVar.c(), (u) null);
                if (!hashMap.containsKey(wVar)) {
                    hashMap.put(wVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(wVar);
                if (!set2.isEmpty() && !wVar.b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(vVar);
            }
        }
        for (Set<v> set3 : hashMap.values()) {
            for (v vVar2 : set3) {
                for (e.m.d.m.x xVar : vVar2.a.b) {
                    if ((xVar.c == 0) && (set = (Set) hashMap.get(new w(xVar.a, xVar.a(), (u) null))) != null) {
                        for (v vVar3 : set) {
                            vVar2.b.add(vVar3);
                            vVar3.c.add(vVar2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        HashSet hashSet2 = new HashSet();
        Iterator it = hashSet.iterator();
        while (true) {
            i = 0;
            if (it.hasNext()) {
                v vVar4 = (v) it.next();
                if (vVar4.a()) {
                    hashSet2.add(vVar4);
                }
            }
        }
        while (!hashSet2.isEmpty()) {
            v vVar5 = (v) hashSet2.iterator().next();
            hashSet2.remove(vVar5);
            int i2 = i + 1;
            Iterator it2 = vVar5.b.iterator();
            while (true) {
                i = i2;
                if (it2.hasNext()) {
                    v vVar6 = (v) it2.next();
                    vVar6.c.remove(vVar5);
                    if (vVar6.a()) {
                        hashSet2.add(vVar6);
                    }
                }
            }
        }
        if (i == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            v vVar7 = (v) it3.next();
            if (!vVar7.a() && !vVar7.b.isEmpty()) {
                arrayList.add(vVar7.a);
            }
        }
        throw new y(arrayList);
    }

    /* renamed from: L0 */
    public static String m2443L0(String str, UrlQuerySanitizer urlQuerySanitizer) {
        return m2455I0("wzrk_" + str, urlQuerySanitizer, true);
    }

    /* renamed from: L1 */
    public static TypedValue m2442L1(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: L2 */
    public static long m2441L2(byte[] bArr, int i) {
        return ((m2347h2(bArr, i + 2) << 16) | m2347h2(bArr, i)) & 4294967295L;
    }

    /* renamed from: M */
    public static float m2440M(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: M0 */
    public static int m2439M0(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: M1 */
    public static boolean m2438M1(Context context, int i, boolean z) {
        TypedValue m2442L1 = m2442L1(context, i);
        boolean z2 = z;
        if (m2442L1 != null) {
            z2 = z;
            if (m2442L1.type == 18) {
                z2 = m2442L1.data != 0;
            }
        }
        return z2;
    }

    /* renamed from: M2 */
    public static <ResultT> ResultT m2437M2(r<ResultT> rVar) throws ExecutionException {
        if (rVar.e()) {
            return (ResultT) rVar.d();
        }
        throw new ExecutionException(rVar.c());
    }

    /* renamed from: N */
    public static float m2436N(float f, float f2, float f3, float f4, float f5, float f6) {
        float m2440M = m2440M(f, f2, f3, f4);
        float m2440M2 = m2440M(f, f2, f5, f4);
        float m2440M3 = m2440M(f, f2, f5, f6);
        float m2440M4 = m2440M(f, f2, f3, f6);
        if (m2440M > m2440M2 && m2440M > m2440M3 && m2440M > m2440M4) {
            m2440M4 = m2440M;
        } else if (m2440M2 > m2440M3 && m2440M2 > m2440M4) {
            m2440M4 = m2440M2;
        } else if (m2440M3 > m2440M4) {
            m2440M4 = m2440M3;
        }
        return m2440M4;
    }

    /* renamed from: N0 */
    public static EnumC26674a m2435N0(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException(C22128a.m8599l2("Could not convert ", i, " to BackoffPolicy"));
            }
            return EnumC26674a.LINEAR;
        }
        return EnumC26674a.EXPONENTIAL;
    }

    /* renamed from: N1 */
    public static int m2434N1(Context context, int i, String str) {
        TypedValue m2442L1 = m2442L1(context, i);
        if (m2442L1 != null) {
            return m2442L1.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: N2 */
    public static final void m2433N2(XmlPullParser xmlPullParser, g0 g0Var) throws IOException, XmlPullParserException {
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: O */
    public static int m2432O(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: O0 */
    public static EnumC26841q m2431O0(int i) {
        if (i != 0) {
            if (i == 1) {
                return EnumC26841q.CONNECTED;
            }
            if (i == 2) {
                return EnumC26841q.UNMETERED;
            }
            if (i == 3) {
                return EnumC26841q.NOT_ROAMING;
            }
            if (i == 4) {
                return EnumC26841q.METERED;
            }
            if (Build.VERSION.SDK_INT >= 30 && i == 5) {
                return EnumC26841q.TEMPORARILY_UNMETERED;
            }
            throw new IllegalArgumentException(C22128a.m8599l2("Could not convert ", i, " to NetworkType"));
        }
        return EnumC26841q.NOT_REQUIRED;
    }

    /* renamed from: O1 */
    public static <TInput, TResult, TException extends Throwable> TResult m2430O1(int i, TInput tinput, C23995b<TInput, TResult, TException> c23995b, AbstractC24041a<TInput, TResult> abstractC24041a) throws Throwable {
        TResult tresult;
        Object obj;
        int i2;
        int i3 = i;
        Object obj2 = tinput;
        if (i < 1) {
            return (TResult) c23995b.m5631a(tinput);
        }
        do {
            tresult = (TResult) c23995b.m5631a(obj2);
            C23997d.C23998a c23998a = (C23997d.C23998a) obj2;
            C23997d.C23999b c23999b = (C23997d.C23999b) tresult;
            URL url = c23999b.f66489b;
            if (url != null) {
                m2448K("CctTransportBackend", "Following redirect to: %s", url);
                obj = new C23997d.C23998a(c23999b.f66489b, c23998a.f66486b, c23998a.f66487c);
            } else {
                obj = null;
            }
            if (obj == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
            obj2 = obj;
        } while (i2 >= 1);
        return tresult;
    }

    /* renamed from: O2 */
    public static void m2429O2(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i, long j) throws IOException {
        if (i >= 0) {
            if (i > j) {
                throw new IOException("Output length overrun");
            }
            while (i > 0) {
                try {
                    int min = Math.min(i, 16384);
                    dataInputStream.readFully(bArr, 0, min);
                    outputStream.write(bArr, 0, min);
                    i -= min;
                } catch (EOFException e) {
                    throw new IOException("patch underrun");
                }
            }
            return;
        }
        throw new IOException("copyLength negative");
    }

    /* renamed from: P */
    public static float m2428P(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: P0 */
    public static EnumC26850t m2427P0(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException(C22128a.m8599l2("Could not convert ", i, " to OutOfQuotaPolicy"));
            }
            return EnumC26850t.DROP_WORK_REQUEST;
        }
        return EnumC26850t.RUN_AS_NON_EXPEDITED_WORK_REQUEST;
    }

    /* renamed from: P1 */
    public static void m2426P1(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(C22128a.m8611i2("csd-", i), ByteBuffer.wrap(list.get(i)));
        }
    }

    /* renamed from: P2 */
    public static boolean m2425P2(int i, int i2) {
        int i3 = i;
        if (i == 5) {
            if (i2 != 5) {
                return true;
            }
            i3 = 5;
        }
        int i4 = i3;
        if (i3 == 6) {
            if (i2 != 6 && i2 != 5) {
                return true;
            }
            i4 = 6;
        }
        if (i4 != 4 || i2 == 4) {
            if (i4 == 3 && (i2 == 2 || i2 == 7 || i2 == 1 || i2 == 8)) {
                return true;
            }
            if (i4 != 2) {
                return false;
            }
            return i2 == 1 || i2 == 8;
        }
        return true;
    }

    /* renamed from: Q */
    public static void m2424Q() {
        if (C24773d0.f69427a >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: Q0 */
    public static C26855x.EnumC26856a m2423Q0(int i) {
        if (i != 0) {
            if (i == 1) {
                return C26855x.EnumC26856a.RUNNING;
            }
            if (i == 2) {
                return C26855x.EnumC26856a.SUCCEEDED;
            }
            if (i == 3) {
                return C26855x.EnumC26856a.FAILED;
            }
            if (i == 4) {
                return C26855x.EnumC26856a.BLOCKED;
            }
            if (i != 5) {
                throw new IllegalArgumentException(C22128a.m8599l2("Could not convert ", i, " to State"));
            }
            return C26855x.EnumC26856a.CANCELLED;
        }
        return C26855x.EnumC26856a.ENQUEUED;
    }

    /* renamed from: Q1 */
    public static void m2422Q1(View view, float f) {
        h background = view.getBackground();
        if (background instanceof h) {
            h hVar = background;
            h.b bVar = hVar.a;
            if (bVar.o == f) {
                return;
            }
            bVar.o = f;
            hVar.A();
        }
    }

    /* renamed from: Q2 */
    public static <R, P0> R m2421Q2(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0) {
        try {
            return cls.cast(m2375b3(obj.getClass(), str, cls2).invoke(obj, p0));
        } catch (Exception e) {
            throw new u0(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    /* renamed from: R */
    public static boolean m2420R(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: R0 */
    public static boolean m2419R0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        boolean z = true;
        if (!(xmlPullParser.getEventType() == 3) || !xmlPullParser.getName().equals(str)) {
            z = false;
        }
        return z;
    }

    /* renamed from: R1 */
    public static <T> void m2418R1(List<? extends C21907a<T>> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            C21907a<T> c21907a = list.get(i2);
            int i3 = i2 + 1;
            C21907a<T> c21907a2 = list.get(i3);
            c21907a.f60808f = Float.valueOf(c21907a2.f60807e);
            i2 = i3;
            if (c21907a.f60805c == null) {
                T t = c21907a2.f60804b;
                i2 = i3;
                if (t != null) {
                    c21907a.f60805c = t;
                    i2 = i3;
                    if (c21907a instanceof C21963h) {
                        ((C21963h) c21907a).m8864e();
                        i2 = i3;
                    }
                }
            }
        }
        C21907a<T> c21907a3 = list.get(i);
        if ((c21907a3.f60804b == null || c21907a3.f60805c == null) && list.size() > 1) {
            list.remove(c21907a3);
        }
    }

    /* renamed from: R2 */
    public static String m2417R2(int i) {
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException(C22128a.m8690L1(44, "Unknown content digest algorthm: ", i));
            }
            return "SHA-512";
        }
        return "SHA-256";
    }

    /* renamed from: S */
    public static int m2416S(float f, int i, int i2) {
        float f2 = ((i >> 24) & 255) / 255.0f;
        float m2384a = m2384a(((i >> 16) & 255) / 255.0f);
        float m2384a2 = m2384a(((i >> 8) & 255) / 255.0f);
        float m2384a3 = m2384a((i & 255) / 255.0f);
        float m2384a4 = m2384a(((i2 >> 16) & 255) / 255.0f);
        float m2384a5 = m2384a(((i2 >> 8) & 255) / 255.0f);
        float m2384a6 = m2384a((i2 & 255) / 255.0f);
        float m8646a = C22128a.m8646a(((i2 >> 24) & 255) / 255.0f, f2, f, f2);
        float m8646a2 = C22128a.m8646a(m2384a4, m2384a, f, m2384a);
        float m8646a3 = C22128a.m8646a(m2384a5, m2384a2, f, m2384a2);
        float m8646a4 = C22128a.m8646a(m2384a6, m2384a3, f, m2384a3);
        float m2379b = m2379b(m8646a2);
        float m2379b2 = m2379b(m8646a3);
        float m2379b3 = m2379b(m8646a4);
        int round = Math.round(m8646a * 255.0f);
        return Math.round(m2379b3 * 255.0f) | (Math.round(m2379b * 255.0f) << 16) | (round << 24) | (Math.round(m2379b2 * 255.0f) << 8);
    }

    /* renamed from: S0 */
    public static boolean m2415S0(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* renamed from: S1 */
    public static void m2414S1(View view, h hVar) {
        a aVar = hVar.a.b;
        if (aVar != null && aVar.a) {
            float m2301t0 = m2301t0(view);
            h.b bVar = hVar.a;
            if (bVar.n == m2301t0) {
                return;
            }
            bVar.n = m2301t0;
            hVar.A();
        }
    }

    /* renamed from: S2 */
    public static boolean m2413S2(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:109|21)|(16:23|24|25|39|40|(1:42)|43|44|(1:46)|47|48|(1:52)|53|(18:55|56|(1:73)(4:60|61|(3:63|64|(4:66|67|68|(2:70|71)))|72)|74|(1:76)|77|78|107|79|(3:81|82|(1:84))|85|(1:87)|88|89|(1:91)|92|93|(1:95))|96|97)|28|103|29|(2:31|32)(1:33)|34) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x016a, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x016b, code lost:
        r6.printStackTrace();
        p193e.p1485h.p1486a.p1493c.C22718b0.f62869l = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x018b A[Catch: all -> 0x02a5, TryCatch #0 {all -> 0x02a5, blocks: (B:18:0x009d, B:21:0x012a, B:25:0x013f, B:27:0x0147, B:29:0x014d, B:34:0x0162, B:36:0x016b, B:37:0x0173, B:40:0x017a, B:42:0x018b, B:44:0x019c, B:46:0x01af, B:48:0x01ba, B:50:0x01c2, B:52:0x01cc, B:55:0x01da, B:58:0x01ee, B:60:0x0200, B:64:0x020d, B:68:0x0217, B:72:0x0220, B:76:0x022e, B:87:0x026c, B:89:0x0277, B:91:0x0282, B:93:0x028d, B:95:0x0298), top: B:101:0x009d, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01af A[Catch: all -> 0x02a5, TryCatch #0 {all -> 0x02a5, blocks: (B:18:0x009d, B:21:0x012a, B:25:0x013f, B:27:0x0147, B:29:0x014d, B:34:0x0162, B:36:0x016b, B:37:0x0173, B:40:0x017a, B:42:0x018b, B:44:0x019c, B:46:0x01af, B:48:0x01ba, B:50:0x01c2, B:52:0x01cc, B:55:0x01da, B:58:0x01ee, B:60:0x0200, B:64:0x020d, B:68:0x0217, B:72:0x0220, B:76:0x022e, B:87:0x026c, B:89:0x0277, B:91:0x0282, B:93:0x028d, B:95:0x0298), top: B:101:0x009d, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01da A[Catch: all -> 0x02a5, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x02a5, blocks: (B:18:0x009d, B:21:0x012a, B:25:0x013f, B:27:0x0147, B:29:0x014d, B:34:0x0162, B:36:0x016b, B:37:0x0173, B:40:0x017a, B:42:0x018b, B:44:0x019c, B:46:0x01af, B:48:0x01ba, B:50:0x01c2, B:52:0x01cc, B:55:0x01da, B:58:0x01ee, B:60:0x0200, B:64:0x020d, B:68:0x0217, B:72:0x0220, B:76:0x022e, B:87:0x026c, B:89:0x0277, B:91:0x0282, B:93:0x028d, B:95:0x0298), top: B:101:0x009d, inners: #1, #4 }] */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m2412T(p193e.p1485h.p1486a.p1493c.C22718b0 r5, android.location.Location r6, boolean r7, boolean r8) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 688
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2412T(e.h.a.c.b0, android.location.Location, boolean, boolean):org.json.JSONObject");
    }

    /* renamed from: T0 */
    public static boolean m2411T0(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }

    /* renamed from: T1 */
    public static void m2410T1(SQLiteDatabase sQLiteDatabase, int i, String str, int i2) throws C24249a {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i));
            contentValues.put("instance_uid", str);
            contentValues.put("version", Integer.valueOf(i2));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: T2 */
    public static <R, P0, P1, P2> R m2409T2(Object obj, String str, Class<R> cls, Class<P0> cls2, P0 p0, Class<P1> cls3, P1 p1, Class<P2> cls4, P2 p2) {
        try {
            return cls.cast(m2375b3(obj.getClass(), str, cls2, cls3, cls4).invoke(obj, p0, p1, p2));
        } catch (Exception e) {
            throw new u0(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e);
        }
    }

    /* renamed from: U */
    public static String m2408U(Bundle bundle) {
        String str = "";
        if (bundle != null) {
            str = bundle.getString("wzrk_acct_id", "");
        }
        return str;
    }

    /* renamed from: U0 */
    public static boolean m2407U0(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = true;
        if (view.getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: U1 */
    public static boolean m2406U1(Object obj, Collection<String> collection, Collection<String> collection2) {
        boolean z = false;
        if (collection == null && collection2 == null) {
            return false;
        }
        if (collection2 == null) {
            return collection.contains(obj);
        }
        if (collection == null) {
            return !collection2.contains(obj);
        }
        if (!collection2.contains(obj) || collection.contains(obj)) {
            z = true;
        }
        return z;
    }

    /* renamed from: U2 */
    public static ByteBuffer m2405U2(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 < position || i2 > limit) {
                throw new BufferUnderflowException();
            }
            byteBuffer.limit(i2);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i2);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new IllegalArgumentException(C22128a.m8690L1(17, "size: ", i));
    }

    /* renamed from: V */
    public static PendingIntent m2404V(Bundle bundle, Context context) {
        Intent intent;
        if (!bundle.containsKey("wzrk_dl") || bundle.getString("wzrk_dl") == null) {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            intent = launchIntentForPackage;
            if (launchIntentForPackage == null) {
                return null;
            }
        } else {
            intent = new Intent("android.intent.action.VIEW", Uri.parse(bundle.getString("wzrk_dl")));
            C22741j0.m7837m(context, intent);
        }
        intent.setFlags(872415232);
        intent.putExtras(bundle);
        intent.removeExtra("wzrk_acts");
        return PendingIntent.getActivity(context, (int) System.currentTimeMillis(), intent, 201326592);
    }

    /* renamed from: V0 */
    public static boolean m2403V0(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: V1 */
    public static int m2402V1(C26855x.EnumC26856a enumC26856a) {
        int ordinal = enumC26856a.ordinal();
        if (ordinal != 0) {
            int i = 1;
            if (ordinal != 1) {
                i = 2;
                if (ordinal != 2) {
                    i = 3;
                    if (ordinal != 3) {
                        i = 4;
                        if (ordinal != 4) {
                            if (ordinal == 5) {
                                return 5;
                            }
                            throw new IllegalArgumentException("Could not convert " + enumC26856a + " to int");
                        }
                    }
                }
            }
            return i;
        }
        return 0;
    }

    /* renamed from: V2 */
    public static Pair<ByteBuffer, Long> m2401V2(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        m2385Z2(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, 65535);
            for (int i4 = 0; i4 < min; i4++) {
                int i5 = i3 - i4;
                if (allocate.getInt(i5) == 101010256 && ((char) allocate.getShort(i5 + 20)) == i4) {
                    i2 = i5;
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    /* renamed from: W */
    public static ArrayList<String> m2400W() {
        ArrayList<String> arrayList = new ArrayList<>();
        AbstractC22865g.EnumC22866a[] values = AbstractC22865g.EnumC22866a.values();
        for (int i = 0; i < 5; i++) {
            arrayList.add(values[i].name());
        }
        return arrayList;
    }

    /* renamed from: W0 */
    public static boolean m2399W0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        boolean z = true;
        if (!(xmlPullParser.getEventType() == 2) || !xmlPullParser.getName().equals(str)) {
            z = false;
        }
        return z;
    }

    /* renamed from: W1 */
    public static String m2398W1(CleverTapInstanceConfig cleverTapInstanceConfig, String str) {
        StringBuilder m8696K = C22128a.m8696K(str, StringConstant.COLON);
        m8696K.append(cleverTapInstanceConfig.f2240a);
        return m8696K.toString();
    }

    /* renamed from: W2 */
    public static <R, P0> R m2397W2(Class cls, String str, Class<R> cls2, Class<P0> cls3, P0 p0) {
        try {
            return cls2.cast(m2375b3(cls, "isDexOptNeeded", cls3).invoke(null, p0));
        } catch (Exception e) {
            throw new u0(String.format("Failed to invoke static method %s on type %s", "isDexOptNeeded", cls), e);
        }
    }

    /* renamed from: X */
    public static Bundle m2396X(String str, boolean z) {
        if (str == null) {
            return new Bundle();
        }
        Bundle bundle = new Bundle();
        try {
            UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
            urlQuerySanitizer.setAllowUnregisteredParamaters(true);
            urlQuerySanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
            urlQuerySanitizer.parseUrl(str);
            for (String str2 : urlQuerySanitizer.getParameterSet()) {
                String m2455I0 = m2455I0(str2, urlQuerySanitizer, false);
                if (m2455I0 != null) {
                    if (!z && !str2.equals("wzrk_c2a")) {
                        bundle.putString(str2, URLDecoder.decode(m2455I0, StringConstant.UTF8));
                    }
                    bundle.putString(str2, m2455I0);
                }
            }
        } catch (Throwable th) {
        }
        return bundle;
    }

    /* renamed from: X0 */
    public static boolean m2395X0(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: X1 */
    public static boolean m2394X1(SQLiteDatabase sQLiteDatabase, String str) {
        boolean z = true;
        if (DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) <= 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: X2 */
    public static ByteBuffer m2393X2(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            }
            if (i > byteBuffer.remaining()) {
                throw new IOException(C22128a.m8683N1(101, "Length-prefixed field longer than remaining buffer. Field length: ", i, ", remaining: ", byteBuffer.remaining()));
            }
            return m2405U2(byteBuffer, i);
        }
        throw new IOException(C22128a.m8690L1(93, "Remaining buffer too short to contain length of length-prefixed field. Remaining: ", byteBuffer.remaining()));
    }

    /* renamed from: Y */
    public static String m2392Y(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: Y0 */
    public static int m2391Y0(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        int nextDouble = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble2 = (int) (jsonReader.nextDouble() * 255.0d);
        int nextDouble3 = (int) (jsonReader.nextDouble() * 255.0d);
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endArray();
        return Color.argb(255, nextDouble, nextDouble2, nextDouble3);
    }

    /* renamed from: Y1 */
    public static int m2390Y1(Context context, String str) {
        Resources.Theme theme = context.getTheme();
        if (theme == null) {
            return -1;
        }
        TypedValue typedValue = new TypedValue();
        int identifier = context.getResources().getIdentifier(str, "attr", context.getPackageName());
        if (identifier == 0) {
            return -1;
        }
        theme.resolveAttribute(identifier, typedValue, true);
        return typedValue.data;
    }

    /* renamed from: Y2 */
    public static void m2389Y2(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    /* renamed from: Z */
    public static boolean m2388Z(Context context, String str, boolean z) {
        return m2297u0(context).getBoolean(str, z);
    }

    /* renamed from: Z0 */
    public static PointF m2387Z0(JsonReader jsonReader, float f) throws IOException {
        int i = C21893g.f60774a[jsonReader.peek().ordinal()];
        if (i == 1) {
            float nextDouble = (float) jsonReader.nextDouble();
            float nextDouble2 = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            return new PointF(nextDouble * f, nextDouble2 * f);
        } else if (i == 2) {
            jsonReader.beginArray();
            float nextDouble3 = (float) jsonReader.nextDouble();
            float nextDouble4 = (float) jsonReader.nextDouble();
            while (jsonReader.peek() != JsonToken.END_ARRAY) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return new PointF(nextDouble3 * f, nextDouble4 * f);
        } else if (i != 3) {
            StringBuilder m8728C = C22128a.m8728C("Unknown point starts with ");
            m8728C.append(jsonReader.peek());
            throw new IllegalArgumentException(m8728C.toString());
        } else {
            jsonReader.beginObject();
            float f2 = 0.0f;
            float f3 = 0.0f;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                if (nextName.equals("x")) {
                    f2 = m2361e2(jsonReader);
                } else if (!nextName.equals("y")) {
                    jsonReader.skipValue();
                } else {
                    f3 = m2361e2(jsonReader);
                }
            }
            jsonReader.endObject();
            return new PointF(f2 * f, f3 * f);
        }
    }

    /* renamed from: Z1 */
    public static String m2386Z1(byte[] bArr) {
        try {
            return new String(bArr, "iso-8859-1");
        } catch (UnsupportedEncodingException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return "";
        }
    }

    /* renamed from: Z2 */
    public static void m2385Z2(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            return;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    /* renamed from: a */
    public static float m2384a(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    /* renamed from: a0 */
    public static boolean m2383a0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str) {
        if (cleverTapInstanceConfig.f2252m) {
            boolean m2388Z = m2388Z(context, m2398W1(cleverTapInstanceConfig, str), false);
            boolean z = m2388Z;
            if (!m2388Z) {
                z = m2388Z(context, str, false);
            }
            return z;
        }
        return m2388Z(context, m2398W1(cleverTapInstanceConfig, str), false);
    }

    /* renamed from: a1 */
    public static List<PointF> m2382a1(JsonReader jsonReader, float f) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            arrayList.add(m2387Z0(jsonReader, f));
            jsonReader.endArray();
        }
        jsonReader.endArray();
        return arrayList;
    }

    /* renamed from: a2 */
    public static PorterDuffColorFilter m2381a2(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }

    /* renamed from: a3 */
    public static Field m2380a3(Object obj, String str) {
        Field declaredField;
        Class<?> cls = obj.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 == null) {
                throw new u0(String.format("Failed to find a field named %s on an object of instance %s", str, obj.getClass().getName()));
            }
            try {
                declaredField = cls2.getDeclaredField(str);
                if (declaredField.isAccessible()) {
                    break;
                }
                declaredField.setAccessible(true);
                break;
            } catch (NoSuchFieldException e) {
                cls = cls2.getSuperclass();
            }
        }
        return declaredField;
    }

    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it) {
        Objects.requireNonNull(collection);
        Objects.requireNonNull(it);
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                z = z2 | collection.add(it.next());
            } else {
                return z2;
            }
        }
    }

    /* renamed from: b */
    public static float m2379b(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    /* renamed from: b0 */
    public static int m2378b0(Context context, int i, int i2) {
        TypedValue m2442L1 = m2442L1(context, i);
        return m2442L1 != null ? m2442L1.data : i2;
    }

    /* renamed from: b1 */
    public static int m2377b1(int i, int i2, float f) {
        return C26493a.m1752g(C26493a.m1747l(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    /* renamed from: b2 */
    public static void m2376b2(Application application, Class cls) throws PackageManager.NameNotFoundException {
        ActivityInfo[] activityInfoArr = application.getPackageManager().getPackageInfo(application.getPackageName(), 1).activities;
        String name = cls.getName();
        for (ActivityInfo activityInfo : activityInfoArr) {
            if (activityInfo.name.equals(name)) {
                name.replaceFirst("com.clevertap.android.sdk.", "");
                return;
            }
        }
        name.replaceFirst("com.clevertap.android.sdk.", "");
    }

    /* renamed from: b3 */
    public static Method m2375b3(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod;
        Class<?> cls2 = cls;
        while (true) {
            Class<?> cls3 = cls2;
            if (cls3 == null) {
                throw new u0(String.format("Could not find a method named %s with parameters %s in type %s", str, Arrays.asList(clsArr), cls));
            }
            try {
                declaredMethod = cls3.getDeclaredMethod(str, clsArr);
                if (declaredMethod.isAccessible()) {
                    break;
                }
                declaredMethod.setAccessible(true);
                break;
            } catch (NoSuchMethodException e) {
                cls2 = cls3.getSuperclass();
            }
        }
        return declaredMethod;
    }

    public static String badPositionIndex(int i, int i2, String str) {
        if (i < 0) {
            return lenientFormat("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
        }
        return lenientFormat("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: c */
    public static int m2374c(CriteoErrorCode criteoErrorCode) {
        int i = C22906d.f63574a[criteoErrorCode.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 2;
            }
            if (i == 3) {
                return 1;
            }
            if (i == 4) {
                return 3;
            }
            throw new UnsupportedOperationException("Unknown Criteo error code: " + criteoErrorCode);
        }
        return 0;
    }

    /* renamed from: c0 */
    public static int m2373c0(View view, int i) {
        return m2434N1(view.getContext(), i, view.getClass().getCanonicalName());
    }

    /* renamed from: c1 */
    public static float m2372c1(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    /* renamed from: c2 */
    public static void m2371c2(Application application, String str) throws PackageManager.NameNotFoundException {
        for (ActivityInfo activityInfo : application.getPackageManager().getPackageInfo(application.getPackageName(), 2).receivers) {
            if (activityInfo.name.equals(str)) {
                str.replaceFirst("com.clevertap.android.", "");
                return;
            }
        }
        str.replaceFirst("com.clevertap.android.", "");
    }

    /* renamed from: c3 */
    public static byte[] m2370c3(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i > byteBuffer.remaining()) {
                throw new IOException(C22128a.m8683N1(90, "Underflow while reading length-prefixed value. Length: ", i, ", available: ", byteBuffer.remaining()));
            }
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new IOException("Negative length");
    }

    public static void checkArgument(boolean z, String str, char c) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, Character.valueOf(c)));
    }

    public static void checkArgument(boolean z, String str, int i) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, Integer.valueOf(i)));
    }

    public static void checkArgument(boolean z, String str, long j) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, Long.valueOf(j)));
    }

    public static void checkArgument(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, obj));
    }

    public static void checkArgument(boolean z, String str, Object obj, Object obj2) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, obj, obj2));
    }

    public static void checkArgument2(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void checkArgument2(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static int checkElementIndex(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = lenientFormat("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                throw new IllegalArgumentException(C22128a.m8690L1(26, "negative size: ", i2));
            } else {
                str = lenientFormat("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    public static Object checkElementNotNull(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(C22128a.m8690L1(20, "at index ", i));
    }

    public static void checkEntryNotNull(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            throw new NullPointerException(C22128a.m8674Q1(valueOf.length() + 24, "null key in entry: null=", valueOf));
        } else if (obj2 != null) {
        } else {
            String valueOf2 = String.valueOf(obj);
            throw new NullPointerException(C22128a.m8671R1(valueOf2.length() + 26, "null value in entry: ", valueOf2, "=null"));
        }
    }

    public static int checkNonnegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public static <T> T checkNotNull(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(lenientFormat(str, obj));
    }

    public static <T> T checkNotNull1(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int checkPositionIndex(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(badPositionIndex(i, i2, "index"));
        }
        return i;
    }

    public static void checkPositionIndexes(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? badPositionIndex(i, i3, "start index") : (i2 < 0 || i2 > i3) ? badPositionIndex(i2, i3, "end index") : lenientFormat("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void checkState(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(lenientFormat(str, obj));
    }

    public static void checkState1(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    public static void checkState2(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    public static int constrainToRange(int i, int i2, int i3) {
        if (i2 <= i3) {
            return Math.min(Math.max(i, i2), i3);
        }
        throw new IllegalArgumentException(lenientFormat("min (%s) must be less than or equal to max (%s)", Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static Object createTable(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(C22128a.m8690L1(52, "must be power of 2 between 2^1 and 2^30: ", i));
        }
        return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
    }

    /* renamed from: d */
    public static <T> T m2369d(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    /* renamed from: d0 */
    public static ColorStateList m2368d0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
            ColorStateList colorStateList = context.getColorStateList(resourceId);
            if (colorStateList != null) {
                return colorStateList;
            }
        }
        return typedArray.getColorStateList(i);
    }

    /* renamed from: d1 */
    public static ParameterizedType m2367d1(Type type) {
        if (type instanceof ParameterizedType) {
            return (ParameterizedType) type;
        }
        if (!(type instanceof WildcardType)) {
            return null;
        }
        WildcardType wildcardType = (WildcardType) type;
        if (wildcardType.getLowerBounds().length != 0) {
            return null;
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (upperBounds.length != 1) {
            return null;
        }
        return m2367d1(upperBounds[0]);
    }

    /* renamed from: d2 */
    public static void m2366d2(Application application, String str) throws PackageManager.NameNotFoundException {
        for (ServiceInfo serviceInfo : application.getPackageManager().getPackageInfo(application.getPackageName(), 4).services) {
            if (serviceInfo.name.equals(str)) {
                str.replaceFirst("com.clevertap.android.sdk.", "");
                return;
            }
        }
        str.replaceFirst("com.clevertap.android.sdk.", "");
    }

    /* renamed from: d3 */
    public static X509Certificate[] m2365d3(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws SecurityException, IOException {
        String str;
        Pair pair;
        ByteBuffer m2393X2 = m2393X2(byteBuffer);
        ByteBuffer m2393X22 = m2393X2(byteBuffer);
        byte[] m2370c3 = m2370c3(byteBuffer);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = -1;
        byte[] bArr = null;
        while (m2393X22.hasRemaining()) {
            int i3 = i + 1;
            try {
                ByteBuffer m2393X23 = m2393X2(m2393X22);
                if (m2393X23.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i4 = m2393X23.getInt();
                arrayList.add(Integer.valueOf(i4));
                if (i4 != 513 && i4 != 514 && i4 != 769) {
                    switch (i4) {
                        case 257:
                        case 258:
                        case 259:
                        case 260:
                            break;
                        default:
                            i = i3;
                            continue;
                    }
                }
                if (i2 != -1) {
                    int m2445K2 = m2445K2(i4);
                    int m2445K22 = m2445K2(i2);
                    i = i3;
                    if (m2445K2 != 1) {
                        if (m2445K22 != 1) {
                            i = i3;
                        }
                    }
                }
                bArr = m2370c3(m2393X23);
                i2 = i4;
                i = i3;
            } catch (IOException | BufferUnderflowException e) {
                throw new SecurityException(C22128a.m8690L1(45, "Failed to parse signature record #", i3), e);
            }
        }
        if (i2 == -1) {
            if (i != 0) {
                throw new SecurityException("No supported signatures found");
            }
            throw new SecurityException("No signatures found");
        }
        if (i2 == 513 || i2 == 514) {
            str = "EC";
        } else if (i2 != 769) {
            switch (i2) {
                case 257:
                case 258:
                case 259:
                case 260:
                    str = "RSA";
                    break;
                default:
                    String valueOf = String.valueOf(Long.toHexString(i2));
                    throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
            }
        } else {
            str = "DSA";
        }
        if (i2 == 513) {
            pair = Pair.create("SHA256withECDSA", null);
        } else if (i2 == 514) {
            pair = Pair.create("SHA512withECDSA", null);
        } else if (i2 != 769) {
            switch (i2) {
                case 257:
                    pair = Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                    break;
                case 258:
                    pair = Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                    break;
                case 259:
                    pair = Pair.create("SHA256withRSA", null);
                    break;
                case 260:
                    pair = Pair.create("SHA512withRSA", null);
                    break;
                default:
                    String valueOf2 = String.valueOf(Long.toHexString(i2));
                    throw new IllegalArgumentException(valueOf2.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf2) : new String("Unknown signature algorithm: 0x"));
            }
        } else {
            pair = Pair.create("SHA256withDSA", null);
        }
        String str2 = (String) pair.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) pair.second;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(m2370c3));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(m2393X2);
            if (!signature.verify(bArr)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            m2393X2.clear();
            ByteBuffer m2393X24 = m2393X2(m2393X2);
            ArrayList arrayList2 = new ArrayList();
            int i5 = 0;
            byte[] bArr2 = null;
            while (m2393X24.hasRemaining()) {
                int i6 = i5 + 1;
                try {
                    ByteBuffer m2393X25 = m2393X2(m2393X24);
                    if (m2393X25.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i7 = m2393X25.getInt();
                    arrayList2.add(Integer.valueOf(i7));
                    i5 = i6;
                    if (i7 == i2) {
                        bArr2 = m2370c3(m2393X25);
                        i5 = i6;
                    }
                } catch (IOException | BufferUnderflowException e2) {
                    throw new IOException(C22128a.m8690L1(42, "Failed to parse digest record #", i6), e2);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int m2445K23 = m2445K2(i2);
            byte[] put = map.put(Integer.valueOf(m2445K23), bArr2);
            if (put != null && !MessageDigest.isEqual(put, bArr2)) {
                throw new SecurityException(m2417R2(m2445K23).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer m2393X26 = m2393X2(m2393X2);
            ArrayList arrayList3 = new ArrayList();
            int i8 = 0;
            while (m2393X26.hasRemaining()) {
                i8++;
                byte[] m2370c32 = m2370c3(m2393X26);
                try {
                    arrayList3.add(new n1((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(m2370c32)), m2370c32));
                } catch (CertificateException e3) {
                    throw new SecurityException(C22128a.m8690L1(41, "Failed to decode certificate #", i8), e3);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (!Arrays.equals(m2370c3, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e4) {
            throw new SecurityException(C22128a.m8610j(new StringBuilder(String.valueOf(str2).length() + 27), "Failed to verify ", str2, " signature"), e4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static final <K, V> V m2364e(ConcurrentMap<K, V> concurrentMap, K k, s1.z.b.a<? extends V> aVar) {
        l.f(concurrentMap, "$this$getOrCompute");
        l.f(aVar, "defaultValue");
        V v = concurrentMap.get(k);
        V v2 = v;
        if (v == null) {
            v2 = aVar.invoke();
            V putIfAbsent = concurrentMap.putIfAbsent(k, v2);
            if (putIfAbsent != null) {
                v2 = putIfAbsent;
            }
        }
        return v2;
    }

    /* renamed from: e0 */
    public static ColorStateList m2363e0(Context context, C25540r0 c25540r0, int i) {
        int resourceId;
        if (c25540r0.f71466b.hasValue(i) && (resourceId = c25540r0.f71466b.getResourceId(i, 0)) != 0) {
            ThreadLocal<TypedValue> threadLocal = C25440a.f71017a;
            ColorStateList colorStateList = context.getColorStateList(resourceId);
            if (colorStateList != null) {
                return colorStateList;
            }
        }
        return c25540r0.m3320c(i);
    }

    /* renamed from: e1 */
    public static TypeVariable<?> m2362e1(Type type) {
        if (type instanceof TypeVariable) {
            return (TypeVariable) type;
        }
        if (!(type instanceof WildcardType)) {
            return null;
        }
        WildcardType wildcardType = (WildcardType) type;
        if (wildcardType.getLowerBounds().length != 0) {
            return null;
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (upperBounds.length != 1) {
            return null;
        }
        return m2362e1(upperBounds[0]);
    }

    /* renamed from: e2 */
    public static float m2361e2(JsonReader jsonReader) throws IOException {
        JsonToken peek = jsonReader.peek();
        int i = C21893g.f60774a[peek.ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException("Unknown value for token of type " + peek);
            }
            jsonReader.beginArray();
            float nextDouble = (float) jsonReader.nextDouble();
            while (jsonReader.hasNext()) {
                jsonReader.skipValue();
            }
            jsonReader.endArray();
            return nextDouble;
        }
        return (float) jsonReader.nextDouble();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.security.MessageDigest[]] */
    /* JADX WARN: Type inference failed for: r0v28, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r0v35, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r0v91, types: [java.security.MessageDigest] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r2v10, types: [long] */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* renamed from: e3 */
    public static byte[][] m2360e3(int[] iArr, s0[] s0VarArr) throws DigestException {
        int length;
        ?? r11 = 0;
        for (int i = 0; i < 3; i++) {
            r11 += (s0VarArr[i].zza() + 1048575) / 1048576;
        }
        if (r11 < 2097151) {
            int i2 = (int) r11;
            ?? r0 = new byte[iArr.length];
            int i3 = 0;
            while (true) {
                length = iArr.length;
                if (i3 >= length) {
                    break;
                }
                byte[] bArr = new byte[(m2275z2(iArr[i3]) * i2) + 5];
                bArr[0] = (byte) 90;
                m2389Y2(i2, bArr);
                r0[i3] = bArr;
                i3++;
            }
            byte[] bArr2 = new byte[5];
            bArr2[0] = (byte) (-91);
            ?? r02 = new MessageDigest[length];
            for (int i4 = 0; i4 < iArr.length; i4++) {
                String m2417R2 = m2417R2(iArr[i4]);
                try {
                    r02[i4] = MessageDigest.getInstance(m2417R2);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(m2417R2.concat(" digest not supported"), e);
                }
            }
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < 3; i7++) {
                s0 s0Var = s0VarArr[i7];
                ?? zza = s0Var.zza();
                ?? r20 = true;
                ?? r22 = 0;
                while (zza > 0) {
                    int min = (int) Math.min((long) zza, r20 == true ? 1L : 0L);
                    m2389Y2(min, bArr2);
                    for (int i8 = 0; i8 < length; i8++) {
                        r02[i8].update(bArr2);
                    }
                    try {
                        s0Var.zzb((MessageDigest[]) r02, (long) r22, min);
                        for (int i9 = 0; i9 < iArr.length; i9++) {
                            int i10 = iArr[i9];
                            ?? r03 = r0[i9];
                            int m2275z2 = m2275z2(i10);
                            ?? r04 = r02[i9];
                            int digest = r04.digest(r03, (i6 * m2275z2) + 5, m2275z2);
                            if (digest != m2275z2) {
                                String algorithm = r04.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 46);
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                        }
                        long j = min;
                        r22 += j;
                        zza -= j;
                        i6++;
                        r20 = true;
                    } catch (IOException e2) {
                        throw new DigestException(C22128a.m8683N1(59, "Failed to digest chunk #", i6, " of section #", i5), e2);
                    }
                }
                i5++;
            }
            ?? r05 = new byte[iArr.length];
            for (int i11 = 0; i11 < iArr.length; i11++) {
                int i12 = iArr[i11];
                ?? r06 = r0[i11];
                String m2417R22 = m2417R2(i12);
                try {
                    r05[i11] = MessageDigest.getInstance(m2417R22).digest(r06);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(m2417R22.concat(" digest not supported"), e3);
                }
            }
            return r05;
        }
        throw new DigestException(C22128a.m8680O1(37, "Too many chunks: ", r11));
    }

    public static boolean equal1(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: f */
    public static final String m2359f(Bid bid) {
        l.f(bid, "$this$loggingId");
        String hexString = Integer.toHexString(bid.hashCode());
        l.b(hexString, "Integer.toHexString(hashCode())");
        return hexString;
    }

    /* renamed from: f0 */
    public static ViewGroup m2358f0(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView != view && (rootView instanceof ViewGroup)) {
            return (ViewGroup) rootView;
        }
        return null;
    }

    /* renamed from: f1 */
    public static void m2357f1(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    /* renamed from: f2 */
    public static boolean m2356f2(int i, C24798t c24798t, boolean z) throws C24560m0 {
        if (c24798t.m4545a() < 7) {
            if (z) {
                return false;
            }
            StringBuilder m8728C = C22128a.m8728C("too short header: ");
            m8728C.append(c24798t.m4545a());
            throw new C24560m0(m8728C.toString());
        } else if (c24798t.m4529q() != i) {
            if (!z) {
                throw new C24560m0(C22128a.m8668S1(i, C22128a.m8728C("expected header type ")));
            }
            return false;
        } else if (c24798t.m4529q() == 118 && c24798t.m4529q() == 111 && c24798t.m4529q() == 114 && c24798t.m4529q() == 98 && c24798t.m4529q() == 105 && c24798t.m4529q() == 115) {
            return true;
        } else {
            if (!z) {
                throw new C24560m0("expected characters 'vorbis'");
            }
            return false;
        }
    }

    /* renamed from: f3 */
    public static X509Certificate[][] m2355f3(FileChannel fileChannel, l1 l1Var) throws SecurityException {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer m2393X2 = m2393X2(l1Var.a);
                int i = 0;
                while (m2393X2.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m2365d3(m2393X2(m2393X2), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        throw new SecurityException(C22128a.m8686M1(48, "Failed to parse/verify signer #", i, " block"), e);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                long j = l1Var.b;
                long j2 = l1Var.c;
                long j3 = l1Var.d;
                ByteBuffer byteBuffer = l1Var.e;
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                s0 j1Var = new j1(fileChannel, 0L, j);
                s0 j1Var2 = new j1(fileChannel, j2, j3 - j2);
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.order(ByteOrder.LITTLE_ENDIAN);
                m2385Z2(duplicate);
                int position = duplicate.position();
                if (j < 0 || j > 4294967295L) {
                    throw new IllegalArgumentException(C22128a.m8680O1(47, "uint32 value of out range: ", j));
                }
                duplicate.putInt(duplicate.position() + position + 16, (int) j);
                s0 uVar = new e.m.a.h.a.d.u(duplicate);
                int size = hashMap.size();
                int[] iArr = new int[size];
                int i2 = 0;
                for (Integer num : hashMap.keySet()) {
                    iArr[i2] = num.intValue();
                    i2++;
                }
                try {
                    byte[][] m2360e3 = m2360e3(iArr, new s0[]{j1Var, j1Var2, uVar});
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = iArr[i3];
                        if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), m2360e3[i3])) {
                            throw new SecurityException(m2417R2(i4).concat(" digest of contents did not verify"));
                        }
                    }
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                } catch (DigestException e2) {
                    throw new SecurityException("Failed to compute digest(s) of contents", e2);
                }
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    /* renamed from: g */
    public static String m2354g(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    bufferedReader.close();
                    return sb.toString();
                }
                sb.append(readLine);
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: g0 */
    public static p m2353g0(View view) {
        ViewGroup m2358f0 = m2358f0(view);
        return m2358f0 == null ? null : new e.m.a.g.o.o(m2358f0);
    }

    /* renamed from: g1 */
    public static String m2352g1(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* renamed from: g2 */
    public static byte m2351g2(Boolean bool) {
        if (bool != null) {
            return bool.booleanValue() ? (byte) 1 : (byte) 0;
        }
        return (byte) -1;
    }

    /* renamed from: h */
    public static String m2350h(String str) {
        if (str.isEmpty()) {
            str = null;
        }
        return str;
    }

    /* renamed from: h0 */
    public static String m2349h0(byte[] bArr, int i) {
        if (i == 0) {
            return new String(bArr);
        }
        try {
            return new String(bArr, C22108c.m8797a(i));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(bArr, "iso-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return new String(bArr);
            }
        }
    }

    /* renamed from: h1 */
    public static int m2348h1(char c) {
        int i = c * 31161;
        return i ^ (i >>> 16);
    }

    /* renamed from: h2 */
    public static int m2347h2(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: i */
    public static String m2346i(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: i0 */
    public static Object m2345i0(AbstractC23698i abstractC23698i) {
        Integer num;
        Class<?> cls = abstractC23698i.f65728a;
        Class<?> m5775F = C23914g.m5775F(cls);
        if (m5775F == null) {
            if (abstractC23698i.mo5931z() || abstractC23698i.mo5949d()) {
                return AbstractC23331r.EnumC23332a.NON_EMPTY;
            }
            if (cls == String.class) {
                return "";
            }
            if (abstractC23698i.m6237I(Date.class)) {
                return new Date(0L);
            }
            if (!abstractC23698i.m6237I(Calendar.class)) {
                return null;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }
        if (m5775F == Integer.TYPE) {
            num = 0;
        } else if (m5775F == Long.TYPE) {
            num = 0L;
        } else if (m5775F == Boolean.TYPE) {
            num = Boolean.FALSE;
        } else if (m5775F == Double.TYPE) {
            num = Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
        } else if (m5775F == Float.TYPE) {
            num = Float.valueOf(0.0f);
        } else if (m5775F == Byte.TYPE) {
            num = (byte) 0;
        } else if (m5775F == Short.TYPE) {
            num = (short) 0;
        } else if (m5775F != Character.TYPE) {
            throw new IllegalArgumentException(C22128a.m8639b2(m5775F, C22128a.m8728C("Class "), " is not a primitive type"));
        } else {
            num = (char) 0;
        }
        return num;
    }

    /* renamed from: i1 */
    public static int m2344i1(char c, int i) {
        int i2 = (c ^ i) * (-1640531527);
        return i2 ^ (i2 >>> 16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* renamed from: i2 */
    public static long m2343i2(d1 d1Var, InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new c1(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read != 4) {
            throw new c1(C22128a.m8690L1(30, "Unexpected version=", read));
        }
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long j2 = j - c;
            try {
                int read2 = dataInputStream.read();
                if (read2 == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (read2 == 0) {
                    return c;
                }
                switch (read2) {
                    case 247:
                        read2 = dataInputStream.readUnsignedShort();
                        m2429O2(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 248:
                        read2 = dataInputStream.readInt();
                        m2429O2(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 249:
                        long readUnsignedShort = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m2453I2(bArr, d1Var, outputStream, readUnsignedShort, read2, j2);
                        break;
                    case 250:
                        long readUnsignedShort2 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readUnsignedShort();
                        m2453I2(bArr, d1Var, outputStream, readUnsignedShort2, read2, j2);
                        break;
                    case 251:
                        long readUnsignedShort3 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readInt();
                        m2453I2(bArr, d1Var, outputStream, readUnsignedShort3, read2, j2);
                        break;
                    case 252:
                        long readInt2 = dataInputStream.readInt();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m2453I2(bArr, d1Var, outputStream, readInt2, read2, j2);
                        break;
                    case 253:
                        long readInt3 = dataInputStream.readInt();
                        read2 = dataInputStream.readUnsignedShort();
                        m2453I2(bArr, d1Var, outputStream, readInt3, read2, j2);
                        break;
                    case 254:
                        long readInt4 = dataInputStream.readInt();
                        read2 = dataInputStream.readInt();
                        m2453I2(bArr, d1Var, outputStream, readInt4, read2, j2);
                        break;
                    case 255:
                        long readLong = dataInputStream.readLong();
                        read2 = dataInputStream.readInt();
                        m2453I2(bArr, d1Var, outputStream, readLong, read2, j2);
                        break;
                    default:
                        m2429O2(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                }
                r0 = c + read2;
            } finally {
                outputStream.flush();
            }
        }
    }

    public static boolean isNullOrEmpty1(String str) {
        int i = Platform.f7026a;
        return str == null || str.isEmpty();
    }

    /* renamed from: j */
    public static void m2342j(Map<String, String> map, String str) {
        if ("af".equals(str)) {
            map.put("error_initializing_player", "Kon nie die YouTube-speler inisialiseer nie.");
            map.put("get_youtube_app_title", "Kry YouTube-program");
            map.put("get_youtube_app_text", "Hierdie program sal nie loop sonder die YouTube-program, wat ontbreek van jou toestel, nie");
            map.put("get_youtube_app_action", "Kry YouTube-program");
            map.put("enable_youtube_app_title", "Aktiveer YouTube-program");
            map.put("enable_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program aktiveer nie.");
            map.put("enable_youtube_app_action", "Aktiveer YouTube-program");
            map.put("update_youtube_app_title", "Dateer YouTube-program op");
            map.put("update_youtube_app_text", "Hierdie program sal nie werk tensy jy die YouTube-program opdateer nie.");
            map.put("update_youtube_app_action", "Dateer YouTube-program op");
        } else if ("am".equals(str)) {
            map.put("error_initializing_player", "የYouTube አጫዋቹን በማስጀመር ላይ ሳለ አንድ ስህተት ተከስቷል።");
            map.put("get_youtube_app_title", "የYouTube መተግበሪያውን ያግኙ");
            map.put("get_youtube_app_text", "ይህ መተግበሪያ ያለ YouTube መተግበሪያው አይሂድም፣ እሱ ደግሞ በመሣሪያዎ ላይ የለም።");
            map.put("get_youtube_app_action", "የYouTube መተግበሪያውን ያግኙ");
            map.put("enable_youtube_app_title", "የYouTube መተግበሪያውን ያንቁ");
            map.put("enable_youtube_app_text", "የYouTube መተግበሪያውን እስካላነቁ ድረስ ይህ መተግበሪያ አይሰራም።");
            map.put("enable_youtube_app_action", "የYouTube መተግበሪያውን ያንቁ");
            map.put("update_youtube_app_title", "የYouTube መተግበሪያውን ያዘምኑ");
            map.put("update_youtube_app_text", "የYouTube መተግበሪያውን እስካላዘመኑት ድረስ ይህ መተግበሪያ አይሰራም።");
            map.put("update_youtube_app_action", "የYouTube መተግበሪያውን ያዘምኑ");
        } else if ("ar".equals(str)) {
            map.put("error_initializing_player", "حدث خطأ أثناء تهيئة مشغل YouTube.");
            map.put("get_youtube_app_title", "الحصول على تطبيق YouTube");
            map.put("get_youtube_app_text", "لن يعمل هذا التطبيق بدون تطبيق YouTube الذي لا يتوفر على جهازك");
            map.put("get_youtube_app_action", "الحصول على تطبيق YouTube");
            map.put("enable_youtube_app_title", "تمكين تطبيق YouTube");
            map.put("enable_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تمكين تطبيق YouTube.");
            map.put("enable_youtube_app_action", "تمكين تطبيق YouTube");
            map.put("update_youtube_app_title", "تحديث تطبيق YouTube");
            map.put("update_youtube_app_text", "لن يعمل هذا التطبيق ما لم يتم تحديث تطبيق YouTube.");
            map.put("update_youtube_app_action", "تحديث تطبيق YouTube");
        } else if ("be".equals(str)) {
            map.put("error_initializing_player", "Памылка падчас ініцыялізацыі прайгравальнiка YouTube.");
            map.put("get_youtube_app_title", "Спампаваць прыкладанне YouTube");
            map.put("get_youtube_app_text", "Гэта прыкладанне не будзе працаваць без прыкладання YouTube, якое адсутнічае на прыладзе");
            map.put("get_youtube_app_action", "Спампаваць прыкладанне YouTube");
            map.put("enable_youtube_app_title", "Уключыць прыкладанне YouTube");
            map.put("enable_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не ўключыце прыкладанне YouTube.");
            map.put("enable_youtube_app_action", "Уключыць прыкладанне YouTube");
            map.put("update_youtube_app_title", "Абнавiць прыкладанне YouTube");
            map.put("update_youtube_app_text", "Гэта прыкладанне не будзе працаваць, пакуль вы не абнавiце прыкладанне YouTube.");
            map.put("update_youtube_app_action", "Абнавiць прыкладанне YouTube");
        } else if ("bg".equals(str)) {
            map.put("error_initializing_player", "При подготвянето на плейъра на YouTube за работа възникна грешка.");
            map.put("get_youtube_app_title", "Изтегл. на прил. YouTube");
            map.put("get_youtube_app_text", "Това приложение няма да работи без приложението YouTube, което липсва на устройството ви");
            map.put("get_youtube_app_action", "Изтегл. на прил. YouTube");
            map.put("enable_youtube_app_title", "Акт. на прил. YouTube");
            map.put("enable_youtube_app_text", "Това приложение няма да работи, освен ако не активирате приложението YouTube.");
            map.put("enable_youtube_app_action", "Акт. на прил. YouTube");
            map.put("update_youtube_app_title", "Актул. на прил. YouTube");
            map.put("update_youtube_app_text", "Това приложение няма да работи, освен ако не актуализирате приложението YouTube.");
            map.put("update_youtube_app_action", "Актул. на прил. YouTube");
        } else if ("ca".equals(str)) {
            map.put("error_initializing_player", "S'ha produït un error en iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Obtenció aplicac. YouTube");
            map.put("get_youtube_app_text", "Aquesta aplicació no funcionarà sense l'aplicació de YouTube, que encara no és al dispositiu.");
            map.put("get_youtube_app_action", "Obtén l'aplic. de YouTube");
            map.put("enable_youtube_app_title", "Activació aplic. YouTube");
            map.put("enable_youtube_app_text", "Aquesta aplicació no funcionarà fins que no activis l'aplicació de YouTube.");
            map.put("enable_youtube_app_action", "Activa aplicació YouTube");
            map.put("update_youtube_app_title", "Actualitz. aplic. YouTube");
            map.put("update_youtube_app_text", "Aquesta aplicació no funcionarà fins que no actualitzis l'aplicació de YouTube.");
            map.put("update_youtube_app_action", "Actualitza aplic. YouTube");
        } else if ("cs".equals(str)) {
            map.put("error_initializing_player", "Při inicializaci přehrávače YouTube došlo k chybě.");
            map.put("get_youtube_app_title", "Stáhněte aplikaci YouTube");
            map.put("get_youtube_app_text", "Tuto aplikaci nelze spustit bez aplikace YouTube, kterou v zařízení nemáte nainstalovanou");
            map.put("get_youtube_app_action", "Stáhnout aplikaci YouTube");
            map.put("enable_youtube_app_title", "Aktivujte aplik. YouTube");
            map.put("enable_youtube_app_text", "Ke spuštění této aplikace je třeba aktivovat aplikaci YouTube.");
            map.put("enable_youtube_app_action", "Zapnout aplikaci YouTube");
            map.put("update_youtube_app_title", "Aktualizujte apl. YouTube");
            map.put("update_youtube_app_text", "Ke spuštění této aplikace je třeba aktualizovat aplikaci YouTube.");
            map.put("update_youtube_app_action", "Aktualizovat apl. YouTube");
        } else if ("da".equals(str)) {
            map.put("error_initializing_player", "Der opstod en fejl under initialisering af YouTube-afspilleren.");
            map.put("get_youtube_app_title", "Få YouTube-appen");
            map.put("get_youtube_app_text", "Denne app kan ikke køre uden YouTube-appen, som ikke findes på din enhed");
            map.put("get_youtube_app_action", "Få YouTube-appen");
            map.put("enable_youtube_app_title", "Aktivér YouTube-appen");
            map.put("enable_youtube_app_text", "Denne app fungerer ikke, medmindre du aktiverer YouTube-appen.");
            map.put("enable_youtube_app_action", "Aktivér YouTube-appen");
            map.put("update_youtube_app_title", "Opdater YouTube-appen");
            map.put("update_youtube_app_text", "Denne app fungerer ikke, hvis du ikke opdaterer YouTube-appen.");
            map.put("update_youtube_app_action", "Opdater YouTube-appen");
        } else if ("de".equals(str)) {
            map.put("error_initializing_player", "Bei der Initialisierung des YouTube-Players ist ein Fehler aufgetreten.");
            map.put("get_youtube_app_title", "YouTube App herunterladen");
            map.put("get_youtube_app_text", "Diese App kann nur ausgeführt werden, wenn die YouTube App bereitgestellt ist. Diese ist auf deinem Gerät nicht vorhanden.");
            map.put("get_youtube_app_action", "YouTube App herunterladen");
            map.put("enable_youtube_app_title", "YouTube App aktivieren");
            map.put("enable_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktiviert wird.");
            map.put("enable_youtube_app_action", "YouTube App aktivieren");
            map.put("update_youtube_app_title", "YouTube App aktualisieren");
            map.put("update_youtube_app_text", "Diese App funktioniert nur, wenn die YouTube App aktualisiert wird.");
            map.put("update_youtube_app_action", "YouTube App aktualisieren");
        } else if ("el".equals(str)) {
            map.put("error_initializing_player", "Παρουσιάστηκε σφάλμα κατά την προετοιμασία του προγράμματος αναπαραγωγής του YouTube.");
            map.put("get_youtube_app_title", "Λήψη YouTube");
            map.put("get_youtube_app_text", "Δεν είναι δυνατή η εκτέλεση αυτής της εφαρμογής χωρίς την εφαρμογή YouTube, η οποία απουσιάζει από τη συσκευή σας");
            map.put("get_youtube_app_action", "Λήψη YouTube");
            map.put("enable_youtube_app_title", "Ενεργοποίηση YouTube");
            map.put("enable_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενεργοποιήσετε την εφαρμογή YouTube.");
            map.put("enable_youtube_app_action", "Ενεργοποίηση YouTube");
            map.put("update_youtube_app_title", "Ενημέρωση YouTube");
            map.put("update_youtube_app_text", "Δεν είναι δυνατή η λειτουργία αυτής της εφαρμογής εάν δεν ενημερώσετε την εφαρμογή YouTube.");
            map.put("update_youtube_app_action", "Ενημέρωση YouTube");
        } else if ("en_GB".equals(str)) {
            map.put("error_initializing_player", "An error occurred while initialising the YouTube player.");
            map.put("get_youtube_app_title", "Get YouTube App");
            map.put("get_youtube_app_text", "This app won't run without the YouTube App, which is missing from your device");
            map.put("get_youtube_app_action", "Get YouTube App");
            map.put("enable_youtube_app_title", "Enable YouTube App");
            map.put("enable_youtube_app_text", "This app won't work unless you enable the YouTube App.");
            map.put("enable_youtube_app_action", "Enable YouTube App");
            map.put("update_youtube_app_title", "Update YouTube App");
            map.put("update_youtube_app_text", "This app won't work unless you update the YouTube App.");
            map.put("update_youtube_app_action", "Update YouTube App");
        } else if ("es_US".equals(str)) {
            map.put("error_initializing_player", "Se produjo un error al iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Obtener YouTube");
            map.put("get_youtube_app_text", "Esta aplicación no se ejecutará sin la aplicación YouTube, la cual no se instaló en tu dispositivo.");
            map.put("get_youtube_app_action", "Obtener YouTube");
            map.put("enable_youtube_app_title", "Activar YouTube");
            map.put("enable_youtube_app_text", "Esta aplicación no funcionará a menos que actives la aplicación YouTube.");
            map.put("enable_youtube_app_action", "Activar YouTube");
            map.put("update_youtube_app_title", "Actualizar YouTube");
            map.put("update_youtube_app_text", "Esta aplicación no funcionará a menos que actualices la aplicación YouTube.");
            map.put("update_youtube_app_action", "Actualizar YouTube");
        } else if ("es".equals(str)) {
            map.put("error_initializing_player", "Se ha producido un error al iniciar el reproductor de YouTube.");
            map.put("get_youtube_app_title", "Descarga YouTube");
            map.put("get_youtube_app_text", "Esta aplicación no funcionará sin la aplicación YouTube, que no está instalada en el dispositivo.");
            map.put("get_youtube_app_action", "Descargar YouTube");
            map.put("enable_youtube_app_title", "Habilita la aplicación YouTube");
            map.put("enable_youtube_app_text", "Esta aplicación no funcionará si no habilitas la aplicación YouTube.");
            map.put("enable_youtube_app_action", "Habilitar YouTube");
            map.put("update_youtube_app_title", "Actualiza YouTube");
            map.put("update_youtube_app_text", "Esta aplicación no funcionará si no actualizas la aplicación YouTube.");
            map.put("update_youtube_app_action", "Actualizar YouTube");
        } else if ("et".equals(str)) {
            map.put("error_initializing_player", "YouTube'i mängija lähtestamisel tekkis viga.");
            map.put("get_youtube_app_title", "YouTube'i rak. hankimine");
            map.put("get_youtube_app_text", "Rakendus ei käivitu ilma YouTube'i rakenduseta ja teie seadmes see praegu puudub");
            map.put("get_youtube_app_action", "Hangi YouTube'i rakendus");
            map.put("enable_youtube_app_title", "YouTube'i rakenduse lubamine");
            map.put("enable_youtube_app_text", "Rakendus ei toimi, kui te ei luba kasutada YouTube'i rakendust.");
            map.put("enable_youtube_app_action", "Luba YouTube'i rakendus");
            map.put("update_youtube_app_title", "Värskenda YouTube");
            map.put("update_youtube_app_text", "Rakendus ei toimi enne, kui olete YouTube'i rakendust värskendanud.");
            map.put("update_youtube_app_action", "Värsk. YouTube'i rakend.");
        } else if ("fa".equals(str)) {
            map.put("error_initializing_player", "هنگام مقداردهی اولیه پخش\u200cکننده YouTube، خطایی روی داد.");
            map.put("get_youtube_app_title", "دریافت برنامه YouTube");
            map.put("get_youtube_app_text", "این برنامه بدون برنامه YouTube که در دستگاه شما موجود نیست، اجرا نمی\u200cشود");
            map.put("get_youtube_app_action", "دریافت برنامه YouTube");
            map.put("enable_youtube_app_title", "فعال کردن برنامه YouTube");
            map.put("enable_youtube_app_text", "این برنامه تنها در صورتی کار خواهد کرد که برنامه YouTube را فعال کنید.");
            map.put("enable_youtube_app_action", "فعال کردن برنامه YouTube");
            map.put("update_youtube_app_title", "به\u200cروزرسانی برنامه YouTube");
            map.put("update_youtube_app_text", "این برنامه کار نخواهد کرد مگر اینکه برنامه YouTube را به روز کنید.");
            map.put("update_youtube_app_action", "به\u200cروزرسانی برنامه YouTube");
        } else if ("fi".equals(str)) {
            map.put("error_initializing_player", "Virhe alustettaessa YouTube-soitinta.");
            map.put("get_youtube_app_title", "Hanki YouTube-sovellus");
            map.put("get_youtube_app_text", "Tämä sovellus ei toimi ilman YouTube-sovellusta, joka puuttuu laitteesta.");
            map.put("get_youtube_app_action", "Hanki YouTube-sovellus");
            map.put("enable_youtube_app_title", "Ota YouTube-sov. käyttöön");
            map.put("enable_youtube_app_text", "Tämä sovellus ei toimi, ellet ota YouTube-sovellusta käyttöön.");
            map.put("enable_youtube_app_action", "Ota YouTube-sov. käyttöön");
            map.put("update_youtube_app_title", "Päivitä YouTube-sovellus");
            map.put("update_youtube_app_text", "Tämä sovellus ei toimi, ellet päivitä YouTube-sovellusta.");
            map.put("update_youtube_app_action", "Päivitä YouTube-sovellus");
        } else if ("fr".equals(str)) {
            map.put("error_initializing_player", "Une erreur s'est produite lors de l'initialisation du lecteur YouTube.");
            map.put("get_youtube_app_title", "Télécharger appli YouTube");
            map.put("get_youtube_app_text", "Cette application ne fonctionnera pas sans l'application YouTube, qui n'est pas installée sur votre appareil.");
            map.put("get_youtube_app_action", "Télécharger appli YouTube");
            map.put("enable_youtube_app_title", "Activer l'appli YouTube");
            map.put("enable_youtube_app_text", "Cette application ne fonctionnera que si vous activez l'application YouTube.");
            map.put("enable_youtube_app_action", "Activer l'appli YouTube");
            map.put("update_youtube_app_title", "Mise à jour appli YouTube");
            map.put("update_youtube_app_text", "Cette application ne fonctionnera que si vous mettez à jour l'application YouTube.");
            map.put("update_youtube_app_action", "Mise à jour appli YouTube");
        } else if ("hi".equals(str)) {
            map.put("error_initializing_player", "YouTube प्लेयर को प्रारंभ करते समय कोई त्रुटि आई.");
            map.put("get_youtube_app_title", "YouTube एप्लि. प्राप्त करें");
            map.put("get_youtube_app_text", "यह एप्लिकेशन YouTube एप्लिकेशन के बिना नहीं चलेगा, जो आपके उपकरण पर मौजूद नहीं है");
            map.put("get_youtube_app_action", "YouTube एप्लि. प्राप्त करें");
            map.put("enable_youtube_app_title", "YouTube एप्लि. सक्षम करें");
            map.put("enable_youtube_app_text", "जब तक आप YouTube एप्लिकेशन सक्षम नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            map.put("enable_youtube_app_action", "YouTube एप्लि. सक्षम करें");
            map.put("update_youtube_app_title", "YouTube एप्लि. अपडेट करें");
            map.put("update_youtube_app_text", "जब तक आप YouTube एप्लिकेशन अपडेट नहीं करते, तब तक यह एप्लिकेशन कार्य नहीं करेगा.");
            map.put("update_youtube_app_action", "YouTube एप्लि. अपडेट करें");
        } else if ("hr".equals(str)) {
            map.put("error_initializing_player", "Dogodila se pogreška tijekom pokretanja playera usluge YouTube.");
            map.put("get_youtube_app_title", "Preuzimanje apl. YouTube");
            map.put("get_youtube_app_text", "Ova se aplikacija ne može pokrenuti bez aplikacije YouTube, koja nije instalirana na vaš uređaj");
            map.put("get_youtube_app_action", "Preuzmi apl. YouTube");
            map.put("enable_youtube_app_title", "Omogućavanje apl. YouTube");
            map.put("enable_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne omogućite aplikaciju YouTube.");
            map.put("enable_youtube_app_action", "Omogući apl. YouTube");
            map.put("update_youtube_app_title", "Ažuriranje apl. YouTube");
            map.put("update_youtube_app_text", "Ova aplikacija neće funkcionirati ako ne ažurirate aplikaciju YouTube.");
            map.put("update_youtube_app_action", "Ažuriraj apl. YouTube");
        } else if ("hu".equals(str)) {
            map.put("error_initializing_player", "Hiba történt a YouTube lejátszó inicializálása során.");
            map.put("get_youtube_app_title", "YouTube alk. letöltése");
            map.put("get_youtube_app_text", "Ez az alkalmazás nem fut a YouTube alkalmazás nélkül, amely hiányzik az eszközéről.");
            map.put("get_youtube_app_action", "YouTube alk. letöltése");
            map.put("enable_youtube_app_title", "YouTube alkalmazás enged.");
            map.put("enable_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha engedélyezi a YouTube alkalmazást.");
            map.put("enable_youtube_app_action", "YouTube alkalmazás enged.");
            map.put("update_youtube_app_title", "YouTube alk. frissítése");
            map.put("update_youtube_app_text", "Az alkalmazás csak akkor fog működni, ha frissíti a YouTube alkalmazást.");
            map.put("update_youtube_app_action", "YouTube alk. frissítése");
        } else if ("in".equals(str)) {
            map.put("error_initializing_player", "Terjadi kesalahan saat memulai pemutar YouTube.");
            map.put("get_youtube_app_title", "Dapatkan Aplikasi YouTube");
            map.put("get_youtube_app_text", "Aplikasi ini tidak akan berjalan tanpa Aplikasi YouTube, yang hilang dari perangkat Anda");
            map.put("get_youtube_app_action", "Dapatkan Aplikasi YouTube");
            map.put("enable_youtube_app_title", "Aktifkan Aplikasi YouTube");
            map.put("enable_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda mengaktifkan Aplikasi YouTube.");
            map.put("enable_youtube_app_action", "Aktifkan Aplikasi YouTube");
            map.put("update_youtube_app_title", "Perbarui Aplikasi YouTube");
            map.put("update_youtube_app_text", "Aplikasi ini tidak akan bekerja kecuali Anda memperbarui Aplikasi YouTube.");
            map.put("update_youtube_app_action", "Perbarui Aplikasi YouTube");
        } else if ("it".equals(str)) {
            map.put("error_initializing_player", "Si è verificato un errore durante l'inizializzazione del player di YouTube.");
            map.put("get_youtube_app_title", "Scarica app YouTube");
            map.put("get_youtube_app_text", "Questa applicazione non funzionerà senza l'applicazione YouTube che non è presente sul tuo dispositivo");
            map.put("get_youtube_app_action", "Scarica app YouTube");
            map.put("enable_youtube_app_title", "Attiva app YouTube");
            map.put("enable_youtube_app_text", "Questa applicazione non funzionerà se non attivi l'applicazione YouTube.");
            map.put("enable_youtube_app_action", "Attiva app YouTube");
            map.put("update_youtube_app_title", "Aggiorna app YouTube");
            map.put("update_youtube_app_text", "Questa applicazione non funzionerà se non aggiorni l'applicazione YouTube.");
            map.put("update_youtube_app_action", "Aggiorna app YouTube");
        } else if ("iw".equals(str)) {
            map.put("error_initializing_player", "אירעה שגיאה בעת אתחול נגן YouTube.");
            map.put("get_youtube_app_title", "קבל את יישום YouTube");
            map.put("get_youtube_app_text", "יישום זה לא יפעל ללא יישום YouTube, שאינו מותקן במכשיר שלך");
            map.put("get_youtube_app_action", "קבל את יישום YouTube");
            map.put("enable_youtube_app_title", "הפעל את יישום YouTube");
            map.put("enable_youtube_app_text", "יישום זה לא יעבוד אלא אם תפעיל את יישום YouTube.");
            map.put("enable_youtube_app_action", "הפעל את יישום YouTube");
            map.put("update_youtube_app_title", "עדכן את יישום YouTube");
            map.put("update_youtube_app_text", "יישום זה לא יעבוד אלא אם תעדכן את יישום YouTube.");
            map.put("update_youtube_app_action", "עדכן את יישום YouTube");
        } else if ("ja".equals(str)) {
            map.put("error_initializing_player", "YouTubeプレーヤーの初期化中にエラーが発生しました。");
            map.put("get_youtube_app_title", "YouTubeアプリを入手");
            map.put("get_youtube_app_text", "このアプリの実行に必要なYouTubeアプリが端末にありません");
            map.put("get_youtube_app_action", "YouTubeアプリを入手");
            map.put("enable_youtube_app_title", "YouTubeアプリを有効化");
            map.put("enable_youtube_app_text", "このアプリの実行にはYouTubeアプリの有効化が必要です。");
            map.put("enable_youtube_app_action", "YouTubeアプリを有効化");
            map.put("update_youtube_app_title", "YouTubeアプリを更新");
            map.put("update_youtube_app_text", "このアプリの実行にはYouTubeアプリの更新が必要です。");
            map.put("update_youtube_app_action", "YouTubeアプリを更新");
        } else if ("ko".equals(str)) {
            map.put("error_initializing_player", "YouTube 플레이어를 초기화하는 중에 오류가 발생했습니다.");
            map.put("get_youtube_app_title", "YouTube 앱 다운로드");
            map.put("get_youtube_app_text", "이 앱은 내 기기에 YouTube 앱이 없어서 실행되지 않습니다.");
            map.put("get_youtube_app_action", "YouTube 앱 다운로드");
            map.put("enable_youtube_app_title", "YouTube 앱 사용 설정");
            map.put("enable_youtube_app_text", "이 앱은 YouTube 앱을 사용하도록 설정하지 않으면 작동하지 않습니다.");
            map.put("enable_youtube_app_action", "YouTube 앱 사용");
            map.put("update_youtube_app_title", "YouTube 앱 업데이트");
            map.put("update_youtube_app_text", "이 앱은 YouTube 앱을 업데이트하지 않으면 작동하지 않습니다.");
            map.put("update_youtube_app_action", "YouTube 앱 업데이트");
        } else if ("lt".equals(str)) {
            map.put("error_initializing_player", "Inicijuojant „YouTube“ grotuvą įvyko klaida.");
            map.put("get_youtube_app_title", "Gauti „YouTube“ programą");
            map.put("get_youtube_app_text", "Ši programa neveikia be „YouTube“ programos, o jos įrenginyje nėra.");
            map.put("get_youtube_app_action", "Gauti „YouTube“ programą");
            map.put("enable_youtube_app_title", "Įgalinti „YouTube“ progr.");
            map.put("enable_youtube_app_text", "Ši programa neveiks, jei neįgalinsite „YouTube“ programos.");
            map.put("enable_youtube_app_action", "Įgalinti „YouTube“ progr.");
            map.put("update_youtube_app_title", "Atnauj. „YouTube“ progr.");
            map.put("update_youtube_app_text", "Ši programa neveiks, jei neatnaujinsite „YouTube“ programos.");
            map.put("update_youtube_app_action", "Atnauj. „YouTube“ progr.");
        } else if ("lv".equals(str)) {
            map.put("error_initializing_player", "Inicializējot YouTube atskaņotāju, radās kļūda.");
            map.put("get_youtube_app_title", "YouTube liet. iegūšana");
            map.put("get_youtube_app_text", "Šī lietotne nedarbosies bez YouTube lietotnes, kuras nav šajā ierīcē.");
            map.put("get_youtube_app_action", "Iegūt YouTube lietotni");
            map.put("enable_youtube_app_title", "YouTube liet. iespējošana");
            map.put("enable_youtube_app_text", "Lai šī lietotne darbotos, iespējojiet YouTube lietotni.");
            map.put("enable_youtube_app_action", "Iespējot YouTube lietotni");
            map.put("update_youtube_app_title", "YouTube liet. atjaunin.");
            map.put("update_youtube_app_text", "Lai šī lietotne darbotos, atjauniniet YouTube lietotni.");
            map.put("update_youtube_app_action", "Atjaun. YouTube lietotni");
        } else if ("ms".equals(str)) {
            map.put("error_initializing_player", "Ralat berlaku semasa memulakan alat main YouTube.");
            map.put("get_youtube_app_title", "Dapatkan Apl YouTube");
            map.put("get_youtube_app_text", "Apl ini tidak akan berjalan tanpa Apl YouTube, yang tidak ada pada peranti anda");
            map.put("get_youtube_app_action", "Dapatkan Apl YouTube");
            map.put("enable_youtube_app_title", "Dayakan Apl YouTube");
            map.put("enable_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mendayakan Apl YouTube.");
            map.put("enable_youtube_app_action", "Dayakan Apl YouTube");
            map.put("update_youtube_app_title", "Kemas kini Apl YouTube");
            map.put("update_youtube_app_text", "Apl ini tidak akan berfungsi kecuali anda mengemas kini Apl YouTube.");
            map.put("update_youtube_app_action", "Kemas kini Apl YouTube");
        } else if ("nb".equals(str)) {
            map.put("error_initializing_player", "Det oppsto en feil da YouTube-avspilleren startet.");
            map.put("get_youtube_app_title", "Skaff deg YouTube-appen");
            map.put("get_youtube_app_text", "Denne appen kan ikke kjøre uten YouTube-appen, som du ikke har på enheten");
            map.put("get_youtube_app_action", "Skaff deg YouTube-appen");
            map.put("enable_youtube_app_title", "Aktiver YouTube-appen");
            map.put("enable_youtube_app_text", "Denne appen fungerer ikke før du aktiverer YouTube-appen.");
            map.put("enable_youtube_app_action", "Aktiver YouTube-appen");
            map.put("update_youtube_app_title", "Oppdater YouTube-appen");
            map.put("update_youtube_app_text", "Denne appen fungerer ikke før du oppdaterer YouTube-appen.");
            map.put("update_youtube_app_action", "Oppdater YouTube-appen");
        } else if ("nl".equals(str)) {
            map.put("error_initializing_player", "Er is een fout opgetreden bij het initialiseren van de YouTube-speler.");
            map.put("get_youtube_app_title", "YouTube-app downloaden");
            map.put("get_youtube_app_text", "Deze app wordt niet uitgevoerd zonder de YouTube-app, die op uw apparaat ontbreekt");
            map.put("get_youtube_app_action", "YouTube-app downloaden");
            map.put("enable_youtube_app_title", "YouTube-app inschakelen");
            map.put("enable_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app inschakelt.");
            map.put("enable_youtube_app_action", "YouTube-app inschakelen");
            map.put("update_youtube_app_title", "YouTube-app bijwerken");
            map.put("update_youtube_app_text", "Deze app werkt niet, tenzij u de YouTube-app bijwerkt.");
            map.put("update_youtube_app_action", "YouTube-app bijwerken");
        } else if ("pl".equals(str)) {
            map.put("error_initializing_player", "Podczas inicjowania odtwarzacza YouTube wystąpił błąd.");
            map.put("get_youtube_app_title", "Pobierz aplikację YouTube");
            map.put("get_youtube_app_text", "Ta aplikacja nie będzie działać bez aplikacji YouTube, której nie ma na tym urządzeniu");
            map.put("get_youtube_app_action", "Pobierz aplikację YouTube");
            map.put("enable_youtube_app_title", "Włącz aplikację YouTube");
            map.put("enable_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie włączysz aplikacji YouTube.");
            map.put("enable_youtube_app_action", "Włącz aplikację YouTube");
            map.put("update_youtube_app_title", "Zaktualizuj aplikację YouTube");
            map.put("update_youtube_app_text", "Ta aplikacja nie będzie działać, jeśli nie zaktualizujesz aplikacji YouTube.");
            map.put("update_youtube_app_action", "Zaktualizuj aplikację YouTube");
        } else if ("pt_PT".equals(str)) {
            map.put("error_initializing_player", "Ocorreu um erro ao iniciar o leitor do YouTube.");
            map.put("get_youtube_app_title", "Obter a Aplicação YouTube");
            map.put("get_youtube_app_text", "Esta aplicação não será executada sem a Aplicação YouTube, que está em falta no seu dispositivo");
            map.put("get_youtube_app_action", "Obter a Aplicação YouTube");
            map.put("enable_youtube_app_title", "Ativar Aplicação YouTube");
            map.put("enable_youtube_app_text", "Esta aplicação não irá funcionar enquanto não ativar a Aplicação YouTube.");
            map.put("enable_youtube_app_action", "Ativar Aplicação YouTube");
            map.put("update_youtube_app_title", "Atualizar Aplica. YouTube");
            map.put("update_youtube_app_text", "Esta aplicação não irá funcionar enquanto não atualizar a Aplicação YouTube.");
            map.put("update_youtube_app_action", "Atualizar Aplica. YouTube");
        } else if ("pt".equals(str)) {
            map.put("error_initializing_player", "Ocorreu um erro ao inicializar o player do YouTube.");
            map.put("get_youtube_app_title", "Obter aplicativo YouTube");
            map.put("get_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube, que está ausente no dispositivo.");
            map.put("get_youtube_app_action", "Obter aplicativo YouTube");
            map.put("enable_youtube_app_title", "Ativar aplicativo YouTube");
            map.put("enable_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube ativado.");
            map.put("enable_youtube_app_action", "Ativar aplicativo YouTube");
            map.put("update_youtube_app_title", "Atualizar aplic. YouTube");
            map.put("update_youtube_app_text", "Este aplicativo só funciona com o aplicativo YouTube atualizado.");
            map.put("update_youtube_app_action", "Atualizar aplic. YouTube");
        } else if ("ro".equals(str)) {
            map.put("error_initializing_player", "A apărut o eroare la iniţializarea playerului YouTube.");
            map.put("get_youtube_app_title", "Descărcaţi YouTube");
            map.put("get_youtube_app_text", "Această aplicaţie nu va rula fără aplicaţia YouTube, care lipseşte de pe gadget");
            map.put("get_youtube_app_action", "Descărcaţi YouTube");
            map.put("enable_youtube_app_title", "Activaţi YouTube");
            map.put("enable_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă activaţi aplicaţia YouTube.");
            map.put("enable_youtube_app_action", "Activaţi YouTube");
            map.put("update_youtube_app_title", "Actualizaţi YouTube");
            map.put("update_youtube_app_text", "Această aplicaţie nu va funcţiona decât dacă actualizaţi aplicaţia YouTube.");
            map.put("update_youtube_app_action", "Actualizaţi YouTube");
        } else if ("ru".equals(str)) {
            map.put("error_initializing_player", "Не удалось запустить проигрыватель YouTube.");
            map.put("get_youtube_app_title", "Загрузите YouTube");
            map.put("get_youtube_app_text", "Чтобы запустить эту программу, установите приложение YouTube.");
            map.put("get_youtube_app_action", "Загрузить YouTube");
            map.put("enable_youtube_app_title", "Активация YouTube");
            map.put("enable_youtube_app_text", "Чтобы запустить эту программу, активируйте приложение YouTube.");
            map.put("enable_youtube_app_action", "Активировать YouTube");
            map.put("update_youtube_app_title", "Обновление YouTube");
            map.put("update_youtube_app_text", "Чтобы запустить эту программу, обновите приложение YouTube.");
            map.put("update_youtube_app_action", "Обновить YouTube");
        } else if ("sk".equals(str)) {
            map.put("error_initializing_player", "Pri inicializácii prehrávača YouTube sa vyskytla chyba.");
            map.put("get_youtube_app_title", "Získať aplikáciu YouTube");
            map.put("get_youtube_app_text", "Túto aplikáciu nebude možné spustiť bez aplikácie YouTube, ktorá na zariadení nie je nainštalovaná.");
            map.put("get_youtube_app_action", "Získať aplikáciu YouTube");
            map.put("enable_youtube_app_title", "Povoliť aplikáciu YouTube");
            map.put("enable_youtube_app_text", "Táto aplikácia bude fungovať až po povolení aplikácie YouTube.");
            map.put("enable_youtube_app_action", "Povoliť aplikáciu YouTube");
            map.put("update_youtube_app_title", "Aktualizovať apl. YouTube");
            map.put("update_youtube_app_text", "Táto aplikácia bude fungovať až po aktualizácii aplikácie YouTube.");
            map.put("update_youtube_app_action", "Aktualizovať apl. YouTube");
        } else if ("sl".equals(str)) {
            map.put("error_initializing_player", "Napaka med inicializacijo YouTubovega predvajalnika.");
            map.put("get_youtube_app_title", "Prenos aplikacije YouTube");
            map.put("get_youtube_app_text", "Ta aplikacija ne bo delovala brez aplikacije YouTube, ki je ni v vaši napravi");
            map.put("get_youtube_app_action", "Prenos aplikacije YouTube");
            map.put("enable_youtube_app_title", "Omog. aplikacije YouTube");
            map.put("enable_youtube_app_text", "Ta aplikacija ne bo delovala, če ne omogočite aplikacije YouTube.");
            map.put("enable_youtube_app_action", "Omog. aplikacijo YouTube");
            map.put("update_youtube_app_title", "Posodob. aplikacije YouTube");
            map.put("update_youtube_app_text", "Ta aplikacija ne bo delovala, če ne posodobite aplikacije YouTube.");
            map.put("update_youtube_app_action", "Posod. aplikacijo YouTube");
        } else if ("sr".equals(str)) {
            map.put("error_initializing_player", "Дошло је до грешке при покретању YouTube плејера.");
            map.put("get_youtube_app_title", "Преузимање аплик. YouTube");
            map.put("get_youtube_app_text", "Ова апликација неће функционисати без апликације YouTube, која недостаје на уређају");
            map.put("get_youtube_app_action", "Преузми апликац. YouTube");
            map.put("enable_youtube_app_title", "Омогућавање апл. YouTube");
            map.put("enable_youtube_app_text", "Ова апликације неће функционисати ако не омогућите апликацију YouTube.");
            map.put("enable_youtube_app_action", "Омогући апликац. YouTube");
            map.put("update_youtube_app_title", "Ажурирање аплик. YouTube");
            map.put("update_youtube_app_text", "Ова апликације неће функционисати ако не ажурирате апликацију YouTube.");
            map.put("update_youtube_app_action", "Ажурирај апликац. YouTube");
        } else if ("sv".equals(str)) {
            map.put("error_initializing_player", "Ett fel uppstod när YouTube-spelaren skulle startas.");
            map.put("get_youtube_app_title", "Hämta YouTube-appen");
            map.put("get_youtube_app_text", "YouTube-appen krävs för att den här appen ska kunna köras. Du har inte YouTube-appen på din enhet.");
            map.put("get_youtube_app_action", "Hämta YouTube-appen");
            map.put("enable_youtube_app_title", "Aktivera YouTube-appen");
            map.put("enable_youtube_app_text", "Du måste aktivera YouTube-appen för att den här appen ska fungera.");
            map.put("enable_youtube_app_action", "Aktivera YouTube-appen");
            map.put("update_youtube_app_title", "Uppdatera YouTube-appen");
            map.put("update_youtube_app_text", "Du måste uppdatera YouTube-appen för att den här appen ska fungera.");
            map.put("update_youtube_app_action", "Uppdatera YouTube-appen");
        } else if ("sw".equals(str)) {
            map.put("error_initializing_player", "Hitilafu ilitokea wakati wa kuanzisha kichezeshi cha YouTube.");
            map.put("get_youtube_app_title", "Pata Programu ya YouTube");
            map.put("get_youtube_app_text", "Programu hii haitaendeshwa bila Programu ya YouTube, ambayo inakosekana kwenye kifaa chako.");
            map.put("get_youtube_app_action", "Pata Programu ya YouTube");
            map.put("enable_youtube_app_title", "Wezesha Programu ya YouTube");
            map.put("enable_youtube_app_text", "Programu hii haitafanya kazi isipokuwa uwezeshe Programu ya YouTube.");
            map.put("enable_youtube_app_action", "Wezesha Programu ya YouTube");
            map.put("update_youtube_app_title", "Sasisha Programu ya YouTube");
            map.put("update_youtube_app_text", "Programu hii haitafanya kazi mpaka usasishe Programu ya YouTube.");
            map.put("update_youtube_app_action", "Sasisha Programu ya YouTube");
        } else if ("th".equals(str)) {
            map.put("error_initializing_player", "เกิดข้อผิดพลาดในขณะเริ่มต้นโปรแกรมเล่น YouTube");
            map.put("get_youtube_app_title", "รับแอปพลิเคชัน YouTube");
            map.put("get_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานหากไม่มีแอปพลิเคชัน YouTube ซึ่งไม่มีในอุปกรณ์ของคุณ");
            map.put("get_youtube_app_action", "รับแอปพลิเคชัน YouTube");
            map.put("enable_youtube_app_title", "เปิดใช้งานแอป YouTube");
            map.put("enable_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะเปิดใช้งานแอปพลิเคชัน YouTube");
            map.put("enable_youtube_app_action", "เปิดใช้งานแอป YouTube");
            map.put("update_youtube_app_title", "อัปเดตแอปพลิเคชัน YouTube");
            map.put("update_youtube_app_text", "แอปพลิเคชันนี้จะไม่ทำงานจนกว่าคุณจะอัปเดตแอปพลิเคชัน YouTube");
            map.put("update_youtube_app_action", "อัปเดตแอปพลิเคชัน YouTube");
        } else if ("tl".equals(str)) {
            map.put("error_initializing_player", "May naganap na error habang sinisimulan ang player ng YouTube.");
            map.put("get_youtube_app_title", "Kunin ang YouTube App");
            map.put("get_youtube_app_text", "Hindi gagana ang app na ito nang wala ang YouTube App, na nawawala sa iyong device");
            map.put("get_youtube_app_action", "Kunin ang YouTube App");
            map.put("enable_youtube_app_title", "Paganahin ang YouTube App");
            map.put("enable_youtube_app_text", "Hindi gagana ang app na ito maliban kung paganahin mo ang YouTube App.");
            map.put("enable_youtube_app_action", "Paganahin ang YouTube App");
            map.put("update_youtube_app_title", "I-update ang YouTube App");
            map.put("update_youtube_app_text", "Hindi gagana ang app na ito maliban kung i-update mo ang YouTube App.");
            map.put("update_youtube_app_action", "I-update ang YouTube App");
        } else if ("tr".equals(str)) {
            map.put("error_initializing_player", "YouTube oynatıcısı başlatılırken bir hata oluştu.");
            map.put("get_youtube_app_title", "YouTube Uygulamasını edinin");
            map.put("get_youtube_app_text", "Cihazınızda bulunmayan YouTube Uygulaması olmadan bu uygulama çalışmaz");
            map.put("get_youtube_app_action", "YouTube Uygulamasını edinin");
            map.put("enable_youtube_app_title", "YouTube Uygulamasını etkinleştirin");
            map.put("enable_youtube_app_text", "YouTube Uygulamasını etkinleştirmediğiniz sürece bu uygulama çalışmaz.");
            map.put("enable_youtube_app_action", "YouTube Uygulamasını etkinleştirin");
            map.put("update_youtube_app_title", "YouTube Uygulamasını güncelleyin");
            map.put("update_youtube_app_text", "YouTube Uygulaması güncellenmedikçe bu uygulama çalışmaz.");
            map.put("update_youtube_app_action", "YouTube Uygulamasını güncelle");
        } else if ("uk".equals(str)) {
            map.put("error_initializing_player", "Під час ініціалізації програвача YouTube сталася помилка.");
            map.put("get_youtube_app_title", "Отримати програму YouTube");
            map.put("get_youtube_app_text", "Ця програма не запуститься без програми YouTube, яку не встановлено на вашому пристрої");
            map.put("get_youtube_app_action", "Отримати програму YouTube");
            map.put("enable_youtube_app_title", "Увімк. програму YouTube");
            map.put("enable_youtube_app_text", "Ця програма не працюватиме, поки ви не ввімкнете програму YouTube.");
            map.put("enable_youtube_app_action", "Увімк. програму YouTube");
            map.put("update_youtube_app_title", "Оновити програму YouTube");
            map.put("update_youtube_app_text", "Ця програма не працюватиме, поки ви не оновите програму YouTube.");
            map.put("update_youtube_app_action", "Оновити програму YouTube");
        } else if ("vi".equals(str)) {
            map.put("error_initializing_player", "Đã xảy ra lỗi trong khi khởi chạy trình phát YouTube.");
            map.put("get_youtube_app_title", "Tải ứng dụng YouTube");
            map.put("get_youtube_app_text", "Ứng dụng này sẽ không chạy nếu không có ứng dụng YouTube, ứng dụng này bị thiếu trong thiết bị của bạn");
            map.put("get_youtube_app_action", "Tải ứng dụng YouTube");
            map.put("enable_youtube_app_title", "Bật ứng dụng YouTube");
            map.put("enable_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn bật ứng dụng YouTube.");
            map.put("enable_youtube_app_action", "Bật ứng dụng YouTube");
            map.put("update_youtube_app_title", "Cập nhật ứng dụng YouTube");
            map.put("update_youtube_app_text", "Ứng dụng này sẽ không hoạt động trừ khi bạn cập nhật ứng dụng YouTube.");
            map.put("update_youtube_app_action", "Cập nhật ứng dụng YouTube");
        } else if ("zh_CN".equals(str)) {
            map.put("error_initializing_player", "初始化 YouTube 播放器时出现错误。");
            map.put("get_youtube_app_title", "获取 YouTube 应用");
            map.put("get_youtube_app_text", "您的设备中没有 YouTube 应用，您必须先安装 YouTube 应用才能运行此应用。");
            map.put("get_youtube_app_action", "获取 YouTube 应用");
            map.put("enable_youtube_app_title", "启用 YouTube 应用");
            map.put("enable_youtube_app_text", "您需要启用 YouTube 应用才能运行该应用。");
            map.put("enable_youtube_app_action", "启用 YouTube 应用");
            map.put("update_youtube_app_title", "更新 YouTube 应用");
            map.put("update_youtube_app_text", "您必须更新 YouTube 应用才能运行此应用。");
            map.put("update_youtube_app_action", "更新 YouTube 应用");
        } else if ("zh_TW".equals(str)) {
            map.put("error_initializing_player", "初始化 YouTube 播放器時發生錯誤。");
            map.put("get_youtube_app_title", "取得 YouTube 應用程式");
            map.put("get_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作，但系統在裝置中找不到 YouTube 應用程式。");
            map.put("get_youtube_app_action", "取得 YouTube 應用程式");
            map.put("enable_youtube_app_title", "啟用 YouTube 應用程式");
            map.put("enable_youtube_app_text", "您必須啟用 YouTube 應用程式，這個應用程式才能運作。");
            map.put("enable_youtube_app_action", "啟用 YouTube 應用程式");
            map.put("update_youtube_app_title", "更新 YouTube 應用程式");
            map.put("update_youtube_app_text", "您必須更新 YouTube 應用程式，這個應用程式才能運作。");
            map.put("update_youtube_app_action", "更新 YouTube 應用程式");
        } else if (!"zu".equals(str)) {
        } else {
            map.put("error_initializing_player", "Kuvele iphutha ngenkathi kuqaliswa isidlali se-YouTube");
            map.put("get_youtube_app_title", "Thola uhlelo lokusebenza lwe-YouTube");
            map.put("get_youtube_app_text", "Lolu hlelo kusebenza angeke lusebenze ngaphandle kohlelo lokusebenza lwe-YouTube, olungekho kudivayisi yakho");
            map.put("get_youtube_app_action", "Thola uhelo lokusebenza lwe-YouTube");
            map.put("enable_youtube_app_title", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            map.put("enable_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma unganikanga amandla uhlelo lokusebenza lwe-YouTube.");
            map.put("enable_youtube_app_action", "Nika amandla uhlelo lokusebenza lwe-YouTube");
            map.put("update_youtube_app_title", "Buyekeza uhlelo lokusebenza lwe-YouTube");
            map.put("update_youtube_app_text", "Lolu hlelo lokusebenza angeke lusebenze uma ungabuyekezanga uhlelo lokusebenza lwe-YouTube.");
            map.put("update_youtube_app_action", "Buyekeza uhlelo lokusebenza lwe-YouTube");
        }
    }

    /* renamed from: j0 */
    public static int m2341j0(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: j1 */
    public static int m2340j1(int i) {
        int i2 = (i ^ (i >>> 16)) * (-2048144789);
        int i3 = (i2 ^ (i2 >>> 13)) * (-1028477387);
        return i3 ^ (i3 >>> 16);
    }

    /* renamed from: j2 */
    public static Context m2339j2(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    /* renamed from: k */
    public static boolean m2338k(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    /* renamed from: k0 */
    public static Drawable m2337k0(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable m3540a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m3540a = C25440a.m3540a(context, resourceId)) == null) ? typedArray.getDrawable(i) : m3540a;
    }

    /* renamed from: k1 */
    public static long m2336k1(long j) {
        long j2 = (j ^ (j >>> 32)) * 5536775847593249645L;
        long j3 = (j2 ^ (j2 >>> 29)) * (-282946459933713943L);
        return j3 ^ (j3 >>> 32);
    }

    /* renamed from: k2 */
    public static t0 m2335k2(Context context) {
        t0 t0Var;
        synchronized (C26232y.class) {
            try {
                if (f73141b == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    j3 j3Var = new j3(context);
                    m2461G2(j3Var, j3.class);
                    f73141b = new t0(j3Var);
                }
                t0Var = f73141b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return t0Var;
    }

    /* renamed from: l */
    public static void m2334l(int i, String str, int i2) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            GLES20.glGetShaderInfoLog(glCreateShader);
        }
        GLES20.glAttachShader(i2, glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        m2294v();
    }

    /* renamed from: l0 */
    public static JSONObject m2333l0(C22712a c22712a) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC2405c.f7629a, c22712a.f62842a);
            jSONObject.put("d", c22712a.f62843b);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    /* renamed from: l1 */
    public static C21980e m2332l1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                arrayList.add(new C21963h(c21913e, C21894h.m8939a(jsonReader, c21913e, C21905e.m8918c(), C21895i.f60777a, jsonReader.peek() == JsonToken.BEGIN_OBJECT)));
            }
            jsonReader.endArray();
            m2418R1(arrayList);
        } else {
            arrayList.add(new C21907a(m2387Z0(jsonReader, C21905e.m8918c())));
        }
        return new C21980e(arrayList);
    }

    /* renamed from: l2 */
    public static <T> r0<T> m2331l2(Object obj, String str, Class<T> cls) {
        return new r0<>(obj, m2380a3(obj, str), cls);
    }

    public static String lenientFormat(String str, Object... objArr) {
        Object[] objArr2;
        int indexOf;
        String sb;
        String valueOf = String.valueOf(str);
        if (objArr != null) {
            int i = 0;
            while (true) {
                objArr2 = objArr;
                if (i >= objArr.length) {
                    break;
                }
                Object obj = objArr[i];
                if (obj == null) {
                    sb = AnalyticsConstants.NULL;
                } else {
                    try {
                        sb = obj.toString();
                    } catch (Exception e) {
                        String name = obj.getClass().getName();
                        String hexString = Integer.toHexString(System.identityHashCode(obj));
                        StringBuilder sb2 = new StringBuilder(C22128a.m8623f2(hexString, name.length() + 1));
                        sb2.append(name);
                        sb2.append('@');
                        sb2.append(hexString);
                        String sb3 = sb2.toString();
                        Logger logger = Logger.getLogger("com.google.common.base.Strings");
                        Level level = Level.WARNING;
                        String valueOf2 = String.valueOf(sb3);
                        logger.log(level, valueOf2.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf2) : new String("Exception during lenientFormat for "), (Throwable) e);
                        String name2 = e.getClass().getName();
                        StringBuilder m8736A = C22128a.m8736A(name2.length() + C22128a.m8623f2(sb3, 9), "<", sb3, " threw ", name2);
                        m8736A.append(">");
                        sb = m8736A.toString();
                    }
                }
                objArr[i] = sb;
                i++;
            }
        } else {
            objArr2 = new Object[]{"(Object[])null"};
        }
        StringBuilder sb4 = new StringBuilder((objArr2.length * 16) + valueOf.length());
        int i2 = 0;
        int i3 = 0;
        while (i3 < objArr2.length && (indexOf = valueOf.indexOf("%s", i2)) != -1) {
            sb4.append((CharSequence) valueOf, i2, indexOf);
            sb4.append(objArr2[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb4.append((CharSequence) valueOf, i2, valueOf.length());
        if (i3 < objArr2.length) {
            sb4.append(" [");
            sb4.append(objArr2[i3]);
            for (int i4 = i3 + 1; i4 < objArr2.length; i4++) {
                sb4.append(", ");
                sb4.append(objArr2[i4]);
            }
            sb4.append(']');
        }
        return sb4.toString();
    }

    /* renamed from: m */
    public static <ResultT> ResultT m2330m(r<ResultT> rVar) throws ExecutionException, InterruptedException {
        boolean z;
        m2315p2(rVar, "Task must not be null");
        synchronized (rVar.a) {
            z = rVar.c;
        }
        if (z) {
            return (ResultT) m2437M2(rVar);
        }
        s sVar = new s();
        Executor executor = e.m.a.h.a.h.e.b;
        rVar.b(executor, sVar);
        rVar.a(executor, sVar);
        sVar.a.await();
        return (ResultT) m2437M2(rVar);
    }

    /* renamed from: m0 */
    public static int m2329m0(Context context, String str, int i) {
        return m2297u0(context).getInt(str, i);
    }

    /* renamed from: m1 */
    public static <T> List<C21907a<T>> m2328m1(JsonReader jsonReader, C21913e c21913e, float f, AbstractC21899m<T> abstractC21899m) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.peek() == JsonToken.STRING) {
            c21913e.f60825b.add("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("k")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                if (jsonReader.peek() == JsonToken.NUMBER) {
                    arrayList.add(C21894h.m8939a(jsonReader, c21913e, f, abstractC21899m, false));
                } else {
                    while (jsonReader.hasNext()) {
                        arrayList.add(C21894h.m8939a(jsonReader, c21913e, f, abstractC21899m, true));
                    }
                }
                jsonReader.endArray();
            } else {
                arrayList.add(C21894h.m8939a(jsonReader, c21913e, f, abstractC21899m, false));
            }
        }
        jsonReader.endObject();
        m2418R1(arrayList);
        return arrayList;
    }

    /* renamed from: m2 */
    public static <ResultT> r<ResultT> m2327m2(Exception exc) {
        r<ResultT> rVar = new r<>();
        rVar.f(exc);
        return rVar;
    }

    public static int maskCombine(int i, int i2, int i3) {
        return (i & (i3 ^ (-1))) | (i2 & i3);
    }

    /* renamed from: n */
    public static void m2326n(String str) {
        if (C24773d0.f69427a >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: n0 */
    public static int m2325n0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str, int i) {
        if (cleverTapInstanceConfig.f2252m) {
            int m2329m0 = m2329m0(context, m2398W1(cleverTapInstanceConfig, str), -1000);
            return m2329m0 != -1000 ? m2329m0 : m2329m0(context, str, i);
        }
        return m2329m0(context, m2398W1(cleverTapInstanceConfig, str), i);
    }

    /* renamed from: n1 */
    public static <T> List<C21907a<T>> m2324n1(JsonReader jsonReader, C21913e c21913e, AbstractC21899m<T> abstractC21899m) throws IOException {
        return m2328m1(jsonReader, c21913e, 1.0f, abstractC21899m);
    }

    /* renamed from: n2 */
    public static Boolean m2323n2(byte b) {
        if (b != 0) {
            if (b == 1) {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: o */
    public static C23922l m2322o(Set<String> set, Set<String> set2) {
        if (set2 != null || (set != null && !set.isEmpty())) {
            return new C23922l(set, set2);
        }
        return null;
    }

    /* renamed from: o0 */
    public static PendingIntent m2321o0(Bundle bundle, Context context) {
        PendingIntent pendingIntent;
        if (Build.VERSION.SDK_INT >= 31) {
            pendingIntent = m2404V(bundle, context);
        } else {
            Intent intent = new Intent(context, CTPushNotificationReceiver.class);
            intent.putExtras(bundle);
            intent.removeExtra("wzrk_acts");
            pendingIntent = PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, 201326592);
        }
        return pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* renamed from: o1 */
    public static AbstractC22169b.C22170a m2320o1(C22182l c22182l) {
        char c;
        char c2;
        boolean z;
        boolean z2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = c22182l.f61633c;
        String str = map.get("Date");
        char m2308r1 = str != null ? m2308r1(str) : (char) 0;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z = false;
            c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= split.length) {
                    z2 = true;
                    break;
                }
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        c6 = Long.parseLong(trim.substring(8));
                        c7 = c;
                    } catch (Exception e) {
                        c6 = c2;
                        c7 = c;
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    c7 = Long.parseLong(trim.substring(23));
                    c6 = c2;
                } else {
                    if (!trim.equals("must-revalidate")) {
                        c6 = c2;
                        c7 = c;
                        if (!trim.equals("proxy-revalidate")) {
                        }
                    }
                    z = true;
                    c7 = c;
                    c6 = c2;
                }
                i++;
                c2 = c6;
                r0 = c7;
            }
        } else {
            z = false;
            c2 = 0;
            c = 0;
            z2 = false;
        }
        String str3 = map.get("Expires");
        char m2308r12 = str3 != null ? m2308r1(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char m2308r13 = str4 != null ? m2308r1(str4) : (char) 0;
        String str5 = map.get("ETag");
        if (z2) {
            ?? r02 = currentTimeMillis + (c2 * 1000);
            if (z) {
                c5 = r02;
            } else {
                Long.signum(c);
                c5 = (c * 1000) + r02;
            }
            char c8 = c5;
            c3 = r02;
            c4 = c8;
        } else {
            c4 = 0;
            if (m2308r1 <= 0 || m2308r12 < m2308r1) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (m2308r12 - m2308r1);
                c4 = c3;
            }
        }
        AbstractC22169b.C22170a c22170a = new AbstractC22169b.C22170a();
        c22170a.f61596a = c22182l.f61632b;
        c22170a.f61597b = str5;
        c22170a.f61601f = c3;
        c22170a.f61600e = c4;
        c22170a.f61598c = m2308r1;
        c22170a.f61599d = m2308r13;
        c22170a.f61602g = map;
        c22170a.f61603h = c22182l.f61634d;
        return c22170a;
    }

    /* renamed from: o2 */
    public static Object m2319o2(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (!cls.isAssignableFrom(obj2.getClass())) {
            throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), obj2.getClass().getCanonicalName()));
        }
        return obj2;
    }

    /* renamed from: p */
    public static ExecutorService m2318p(String str) {
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new l0(str, new AtomicLong(1L)), new ThreadPoolExecutor.DiscardPolicy()));
        Runtime.getRuntime().addShutdownHook(new Thread((Runnable) new m0(str, unconfigurableExecutorService, 2L, TimeUnit.SECONDS), C22128a.m8543z2("Crashlytics Shutdown Hook for ", str)));
        return unconfigurableExecutorService;
    }

    /* renamed from: p0 */
    public static String m2317p0(CleverTapInstanceConfig cleverTapInstanceConfig) {
        return C22128a.m8618h(new StringBuilder(), cleverTapInstanceConfig != null ? cleverTapInstanceConfig.f2240a : "", "[Product Config]");
    }

    /* renamed from: p1 */
    public static String m2316p1(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";", 0);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split(ContainerUtils.KEY_VALUE_DELIMITER, 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    /* renamed from: p2 */
    public static <T> T m2315p2(T t, Object obj) {
        Objects.requireNonNull(t, (String) obj);
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.io.ObjectInputStream] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1834m0.C26827e m2314q(byte[] r4) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2314q(byte[]):n3.m0.e");
    }

    /* renamed from: q0 */
    public static long m2313q0(Context context, String str, String str2, long j) {
        return m2293v0(context, str).getLong(str2, j);
    }

    /* renamed from: q1 */
    public static e.b.a.y.j.a m2312q1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        return new e.b.a.y.j.a(m2324n1(jsonReader, c21913e, C21888b.f60769a));
    }

    /* renamed from: q2 */
    public static String m2311q2(Context context) {
        String str;
        try {
            str = context.getResources().getResourcePackageName(C2052R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException e) {
            str = context.getPackageName();
        }
        return str;
    }

    /* renamed from: r */
    public static void m2310r(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: r0 */
    public static long m2309r0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str, int i, String str2) {
        if (cleverTapInstanceConfig.f2252m) {
            char m2313q0 = m2313q0(context, str2, m2398W1(cleverTapInstanceConfig, str), -1000L);
            if (m2313q0 == -1000) {
                m2313q0 = m2313q0(context, str2, str, i);
            }
            return m2313q0;
        }
        return m2313q0(context, str2, m2398W1(cleverTapInstanceConfig, str), i);
    }

    /* renamed from: r1 */
    public static long m2308r1(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException e) {
            C22198w.m8484a("Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    /* renamed from: r2 */
    public static String m2307r2(File file) {
        if (file.getName().endsWith(".apk")) {
            String replaceFirst = file.getName().replaceFirst("(_\\d+)?\\.apk", "");
            return (replaceFirst.equals("base-master") || replaceFirst.equals("base-main")) ? "" : replaceFirst.startsWith("base-") ? replaceFirst.replace("base-", "config.") : replaceFirst.replace(StringConstant.DASH, ".config.").replace(".config.master", "").replace(".config.main", "");
        }
        throw new IllegalArgumentException("Non-apk found in splits directory.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0057, code lost:
        r0 = r0 & r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
        if (r17 != (-1)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
        tableSet(r9, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006e, code lost:
        r10[r17] = maskCombine(r10[r17], r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        return r15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int remove(java.lang.Object r6, java.lang.Object r7, int r8, java.lang.Object r9, int[] r10, java.lang.Object[] r11, java.lang.Object[] r12) {
        /*
            r0 = r6
            int r0 = smearedHash(r0)
            r13 = r0
            r0 = r13
            r1 = r8
            r0 = r0 & r1
            r14 = r0
            r0 = r9
            r1 = r14
            int r0 = tableGet(r0, r1)
            r15 = r0
            r0 = r15
            if (r0 != 0) goto L1b
            r0 = -1
            return r0
        L1b:
            r0 = r8
            r1 = -1
            r0 = r0 ^ r1
            r16 = r0
            r0 = -1
            r17 = r0
        L23:
            int r15 = r15 + (-1)
            r0 = r10
            r1 = r15
            r0 = r0[r1]
            r18 = r0
            r0 = r18
            r1 = r16
            r0 = r0 & r1
            r1 = r13
            r2 = r16
            r1 = r1 & r2
            if (r0 != r1) goto L81
            r0 = r6
            r1 = r11
            r2 = r15
            r1 = r1[r2]
            boolean r0 = equal1(r0, r1)
            if (r0 == 0) goto L81
            r0 = r12
            if (r0 == 0) goto L57
            r0 = r7
            r1 = r12
            r2 = r15
            r1 = r1[r2]
            boolean r0 = equal1(r0, r1)
            if (r0 == 0) goto L81
        L57:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r17
            r1 = -1
            if (r0 != r1) goto L6e
            r0 = r9
            r1 = r14
            r2 = r18
            tableSet(r0, r1, r2)
            goto L7e
        L6e:
            r0 = r10
            r1 = r17
            r2 = r10
            r3 = r17
            r2 = r2[r3]
            r3 = r18
            r4 = r8
            int r2 = maskCombine(r2, r3, r4)
            r0[r1] = r2
        L7e:
            r0 = r15
            return r0
        L81:
            r0 = r18
            r1 = r8
            r0 = r0 & r1
            r18 = r0
            r0 = r18
            if (r0 != 0) goto L8e
            r0 = -1
            return r0
        L8e:
            r0 = r15
            r17 = r0
            r0 = r18
            r15 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.remove(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }

    /* renamed from: s */
    public static void m2306s(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: s0 */
    public static int m2305s0(List<ImageHeaderParser> list, InputStream inputStream, AbstractC22301b abstractC22301b) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        C22520w c22520w = inputStream;
        if (!inputStream.markSupported()) {
            c22520w = new C22520w(inputStream, abstractC22301b);
        }
        c22520w.mark(5242880);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                int mo8177b = list.get(i).mo8177b(c22520w, abstractC22301b);
                if (mo8177b != -1) {
                    return mo8177b;
                }
                c22520w.reset();
            } finally {
                c22520w.reset();
            }
        }
        return -1;
    }

    /* renamed from: s1 */
    public static e.b.a.y.j.b m2304s1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        return m2300t1(jsonReader, c21913e, true);
    }

    /* renamed from: s2 */
    public static String m2303s2(String str, String str2) {
        return C22128a.m8610j(new StringBuilder(str.length() + 1 + String.valueOf(str2).length()), str, StringConstant.COLON, str2);
    }

    public static int saturatedCast(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j >= -2147483648L) {
            return (int) j;
        }
        return Integer.MIN_VALUE;
    }

    public static int smear(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static int smearedHash(Object obj) {
        return smear(obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: t */
    public static void m2302t(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: t0 */
    public static float m2301t0(View view) {
        float f = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            AtomicInteger atomicInteger = C26614s.f74505a;
            f += ((View) parent).getElevation();
        }
        return f;
    }

    /* renamed from: t1 */
    public static e.b.a.y.j.b m2300t1(JsonReader jsonReader, C21913e c21913e, boolean z) throws IOException {
        return new e.b.a.y.j.b(m2328m1(jsonReader, c21913e, z ? C21905e.m8918c() : 1.0f, C21890d.f60771a));
    }

    /* renamed from: t2 */
    public static String m2299t2(List<File> list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[8192];
        for (File file : list) {
            FileInputStream fileInputStream = new FileInputStream(file);
            do {
                try {
                    read = fileInputStream.read(bArr);
                    if (read > 0) {
                        messageDigest.update(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(messageDigest.digest(), 11);
    }

    public static int tableGet(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? ((short[]) obj)[i] & 65535 : ((int[]) obj)[i];
    }

    public static void tableSet(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static String toLowerCase(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt >= 'A' && charAt <= 'Z') {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (c >= 'A' && c <= 'Z') {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.MoreObjects$ToStringHelper] */
    public static MoreObjects$ToStringHelper toStringHelper(Object obj) {
        return new Object(obj.getClass().getSimpleName(), null) { // from class: com.google.common.base.MoreObjects$ToStringHelper
            public final String className;
            public final ValueHolder holderHead;
            public ValueHolder holderTail;
            public boolean omitNullValues = false;

            /* loaded from: classes3-dex2jar.jar:com/google/common/base/MoreObjects$ToStringHelper$ValueHolder.class */
            public static final class ValueHolder {
                public String name;
                public ValueHolder next;
                public Object value;

                public ValueHolder(MoreObjects$1 moreObjects$1) {
                }
            }

            {
                ValueHolder valueHolder = new ValueHolder(null);
                this.holderHead = valueHolder;
                this.holderTail = valueHolder;
                this.className = simpleName;
            }

            public MoreObjects$ToStringHelper add(String str, int i) {
                addHolder(str, String.valueOf(i));
                return this;
            }

            public MoreObjects$ToStringHelper add(String str, long j) {
                addHolder(str, String.valueOf(j));
                return this;
            }

            public MoreObjects$ToStringHelper add(String str, boolean z) {
                addHolder(str, String.valueOf(z));
                return this;
            }

            public final MoreObjects$ToStringHelper addHolder(String str, Object obj2) {
                ValueHolder valueHolder = new ValueHolder(null);
                this.holderTail.next = valueHolder;
                this.holderTail = valueHolder;
                valueHolder.value = obj2;
                Objects.requireNonNull(str);
                valueHolder.name = str;
                return this;
            }

            public String toString() {
                String str;
                boolean z = this.omitNullValues;
                StringBuilder sb = new StringBuilder(32);
                sb.append(this.className);
                sb.append('{');
                ValueHolder valueHolder = this.holderHead.next;
                String str2 = "";
                while (true) {
                    String str3 = str2;
                    if (valueHolder == null) {
                        sb.append('}');
                        return sb.toString();
                    }
                    Object obj2 = valueHolder.value;
                    if (z) {
                        str = str3;
                        if (obj2 == null) {
                            valueHolder = valueHolder.next;
                            str2 = str;
                        }
                    }
                    sb.append(str3);
                    String str4 = valueHolder.name;
                    if (str4 != null) {
                        sb.append(str4);
                        sb.append('=');
                    }
                    if (obj2 == null || !obj2.getClass().isArray()) {
                        sb.append(obj2);
                    } else {
                        String deepToString = Arrays.deepToString(new Object[]{obj2});
                        sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                    }
                    str = ", ";
                    valueHolder = valueHolder.next;
                    str2 = str;
                }
            }
        };
    }

    /* renamed from: u */
    public static void m2298u(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(lenientFormat(str, objArr));
    }

    /* renamed from: u0 */
    public static SharedPreferences m2297u0(Context context) {
        return m2293v0(context, null);
    }

    /* renamed from: u1 */
    public static e.b.a.y.j.d m2296u1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        return new e.b.a.y.j.d(m2324n1(jsonReader, c21913e, C21892f.f60773a));
    }

    /* renamed from: u2 */
    public static Executor m2295u2() {
        if (f73142c == null) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, (BlockingQueue<Runnable>) new LinkedBlockingQueue(), (ThreadFactory) new e.m.a.h.a.f.d());
            f73142c = threadPoolExecutor;
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        }
        return f73142c;
    }

    /* renamed from: v */
    public static void m2294v() {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                GLU.gluErrorString(glGetError);
            } else {
                return;
            }
        }
    }

    /* renamed from: v0 */
    public static SharedPreferences m2293v0(Context context, String str) {
        String str2 = "WizRocket";
        if (str != null) {
            str2 = C22128a.m8725C2("WizRocket", AnalyticsConstants.DELIMITER_MAIN, str);
        }
        return context.getSharedPreferences(str2, 0);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02f1 A[SYNTHETIC] */
    /* renamed from: v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.C24839d.C24840a> m2292v1(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r9) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2292v1(e.m.a.c.q1.t):java.util.ArrayList");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.content.pm.ComponentInfo[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* renamed from: v2 */
    public static void m2291v2(PackageManager packageManager, ComponentName componentName, int i) {
        ComponentInfo componentInfo;
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (componentEnabledSetting != 1) {
            if (componentEnabledSetting != 2) {
                String packageName = componentName.getPackageName();
                String className = componentName.getClassName();
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 516);
                    ActivityInfo[] activityInfoArr = packageInfo.activities;
                    ServiceInfo[] serviceInfoArr = packageInfo.services;
                    ProviderInfo[] providerInfoArr = packageInfo.providers;
                    int i2 = 0;
                    loop0: while (true) {
                        if (i2 >= 3) {
                            componentInfo = null;
                            break;
                        }
                        ?? r0 = new ComponentInfo[]{activityInfoArr, serviceInfoArr, providerInfoArr}[i2];
                        if (r0 != 0) {
                            int length = r0.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                componentInfo = r0[i3];
                                if (componentInfo.name.equals(className)) {
                                    break loop0;
                                }
                            }
                            continue;
                        }
                        i2++;
                    }
                    if (componentInfo != null) {
                        if (componentInfo.isEnabled()) {
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        }
    }

    /* renamed from: w */
    public static int m2290w(int i, int i2, int i3) {
        if (i < i2 || i >= i3) {
            throw new IndexOutOfBoundsException();
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d1, code lost:
        if (r12 == null) goto L36;
     */
    /* renamed from: w0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray m2289w0(p193e.p1485h.p1486a.p1493c.p1496l0.C22746b r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2289w0(e.h.a.c.l0.b):org.json.JSONArray");
    }

    /* renamed from: w1 */
    public static f m2288w1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        return new f(m2328m1(jsonReader, c21913e, C21905e.m8918c(), C21896j.f60778a));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0041, code lost:
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b1  */
    /* renamed from: w2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2287w2(com.google.android.gms.measurement.internal.zzeh r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14) throws android.database.sqlite.SQLiteException {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1789g0.C26232y.m2287w2(com.google.android.gms.measurement.internal.zzeh, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: x */
    public static void m2286x(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: x0 */
    public static AbstractC22833b m2285x0(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0, C22713b c22713b) {
        C22838f c22838f = new C22838f(context, cleverTapInstanceConfig, c22718b0);
        boolean z = c22838f.m7715c().length() > 0 && TextUtils.isEmpty(c22838f.m7714d());
        CleverTapInstanceConfig cleverTapInstanceConfig2 = c22838f.f63382a;
        cleverTapInstanceConfig2.f2253n.m7855b(cleverTapInstanceConfig2.m42082a("ON_USER_LOGIN"), "isLegacyProfileLoggedIn:" + z);
        C22835d c22835d = z ? new C22835d(cleverTapInstanceConfig) : new C22832a(context, cleverTapInstanceConfig, c22718b0, c22713b);
        StringBuilder m8728C = C22128a.m8728C("Repo provider: ");
        m8728C.append(c22835d.getClass().getSimpleName());
        cleverTapInstanceConfig.f2253n.m7855b(cleverTapInstanceConfig.m42082a("ON_USER_LOGIN"), m8728C.toString());
        return c22835d;
    }

    /* renamed from: x1 */
    public static AbstractC21984m<PointF, PointF> m2284x1(JsonReader jsonReader, C21913e c21913e) throws IOException {
        jsonReader.beginObject();
        C21980e c21980e = null;
        boolean z = false;
        e.b.a.y.j.b bVar = null;
        e.b.a.y.j.b bVar2 = null;
        while (jsonReader.peek() != JsonToken.END_OBJECT) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z2 = true;
            switch (nextName.hashCode()) {
                case 107:
                    if (nextName.equals("k")) {
                        z2 = false;
                        break;
                    }
                    break;
                case 120:
                    if (nextName.equals("x")) {
                        z2 = true;
                        break;
                    }
                    break;
                case 121:
                    if (nextName.equals("y")) {
                        z2 = true;
                        break;
                    }
                    break;
            }
            switch (z2) {
                case false:
                    c21980e = m2332l1(jsonReader, c21913e);
                    continue;
                case true:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        jsonReader.skipValue();
                        break;
                    } else {
                        bVar = m2304s1(jsonReader, c21913e);
                        continue;
                    }
                case true:
                    if (jsonReader.peek() == JsonToken.STRING) {
                        jsonReader.skipValue();
                        break;
                    } else {
                        bVar2 = m2304s1(jsonReader, c21913e);
                        continue;
                    }
                default:
                    jsonReader.skipValue();
                    continue;
            }
            z = true;
        }
        jsonReader.endObject();
        if (z) {
            c21913e.f60825b.add("Lottie doesn't support expressions.");
        }
        return c21980e != null ? c21980e : new C21981i(bVar, bVar2);
    }

    /* renamed from: x2 */
    public static X509Certificate[][] m2283x2(String str) throws m1, SecurityException, IOException {
        Pair<ByteBuffer, Long> pair;
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            int i = 0;
            if (randomAccessFile.length() < 22) {
                pair = null;
            } else {
                pair = m2401V2(randomAccessFile, 0);
                if (pair == null) {
                    pair = m2401V2(randomAccessFile, 65535);
                }
            }
            if (pair == null) {
                long length = randomAccessFile.length();
                StringBuilder sb = new StringBuilder(102);
                sb.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb.append(length);
                sb.append(" bytes");
                throw new m1(sb.toString());
            }
            ByteBuffer byteBuffer = (ByteBuffer) pair.first;
            long longValue = ((Long) pair.second).longValue();
            long j = (-20) + longValue;
            if (j >= 0) {
                randomAccessFile.seek(j);
                if (randomAccessFile.readInt() == 1347094023) {
                    throw new m1("ZIP64 APK not supported");
                }
            }
            m2385Z2(byteBuffer);
            long j2 = byteBuffer.getInt(byteBuffer.position() + 16) & 4294967295L;
            if (j2 >= longValue) {
                StringBuilder sb2 = new StringBuilder(122);
                sb2.append("ZIP Central Directory offset out of range: ");
                sb2.append(j2);
                sb2.append(". ZIP End of Central Directory offset: ");
                sb2.append(longValue);
                throw new m1(sb2.toString());
            }
            m2385Z2(byteBuffer);
            if ((byteBuffer.getInt(byteBuffer.position() + 12) & 4294967295L) + j2 != longValue) {
                throw new m1("ZIP Central Directory is not immediately followed by End of Central Directory");
            }
            if (j2 < 32) {
                StringBuilder sb3 = new StringBuilder(87);
                sb3.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                sb3.append(j2);
                throw new m1(sb3.toString());
            }
            ByteBuffer allocate = ByteBuffer.allocate(24);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            allocate.order(byteOrder);
            randomAccessFile.seek(j2 - allocate.capacity());
            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
            if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                throw new m1("No APK Signing Block before ZIP Central Directory");
            }
            long j3 = allocate.getLong(0);
            if (j3 < allocate.capacity() || j3 > 2147483639) {
                StringBuilder sb4 = new StringBuilder(57);
                sb4.append("APK Signing Block size out of range: ");
                sb4.append(j3);
                throw new m1(sb4.toString());
            }
            int i2 = (int) (8 + j3);
            long j4 = j2 - i2;
            if (j4 < 0) {
                StringBuilder sb5 = new StringBuilder(59);
                sb5.append("APK Signing Block offset out of range: ");
                sb5.append(j4);
                throw new m1(sb5.toString());
            }
            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
            allocate2.order(byteOrder);
            randomAccessFile.seek(j4);
            randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
            long j5 = allocate2.getLong(0);
            if (j5 != j3) {
                StringBuilder sb6 = new StringBuilder(103);
                sb6.append("APK Signing Block sizes in header and footer do not match: ");
                sb6.append(j5);
                sb6.append(" vs ");
                sb6.append(j3);
                throw new m1(sb6.toString());
            }
            Pair create = Pair.create(allocate2, Long.valueOf(j4));
            ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
            long longValue2 = ((Long) create.second).longValue();
            if (byteBuffer2.order() != byteOrder) {
                throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
            }
            int capacity = byteBuffer2.capacity() - 24;
            if (capacity < 8) {
                StringBuilder sb7 = new StringBuilder(38);
                sb7.append("end < start: ");
                sb7.append(capacity);
                sb7.append(" < ");
                sb7.append(8);
                throw new IllegalArgumentException(sb7.toString());
            }
            int capacity2 = byteBuffer2.capacity();
            if (capacity > byteBuffer2.capacity()) {
                StringBuilder sb8 = new StringBuilder(41);
                sb8.append("end > capacity: ");
                sb8.append(capacity);
                sb8.append(" > ");
                sb8.append(capacity2);
                throw new IllegalArgumentException(sb8.toString());
            }
            int limit = byteBuffer2.limit();
            int position = byteBuffer2.position();
            byteBuffer2.position(0);
            byteBuffer2.limit(capacity);
            byteBuffer2.position(8);
            ByteBuffer slice = byteBuffer2.slice();
            slice.order(byteBuffer2.order());
            byteBuffer2.position(0);
            byteBuffer2.limit(limit);
            byteBuffer2.position(position);
            while (slice.hasRemaining()) {
                i++;
                if (slice.remaining() < 8) {
                    StringBuilder sb9 = new StringBuilder(70);
                    sb9.append("Insufficient data to read size of APK Signing Block entry #");
                    sb9.append(i);
                    throw new m1(sb9.toString());
                }
                long j6 = slice.getLong();
                if (j6 < 4 || j6 > 2147483647L) {
                    StringBuilder sb10 = new StringBuilder(76);
                    sb10.append("APK Signing Block entry #");
                    sb10.append(i);
                    sb10.append(" size out of range: ");
                    sb10.append(j6);
                    throw new m1(sb10.toString());
                }
                int i3 = (int) j6;
                int position2 = slice.position();
                if (i3 > slice.remaining()) {
                    int remaining = slice.remaining();
                    StringBuilder sb11 = new StringBuilder(91);
                    sb11.append("APK Signing Block entry #");
                    sb11.append(i);
                    sb11.append(" size out of range: ");
                    sb11.append(i3);
                    sb11.append(", available: ");
                    sb11.append(remaining);
                    throw new m1(sb11.toString());
                } else if (slice.getInt() == 1896449818) {
                    X509Certificate[][] m2355f3 = m2355f3(randomAccessFile.getChannel(), new l1(m2405U2(slice, i3 - 4), longValue2, j2, longValue, byteBuffer));
                    randomAccessFile.close();
                    try {
                        randomAccessFile.close();
                    } catch (IOException e) {
                    }
                    return m2355f3;
                } else {
                    slice.position(position2 + i3);
                }
            }
            throw new m1("No APK Signature Scheme v2 block in APK Signing Block");
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (IOException e2) {
            }
            throw th;
        }
    }

    /* renamed from: y */
    public static void m2282y(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    /* renamed from: y0 */
    public static String m2281y0(Context context, String str, String str2) {
        return m2297u0(context).getString(str, str2);
    }

    /* renamed from: y1 */
    public static PorterDuff.Mode m2280y1(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* renamed from: y2 */
    public static int m2279y2(int i) {
        for (int i2 = 0; i2 < 6; i2++) {
            int i3 = new int[]{1, 2, 3, 4, 5, 6}[i2];
            if (i3 == 0) {
                throw null;
            }
            if (i3 - 1 == i) {
                return i3;
            }
        }
        return 1;
    }

    @EnsuresNonNull({"#1"})
    /* renamed from: z */
    public static <T> T m2278z(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalStateException();
    }

    /* renamed from: z0 */
    public static String m2277z0(Context context, String str, String str2, String str3) {
        return m2293v0(context, str).getString(str2, str3);
    }

    /* renamed from: z1 */
    public static C24404b m2276z1(C24353e c24353e) throws IOException, InterruptedException {
        C24405c c24405c;
        byte[] bArr;
        Objects.requireNonNull(c24353e);
        C24798t c24798t = new C24798t(16);
        if (C24405c.m5158a(c24353e, c24798t).f68088a != 1380533830) {
            return null;
        }
        c24353e.m5210e(c24798t.f69504a, 0, 4, false);
        c24798t.m4547C(0);
        if (c24798t.m4541e() != 1463899717) {
            return null;
        }
        C24405c m5158a = C24405c.m5158a(c24353e, c24798t);
        while (true) {
            c24405c = m5158a;
            if (c24405c.f68088a == 1718449184) {
                break;
            }
            c24353e.m5214a((int) c24405c.f68089b, false);
            m5158a = C24405c.m5158a(c24353e, c24798t);
        }
        m2286x(c24405c.f68089b >= 16);
        c24353e.m5210e(c24798t.f69504a, 0, 16, false);
        c24798t.m4547C(0);
        int m4536j = c24798t.m4536j();
        int m4536j2 = c24798t.m4536j();
        int m4537i = c24798t.m4537i();
        int m4537i2 = c24798t.m4537i();
        int m4536j3 = c24798t.m4536j();
        int m4536j4 = c24798t.m4536j();
        int i = ((int) c24405c.f68089b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            c24353e.m5210e(bArr2, 0, i, false);
            bArr = bArr2;
        } else {
            bArr = C24773d0.f69432f;
        }
        return new C24404b(m4536j, m4536j2, m4537i, m4537i2, m4536j3, m4536j4, bArr);
    }

    /* renamed from: z2 */
    public static int m2275z2(int i) {
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException(C22128a.m8690L1(44, "Unknown content digest algorthm: ", i));
            }
            return 64;
        }
        return 32;
    }
}
