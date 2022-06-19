package p124i4;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.AppOpsManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.widget.AbstractC0241i1;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.C0608b;
import com.applovin.mediation.C1564R;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.regex.Pattern;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0033h;
import p008a7.C0042i;
import p008a7.EnumC0040g;
import p026c0.C0785f;
import p029c4.C0820d;
import p029c4.C0822f;
import p029c4.C0826h;
import p029c4.C0834l;
import p068d2.AbstractC2161a;
import p068d2.C2396r1;
import p068d2.C2432w1;
import p087f0.C2694a;
import p148k7.AbstractC3356j;
import p148k7.AbstractC3360m;
import p148k7.AbstractC3362o;
import p148k7.C3358l;
import p148k7.C3381z;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
import p163m0.C3589v;
import p163m0.C3611y;
import p203p8.AbstractC4071h;
import p230s3.C4285a;
import p266v7.AbstractC4653a;
import p278w8.C4778i;
import p278w8.C4788o;
import p287x6.AbstractC4890c;
import p289x8.AbstractC4932a;
import p297y6.C5011a;
import p304z3.C5070b;
/* renamed from: i4.d */
/* loaded from: classes-dex2jar.jar:i4/d.class */
public class C3102d implements AbstractC4071h, AbstractC2161a {

    /* renamed from: a */
    public static C3103e f10497a;

    /* renamed from: g */
    public static final /* synthetic */ int f10503g = 0;

    /* renamed from: n */
    public static C3102d f10510n;

    /* renamed from: b */
    public static final int[] f10498b = {16843173, 16843551, 16844359, 2130968624, 2130969163};

    /* renamed from: c */
    public static final int[] f10499c = {2130969063, 2130969064, 2130969065, 2130969066, 2130969067, 2130969068, C1564R.attr.fontProviderSystemFontFamily};

    /* renamed from: d */
    public static final int[] f10500d = {16844082, 16844083, 16844095, 16844143, 16844144, 2130969061, 2130969070, 2130969071, 2130969072, 2130969812};

    /* renamed from: e */
    public static final int[] f10501e = {16843165, 16843166, 16843169, 16843170, 16843171, 16843172, 16843265, 16843275, 16844048, 16844049, 16844050, 16844051};

    /* renamed from: f */
    public static final int[] f10502f = {16843173, 16844052};

    /* renamed from: h */
    public static final float[][] f10504h = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: i */
    public static final float[][] f10505i = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: j */
    public static final float[] f10506j = {95.047f, 100.0f, 108.883f};

    /* renamed from: k */
    public static final float[][] f10507k = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* renamed from: l */
    public static final int[] f10508l = {2130968746, 2130968747, 2130969562, 2130969563};

    /* renamed from: m */
    public static final int[] f10509m = {C3681R.attr.elevation};

    /* renamed from: o */
    public static final int[] f10511o = {16842755, 16842960, 16842961};

    /* renamed from: p */
    public static final int[] f10512p = {16842755, 16842961};

    public /* synthetic */ C3102d() {
    }

    public /* synthetic */ C3102d(C2396r1 c2396r1) {
    }

    /* renamed from: A */
    public static boolean m2651A(String str) {
        return str != null && !str.equals("") && str.length() > 0;
    }

    /* renamed from: B */
    public static int m2650B(int i, int i2, float f) {
        return C2694a.m3257b(C2694a.m3254e(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    /* renamed from: C */
    public static float m2649C(int i) {
        float f = i / 255.0f;
        return (f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* renamed from: D */
    public static InputConnection m2648D(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (viewParent instanceof AbstractC0241i1) {
                    editorInfo.hintText = ((AbstractC0241i1) viewParent).m8487a();
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        return inputConnection;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: E */
    public static void m2647E(AnimatorSet animatorSet, List list) {
        int size = list.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) list.get(i);
            c = Math.max((long) c, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration((long) c);
        list.add(0, ofInt);
        animatorSet.playTogether(list);
    }

    /* renamed from: F */
    public static C4788o m2646F(AbstractC4932a... abstractC4932aArr) {
        return new C4788o(C4778i.m476k(abstractC4932aArr));
    }

    /* renamed from: G */
    public static void m2645G(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C0822f) {
            C0822f c0822f = (C0822f) background;
            C0822f.C0824b c0824b = c0822f.f3010a;
            if (c0824b.f3048o == f) {
                return;
            }
            c0824b.f3048o = f;
            c0822f.m7307x();
        }
    }

    /* renamed from: H */
    public static void m2644H(View view, C0822f c0822f) {
        C4285a c4285a = c0822f.f3010a.f3035b;
        if (c4285a != null && c4285a.f13449a) {
            float f = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                f += C3589v.C3598i.m2042i((View) parent);
            }
            C0822f.C0824b c0824b = c0822f.f3010a;
            if (c0824b.f3047n == f) {
                return;
            }
            c0824b.f3047n = f;
            c0822f.m7307x();
        }
    }

    /* renamed from: I */
    public static void m2643I(AbstractC3362o abstractC3362o, byte[] bArr, AbstractC3510a abstractC3510a) {
        ByteBuffer m2342k = C3358l.m2342k(bArr.length);
        m2342k.put(bArr);
        m2342k.flip();
        C3358l c3358l = new C3358l();
        c3358l.m2352a(m2342k);
        C3381z c3381z = new C3381z(abstractC3362o, c3358l, abstractC3510a);
        abstractC3362o.mo1478m(c3381z);
        c3381z.mo148f();
    }

    /* renamed from: J */
    public static float m2642J(float f) {
        return (f > 8.0f ? (float) Math.pow((f + 16.0d) / 116.0d, 3.0d) : f / 903.2963f) * 100.0f;
    }

    /* renamed from: K */
    public static String m2641K(File file) {
        if (file.getName().endsWith(".apk")) {
            String replaceFirst = file.getName().replaceFirst("(_\\d+)?\\.apk", "");
            return (replaceFirst.equals("base-master") || replaceFirst.equals("base-main")) ? "" : replaceFirst.startsWith("base-") ? replaceFirst.replace("base-", "config.") : replaceFirst.replace("-", ".config.").replace(".config.master", "").replace(".config.main", "");
        }
        throw new IllegalArgumentException("Non-apk found in splits directory.");
    }

    /* renamed from: L */
    public static String m2640L(String str, String str2) {
        return C0608b.m7625j(new StringBuilder(C0033h.m8889h(str, 1, String.valueOf(str2).length())), str, ":", str2);
    }

    /* renamed from: M */
    public static String m2639M(String str, String str2, String str3) {
        int length = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(str.length() + 2 + length + String.valueOf(str3).length());
        C0082b.m8749m(sb, str, ":", str2, ":");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: a */
    public static void m2638a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: b */
    public static void m2637b(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            return;
        }
        throw new IllegalArgumentException(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:193:0x0609, code lost:
        if (r0[r16].f14035f.f14033d == r18) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02c1, code lost:
        if (r0[r0].f14035f.f14033d == r24) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0e5d  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0e7f  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0f97 A[SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2636c(p258v.C4567e r10, p237t.C4344d r11, java.util.ArrayList r12, int r13) {
        /*
            Method dump skipped, instructions count: 4009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p124i4.C3102d.m2636c(v.e, t.d, java.util.ArrayList, int):void");
    }

    /* renamed from: d */
    public static void m2635d(C0042i c0042i) {
        if (!c0042i.f94g) {
            return;
        }
        throw new IllegalStateException("AdSession is finished");
    }

    /* renamed from: e */
    public static void m2634e(Object obj, StringBuilder sb) {
        if (obj == null) {
            sb.append("null");
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

    /* renamed from: f */
    public static void m2633f(C0042i c0042i) {
        if (c0042i.f93f) {
            if (c0042i.f94g) {
                throw new IllegalStateException("AdSession is finished");
            }
            return;
        }
        throw new IllegalStateException("AdSession is not started");
    }

    /* renamed from: g */
    public static void m2632g(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: h */
    public static void m2631h(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    /* renamed from: i */
    public static int m2630i(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: j */
    public static int m2629j(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str);
    }

    /* renamed from: k */
    public static Object m2628k(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    /* renamed from: l */
    public static int m2627l(Context context, String str) {
        int i;
        int i2;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) != -1) {
            int i3 = Build.VERSION.SDK_INT;
            String permissionToOp = i3 >= 23 ? AppOpsManager.permissionToOp(str) : null;
            if (permissionToOp == null) {
                i = 0;
            } else {
                String str2 = packageName;
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        str2 = packagesForUid[0];
                    }
                }
                if (!(Process.myUid() == myUid && Objects.equals(context.getPackageName(), str2))) {
                    i2 = C0785f.m7379a(context, permissionToOp, str2);
                } else if (i3 >= 29) {
                    AppOpsManager m7376c = C0785f.C0786a.m7376c(context);
                    i2 = C0785f.C0786a.m7378a(m7376c, permissionToOp, Binder.getCallingUid(), str2);
                    if (i2 == 0) {
                        i2 = C0785f.C0786a.m7378a(m7376c, permissionToOp, myUid, C0785f.C0786a.m7377b(context));
                    }
                } else {
                    i2 = C0785f.m7379a(context, permissionToOp, str2);
                }
                i = i2 == 0 ? 0 : -2;
            }
            return i;
        }
        i = -1;
        return i;
    }

    /* renamed from: m */
    public static void m2626m(boolean z, String str) {
        if (z) {
            return;
        }
        throw new IllegalStateException(str);
    }

    /* renamed from: n */
    public static C3102d m2625n(int i) {
        if (i != 0 && i == 1) {
            return new C0820d();
        }
        return new C0826h();
    }

    /* renamed from: o */
    public static boolean m2624o(File file) {
        File[] listFiles;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    m2624o(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    /* renamed from: p */
    public static void m2623p(AbstractC3360m abstractC3360m, C3358l c3358l) {
        AbstractC3513c abstractC3513c = null;
        while (!abstractC3360m.mo938e()) {
            AbstractC3513c mo935i = abstractC3360m.mo935i();
            abstractC3513c = mo935i;
            if (mo935i == null) {
                break;
            }
            int i = c3358l.f11382c;
            abstractC3513c = mo935i;
            if (i <= 0) {
                break;
            }
            mo935i.mo1099c(abstractC3360m, c3358l);
            abstractC3513c = mo935i;
            if (i == c3358l.f11382c) {
                abstractC3513c = mo935i;
                if (mo935i != abstractC3360m.mo935i()) {
                    continue;
                } else if (!abstractC3360m.mo938e()) {
                    System.out.println("handler: " + mo935i);
                    c3358l.m2339n();
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                } else {
                    abstractC3513c = mo935i;
                }
            }
        }
        if (c3358l.f11382c == 0 || abstractC3360m.mo938e()) {
            return;
        }
        System.out.println("handler: " + abstractC3513c);
        System.out.println("emitter: " + abstractC3360m);
        c3358l.m2339n();
    }

    /* renamed from: q */
    public static String m2622q(AbstractC4890c abstractC4890c) {
        StringBuilder sb = new StringBuilder(abstractC4890c.size());
        for (int i = 0; i < abstractC4890c.size(); i++) {
            byte mo278a = abstractC4890c.mo278a(i);
            if (mo278a == 34) {
                sb.append("\\\"");
            } else if (mo278a == 39) {
                sb.append("\\'");
            } else if (mo278a != 92) {
                switch (mo278a) {
                    case 7:
                        sb.append("\\a");
                        continue;
                    case 8:
                        sb.append("\\b");
                        continue;
                    case 9:
                        sb.append("\\t");
                        continue;
                    case 10:
                        sb.append("\\n");
                        continue;
                    case 11:
                        sb.append("\\v");
                        continue;
                    case 12:
                        sb.append("\\f");
                        continue;
                    case 13:
                        sb.append("\\r");
                        continue;
                    default:
                        if (mo278a < 32 || mo278a > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo278a >>> 6) & 3) + 48));
                            sb.append((char) (((mo278a >>> 3) & 7) + 48));
                            sb.append((char) ((mo278a & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo278a);
                            continue;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: r */
    public static void m2621r(C0042i c0042i) {
        if (EnumC0040g.NATIVE == c0042i.f89b.f49a) {
            return;
        }
        throw new IllegalStateException("Impression event is not expected from the Native AdSession");
    }

    /* renamed from: s */
    public static int m2620s(Context context, int i, int i2) {
        TypedValue m75a = C5070b.m75a(context, i);
        return m75a != null ? m75a.data : i2;
    }

    /* renamed from: t */
    public static int m2619t(View view, int i) {
        return C5070b.m73c(view.getContext(), i, view.getClass().getCanonicalName());
    }

    /* renamed from: v */
    public static TextView m2617v(Toolbar toolbar, CharSequence charSequence) {
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

    /* renamed from: w */
    public static AbstractC3356j m2616w(AbstractC3356j abstractC3356j, Class cls) {
        AbstractC3356j abstractC3356j2 = abstractC3356j;
        if (cls.isInstance(abstractC3356j)) {
            return abstractC3356j;
        }
        while (abstractC3356j2 instanceof AbstractC4653a) {
            AbstractC3356j mo680d = ((AbstractC4653a) abstractC3356j2).mo680d();
            abstractC3356j2 = mo680d;
            if (cls.isInstance(mo680d)) {
                return mo680d;
            }
        }
        return null;
    }

    /* renamed from: x */
    public static String m2615x(String str, String str2) {
        Pattern pattern = C5011a.f15261a;
        String str3 = "<script type=\"text/javascript\">" + str + "</script>";
        m2637b(str2, "HTML is null or empty");
        ArrayList arrayList = new ArrayList();
        int length = str2.length();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            int indexOf = str2.indexOf("<!--", i2);
            if (indexOf >= 0) {
                int indexOf2 = str2.indexOf("-->", indexOf);
                int[] iArr = new int[2];
                if (indexOf2 >= 0) {
                    iArr[0] = indexOf;
                    iArr[1] = indexOf2;
                    arrayList.add(iArr);
                    i = indexOf2 + 3;
                } else {
                    iArr[0] = indexOf;
                    iArr[1] = length;
                    arrayList.add(iArr);
                }
            }
            i = length;
        }
        int[][] iArr2 = (int[][]) arrayList.toArray(new int[0][2]);
        StringBuilder sb = new StringBuilder(C0033h.m8889h(str3, str2.length(), 16));
        return (!C5011a.m139c(str2, sb, C5011a.f15262b, str3, iArr2) && !C5011a.m140b(str2, sb, C5011a.f15261a, str3, iArr2) && !C5011a.m139c(str2, sb, C5011a.f15264d, str3, iArr2) && !C5011a.m140b(str2, sb, C5011a.f15263c, str3, iArr2) && !C5011a.m139c(str2, sb, C5011a.f15266f, str3, iArr2) && !C5011a.m140b(str2, sb, C5011a.f15265e, str3, iArr2) && !C5011a.m140b(str2, sb, C5011a.f15267g, str3, iArr2)) ? C1676a.m4789h(str3, str2) : sb.toString();
    }

    /* renamed from: y */
    public static int m2614y(float f) {
        if (f < 1.0f) {
            return -16777216;
        }
        if (f > 99.0f) {
            return -1;
        }
        float f2 = (f + 16.0f) / 116.0f;
        float f3 = (f > 8.0f ? 1 : (f == 8.0f ? 0 : -1)) > 0 ? f2 * f2 * f2 : f / 903.2963f;
        float f4 = f2 * f2 * f2;
        boolean z = f4 > 0.008856452f;
        float f5 = z ? f4 : ((f2 * 116.0f) - 16.0f) / 903.2963f;
        if (!z) {
            f4 = ((f2 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f10506j;
        return C2694a.m3258a(f5 * fArr[0], f3 * fArr[1], f4 * fArr[2]);
    }

    /* renamed from: z */
    public static boolean m2613z(int i) {
        return Math.sqrt((((double) (Color.blue(i) * Color.blue(i))) * 0.068d) + ((((double) (Color.green(i) * Color.green(i))) * 0.691d) + ((Color.red(i) * Color.red(i)) * 0.241d))) > 130.0d;
    }

    @Override // p068d2.AbstractC2161a
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        C2432w1 c2432w1 = (C2432w1) obj;
    }

    @Override // p203p8.AbstractC4071h
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        int i = intValue >> 24;
        int i2 = (intValue >> 16) & 255;
        int i3 = (intValue >> 8) & 255;
        int i4 = intValue & 255;
        int intValue2 = ((Integer) obj2).intValue();
        return Integer.valueOf(((i + ((int) (((intValue2 >> 24) - i) * f))) << 24) | ((i2 + ((int) ((((intValue2 >> 16) & 255) - i2) * f))) << 16) | ((i3 + ((int) ((((intValue2 >> 8) & 255) - i3) * f))) << 8) | (i4 + ((int) (f * ((intValue2 & 255) - i4)))));
    }

    /* renamed from: u */
    public void mo2618u(C0834l c0834l, float f, float f2, float f3) {
        throw null;
    }
}
