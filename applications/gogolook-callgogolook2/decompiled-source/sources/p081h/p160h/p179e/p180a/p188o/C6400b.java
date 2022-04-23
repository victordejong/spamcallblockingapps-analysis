package p081h.p160h.p179e.p180a.p188o;

import com.mopub.common.AdType;
import java.util.ArrayList;
import kotlin.Metadata;
import p626l.p632u.C15026r;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\u0018�� \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u000bJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0007J'\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0013\"\u00020\u0007¢\u0006\u0002\u0010\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\b\u0012\u0004\u0012\u00020\u0007`\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/offlinedb/OfflineDbManager;", "", "()V", "commonOfflineDb", "Lcom/gogolook/whoscallsdk/core/offlinedb/SdkOfflineDb;", "dbPool", "Ljava/util/ArrayList;", "Lcom/gogolook/whoscallsdk/core/offlinedb/OfflineDbInfoType;", "Lkotlin/collections/ArrayList;", "personalOfflineDb", AdType.CLEAR, "", "clearApiCache", "getTargetOfflineDb", "type", "init", "dbPath", "", "initDbPool", "", "(Ljava/lang/String;[Lcom/gogolook/whoscallsdk/core/offlinedb/OfflineDbInfoType;)V", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.o.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/b.class */
public final class C6400b {

    /* renamed from: c */
    public static volatile C6400b f15926c;

    /* renamed from: d */
    public static final C6401a f15927d = new C6401a(null);

    /* renamed from: a */
    public AbstractC6408e f15928a;

    /* renamed from: b */
    public ArrayList<EnumC6399a> f15929b = new ArrayList<>();

    /* renamed from: h.h.e.a.o.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/b$a.class */
    public static final class C6401a {
        public C6401a() {
        }

        public /* synthetic */ C6401a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6400b m22805a() {
            C6400b bVar = C6400b.f15926c;
            if (bVar == null) {
                synchronized (this) {
                    bVar = C6400b.f15926c;
                    if (bVar == null) {
                        bVar = new C6400b();
                        C6400b.f15926c = bVar;
                    }
                }
            }
            return bVar;
        }
    }

    /* renamed from: b */
    public static final C6400b m22806b() {
        return f15927d.m22805a();
    }

    /* renamed from: a */
    public final AbstractC6408e m22809a(EnumC6399a aVar) {
        C15149k.m377b(aVar, "type");
        if (!this.f15929b.contains(aVar)) {
            return null;
        }
        int i = C6421i.f16023a[aVar.ordinal()];
        AbstractC6408e eVar = null;
        if (i != 1) {
            if (i != 2) {
                eVar = null;
            } else {
                eVar = this.f15928a;
                if (eVar == null) {
                    eVar = new C6422j();
                    this.f15928a = eVar;
                }
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public final void m22807a(String str, EnumC6399a... aVarArr) {
        C15149k.m377b(str, "dbPath");
        C15149k.m377b(aVarArr, "initDbPool");
        C15026r.m551a(this.f15929b, aVarArr);
        C6402c.m22765k(str);
        AbstractC6408e a = m22809a(EnumC6399a.TYPE_DB_PERSONAL_OFFLINE);
        if (a != null) {
            a.mo22680a(str);
        }
    }
}
