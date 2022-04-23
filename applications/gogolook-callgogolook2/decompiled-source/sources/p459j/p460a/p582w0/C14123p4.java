package p459j.p460a.p582w0;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.Window;
import android.widget.TextView;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import p626l.C14978j;
/* renamed from: j.a.w0.p4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/p4.class */
public class C14123p4 {

    /* renamed from: a */
    public static SimpleDateFormat f31625a = new SimpleDateFormat("yyyy/MM/dd EEE HH:mm", Locale.getDefault());

    /* renamed from: b */
    public static SimpleDateFormat f31626b = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault());

    /* renamed from: c */
    public static SimpleDateFormat f31627c = new SimpleDateFormat("HH:mm", Locale.getDefault());

    /* renamed from: d */
    public static SimpleDateFormat f31628d = new SimpleDateFormat("MM/dd HH:mm", Locale.getDefault());

    /* renamed from: e */
    public static SimpleDateFormat f31629e = new SimpleDateFormat("HH:mm", Locale.getDefault());

    /* renamed from: f */
    public static SimpleDateFormat f31630f = new SimpleDateFormat("MM/dd", Locale.getDefault());

    /* renamed from: g */
    public static final String[] f31631g = {"00:00", "00:30", "01:00", "01:30", "02:00", "02:30", "03:00", "03:30", "04:00", "04:30", "05:00", "05:30", "06:00", "06:30", "07:00", "07:30", "08:00", "08:30", "09:00", "09:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30", "20:00", "20:30", "21:00", "21:30", "22:00", "22:30", "23:00", "23:30", "24:00"};

    /* renamed from: h */
    public static String[] f31632h = {C14206w4.m2225a((int) R$string.sunday), C14206w4.m2225a((int) R$string.monday), C14206w4.m2225a((int) R$string.tuesday), C14206w4.m2225a((int) R$string.wednsday), C14206w4.m2225a((int) R$string.thursday), C14206w4.m2225a((int) R$string.friday), C14206w4.m2225a((int) R$string.saturday)};

    /* renamed from: i */
    public static int[] f31633i = {1, 2, 3, 4, 5, 6, 0};

    /* renamed from: j.a.w0.p4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p4$a.class */
    public static final class RunnableC14124a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31634a;

        /* renamed from: b */
        public final /* synthetic */ TextView f31635b;

        /* renamed from: c */
        public final /* synthetic */ long f31636c;

        /* renamed from: d */
        public final /* synthetic */ int f31637d;

        /* renamed from: e */
        public final /* synthetic */ long f31638e;

        public RunnableC14124a(Context context, TextView textView, long j, int i, long j2) {
            this.f31634a = context;
            this.f31635b = textView;
            this.f31636c = j;
            this.f31637d = i;
            this.f31638e = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C14123p4.m2444a(this.f31634a, this.f31635b, this.f31636c, this.f31637d, this.f31638e);
        }
    }

    /* renamed from: a */
    public static int m2449a(int i) {
        return C14167t.m2310f() == i ? C14167t.m2315a(2131100101) : m2448a(i, 0.9f);
    }

    /* renamed from: a */
    public static int m2448a(int i, float f) {
        return Color.argb(255, Math.round(Color.red(i) * f), Math.round(Color.green(i) * f), Math.round(Color.blue(i) * f));
    }

    /* renamed from: a */
    public static int m2446a(Context context) {
        int i;
        if (context instanceof WhoscallActivity) {
            i = ((WhoscallActivity) context).mo27893h();
        } else if (context instanceof WhoscallFragmentActivity) {
            i = ((WhoscallFragmentActivity) context).m28669F();
        } else if (context instanceof MainActivity) {
            i = ((MainActivity) context).m27880J();
        } else {
            if (context == null) {
                context = MyApplication.m29013o();
            }
            i = ContextCompat.getColor(context, 2131100101);
        }
        return i;
    }

    /* renamed from: a */
    public static int m2441a(RowInfo rowInfo, boolean z) {
        return m2449a(CallUtils.m26582a(rowInfo, z));
    }

    /* renamed from: a */
    public static Spannable m2438a(String str, String str2, int i) {
        SpannableString spannableString = new SpannableString(str);
        int indexOf = str.indexOf(str2);
        spannableString.setSpan(new ForegroundColorSpan(i), indexOf, str2.length() + indexOf, 33);
        return spannableString;
    }

    /* renamed from: a */
    public static Long m2450a() {
        return Long.valueOf(m2426c().longValue() - 604800000);
    }

    /* renamed from: a */
    public static String m2447a(long j) {
        MyApplication.m29013o();
        long j2 = j / 3600;
        long j3 = (j % 3600) / 60;
        long j4 = j % 60;
        StringBuffer stringBuffer = new StringBuffer();
        if (j2 != 0) {
            if (j3 >= 10) {
                stringBuffer.append(j2);
                stringBuffer.append(m2432b((int) R$string.hour));
            } else if (j3 != 0) {
                stringBuffer.append(j2);
                stringBuffer.append(m2432b((int) R$string.hour) + "0");
            } else if (j4 >= 10) {
                stringBuffer.append(j2);
                stringBuffer.append(m2432b((int) R$string.hour) + "00" + m2432b((int) R$string.minute));
            } else {
                stringBuffer.append(j2);
                stringBuffer.append(m2432b((int) R$string.hour) + "00" + m2432b((int) R$string.minute) + "0");
            }
        }
        if (j3 != 0) {
            if (j4 >= 10) {
                stringBuffer.append(j3);
                stringBuffer.append(m2432b((int) R$string.minute));
            } else {
                stringBuffer.append(j3);
                stringBuffer.append(m2432b((int) R$string.minute) + "0");
            }
        }
        stringBuffer.append(j4);
        stringBuffer.append(m2432b((int) R$string.second));
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static String m2440a(Long l) {
        if (l == null || -1 == l.longValue()) {
            return null;
        }
        return l.longValue() > m2426c().longValue() ? m2420d(l.longValue()) : l.longValue() > m2421d().longValue() ? C14206w4.m2225a((int) R$string.calllog_session_yesterday) : m2419e(l.longValue());
    }

    /* renamed from: a */
    public static String m2439a(String str) {
        return str.equals("6") ? "0" : String.valueOf(Integer.valueOf(str).intValue() + 1);
    }

    /* renamed from: a */
    public static String m2435a(Map<String, Long> map, String str, boolean z) {
        boolean z2;
        if (map == null || map.get(str) == null) {
            return null;
        }
        String b = m2428b(str);
        String a = m2439a(str);
        int i = 0;
        if (z) {
            long longValue = map.get(b).longValue();
            long[] jArr = NumberInfo.HOURJ_ARRAY;
            if ((jArr[jArr.length - 1] & longValue) != 0) {
                for (int i2 = 0; i2 < 24; i2++) {
                    if ((NumberInfo.HOURJ_ARRAY[i2] & longValue) == 0) {
                        z2 = true;
                        break;
                    }
                }
            }
        }
        z2 = false;
        StringBuilder sb = new StringBuilder();
        long longValue2 = map.get(str).longValue();
        int i3 = 0;
        int i4 = -1;
        while (true) {
            long[] jArr2 = NumberInfo.HOURJ_ARRAY;
            if (i3 >= jArr2.length) {
                break;
            }
            if ((jArr2[i3] & longValue2) != 0) {
                z2 = z2;
                i4 = i4;
                if (!z2) {
                    i4 = i3;
                    z2 = true;
                }
            } else {
                z2 = z2;
                i4 = i4;
                if (z2) {
                    i4 = i4;
                    if (i4 == -1) {
                        i4 = i4;
                        if (i3 >= 24) {
                            i4 = 0;
                        }
                    }
                    if (i4 != -1) {
                        m2437a(sb);
                        sb.append(f31631g[i4]);
                        sb.append("-");
                        sb.append(f31631g[i3]);
                    }
                    z2 = false;
                }
            }
            i3++;
        }
        if (z2) {
            if (i4 == -1) {
                m2437a(sb);
                sb.append(f31631g[0]);
                sb.append("-");
                String[] strArr = f31631g;
                sb.append(strArr[strArr.length - 1]);
            } else {
                m2437a(sb);
                sb.append(f31631g[i4]);
                sb.append("-");
                if (!z || i4 == 0) {
                    String[] strArr2 = f31631g;
                    sb.append(strArr2[strArr2.length - 1]);
                } else {
                    long longValue3 = map.get(a).longValue();
                    while (true) {
                        long[] jArr3 = NumberInfo.HOURJ_ARRAY;
                        if (i >= jArr3.length) {
                            break;
                        } else if ((jArr3[i] & longValue3) != 0) {
                            if (i >= 24) {
                                String[] strArr3 = f31631g;
                                sb.append(strArr3[strArr3.length - 1]);
                                break;
                            }
                            i++;
                        } else if (i == 0) {
                            String[] strArr4 = f31631g;
                            sb.append(strArr4[strArr4.length - 1]);
                        } else {
                            sb.append(f31631g[i]);
                        }
                    }
                }
            }
        }
        return sb.length() > 0 ? sb.toString() : m2432b((int) R$string.ndp_hour_detail_close);
    }

    /* renamed from: a */
    public static String m2434a(Map<String, Long> map, boolean z) {
        Calendar instance = Calendar.getInstance();
        int i = instance.get(7);
        int i2 = instance.get(11);
        int i3 = instance.get(12);
        String valueOf = String.valueOf(i - 1);
        int i4 = i3 / 30;
        if (z && i2 < 12 && map != null) {
            long longValue = map.get(m2428b(valueOf)).longValue();
            long[] jArr = NumberInfo.HOURJ_ARRAY;
            boolean z2 = (longValue & jArr[jArr.length - 1]) != 0;
            Long l = map.get(valueOf);
            boolean z3 = false;
            for (int i5 = 0; i5 < 24 && !z3; i5++) {
                z2 = z2;
                if ((l.longValue() & NumberInfo.HOURJ_ARRAY[i5]) == 0) {
                    if (i5 < (i2 * 2) + i4) {
                        z2 = false;
                    }
                    z3 = true;
                }
            }
            if (z2 && z3) {
                return m2428b(valueOf);
            }
        }
        return valueOf;
    }

    /* renamed from: a */
    public static void m2445a(Context context, Window window) {
        if (Build.VERSION.SDK_INT >= 21) {
            m2442a(window, m2448a(m2446a(context), 0.40499997f));
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m2444a(Context context, TextView textView, long j, int i, long j2) {
        String str;
        String str2;
        long currentTimeMillis = System.currentTimeMillis();
        long j3 = currentTimeMillis - j;
        if (i > 1) {
            str = "(" + i + ") ";
        } else {
            str = "";
        }
        boolean z = true;
        RunnableC14124a aVar = new RunnableC14124a(context, textView, j, i, j2);
        if (j2 < 0 || j2 >= TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS) {
            str2 = "";
        } else {
            str2 = UserProfile.CARD_CATE_SEPARATOR + String.format(m2432b((int) R$string.callend_onering_desc), Long.valueOf((j2 / 1000) + 1));
        }
        if (j3 < 60000) {
            textView.setText(str + String.format(m2432b((int) R$string.calldialog_callhistory_1hour), 0) + str2);
            textView.postDelayed(aVar, 60000L);
        } else if (j3 < 120000) {
            textView.setText(str + m2432b((int) R$string.calldialog_callhistory_1min) + str2);
            textView.postDelayed(aVar, 60000L);
        } else if (j3 < 3600000) {
            textView.setText(str + String.format(m2432b((int) R$string.calldialog_callhistory_1hour), Long.valueOf((j3 / 1000) / 60)) + str2);
            textView.postDelayed(aVar, 60000L);
        } else {
            Calendar instance = Calendar.getInstance();
            Calendar instance2 = Calendar.getInstance();
            instance.setTime(new Date(currentTimeMillis));
            instance2.setTime(new Date(j));
            if (instance.get(1) != instance2.get(1) || instance.get(6) != instance2.get(6)) {
                z = false;
            }
            String format = f31629e.format(new Date(j));
            String format2 = f31628d.format(new Date(j));
            if (z) {
                textView.setText(str + format + str2);
                return;
            }
            textView.setText(str + format2 + str2);
        }
    }

    /* renamed from: a */
    public static void m2443a(SpannableStringBuilder spannableStringBuilder, SpannableStringBuilder spannableStringBuilder2, Map<String, Long> map, int i, int i2) {
        int length = spannableStringBuilder.length();
        int length2 = spannableStringBuilder2.length();
        spannableStringBuilder.append((CharSequence) f31632h[i2]);
        String a = m2435a(map, String.valueOf(i2), true);
        if (a != null) {
            String[] split = a.split(",");
            for (int i3 = 0; i3 < split.length; i3++) {
                spannableStringBuilder2.append((CharSequence) split[i3]);
                if (i3 != split.length - 1) {
                    spannableStringBuilder2.append("\n");
                    spannableStringBuilder.append("\n");
                }
            }
        } else {
            spannableStringBuilder2.append((CharSequence) C14206w4.m2225a((int) R$string.openhour_desc_closed));
        }
        if (i2 != 0) {
            spannableStringBuilder2.append("\n");
            spannableStringBuilder.append("\n");
        }
        if (i2 == i) {
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(C14167t.m2312d());
            StyleSpan styleSpan = new StyleSpan(0);
            spannableStringBuilder.setSpan(styleSpan, length, spannableStringBuilder.length(), 33);
            spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 33);
            spannableStringBuilder2.setSpan(styleSpan, length2, spannableStringBuilder2.length(), 33);
            spannableStringBuilder2.setSpan(foregroundColorSpan, length2, spannableStringBuilder2.length(), 33);
        }
    }

    /* renamed from: a */
    public static void m2442a(Window window, int i) {
        if (C14017g4.m2805s()) {
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
        }
    }

    /* renamed from: a */
    public static void m2437a(StringBuilder sb) {
        if (sb.length() > 0 && sb.charAt(sb.length() - 1) != ',') {
            sb.append(",");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannableStringBuilder[] m2436a(java.util.Map<java.lang.String, java.lang.Long> r7) {
        /*
            r0 = r7
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = 0
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x000a:
            r0 = r10
            r1 = 6
            if (r0 >= r1) goto L_0x003d
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = r10
            java.lang.String r1 = java.lang.String.valueOf(r1)
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0034
            r0 = r8
            r1 = r7
            r2 = r10
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.Object r1 = r1.get(r2)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            long r0 = r0 + r1
            r11 = r0
        L_0x0034:
            int r10 = r10 + 1
            r0 = r11
            r8 = r0
            goto L_0x000a
        L_0x003d:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0045
            r0 = 0
            return r0
        L_0x0045:
            r0 = r7
            r1 = r7
            boolean r1 = m2422c(r1)
            java.lang.String r0 = m2434a(r0, r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            int r0 = r0.intValue()
            r13 = r0
            android.text.SpannableStringBuilder r0 = new android.text.SpannableStringBuilder
            r1 = r0
            r1.<init>()
            r14 = r0
            android.text.SpannableStringBuilder r0 = new android.text.SpannableStringBuilder
            r1 = r0
            r1.<init>()
            r15 = r0
            int[] r0 = p459j.p460a.p582w0.C14123p4.f31633i
            r16 = r0
            r0 = r16
            int r0 = r0.length
            r17 = r0
            r0 = 0
            r10 = r0
        L_0x0073:
            r0 = r10
            r1 = r17
            if (r0 >= r1) goto L_0x008d
            r0 = r14
            r1 = r15
            r2 = r7
            r3 = r13
            r4 = r16
            r5 = r10
            r4 = r4[r5]
            m2443a(r0, r1, r2, r3, r4)
            int r10 = r10 + 1
            goto L_0x0073
        L_0x008d:
            r0 = 2
            android.text.SpannableStringBuilder[] r0 = new android.text.SpannableStringBuilder[r0]
            r1 = r0
            r2 = 0
            r3 = r14
            r1[r2] = r3
            r1 = r0
            r2 = 1
            r3 = r15
            r1[r2] = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14123p4.m2436a(java.util.Map):android.text.SpannableStringBuilder[]");
    }

    /* renamed from: b */
    public static Long m2433b() {
        long currentTimeMillis = System.currentTimeMillis();
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(currentTimeMillis);
        int i = instance.get(1);
        int i2 = instance.get(2);
        int i3 = instance.get(5);
        instance.clear();
        instance.set(i, i2, i3);
        return Long.valueOf(instance.getTimeInMillis());
    }

    /* renamed from: b */
    public static String m2432b(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: b */
    public static String m2431b(long j) {
        long j2 = j / 3600;
        long j3 = (j % 3600) / 60;
        long j4 = j % 60;
        StringBuffer stringBuffer = new StringBuffer();
        if (j2 < 10) {
            stringBuffer.append(0);
            stringBuffer.append(j2);
        } else {
            stringBuffer.append(j2);
        }
        stringBuffer.append(":");
        if (j3 < 10) {
            stringBuffer.append(0);
            stringBuffer.append(j3);
        } else {
            stringBuffer.append(j3);
        }
        stringBuffer.append(":");
        if (j4 < 10) {
            stringBuffer.append(0);
            stringBuffer.append(j4);
        } else {
            stringBuffer.append(j4);
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    public static String m2428b(String str) {
        return str.equals("0") ? "6" : String.valueOf(Integer.valueOf(str).intValue() - 1);
    }

    /* renamed from: b */
    public static C14978j<SpannableStringBuilder, SpannableStringBuilder> m2427b(Map<String, Long> map) {
        SpannableStringBuilder[] a = m2436a(map);
        if (a == null || a.length != 2) {
            return null;
        }
        return new C14978j<>(a[0], a[1]);
    }

    /* renamed from: b */
    public static void m2430b(Context context, Window window) {
        if (Build.VERSION.SDK_INT >= 21) {
            m2442a(window, m2448a(m2446a(context), 0.80999994f));
        }
    }

    /* renamed from: b */
    public static void m2429b(Window window, int i) {
        if (window != null && C14017g4.m2805s()) {
            m2424c(window, i);
        }
    }

    /* renamed from: c */
    public static final SpannableString m2423c(String str) {
        SpannableString spannableString = new SpannableString(str);
        int indexOf = str.indexOf("\n");
        int i = indexOf;
        if (indexOf == -1) {
            i = spannableString.length();
        }
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#1eb510")), 0, i, 33);
        if (C14017g4.m2816h().contains("ko")) {
            spannableString.setSpan(new RelativeSizeSpan(1.23f), 0, i, 33);
        } else {
            spannableString.setSpan(new RelativeSizeSpan(1.384f), 0, i, 33);
        }
        spannableString.setSpan(new StyleSpan(0), 0, i, 33);
        spannableString.setSpan(new StyleSpan(Typeface.SANS_SERIF.getStyle()), i, str.length(), 33);
        return spannableString;
    }

    /* renamed from: c */
    public static Long m2426c() {
        return m2433b();
    }

    /* renamed from: c */
    public static String m2425c(long j) {
        return f31626b.format(Long.valueOf(j));
    }

    @TargetApi(21)
    /* renamed from: c */
    public static void m2424c(Window window, int i) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i);
    }

    /* renamed from: c */
    public static boolean m2422c(Map<String, Long> map) {
        if (map == null) {
            return false;
        }
        Calendar instance = Calendar.getInstance();
        Long l = map.get(String.valueOf(instance.get(7) - 1));
        if (l == null || l.longValue() == 0) {
            return false;
        }
        int i = instance.get(11);
        int i2 = instance.get(12);
        float f = i;
        float f2 = f;
        if (i2 >= 30) {
            f2 = (float) (f + 0.5d);
        }
        int i3 = 0;
        while (true) {
            long[] jArr = NumberInfo.HOURJ_ARRAY;
            if (i3 >= jArr.length) {
                return false;
            }
            if ((l.longValue() & jArr[i3]) != 0 && i3 / 2.0f == f2) {
                return true;
            }
            i3++;
        }
    }

    /* renamed from: d */
    public static Long m2421d() {
        return Long.valueOf(m2433b().longValue() - AdUtils.ONE_DAY);
    }

    /* renamed from: d */
    public static String m2420d(long j) {
        return f31629e.format(new Date(j));
    }

    /* renamed from: e */
    public static String m2419e(long j) {
        return f31630f.format(new Date(j));
    }

    /* renamed from: f */
    public static String m2418f(long j) {
        Date date = new Date(j);
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance2.setTime(date);
        return (instance.get(1) == instance2.get(1) && instance.get(6) == instance2.get(6)) ? f31629e.format(date) : f31628d.format(date);
    }

    /* renamed from: g */
    public static String m2417g(long j) {
        Date date = new Date(j);
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance2.setTime(date);
        return (instance.get(1) == instance2.get(1) && instance.get(6) == instance2.get(6)) ? f31627c.format(date) : f31625a.format(date);
    }
}
