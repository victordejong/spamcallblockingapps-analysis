package p193e.p1432d.p1439c.p1440a;

import android.app.NotificationChannel;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.JsonReader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.media2.common.MediaItem;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.measurement.zzbl;
import com.google.android.gms.internal.measurement.zzh;
import com.google.protobuf.BinaryWriter;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker;
import com.truecaller.wizard.WizardVerificationMode;
import e.m.d.z.g.x;
import e.m.d.z.n.e;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import javax.inject.Provider;
import n3.y.c.a0;
import n3.y.c.m;
import org.apache.avro.LogicalType;
import org.apache.avro.Schema;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.util.Utf8;
import org.apache.http.impl.auth.NTLMEngineImpl;
import org.xmlpull.v1.XmlPullParser;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25989m1;
import p1727n3.p1758e.p1767b.p1768j1.C25986l1;
import p1727n3.p1758e.p1767b.p1768j1.C25995o;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1868v.C26993b1;
import p193e.p1485h.p1486a.p1493c.C22735g0;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22859a;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1681q.p1693d.p1696e.C25203a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p1681q.p1715g.p1716c.C25267a;
import p193e.p194a.C19813r1;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1059m3.C18174n;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.C5512m;
import p193e.p194a.p195a.p200c.View$OnClickListenerC5656p6;
import p193e.p194a.p195a.p231g.p232j0.C6155w;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p413i.p414e.C8465b;
import p193e.p194a.p372b0.p413i.p414e.C8467d;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p682e.p683a.View$OnClickListenerC12763k3;
import p193e.p194a.p703e3.AbstractC13350c;
import p193e.p194a.p849h4.p850q.C14928d;
import p193e.p194a.p849h4.p850q.C14929e;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import s1.a.a.a.v0.e.q;
import s1.a.a.a.v0.e.z.b;
import s1.a.a.a.v0.m.n1.i;
import s1.a.k;
import s1.f0.h;
import s1.z.c.c0;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.q;
import s1.z.c.w;
/* renamed from: e.d.c.a.a */
/* loaded from: classes-dex2jar.jar:e/d/c/a/a.class */
public class C22128a {
    /* renamed from: A */
    public static StringBuilder m8736A(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb;
    }

    /* renamed from: A0 */
    public static void m8735A0(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        HMSLog.m37195e(str, sb.toString());
    }

    /* renamed from: A1 */
    public static Object m8734A1(Context context, String str, String str2, String str3) {
        l.e(context, str);
        Object systemService = context.getSystemService(str2);
        Objects.requireNonNull(systemService, str3);
        return systemService;
    }

    /* renamed from: A2 */
    public static String m8733A2(String str, String str2, String str3) {
        return new h(str).e(str2, str3);
    }

    /* renamed from: B */
    public static StringBuilder m8732B(TextView textView, String str, String str2) {
        l.d(textView, str);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        return sb;
    }

    /* renamed from: B0 */
    public static SharedPreferences m8731B0(Context context, String str, String str2, int i, String str3) {
        l.e(context, str);
        SharedPreferences sharedPreferences = context.getSharedPreferences(str2, i);
        l.d(sharedPreferences, str3);
        return sharedPreferences;
    }

    /* renamed from: B1 */
    public static Object m8730B1(zzbl zzblVar, int i, List list, int i2) {
        zzh.zzh(zzblVar.name(), i, list);
        return list.get(i2);
    }

    /* renamed from: B2 */
    public static int m8729B2(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, LinkedHashMap linkedHashMap, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21) {
        l.e(str, str2);
        l.e(str3, str4);
        l.e(str5, str6);
        l.e(str7, str8);
        l.e(str9, str10);
        l.e(str11, str12);
        l.e(linkedHashMap, str13);
        l.e(str14, str15);
        l.e(str16, str17);
        l.e(str18, str19);
        l.e(str20, str21);
        return str14.length();
    }

    /* renamed from: C */
    public static StringBuilder m8728C(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    /* renamed from: C0 */
    public static void m8727C0(Exception exc, StringBuilder sb, String str) {
        sb.append(exc.getMessage());
        C2480b.m37037b(str, sb.toString());
    }

    /* renamed from: C1 */
    public static Object m8726C1(Class cls, String str) {
        Object m3820x0 = C25225a.m3820x0(AbstractApplicationC8442a.m28551L(), cls);
        l.d(m3820x0, str);
        return m3820x0;
    }

    /* renamed from: C2 */
    public static String m8725C2(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    /* renamed from: D */
    public static StringBuilder m8724D(String str, char c) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(c);
        return sb;
    }

    /* renamed from: D0 */
    public static void m8723D0(String str, int i, String str2) {
        HMSLog.m37193i(str2, str + i);
    }

    /* renamed from: D1 */
    public static Object m8722D1(Long l, x xVar, String str, e eVar) {
        xVar.d(str, l.longValue());
        return eVar.b();
    }

    /* renamed from: D2 */
    public static String m8721D2(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    /* renamed from: E */
    public static StringBuilder m8720E(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    /* renamed from: E0 */
    public static void m8719E0(String str, int i, StringBuilder sb, String str2) {
        sb.append(AbstractC19889v.m11837b(str, i));
        sb.append(str2);
    }

    /* renamed from: E1 */
    public static Object m8718E1(StringBuilder sb, String str, HashMap hashMap) {
        sb.append(str);
        return hashMap.get(sb.toString());
    }

    /* renamed from: E2 */
    public static String m8717E2(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    /* renamed from: F */
    public static StringBuilder m8716F(String str, int i, String str2, int i2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: F0 */
    public static void m8715F0(String str, C26247b c26247b) {
        c26247b.m2256c(new AbstractC25929i0.C25930a(str));
    }

    /* renamed from: F1 */
    public static Object m8714F1(List list, int i) {
        return list.get(list.size() + i);
    }

    /* renamed from: F2 */
    public static String m8713F2(String str, Type type) {
        return str + type;
    }

    /* renamed from: G */
    public static StringBuilder m8712G(String str, long j, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(j);
        sb.append(str2);
        return sb;
    }

    /* renamed from: G0 */
    public static void m8711G0(String str, Double d, HashMap hashMap, AbstractC19502g.C19503a c19503a, String str2, AbstractC19462a abstractC19462a) {
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, d, hashMap, c19503a);
        l.d(c19505a, str2);
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: G1 */
    public static Object m8710G1(List list, int i) {
        return list.get(list.size() - i);
    }

    /* renamed from: G2 */
    public static String m8709G2(String str, Schema schema) {
        return str + schema;
    }

    /* renamed from: H */
    public static StringBuilder m8708H(String str, String str2) {
        l.d(str, str2);
        return new StringBuilder();
    }

    /* renamed from: H0 */
    public static void m8707H0(String str, String str2, C8638c c8638c, char c, String str3, StringBuilder sb, int i) {
        l.d(str, str2);
        c8638c.m28169a(c, str3);
        sb.setLength(i);
    }

    /* renamed from: H1 */
    public static Object m8706H1(Schema schema, String str, int i) {
        return schema.getField(str).schema().getTypes().get(i);
    }

    /* renamed from: H2 */
    public static String m8705H2(StringBuilder sb, char c, char c2, char c3, char c4) {
        sb.append(c);
        sb.append(c2);
        sb.append(c3);
        sb.append(c4);
        return sb.toString();
    }

    /* renamed from: I */
    public static StringBuilder m8704I(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        return sb;
    }

    /* renamed from: I0 */
    public static void m8703I0(String str, String str2, String str3, String str4, String str5, String str6) {
        l.e(str, str2);
        l.e(str3, str4);
        l.e(str5, str6);
    }

    /* renamed from: I1 */
    public static String m8702I1(char c, String str) {
        return c + str;
    }

    /* renamed from: I2 */
    public static String m8701I2(StringBuilder sb, int i, char c) {
        sb.append(i);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: J */
    public static Context m8700J(View view, String str, String str2) {
        l.d(view, str);
        Context context = view.getContext();
        l.d(context, str2);
        return context;
    }

    /* renamed from: J0 */
    public static void m8699J0(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        l.e(str, str2);
        l.e(str3, str4);
        l.e(str5, str6);
        l.e(str7, str8);
    }

    /* renamed from: J1 */
    public static int m8698J1(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    /* renamed from: J2 */
    public static String m8697J2(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: K */
    public static StringBuilder m8696K(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    /* renamed from: K0 */
    public static void m8695K0(String str, String str2, String str3, String str4, LinkedHashMap linkedHashMap, String str5, String str6) {
        l.e(str, str2);
        l.e(str3, str4);
        linkedHashMap.put(str5, str6);
    }

    /* renamed from: K1 */
    public static String m8694K1(int i, int i2, StringBuilder sb, String str) {
        sb.append(AbstractC19889v.m11837b(Integer.valueOf(i), i2));
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: K2 */
    public static String m8693K2(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: L */
    public static StringBuilder m8692L(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    /* renamed from: L0 */
    public static void m8691L0(String str, String str2, StringBuilder sb) {
        sb.append(str + str2);
    }

    /* renamed from: L1 */
    public static String m8690L1(int i, String str, int i2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    /* renamed from: L2 */
    public static String m8689L2(StringBuilder sb, Integer num, String str) {
        sb.append(num);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: M */
    public static StringBuilder m8688M(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    /* renamed from: M0 */
    public static Bundle m8687M0(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i);
        return bundle;
    }

    /* renamed from: M1 */
    public static String m8686M1(int i, String str, int i2, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: N */
    public static StringBuilder m8685N(String str, i iVar, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(iVar);
        sb.append(str2);
        return sb;
    }

    /* renamed from: N0 */
    public static void m8684N0(String str, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String str2, AbstractC19462a abstractC19462a) {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b(str);
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(linkedHashMap2);
        C17697p3 build = m15852a.build();
        l.d(build, str2);
        abstractC19462a.mo13275a(build);
    }

    /* renamed from: N1 */
    public static String m8683N1(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb.toString();
    }

    /* renamed from: O */
    public static StringBuilder m8682O(String str, s1.a.a.a.v0.m.n1.l lVar, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(lVar);
        sb.append(str2);
        return sb;
    }

    /* renamed from: O0 */
    public static void m8681O0(String str, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String str2, AbstractC19510i0 abstractC19510i0) {
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b(str);
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(linkedHashMap2);
        C17697p3 build = m15852a.build();
        l.d(build, str2);
        abstractC19510i0.mo13225a(build);
    }

    /* renamed from: O1 */
    public static String m8680O1(int i, String str, long j) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(j);
        return sb.toString();
    }

    /* renamed from: P */
    public static ArrayList m8679P(int i, HashMap hashMap, ArrayList arrayList, int i2, String str) {
        hashMap.put(Integer.valueOf(i), arrayList);
        ArrayList arrayList2 = new ArrayList(i2);
        arrayList2.add(str);
        return arrayList2;
    }

    /* renamed from: P0 */
    public static void m8678P0(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
    }

    /* renamed from: P1 */
    public static String m8677P1(int i, String str, long j, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(j);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: Q */
    public static ArrayList m8676Q(ArrayList arrayList, String str, int i, HashMap hashMap, ArrayList arrayList2, int i2) {
        arrayList.add(str);
        hashMap.put(Integer.valueOf(i), arrayList2);
        return new ArrayList(i2);
    }

    /* renamed from: Q0 */
    public static void m8675Q0(StringBuilder sb, String str, long j, String str2) {
        sb.append(str);
        sb.append(j);
        sb.append(str2);
    }

    /* renamed from: Q1 */
    public static String m8674Q1(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: R */
    public static ArrayList m8673R(LinkedHashMap linkedHashMap, String str) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(str, arrayList);
        return arrayList;
    }

    /* renamed from: R0 */
    public static void m8672R0(StringBuilder sb, String str, String str2, C22735g0 c22735g0, String str3) {
        sb.append(str);
        sb.append(str2);
        c22735g0.m7855b(sb.toString(), str3);
    }

    /* renamed from: R1 */
    public static String m8671R1(int i, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: S */
    public static ArrayList m8670S(List list, String str) {
        l.d(list, str);
        return new ArrayList();
    }

    /* renamed from: S0 */
    public static void m8669S0(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    /* renamed from: S1 */
    public static String m8668S1(int i, StringBuilder sb) {
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }

    /* renamed from: T */
    public static HashMap m8667T(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        return hashMap;
    }

    /* renamed from: T0 */
    public static void m8666T0(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    /* renamed from: T1 */
    public static String m8665T1(long j, int i, StringBuilder sb, String str) {
        sb.append(AbstractC19889v.m11837b(Long.valueOf(j), i));
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: U */
    public static Context m8664U(C19813r1 c19813r1, C14928d c14928d, String str) {
        Context mo12335j = c19813r1.mo12335j();
        Objects.requireNonNull(c14928d);
        l.e(mo12335j, str);
        return mo12335j;
    }

    /* renamed from: U0 */
    public static void m8663U0(HashSet hashSet, String str, String str2, String str3, String str4) {
        hashSet.add(str);
        hashSet.add(str2);
        hashSet.add(str3);
        hashSet.add(str4);
    }

    /* renamed from: U1 */
    public static int m8662U1(WizardVerificationMode wizardVerificationMode, String str, Provider provider, String str2, Provider provider2, String str3) {
        l.e(wizardVerificationMode, str);
        l.e(provider, str2);
        l.e(provider2, str3);
        return wizardVerificationMode.ordinal();
    }

    /* renamed from: V */
    public static HashMap m8661V(String str, String str2, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        hashMap.put(str3, str4);
        return hashMap;
    }

    /* renamed from: V0 */
    public static void m8660V0(Map map, String str) {
        map.put(str, new C25203a());
    }

    /* renamed from: V1 */
    public static String m8659V1(JsonReader jsonReader) {
        String nextName = jsonReader.nextName();
        nextName.hashCode();
        return nextName;
    }

    /* renamed from: W */
    public static HashSet m8658W(HashMap hashMap, String str, C25656e.C25657a c25657a, int i) {
        hashMap.put(str, c25657a);
        return new HashSet(i);
    }

    /* renamed from: W0 */
    public static void m8657W0(Map map, String str) {
        map.put(str, new C25267a());
    }

    /* renamed from: W1 */
    public static String m8656W1(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    /* renamed from: X */
    public static LinkedHashMap m8655X(String str, String str2) {
        l.e(str, str2);
        return new LinkedHashMap();
    }

    /* renamed from: X0 */
    public static Bundle m8654X0(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    /* renamed from: X1 */
    public static String m8653X1(AbstractC22859a abstractC22859a, StringBuilder sb) {
        sb.append(abstractC22859a.getClass());
        return sb.toString();
    }

    /* renamed from: Y */
    public static LinkedHashMap m8652Y(String str, String str2, String str3, String str4, LinkedHashMap linkedHashMap, String str5, String str6) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        l.e(str, str2);
        l.e(str3, str4);
        linkedHashMap.put(str5, str6);
        return linkedHashMap2;
    }

    /* renamed from: Y0 */
    public static boolean m8651Y0(AbstractC26147b abstractC26147b, String str) {
        abstractC26147b.mo2667U1(str).close();
        return abstractC26147b.mo2665X1();
    }

    /* renamed from: Y1 */
    public static String m8650Y1(AbstractC15167c abstractC15167c, String str, String str2, String str3, String str4, C20592g c20592g, String str5) {
        String m19081a = abstractC15167c.m19081a(str);
        l.e(m19081a, str2);
        l.e(str3, str4);
        l.e(c20592g, str5);
        return m19081a;
    }

    /* renamed from: Z */
    public static LinkedHashMap m8649Z(String str, String str2, String str3, String str4, LinkedHashMap linkedHashMap, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        l.e(str, str2);
        l.e(str3, str4);
        linkedHashMap.put(str5, str6);
        l.e(str7, str8);
        l.e(str9, str10);
        linkedHashMap.put(str11, str12);
        return linkedHashMap2;
    }

    /* renamed from: Z0 */
    public static boolean m8648Z0(String str, String str2) {
        return new h(str).d(str2);
    }

    /* renamed from: Z1 */
    public static String m8647Z1(Class cls, StringBuilder sb) {
        sb.append(cls.getName());
        return sb.toString();
    }

    /* renamed from: a */
    public static float m8646a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    /* renamed from: a0 */
    public static List m8645a0(C6155w c6155w, int i, String str) {
        List<String> m31792b = c6155w.m31792b(c6155w.getString(i));
        l.d(m31792b, str);
        return m31792b;
    }

    /* renamed from: a1 */
    public static boolean m8644a1(StringBuilder sb, String str, HashMap hashMap) {
        sb.append(str);
        return hashMap.containsKey(sb.toString());
    }

    /* renamed from: a2 */
    public static String m8643a2(Class cls, StringBuilder sb) {
        sb.append(d0.a(cls).a());
        return sb.toString();
    }

    /* renamed from: b */
    public static int m8642b(int i, int i2, int i3, int i4) {
        return i + i2 + i3 + i4;
    }

    /* renamed from: b0 */
    public static List m8641b0(String str, String str2, int i) {
        return new h(str).f(str2, i);
    }

    /* renamed from: b1 */
    public static boolean m8640b1(b.b bVar, int i, String str) {
        Boolean f = bVar.f(i);
        l.d(f, str);
        return f.booleanValue();
    }

    /* renamed from: b2 */
    public static String m8639b2(Class cls, StringBuilder sb, String str) {
        sb.append(cls.getName());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: c */
    public static long m8638c() {
        return new Date().getTime();
    }

    /* renamed from: c0 */
    public static Map m8637c0(HashMap hashMap) {
        return Collections.unmodifiableMap(new HashMap(hashMap));
    }

    /* renamed from: c1 */
    public static int m8636c1(int i, int i2, int i3, int i4) {
        return NTLMEngineImpl.rotintlft(i + i2 + i3, i4);
    }

    /* renamed from: c2 */
    public static String m8635c2(Class cls, StringBuilder sb, String str, String str2) {
        sb.append(cls.getSimpleName());
        sb.append(str);
        sb.append(cls.getSimpleName());
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: d */
    public static String m8634d(StringBuilder sb, Object obj, String str) {
        sb.append(obj);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: d0 */
    public static c0 m8633d0(Object obj) {
        C25225a.m3932a3(obj);
        return new c0();
    }

    /* renamed from: d1 */
    public static RemoteException m8632d1(String str, Throwable th) {
        zzcgt.zzg(str, th);
        return new RemoteException();
    }

    /* renamed from: d2 */
    public static String m8631d2(Object obj, StringBuilder sb, String str) {
        sb.append(obj.getClass().getName());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: e */
    public static String m8630e(StringBuilder sb, String str, char c) {
        sb.append(str);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: e0 */
    public static s1.a.h m8629e0(Class cls, String str, String str2, int i) {
        return d0.b(new q(cls, str, str2, i));
    }

    /* renamed from: e1 */
    public static LayoutInflater m8628e1(ViewGroup viewGroup, String str) {
        l.e(viewGroup, str);
        return LayoutInflater.from(viewGroup.getContext());
    }

    /* renamed from: e2 */
    public static String m8627e2(String str) {
        String uuid = UUID.randomUUID().toString();
        l.d(uuid, str);
        return uuid;
    }

    /* renamed from: f */
    public static String m8626f(StringBuilder sb, String str, char c, char c2) {
        sb.append(str);
        sb.append(c);
        sb.append(c2);
        return sb.toString();
    }

    /* renamed from: f0 */
    public static Context m8625f0(C19813r1 c19813r1, C14929e c14929e, String str) {
        Context mo12335j = c19813r1.mo12335j();
        Objects.requireNonNull(c14929e);
        l.e(mo12335j, str);
        return mo12335j;
    }

    /* renamed from: f1 */
    public static View m8624f1(TextView textView, String str, View view, int i, String str2) {
        textView.setText(str);
        View findViewById = view.findViewById(i);
        l.d(findViewById, str2);
        return findViewById;
    }

    /* renamed from: f2 */
    public static int m8623f2(String str, int i) {
        return String.valueOf(str).length() + i;
    }

    /* renamed from: g */
    public static String m8622g(StringBuilder sb, String str, char c, String str2) {
        sb.append(str);
        sb.append(c);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: g0 */
    public static k m8621g0(Class cls, String str, String str2, int i) {
        return d0.d(new w(cls, str, str2, i));
    }

    /* renamed from: g1 */
    public static C25995o m8620g1(List list, C25995o c25995o, AbstractC25989m1.EnumC25991b enumC25991b, AbstractC25989m1.EnumC25990a enumC25990a) {
        list.add(c25995o);
        return new C25995o(enumC25991b, enumC25990a);
    }

    /* renamed from: g2 */
    public static String m8619g2(String str, char c) {
        return str + c;
    }

    /* renamed from: h */
    public static String m8618h(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: h0 */
    public static s1.a.a.a.v0.e.q m8617h0(s1.a.a.a.v0.e.q qVar, s1.a.a.a.v0.e.q qVar2) {
        q.c r = s1.a.a.a.v0.e.q.r(qVar);
        r.h(qVar2);
        return r.g();
    }

    /* renamed from: h1 */
    public static C25986l1 m8616h1(List list, C25995o c25995o, ArrayList arrayList, C25986l1 c25986l1) {
        list.add(c25995o);
        arrayList.add(c25986l1);
        return new C25986l1();
    }

    /* renamed from: h2 */
    public static String m8615h2(String str, char c, String str2) {
        return str + c + str2;
    }

    /* renamed from: i */
    public static String m8614i(StringBuilder sb, String str, String str2, int i) {
        sb.append(str);
        sb.append(str2);
        sb.append(i);
        return sb.toString();
    }

    /* renamed from: i0 */
    public static Schema m8613i0(String str) {
        return new Schema.Parser().parse(str);
    }

    /* renamed from: i1 */
    public static C26993b1 m8612i1(Fragment fragment, String str, String str2) {
        n3.r.a.l requireActivity = fragment.requireActivity();
        l.d(requireActivity, str);
        C26993b1 viewModelStore = requireActivity.getViewModelStore();
        l.d(viewModelStore, str2);
        return viewModelStore;
    }

    /* renamed from: i2 */
    public static String m8611i2(String str, int i) {
        return str + i;
    }

    /* renamed from: j */
    public static String m8610j(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: j0 */
    public static void m8609j0(int i, HashMap hashMap, String str, int i2, String str2, int i3, String str3, int i4, String str4) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
        hashMap.put(str3, Integer.valueOf(i3));
        hashMap.put(str4, Integer.valueOf(i4));
    }

    /* renamed from: j1 */
    public static IObjectWrapper m8608j1(Parcel parcel) {
        IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
        parcel.recycle();
        return m38750m1;
    }

    /* renamed from: j2 */
    public static String m8607j2(String str, int i, int i2) {
        return String.valueOf(str.substring(i, i2).toLowerCase());
    }

    /* renamed from: k */
    public static String m8606k(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    /* renamed from: k0 */
    public static void m8605k0(long j, int i, StringBuilder sb, String str) {
        sb.append(AbstractC19889v.m11837b(Long.valueOf(j), i));
        sb.append(str);
    }

    /* renamed from: k1 */
    public static C15213o m8604k1(String str, String str2, String str3, String str4) {
        l.e(str, str2);
        C15213o m19046a = new C15213o.C15215b(str3).m19046a();
        l.d(m19046a, str4);
        return m19046a;
    }

    /* renamed from: k2 */
    public static String m8603k2(String str, int i, int i2) {
        return String.valueOf(str.substring(i2, str.length() + i));
    }

    /* renamed from: l */
    public static String m8602l(StringBuilder sb, List list, String str) {
        sb.append(list);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: l0 */
    public static void m8601l0(Context context, int i, NotificationChannel notificationChannel, boolean z) {
        notificationChannel.setDescription(context.getString(i));
        notificationChannel.enableLights(z);
    }

    /* renamed from: l1 */
    public static C15222s.C15223a m8600l1(C15222s c15222s, int i, String str, String str2) {
        C15222s.C15223a c15223a = new C15222s.C15223a(c15222s, i);
        c15223a.m19041b(str, str2);
        return c15223a;
    }

    /* renamed from: l2 */
    public static String m8599l2(String str, int i, String str2) {
        return str + i + str2;
    }

    /* renamed from: m */
    public static String m8598m(StringBuilder sb, boolean z, char c) {
        sb.append(z);
        sb.append(c);
        return sb.toString();
    }

    /* renamed from: m0 */
    public static void m8597m0(Context context, int i, NotificationChannel notificationChannel, boolean z, int i2) {
        notificationChannel.setDescription(context.getString(i));
        notificationChannel.enableLights(z);
        notificationChannel.setLightColor(i2);
    }

    /* renamed from: m1 */
    public static AbstractC19462a m8596m1() {
        return TrueApp.m36032b0().mo10154s().mo12776C4();
    }

    /* renamed from: m2 */
    public static String m8595m2(String str, int i, String str2, int i2) {
        return str + i + str2 + i2;
    }

    /* renamed from: n */
    public static long m8594n(ResolvingDecoder resolvingDecoder, Utf8 utf8, List list, long j, long j2) {
        list.add(resolvingDecoder.readString(utf8));
        return j - j2;
    }

    /* renamed from: n0 */
    public static void m8593n0(SharedPreferences sharedPreferences, String str, int i) {
        sharedPreferences.edit().putInt(str, i).apply();
    }

    /* renamed from: n1 */
    public static int m8592n1(int i, int i2, int i3, int i4) {
        return i4 - ((i + i2) * i3);
    }

    /* renamed from: n2 */
    public static String m8591n2(String str, int i, String str2, int i2, String str3) {
        return str + i + str2 + i2 + str3;
    }

    /* renamed from: o */
    public static String m8590o(StringBuilder sb, boolean z, String str) {
        sb.append(z);
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: o0 */
    public static void m8589o0(SharedPreferences sharedPreferences, String str, long j) {
        sharedPreferences.edit().putLong(str, j).apply();
    }

    /* renamed from: o1 */
    public static AbstractC19580x.C19582b m8588o1(Bundle bundle, String str, String str2, String str3, Bundle bundle2) {
        bundle.putString(str, str2);
        return new AbstractC19580x.C19582b(str3, bundle2);
    }

    /* renamed from: o2 */
    public static String m8587o2(String str, int i, StringBuilder sb, String str2) {
        sb.append(AbstractC19889v.m11837b(str, i));
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: p */
    public static String m8586p(Locale locale, String str, String str2, Locale locale2, String str3) {
        l.d(locale, str);
        String upperCase = str2.toUpperCase(locale2);
        l.d(upperCase, str3);
        return upperCase;
    }

    /* renamed from: p0 */
    public static void m8585p0(SharedPreferences sharedPreferences, String str, String str2) {
        sharedPreferences.edit().putString(str, str2).apply();
    }

    /* renamed from: p1 */
    public static ViewActionEvent m8584p1(String str, String str2, String str3, String str4, String str5) {
        l.e(str, str2);
        return new ViewActionEvent(str3, str4, str5);
    }

    /* renamed from: p2 */
    public static String m8583p2(String str, long j) {
        return str + j;
    }

    /* renamed from: q */
    public static String m8582q(i iVar, StringBuilder sb) {
        sb.append(d0.a(iVar.getClass()));
        return sb.toString();
    }

    /* renamed from: q0 */
    public static Intent m8581q0(Context context, String str, Context context2, Class cls) {
        l.e(context, str);
        return new Intent(context2, cls);
    }

    /* renamed from: q1 */
    public static C19597a m8580q1(String str, String str2, String str3, String str4, Map map) {
        l.e(str, str2);
        return new C19597a(str3, str4, map);
    }

    /* renamed from: q2 */
    public static int m8579q2(String str, int i, int i2) {
        return (str.hashCode() + i) * i2;
    }

    /* renamed from: r */
    public static String m8578r(s1.a.a.a.v0.m.n1.l lVar, StringBuilder sb) {
        sb.append(d0.a(lVar.getClass()));
        return sb.toString();
    }

    /* renamed from: r0 */
    public static void m8577r0(SharedPreferences sharedPreferences, String str, boolean z) {
        sharedPreferences.edit().putBoolean(str, z).apply();
    }

    /* renamed from: r1 */
    public static AbstractC13350c m8576r1(AbstractC8412c abstractC8412c, String str, String str2) {
        Context mo12335j = abstractC8412c.mo12335j();
        Objects.requireNonNull(mo12335j, str);
        l.e(mo12335j, str2);
        return C18334g0.m15241a(mo12335j);
    }

    /* renamed from: r2 */
    public static String m8575r2(String str, long j, String str2) {
        return str + j + str2;
    }

    /* renamed from: s */
    public static String m8574s(LogicalType logicalType, StringBuilder sb) {
        sb.append(logicalType.getName());
        return sb.toString();
    }

    /* renamed from: s0 */
    public static void m8573s0(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        l.e(sQLiteDatabase, str);
        sQLiteDatabase.execSQL(str2);
        sQLiteDatabase.execSQL(str3);
    }

    /* renamed from: s1 */
    public static C8465b m8572s1(C8465b c8465b, C8467d c8467d, String str, boolean z, boolean z2) {
        c8465b.m28512c();
        C8465b m28506a = c8467d.m28506a(str);
        m28506a.f26194k = Boolean.valueOf(z);
        m28506a.f26193j = Boolean.valueOf(z2);
        return m28506a;
    }

    /* renamed from: s2 */
    public static String m8571s2(String str, Uri uri) {
        return str + uri;
    }

    /* renamed from: t */
    public static String m8570t(XmlPullParser xmlPullParser, StringBuilder sb, String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: t0 */
    public static void m8569t0(m mVar, MediaItem mediaItem, int i, int i2) {
        mVar.h(new a0(mVar, mediaItem, i, i2));
    }

    /* renamed from: t1 */
    public static C8385b m8568t1(C8365b c8365b, KnownEndpoints knownEndpoints, Class cls) {
        c8365b.m28639a(knownEndpoints);
        c8365b.m28634f(cls);
        return new C8385b();
    }

    /* renamed from: t2 */
    public static String m8567t2(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    /* renamed from: u */
    public static String m8566u(boolean z, int i, StringBuilder sb, String str) {
        sb.append(AbstractC19889v.m11837b(Boolean.valueOf(z), i));
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: u0 */
    public static void m8565u0(AbstractC26147b abstractC26147b, String str, String str2, String str3) {
        l.e(abstractC26147b, str);
        abstractC26147b.mo2668S0(str2);
        abstractC26147b.mo2668S0(str3);
    }

    /* renamed from: u1 */
    public static C18174n m8564u1(C5512m.C5515d c5515d, AppCompatTextView appCompatTextView, C5512m c5512m) {
        appCompatTextView.setOnClickListener(new View$OnClickListenerC5656p6(c5515d));
        return c5512m.m33002OA();
    }

    /* renamed from: u2 */
    public static String m8563u2(String str, C25656e c25656e, String str2, C25656e c25656e2) {
        return str + c25656e + str2 + c25656e2;
    }

    /* renamed from: v */
    public static String m8562v(Object[] objArr, int i, String str, String str2) {
        String format = String.format(str, Arrays.copyOf(objArr, i));
        l.d(format, str2);
        return format;
    }

    /* renamed from: v0 */
    public static void m8561v0(AbstractC26147b abstractC26147b, String str, String str2, String str3, String str4) {
        abstractC26147b.mo2668S0(str);
        abstractC26147b.mo2668S0(str2);
        abstractC26147b.mo2668S0(str3);
        abstractC26147b.mo2668S0(str4);
    }

    /* renamed from: v1 */
    public static C17697p3.C17699b m8560v1(String str, String str2, String str3, String str4, LinkedHashMap linkedHashMap, String str5, String str6, String str7, LinkedHashMap linkedHashMap2) {
        l.e(str, str2);
        l.e(str3, str4);
        linkedHashMap.put(str5, str6);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b(str7);
        m15852a.m15849c(linkedHashMap2);
        return m15852a;
    }

    /* renamed from: v2 */
    public static String m8559v2(String str, AbstractC23757l abstractC23757l) {
        return str + abstractC23757l;
    }

    /* renamed from: w */
    public static StringBuilder m8558w(char c) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        return sb;
    }

    /* renamed from: w0 */
    public static void m8557w0(BinaryWriter binaryWriter, int i, int i2, int i3) {
        binaryWriter.writeVarint32(binaryWriter.getTotalBytesWritten() - i);
        binaryWriter.writeTag(i2, i3);
    }

    /* renamed from: w1 */
    public static Integer m8556w1(InsightsOneOffEnrichmentWorker insightsOneOffEnrichmentWorker, String str, int i) {
        return Integer.valueOf(insightsOneOffEnrichmentWorker.getInputData().m1304c(str, i));
    }

    /* renamed from: w2 */
    public static String m8555w2(String str, Class cls) {
        return str + cls;
    }

    /* renamed from: x */
    public static StringBuilder m8554x(int i, String str) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        return sb;
    }

    /* renamed from: x0 */
    public static void m8553x0(C17697p3.C17699b c17699b, LinkedHashMap linkedHashMap, String str, AbstractC19462a abstractC19462a) {
        c17699b.m15848d(linkedHashMap);
        C17697p3 build = c17699b.build();
        l.d(build, str);
        abstractC19462a.mo13275a(build);
    }

    /* renamed from: x1 */
    public static Integer m8552x1(HashMap hashMap, Integer num, String str, int i, String str2) {
        hashMap.put(num, str);
        Integer valueOf = Integer.valueOf(i);
        hashMap.put(valueOf, str2);
        return valueOf;
    }

    /* renamed from: x2 */
    public static String m8551x2(String str, Object obj) {
        return str + obj;
    }

    /* renamed from: y */
    public static long m8550y(ResolvingDecoder resolvingDecoder, Utf8 utf8, Map map, Utf8 utf82, long j, long j2) {
        map.put(utf82, resolvingDecoder.readString(utf8));
        return j - j2;
    }

    /* renamed from: y0 */
    public static void m8549y0(View$OnClickListenerC12763k3 view$OnClickListenerC12763k3, String str, int i) {
        Toast.makeText(view$OnClickListenerC12763k3.getContext(), str, i).show();
    }

    /* renamed from: y1 */
    public static int m8548y1(int i, int i2, int i3, int i4) {
        return ((i - i2) * i3) + i4;
    }

    /* renamed from: y2 */
    public static String m8547y2(String str, Object obj, String str2) {
        return str + obj + str2;
    }

    /* renamed from: z */
    public static StringBuilder m8546z(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb;
    }

    /* renamed from: z0 */
    public static void m8545z0(Class cls, StringBuilder sb, String str) {
        sb.append(cls.getName());
        sb.append(str);
    }

    /* renamed from: z1 */
    public static Integer m8544z1(HashMap hashMap, String str, Integer num, Cursor cursor, String str2) {
        hashMap.put(str, num);
        return Integer.valueOf(cursor.getColumnIndex(str2));
    }

    /* renamed from: z2 */
    public static String m8543z2(String str, String str2) {
        return str + str2;
    }
}
