package p081h.p160h.p161a.p165k;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.EnumC6185b;
import p081h.p160h.p161a.EnumC6186c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H\u0007J,\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u00042\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0004H\u0007J6\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00102\u0006\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u0004H\u0007J0\u00102\u001a\u00020%2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u00042\u000e\u00104\u001a\n\u0018\u000105j\u0004\u0018\u0001`6H\u0007J\u000e\u00107\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020\u0004J\u0010\u00108\u001a\u00020%2\u0006\u0010'\u001a\u00020\u0004H\u0007J\"\u00109\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u0004H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R$\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0011\u0010\u0002\u001a\u0004\b\u000f\u0010\u0012\"\u0004\b\u0013\u0010\u0014RO\u0010\u0015\u001a6\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00180\u00170\u0016j\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00180\u0017`\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\b\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\b\u001a\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010\u0006¨\u0006;"}, m815d2 = {"Lcom/gogolook/adsdk/debug/AdLog;", "", "()V", "AD_LOG_TAG", "", "getAD_LOG_TAG", "()Ljava/lang/String;", "AD_LOG_TAG$delegate", "Lkotlin/Lazy;", "MAX_SIZE", "", "getMAX_SIZE", "()I", "MAX_SIZE$delegate", "MOPUB_SDK", "isDebug", "", "isDebug$annotations", "()Z", "setDebug", "(Z)V", "sLogArrayMap", "Ljava/util/HashMap;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/HashMap;", "getSLogArrayMap", "()Ljava/util/HashMap;", "sLogArrayMap$delegate", "sSb", "Landroid/text/SpannableStringBuilder;", "getSSb", "()Landroid/text/SpannableStringBuilder;", "sSb$delegate", "time", "getTime", "D", "", NovaHomeBadger.TAG, "adUnitName", "isDebugAdUnit", "adSource", "Lcom/gogolook/adsdk/Definition$AdSource;", "fetchState", "Lcom/gogolook/adsdk/Definition$FetchState;", "message", "adNSourceName", "requestState", "Lcom/gogolook/adsdk/Definition$RequestState;", "result", ExifInterface.LONGITUDE_WEST, NotificationCompat.CATEGORY_MESSAGE, "execption", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getAdLog", "initAdLogByUnit", "storeDebugLog", "log", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.k.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/k/a.class */
public final class C6219a {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15415a;

    /* renamed from: e */
    public static boolean f15419e;

    /* renamed from: f */
    public static final C6219a f15420f = new C6219a();

    /* renamed from: b */
    public static final AbstractC14974f f15416b = C14975g.m662a(C6221b.f15422a);

    /* renamed from: c */
    public static final AbstractC14974f f15417c = C14975g.m662a(C6220a.f15421a);

    /* renamed from: d */
    public static final AbstractC14974f f15418d = C14975g.m662a(C6222c.f15423a);

    /* renamed from: h.h.a.k.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/a$a.class */
    public static final class C6220a extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6220a f15421a = new C6220a();

        public C6220a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "[Whoscall_AD]";
        }
    }

    /* renamed from: h.h.a.k.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/a$b.class */
    public static final class C6221b extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C6221b f15422a = new C6221b();

        public C6221b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return 80;
        }
    }

    /* renamed from: h.h.a.k.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/a$c.class */
    public static final class C6222c extends AbstractC15150l implements AbstractC15107a<HashMap<String, ArrayList<String[]>>> {

        /* renamed from: a */
        public static final C6222c f15423a = new C6222c();

        public C6222c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashMap<String, ArrayList<String[]>> invoke() {
            return new HashMap<>();
        }
    }

    /* renamed from: h.h.a.k.a$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/a$d.class */
    public static final class C6223d extends AbstractC15150l implements AbstractC15107a<SpannableStringBuilder> {

        /* renamed from: a */
        public static final C6223d f15424a = new C6223d();

        public C6223d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SpannableStringBuilder invoke() {
            return new SpannableStringBuilder();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6219a.class), "MAX_SIZE", "getMAX_SIZE()I");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C6219a.class), "sSb", "getSSb()Landroid/text/SpannableStringBuilder;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C6219a.class), "AD_LOG_TAG", "getAD_LOG_TAG()Ljava/lang/String;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(C6219a.class), "sLogArrayMap", "getSLogArrayMap()Ljava/util/HashMap;");
        C15131a0.m412a(sVar4);
        f15415a = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4};
        C14975g.m662a(C6223d.f15424a);
    }

    /* renamed from: a */
    public static final void m23549a(String str, String str2, String str3, String str4) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        C15149k.m377b(str2, "adUnitName");
        C15149k.m377b(str3, "adNSourceName");
        if (f15419e || C6224b.m23523d()) {
            C6219a aVar = f15420f;
            aVar.m23550a(str, str2, " [AdUnit] : " + str2 + " [AdNSourceName] : " + str3 + " [Message] : " + str4);
        }
    }

    /* renamed from: a */
    public static final void m23548a(String str, String str2, boolean z, EnumC6184a aVar, EnumC6185b bVar, String str3) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        C15149k.m377b(str2, "adUnitName");
        C15149k.m377b(aVar, "adSource");
        C15149k.m377b(bVar, "fetchState");
        if (f15419e || C6224b.m23523d()) {
            String str4 = z ? "DEBUG" : "PRODUCT";
            C6219a aVar2 = f15420f;
            aVar2.m23550a(str, str2, " [AdUnit] : " + str2 + " (" + str4 + ") [AdSource] : " + aVar.m23635a() + " [Status] : " + bVar.m23634a() + " [Message] : " + str3);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m23547a(String str, String str2, boolean z, EnumC6184a aVar, EnumC6185b bVar, String str3, int i, Object obj) {
        if ((i & 32) != 0) {
            str3 = null;
        }
        m23548a(str, str2, z, aVar, bVar, str3);
    }

    /* renamed from: a */
    public static final void m23546a(String str, String str2, boolean z, EnumC6186c cVar, String str3) {
        C15149k.m377b(str2, "adUnitName");
        C15149k.m377b(cVar, "requestState");
        if (f15419e || C6224b.m23523d()) {
            String str4 = z ? "DEBUG" : "PRODUCT";
            C6219a aVar = f15420f;
            aVar.m23550a(str, str2, " [AdUnit] : " + str2 + " (" + str4 + ") [Status] : " + cVar.m23633a() + " [Result] : " + str3);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m23545a(String str, String str2, boolean z, EnumC6186c cVar, String str3, int i, Object obj) {
        if ((i & 16) != 0) {
            str3 = null;
        }
        m23546a(str, str2, z, cVar, str3);
    }

    /* renamed from: a */
    public static final void m23544a(boolean z) {
        f15419e = z;
    }

    /* renamed from: b */
    public static final void m23542b(String str) {
        C15149k.m377b(str, "adUnitName");
        ArrayList<String[]> arrayList = f15420f.m23540c().get(str);
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    /* renamed from: b */
    public static final void m23541b(String str, String str2, String str3) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        C15149k.m377b(str2, "adUnitName");
        C15149k.m377b(str3, "message");
        if (f15419e || C6224b.m23523d()) {
            C6219a aVar = f15420f;
            aVar.m23550a(str, str2, " [AdUnit] : " + str2 + " [Message] : " + str3);
        }
    }

    /* renamed from: e */
    public static final boolean m23538e() {
        return f15419e;
    }

    /* renamed from: a */
    public final SpannableStringBuilder m23551a(String str) {
        C15149k.m377b(str, "adUnitName");
        ArrayList<String[]> arrayList = m23540c().get(str);
        if (arrayList == null) {
            return new SpannableStringBuilder();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (String[] strArr : arrayList) {
            spannableStringBuilder.append((CharSequence) strArr[0]);
            spannableStringBuilder.append((CharSequence) strArr[1]);
            spannableStringBuilder.append((CharSequence) "\n");
            spannableStringBuilder.append((CharSequence) "-------");
            spannableStringBuilder.append((CharSequence) "\n");
        }
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public final String m23552a() {
        AbstractC14974f fVar = f15417c;
        AbstractC14906i iVar = f15415a[2];
        return (String) fVar.getValue();
    }

    /* renamed from: a */
    public final void m23550a(String str, String str2, String str3) {
        if (f15419e || C6224b.m23523d()) {
            ArrayList<String[]> arrayList = !m23540c().containsKey(str2) ? new ArrayList<>() : m23540c().get(str2);
            if (arrayList != null) {
                ArrayList<String[]> arrayList2 = arrayList.size() > f15420f.m23543b() ? arrayList : null;
                if (arrayList2 != null) {
                    arrayList2.remove(0);
                }
            }
            m23552a();
            StringBuilder sb = new StringBuilder();
            String str4 = str;
            if (TextUtils.isEmpty(str)) {
                str4 = "";
            }
            sb.append(str4);
            sb.append(" : ");
            sb.append(str3);
            sb.toString();
            String d = m23539d();
            if (arrayList != null) {
                arrayList.add(new String[]{d, str3});
                f15420f.m23540c().put(str2, arrayList);
                C6224b.f15437m.m23526b(str2);
            }
        }
    }

    /* renamed from: b */
    public final int m23543b() {
        AbstractC14974f fVar = f15416b;
        AbstractC14906i iVar = f15415a[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: c */
    public final HashMap<String, ArrayList<String[]>> m23540c() {
        AbstractC14974f fVar = f15418d;
        AbstractC14906i iVar = f15415a[3];
        return (HashMap) fVar.getValue();
    }

    /* renamed from: d */
    public final String m23539d() {
        String format = new SimpleDateFormat("HH:mm:ss").format(new Date());
        C15149k.m383a((Object) format, "formatter.format(Date())");
        return format;
    }
}
