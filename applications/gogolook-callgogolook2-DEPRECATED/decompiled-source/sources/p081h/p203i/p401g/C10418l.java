package p081h.p203i.p401g;

import androidx.media2.session.MediaSessionImplBase;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Logger;
import p081h.p203i.p401g.AbstractC10287j0;
import p081h.p203i.p401g.AbstractC10437l0;
import p081h.p203i.p401g.C10295k;
import p081h.p203i.p401g.C10406k1;
import p081h.p203i.p401g.C10465u;
import p081h.p203i.p401g.C10516z;
import p081h.p203i.p401g.C10521z0;
/* renamed from: h.i.g.l */
/* loaded from: classes2-dex2jar.jar:h/i/g/l.class */
public final class C10418l {

    /* renamed from: a */
    public static final Logger f23662a = Logger.getLogger(C10418l.class.getName());

    /* renamed from: h.i.g.l$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$a.class */
    public static /* synthetic */ class C10419a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f23663a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f23664b = new int[C10428g.EnumC10429a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00fc -> B:102:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0100 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0104 -> B:72:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0108 -> B:66:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x010c -> B:80:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0110 -> B:76:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0114 -> B:90:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0118 -> B:84:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x011c -> B:100:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0120 -> B:94:0x0083). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0124 -> B:70:0x008f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0128 -> B:64:0x009b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x012c -> B:78:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0130 -> B:74:0x00b3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0134 -> B:88:0x00bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0138 -> B:82:0x00cb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x013c -> B:98:0x00d7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0140 -> B:92:0x00e3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0144 -> B:68:0x00ef). Please submit an issue!!! */
        static {
            try {
                f23664b[C10428g.EnumC10429a.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f23664b[C10428g.EnumC10429a.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            f23663a = new int[C10428g.EnumC10430b.values().length];
            try {
                f23663a[C10428g.EnumC10430b.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f23663a[C10428g.EnumC10430b.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f23663a[C10428g.EnumC10430b.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f23663a[C10428g.EnumC10430b.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f23663a[C10428g.EnumC10430b.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f23663a[C10428g.EnumC10430b.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f23663a[C10428g.EnumC10430b.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f23663a[C10428g.EnumC10430b.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f23663a[C10428g.EnumC10430b.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f23663a[C10428g.EnumC10430b.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f23663a[C10428g.EnumC10430b.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f23663a[C10428g.EnumC10430b.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f23663a[C10428g.EnumC10430b.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f23663a[C10428g.EnumC10430b.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f23663a[C10428g.EnumC10430b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f23663a[C10428g.EnumC10430b.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f23663a[C10428g.EnumC10430b.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f23663a[C10428g.EnumC10430b.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError e20) {
            }
        }
    }

    /* renamed from: h.i.g.l$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$b.class */
    public static final class C10420b extends AbstractC10433i {

        /* renamed from: a */
        public C10295k.C10298b f23665a;

        /* renamed from: b */
        public final String f23666b;

        /* renamed from: c */
        public final C10431h f23667c;

        /* renamed from: d */
        public final C10420b[] f23668d;

        /* renamed from: e */
        public final C10426e[] f23669e;

        /* renamed from: f */
        public final C10428g[] f23670f;

        /* renamed from: g */
        public final C10428g[] f23671g;

        /* renamed from: h */
        public final C10435k[] f23672h;

        public C10420b(C10295k.C10298b bVar, C10431h hVar, C10420b bVar2, int i) throws C10425d {
            super(null);
            this.f23665a = bVar;
            this.f23666b = C10418l.m11917b(hVar, bVar2, bVar.m12624y());
            this.f23667c = hVar;
            this.f23672h = new C10435k[bVar.m12670B()];
            for (int i2 = 0; i2 < bVar.m12670B(); i2++) {
                this.f23672h[i2] = new C10435k(bVar.m12637g(i2), hVar, this, i2, null);
            }
            this.f23668d = new C10420b[bVar.m12623z()];
            for (int i3 = 0; i3 < bVar.m12623z(); i3++) {
                this.f23668d[i3] = new C10420b(bVar.m12640f(i3), hVar, this, i3);
            }
            this.f23669e = new C10426e[bVar.m12632q()];
            for (int i4 = 0; i4 < bVar.m12632q(); i4++) {
                this.f23669e[i4] = new C10426e(bVar.m12652b(i4), hVar, this, i4, null);
            }
            this.f23670f = new C10428g[bVar.m12626w()];
            for (int i5 = 0; i5 < bVar.m12626w(); i5++) {
                this.f23670f[i5] = new C10428g(bVar.m12643e(i5), hVar, this, i5, false, null);
            }
            this.f23671g = new C10428g[bVar.m12630s()];
            for (int i6 = 0; i6 < bVar.m12630s(); i6++) {
                this.f23671g[i6] = new C10428g(bVar.m12649c(i6), hVar, this, i6, true, null);
            }
            for (int i7 = 0; i7 < bVar.m12670B(); i7++) {
                C10435k[] kVarArr = this.f23672h;
                kVarArr[i7].f23760g = new C10428g[kVarArr[i7].m11847f()];
                this.f23672h[i7].f23759f = 0;
            }
            for (int i8 = 0; i8 < bVar.m12626w(); i8++) {
                C10435k f = this.f23670f[i8].m11885f();
                if (f != null) {
                    f.f23760g[C10435k.m11849b(f)] = this.f23670f[i8];
                }
            }
            hVar.f23745g.m11903a(this);
        }

        public /* synthetic */ C10420b(C10295k.C10298b bVar, C10431h hVar, C10420b bVar2, int i, C10419a aVar) throws C10425d {
            this(bVar, hVar, bVar2, i);
        }

        public C10420b(String str) throws C10425d {
            super(null);
            String str2;
            String str3;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str3 = str.substring(lastIndexOf + 1);
                str2 = str.substring(0, lastIndexOf);
            } else {
                str2 = "";
                str3 = str;
            }
            C10295k.C10298b.C10300b M = C10295k.C10298b.m12659M();
            M.m12616b(str3);
            C10295k.C10298b.C10301c.C10303b y = C10295k.C10298b.C10301c.m12588y();
            y.m12584d(1);
            y.m12585c(536870912);
            M.m12619a(y.build());
            this.f23665a = M.build();
            this.f23666b = str;
            this.f23668d = new C10420b[0];
            this.f23669e = new C10426e[0];
            this.f23670f = new C10428g[0];
            this.f23671g = new C10428g[0];
            this.f23672h = new C10435k[0];
            this.f23667c = new C10431h(str2, this);
        }

        /* renamed from: a */
        public C10428g m11916a(int i) {
            return (C10428g) this.f23667c.f23745g.f23676d.get(new C10421c.C10422a(this, i));
        }

        /* renamed from: a */
        public C10428g m11914a(String str) {
            C10421c cVar = this.f23667c.f23745g;
            AbstractC10433i a = cVar.m11902a(this.f23666b + '.' + str);
            if (a == null || !(a instanceof C10428g)) {
                return null;
            }
            return (C10428g) a;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23667c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23666b;
        }

        /* renamed from: b */
        public boolean m11913b(int i) {
            for (C10295k.C10298b.C10301c cVar : this.f23665a.m12627v()) {
                if (cVar.m12594s() <= i && i < cVar.m12596q()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23665a.m12624y();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10298b mo11841d() {
            return this.f23665a;
        }

        /* renamed from: e */
        public final void m11912e() throws C10425d {
            for (C10420b bVar : this.f23668d) {
                bVar.m11912e();
            }
            for (C10428g gVar : this.f23670f) {
                gVar.m11886e();
            }
            for (C10428g gVar2 : this.f23671g) {
                gVar2.m11886e();
            }
        }

        /* renamed from: f */
        public List<C10428g> m11911f() {
            return Collections.unmodifiableList(Arrays.asList(this.f23670f));
        }

        /* renamed from: g */
        public List<C10420b> m11910g() {
            return Collections.unmodifiableList(Arrays.asList(this.f23668d));
        }

        /* renamed from: h */
        public List<C10435k> m11909h() {
            return Collections.unmodifiableList(Arrays.asList(this.f23672h));
        }

        /* renamed from: i */
        public C10295k.C10392v m11908i() {
            return this.f23665a.m12668D();
        }
    }

    /* renamed from: h.i.g.l$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$c.class */
    public static final class C10421c {

        /* renamed from: b */
        public boolean f23674b;

        /* renamed from: c */
        public final Map<String, AbstractC10433i> f23675c = new HashMap();

        /* renamed from: d */
        public final Map<C10422a, C10428g> f23676d = new HashMap();

        /* renamed from: e */
        public final Map<C10422a, C10427f> f23677e = new HashMap();

        /* renamed from: a */
        public final Set<C10431h> f23673a = new HashSet();

        /* renamed from: h.i.g.l$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$c$a.class */
        public static final class C10422a {

            /* renamed from: a */
            public final AbstractC10433i f23678a;

            /* renamed from: b */
            public final int f23679b;

            public C10422a(AbstractC10433i iVar, int i) {
                this.f23678a = iVar;
                this.f23679b = i;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof C10422a)) {
                    return false;
                }
                C10422a aVar = (C10422a) obj;
                boolean z = false;
                if (this.f23678a == aVar.f23678a) {
                    z = false;
                    if (this.f23679b == aVar.f23679b) {
                        z = true;
                    }
                }
                return z;
            }

            public int hashCode() {
                return (this.f23678a.hashCode() * 65535) + this.f23679b;
            }
        }

        /* renamed from: h.i.g.l$c$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$c$b.class */
        public static final class C10423b extends AbstractC10433i {

            /* renamed from: a */
            public final String f23680a;

            /* renamed from: b */
            public final String f23681b;

            /* renamed from: c */
            public final C10431h f23682c;

            public C10423b(String str, String str2, C10431h hVar) {
                super(null);
                this.f23682c = hVar;
                this.f23681b = str2;
                this.f23680a = str;
            }

            @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
            /* renamed from: a */
            public C10431h mo11845a() {
                return this.f23682c;
            }

            @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
            /* renamed from: b */
            public String mo11843b() {
                return this.f23681b;
            }

            @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
            /* renamed from: c */
            public String mo11842c() {
                return this.f23680a;
            }

            @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
            /* renamed from: d */
            public AbstractC10287j0 mo11841d() {
                return this.f23682c.mo11841d();
            }
        }

        /* renamed from: h.i.g.l$c$c */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$c$c.class */
        public enum EnumC10424c {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        public C10421c(C10431h[] hVarArr, boolean z) {
            this.f23674b = z;
            for (int i = 0; i < hVarArr.length; i++) {
                this.f23673a.add(hVarArr[i]);
                m11904a(hVarArr[i]);
            }
            for (C10431h hVar : this.f23673a) {
                try {
                    m11900a(hVar.m11859h(), hVar);
                } catch (C10425d e) {
                    throw new AssertionError(e);
                }
            }
        }

        /* renamed from: d */
        public static void m11895d(AbstractC10433i iVar) throws C10425d {
            String c = iVar.mo11842c();
            if (c.length() != 0) {
                for (int i = 0; i < c.length(); i++) {
                    char charAt = c.charAt(i);
                    if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i <= 0))) {
                        throw new C10425d(iVar, '\"' + c + "\" is not a valid identifier.", (C10419a) null);
                    }
                }
                return;
            }
            throw new C10425d(iVar, "Missing name.", (C10419a) null);
        }

        /* renamed from: a */
        public AbstractC10433i m11902a(String str) {
            return m11901a(str, EnumC10424c.ALL_SYMBOLS);
        }

        /* renamed from: a */
        public AbstractC10433i m11901a(String str, EnumC10424c cVar) {
            AbstractC10433i iVar = this.f23675c.get(str);
            if (iVar != null && (cVar == EnumC10424c.ALL_SYMBOLS || ((cVar == EnumC10424c.TYPES_ONLY && m11896c(iVar)) || (cVar == EnumC10424c.AGGREGATES_ONLY && m11897b(iVar))))) {
                return iVar;
            }
            for (C10431h hVar : this.f23673a) {
                AbstractC10433i iVar2 = hVar.f23745g.f23675c.get(str);
                if (iVar2 != null && (cVar == EnumC10424c.ALL_SYMBOLS || ((cVar == EnumC10424c.TYPES_ONLY && m11896c(iVar2)) || (cVar == EnumC10424c.AGGREGATES_ONLY && m11897b(iVar2))))) {
                    return iVar2;
                }
            }
            return null;
        }

        /* renamed from: a */
        public AbstractC10433i m11899a(String str, AbstractC10433i iVar, EnumC10424c cVar) throws C10425d {
            AbstractC10433i iVar2;
            String str2;
            if (str.startsWith(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
                str2 = str.substring(1);
                iVar2 = m11901a(str2, cVar);
            } else {
                int indexOf = str.indexOf(46);
                String substring = indexOf == -1 ? str : str.substring(0, indexOf);
                StringBuilder sb = new StringBuilder(iVar.mo11843b());
                while (true) {
                    int lastIndexOf = sb.lastIndexOf(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                    if (lastIndexOf == -1) {
                        iVar2 = m11901a(str, cVar);
                        str2 = str;
                        break;
                    }
                    int i = lastIndexOf + 1;
                    sb.setLength(i);
                    sb.append(substring);
                    iVar2 = m11901a(sb.toString(), EnumC10424c.AGGREGATES_ONLY);
                    if (iVar2 != null) {
                        if (indexOf != -1) {
                            sb.setLength(i);
                            sb.append(str);
                            iVar2 = m11901a(sb.toString(), cVar);
                        }
                        str2 = sb.toString();
                    } else {
                        sb.setLength(lastIndexOf);
                    }
                }
            }
            if (iVar2 != null) {
                return iVar2;
            }
            if (!this.f23674b || cVar != EnumC10424c.TYPES_ONLY) {
                throw new C10425d(iVar, '\"' + str + "\" is not defined.", (C10419a) null);
            }
            Logger logger = C10418l.f23662a;
            logger.warning("The descriptor for message type \"" + str + "\" can not be found and a placeholder is created for it");
            C10420b bVar = new C10420b(str2);
            this.f23673a.add(bVar.mo11845a());
            return bVar;
        }

        /* renamed from: a */
        public void m11906a(C10427f fVar) {
            C10422a aVar = new C10422a(fVar.m11890e(), fVar.getNumber());
            C10427f put = this.f23677e.put(aVar, fVar);
            if (put != null) {
                this.f23677e.put(aVar, put);
            }
        }

        /* renamed from: a */
        public void m11905a(C10428g gVar) throws C10425d {
            C10422a aVar = new C10422a(gVar.m11884g(), gVar.getNumber());
            C10428g put = this.f23676d.put(aVar, gVar);
            if (put != null) {
                this.f23676d.put(aVar, put);
                throw new C10425d(gVar, "Field number " + gVar.getNumber() + " has already been used in \"" + gVar.m11884g().mo11843b() + "\" by field \"" + put.mo11842c() + "\".", (C10419a) null);
            }
        }

        /* renamed from: a */
        public final void m11904a(C10431h hVar) {
            for (C10431h hVar2 : hVar.m11858i()) {
                if (this.f23673a.add(hVar2)) {
                    m11904a(hVar2);
                }
            }
        }

        /* renamed from: a */
        public void m11903a(AbstractC10433i iVar) throws C10425d {
            m11895d(iVar);
            String b = iVar.mo11843b();
            AbstractC10433i put = this.f23675c.put(b, iVar);
            if (put != null) {
                this.f23675c.put(b, put);
                if (iVar.mo11845a() == put.mo11845a()) {
                    int lastIndexOf = b.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        throw new C10425d(iVar, '\"' + b + "\" is already defined.", (C10419a) null);
                    }
                    throw new C10425d(iVar, '\"' + b.substring(lastIndexOf + 1) + "\" is already defined in \"" + b.substring(0, lastIndexOf) + "\".", (C10419a) null);
                }
                throw new C10425d(iVar, '\"' + b + "\" is already defined in file \"" + put.mo11845a().mo11842c() + "\".", (C10419a) null);
            }
        }

        /* renamed from: a */
        public void m11900a(String str, C10431h hVar) throws C10425d {
            String str2;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                str2 = str;
            } else {
                m11900a(str.substring(0, lastIndexOf), hVar);
                str2 = str.substring(lastIndexOf + 1);
            }
            AbstractC10433i put = this.f23675c.put(str, new C10423b(str2, str, hVar));
            if (put != null) {
                this.f23675c.put(str, put);
                if (!(put instanceof C10423b)) {
                    throw new C10425d(hVar, '\"' + str2 + "\" is already defined (as something other than a package) in file \"" + put.mo11845a().mo11842c() + "\".", (C10419a) null);
                }
            }
        }

        /* renamed from: b */
        public boolean m11897b(AbstractC10433i iVar) {
            return (iVar instanceof C10420b) || (iVar instanceof C10426e) || (iVar instanceof C10423b) || (iVar instanceof C10436l);
        }

        /* renamed from: c */
        public boolean m11896c(AbstractC10433i iVar) {
            return (iVar instanceof C10420b) || (iVar instanceof C10426e);
        }
    }

    /* renamed from: h.i.g.l$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$d.class */
    public static class C10425d extends Exception {
        public C10425d(C10431h hVar, String str) {
            super(hVar.mo11842c() + ": " + str);
            hVar.mo11842c();
            hVar.mo11841d();
        }

        public /* synthetic */ C10425d(C10431h hVar, String str, C10419a aVar) {
            this(hVar, str);
        }

        public C10425d(AbstractC10433i iVar, String str) {
            super(iVar.mo11843b() + ": " + str);
            iVar.mo11843b();
            iVar.mo11841d();
        }

        public /* synthetic */ C10425d(AbstractC10433i iVar, String str, C10419a aVar) {
            this(iVar, str);
        }

        public C10425d(AbstractC10433i iVar, String str, Throwable th) {
            this(iVar, str);
            initCause(th);
        }

        public /* synthetic */ C10425d(AbstractC10433i iVar, String str, Throwable th, C10419a aVar) {
            this(iVar, str, th);
        }
    }

    /* renamed from: h.i.g.l$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$e.class */
    public static final class C10426e extends AbstractC10433i implements C10516z.AbstractC10518b<C10427f> {

        /* renamed from: a */
        public C10295k.C10314d f23687a;

        /* renamed from: b */
        public final String f23688b;

        /* renamed from: c */
        public final C10431h f23689c;

        /* renamed from: d */
        public C10427f[] f23690d;

        /* renamed from: e */
        public final WeakHashMap<Integer, WeakReference<C10427f>> f23691e;

        public C10426e(C10295k.C10314d dVar, C10431h hVar, C10420b bVar, int i) throws C10425d {
            super(null);
            this.f23691e = new WeakHashMap<>();
            this.f23687a = dVar;
            this.f23688b = C10418l.m11917b(hVar, bVar, dVar.m12536q());
            this.f23689c = hVar;
            if (dVar.m12530w() != 0) {
                this.f23690d = new C10427f[dVar.m12530w()];
                for (int i2 = 0; i2 < dVar.m12530w(); i2++) {
                    this.f23690d[i2] = new C10427f(dVar.m12541b(i2), hVar, this, i2, null);
                }
                hVar.f23745g.m11903a(this);
                return;
            }
            throw new C10425d(this, "Enums must contain at least one value.", (C10419a) null);
        }

        public /* synthetic */ C10426e(C10295k.C10314d dVar, C10431h hVar, C10420b bVar, int i, C10419a aVar) throws C10425d {
            this(dVar, hVar, bVar, i);
        }

        /* renamed from: a */
        public C10427f m11894a(int i) {
            return (C10427f) this.f23689c.f23745g.f23677e.get(new C10421c.C10422a(this, i));
        }

        /* renamed from: a */
        public C10427f m11893a(String str) {
            C10421c cVar = this.f23689c.f23745g;
            AbstractC10433i a = cVar.m11902a(this.f23688b + '.' + str);
            if (a == null || !(a instanceof C10427f)) {
                return null;
            }
            return (C10427f) a;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23689c;
        }

        /* renamed from: b */
        public C10427f m11892b(int i) {
            C10427f fVar;
            C10427f a = m11894a(i);
            if (a != null) {
                return a;
            }
            synchronized (this) {
                Integer num = new Integer(i);
                WeakReference<C10427f> weakReference = this.f23691e.get(num);
                if (weakReference != null) {
                    a = weakReference.get();
                }
                fVar = a;
                if (a == null) {
                    fVar = new C10427f(this.f23689c, this, num, (C10419a) null);
                    this.f23691e.put(num, new WeakReference<>(fVar));
                }
            }
            return fVar;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23688b;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23687a.m12536q();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10314d mo11841d() {
            return this.f23687a;
        }

        /* renamed from: e */
        public List<C10427f> m11891e() {
            return Collections.unmodifiableList(Arrays.asList(this.f23690d));
        }
    }

    /* renamed from: h.i.g.l$f */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$f.class */
    public static final class C10427f extends AbstractC10433i implements C10516z.AbstractC10517a {

        /* renamed from: a */
        public C10295k.C10334h f23692a;

        /* renamed from: b */
        public final String f23693b;

        /* renamed from: c */
        public final C10431h f23694c;

        /* renamed from: d */
        public final C10426e f23695d;

        public C10427f(C10295k.C10334h hVar, C10431h hVar2, C10426e eVar, int i) throws C10425d {
            super(null);
            this.f23692a = hVar;
            this.f23694c = hVar2;
            this.f23695d = eVar;
            this.f23693b = eVar.mo11843b() + '.' + hVar.m12439q();
            hVar2.f23745g.m11903a((AbstractC10433i) this);
            hVar2.f23745g.m11906a(this);
        }

        public /* synthetic */ C10427f(C10295k.C10334h hVar, C10431h hVar2, C10426e eVar, int i, C10419a aVar) throws C10425d {
            this(hVar, hVar2, eVar, i);
        }

        public C10427f(C10431h hVar, C10426e eVar, Integer num) {
            super(null);
            C10295k.C10334h build;
            C10295k.C10334h.C10336b y = C10295k.C10334h.m12431y();
            y.m12428b("UNKNOWN_ENUM_VALUE_" + eVar.mo11842c() + "_" + num);
            y.m12427c(num.intValue());
            this.f23692a = y.build();
            this.f23694c = hVar;
            this.f23695d = eVar;
            this.f23693b = eVar.mo11843b() + '.' + build.m12439q();
        }

        public /* synthetic */ C10427f(C10431h hVar, C10426e eVar, Integer num, C10419a aVar) {
            this(hVar, eVar, num);
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23694c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23693b;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23692a.m12439q();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10334h mo11841d() {
            return this.f23692a;
        }

        /* renamed from: e */
        public C10426e m11890e() {
            return this.f23695d;
        }

        @Override // p081h.p203i.p401g.C10516z.AbstractC10517a
        public int getNumber() {
            return this.f23692a.m12438r();
        }

        public String toString() {
            return this.f23692a.m12439q();
        }
    }

    /* renamed from: h.i.g.l$g */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$g.class */
    public static final class C10428g extends AbstractC10433i implements Comparable<C10428g>, C10465u.AbstractC10468c<C10428g> {

        /* renamed from: l */
        public static final C10406k1.EnumC10408b[] f23696l = C10406k1.EnumC10408b.values();

        /* renamed from: a */
        public final int f23697a;

        /* renamed from: b */
        public C10295k.C10366n f23698b;

        /* renamed from: c */
        public final String f23699c;

        /* renamed from: d */
        public final C10431h f23700d;

        /* renamed from: e */
        public final C10420b f23701e;

        /* renamed from: f */
        public EnumC10430b f23702f;

        /* renamed from: g */
        public C10420b f23703g;

        /* renamed from: h */
        public C10420b f23704h;

        /* renamed from: i */
        public C10435k f23705i;

        /* renamed from: j */
        public C10426e f23706j;

        /* renamed from: k */
        public Object f23707k;

        /* renamed from: h.i.g.l$g$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$g$a.class */
        public enum EnumC10429a {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(false),
            STRING(""),
            BYTE_STRING(AbstractC10253g.f23087b),
            ENUM(null),
            MESSAGE(null);
            

            /* renamed from: a */
            public final Object f23718a;

            EnumC10429a(Object obj) {
                this.f23718a = obj;
            }
        }

        /* renamed from: h.i.g.l$g$b */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$g$b.class */
        public enum EnumC10430b {
            DOUBLE(EnumC10429a.DOUBLE),
            FLOAT(EnumC10429a.FLOAT),
            INT64(EnumC10429a.LONG),
            UINT64(EnumC10429a.LONG),
            INT32(EnumC10429a.INT),
            FIXED64(EnumC10429a.LONG),
            FIXED32(EnumC10429a.INT),
            BOOL(EnumC10429a.BOOLEAN),
            STRING(EnumC10429a.STRING),
            GROUP(EnumC10429a.MESSAGE),
            MESSAGE(EnumC10429a.MESSAGE),
            BYTES(EnumC10429a.BYTE_STRING),
            UINT32(EnumC10429a.INT),
            ENUM(EnumC10429a.ENUM),
            SFIXED32(EnumC10429a.INT),
            SFIXED64(EnumC10429a.LONG),
            SINT32(EnumC10429a.INT),
            SINT64(EnumC10429a.LONG);
            

            /* renamed from: a */
            public EnumC10429a f23738a;

            EnumC10430b(EnumC10429a aVar) {
                this.f23738a = aVar;
            }

            /* renamed from: a */
            public static EnumC10430b m11867a(C10295k.C10366n.EnumC10371d dVar) {
                return values()[dVar.getNumber() - 1];
            }

            /* renamed from: a */
            public EnumC10429a m11868a() {
                return this.f23738a;
            }
        }

        static {
            if (EnumC10430b.values().length != C10295k.C10366n.EnumC10371d.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        public C10428g(C10295k.C10366n nVar, C10431h hVar, C10420b bVar, int i, boolean z) throws C10425d {
            super(null);
            this.f23697a = i;
            this.f23698b = nVar;
            this.f23699c = C10418l.m11917b(hVar, bVar, nVar.m12249u());
            this.f23700d = hVar;
            if (nVar.m12280C()) {
                nVar.m12251s();
            } else {
                m11888a(nVar.m12249u());
            }
            if (nVar.m12274I()) {
                this.f23702f = EnumC10430b.m11867a(nVar.m12245y());
            }
            if (getNumber() > 0) {
                if (z) {
                    if (nVar.m12281B()) {
                        this.f23703g = null;
                        if (bVar != null) {
                            this.f23701e = bVar;
                        } else {
                            this.f23701e = null;
                        }
                        if (!nVar.m12276G()) {
                            this.f23705i = null;
                        } else {
                            throw new C10425d(this, "FieldDescriptorProto.oneof_index set for extension field.", (C10419a) null);
                        }
                    } else {
                        throw new C10425d(this, "FieldDescriptorProto.extendee not set for extension field.", (C10419a) null);
                    }
                } else if (!nVar.m12281B()) {
                    this.f23703g = bVar;
                    if (!nVar.m12276G()) {
                        this.f23705i = null;
                    } else if (nVar.m12247w() < 0 || nVar.m12247w() >= bVar.mo11841d().m12670B()) {
                        throw new C10425d(this, "FieldDescriptorProto.oneof_index is out of range for type " + bVar.mo11842c(), (C10419a) null);
                    } else {
                        this.f23705i = bVar.m11909h().get(nVar.m12247w());
                        C10435k.m11849b(this.f23705i);
                    }
                    this.f23701e = null;
                } else {
                    throw new C10425d(this, "FieldDescriptorProto.extendee set for non-extension field.", (C10419a) null);
                }
                hVar.f23745g.m11903a((AbstractC10433i) this);
                return;
            }
            throw new C10425d(this, "Field numbers must be positive integers.", (C10419a) null);
        }

        public /* synthetic */ C10428g(C10295k.C10366n nVar, C10431h hVar, C10420b bVar, int i, boolean z, C10419a aVar) throws C10425d {
            this(nVar, hVar, bVar, i, z);
        }

        /* renamed from: a */
        public static String m11888a(String str) {
            int length = str.length();
            StringBuilder sb = new StringBuilder(length);
            boolean z = false;
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '_') {
                    z = true;
                } else if (z) {
                    char c = charAt;
                    if ('a' <= charAt) {
                        c = charAt;
                        if (charAt <= 'z') {
                            c = (char) ((charAt - 'a') + 65);
                        }
                    }
                    sb.append(c);
                    z = false;
                } else {
                    sb.append(charAt);
                }
            }
            return sb.toString();
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        /* renamed from: X */
        public boolean mo11731X() {
            return this.f23698b.m12250t() == C10295k.C10366n.EnumC10369c.LABEL_REPEATED;
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        /* renamed from: Y */
        public C10406k1.EnumC10408b mo11730Y() {
            return f23696l[this.f23702f.ordinal()];
        }

        /* renamed from: a */
        public int compareTo(C10428g gVar) {
            if (gVar.f23703g == this.f23703g) {
                return getNumber() - gVar.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23700d;
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        /* renamed from: a */
        public AbstractC10437l0.AbstractC10438a mo11729a(AbstractC10437l0.AbstractC10438a aVar, AbstractC10437l0 l0Var) {
            return ((AbstractC10287j0.AbstractC10288a) aVar).mo11824a((AbstractC10287j0) l0Var);
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23699c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23698b.m12249u();
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        /* renamed from: c0 */
        public C10406k1.EnumC10413c mo11728c0() {
            return mo11730Y().m11923a();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10366n mo11841d() {
            return this.f23698b;
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        /* renamed from: d0 */
        public boolean mo11727d0() {
            boolean z = false;
            if (!m11872s()) {
                return false;
            }
            if (mo11845a().m11857j() == C10431h.EnumC10432a.PROTO2) {
                return m11877n().m12204y();
            }
            if (!m11877n().m12224G() || m11877n().m12204y()) {
                z = true;
            }
            return z;
        }

        /* renamed from: e */
        public final void m11886e() throws C10425d {
            if (this.f23698b.m12281B()) {
                AbstractC10433i a = this.f23700d.f23745g.m11899a(this.f23698b.m12252r(), this, C10421c.EnumC10424c.TYPES_ONLY);
                if (a instanceof C10420b) {
                    this.f23703g = (C10420b) a;
                    if (!m11884g().m11913b(getNumber())) {
                        throw new C10425d(this, '\"' + m11884g().mo11843b() + "\" does not declare " + getNumber() + " as an extension number.", (C10419a) null);
                    }
                } else {
                    throw new C10425d(this, '\"' + this.f23698b.m12252r() + "\" is not a message type.", (C10419a) null);
                }
            }
            if (this.f23698b.m12273J()) {
                AbstractC10433i a2 = this.f23700d.f23745g.m11899a(this.f23698b.m12244z(), this, C10421c.EnumC10424c.TYPES_ONLY);
                if (!this.f23698b.m12274I()) {
                    if (a2 instanceof C10420b) {
                        this.f23702f = EnumC10430b.MESSAGE;
                    } else if (a2 instanceof C10426e) {
                        this.f23702f = EnumC10430b.ENUM;
                    } else {
                        throw new C10425d(this, '\"' + this.f23698b.m12244z() + "\" is not a type.", (C10419a) null);
                    }
                }
                if (m11879l() == EnumC10429a.MESSAGE) {
                    if (a2 instanceof C10420b) {
                        this.f23704h = (C10420b) a2;
                        if (this.f23698b.m12282A()) {
                            throw new C10425d(this, "Messages can't have default values.", (C10419a) null);
                        }
                    } else {
                        throw new C10425d(this, '\"' + this.f23698b.m12244z() + "\" is not a message type.", (C10419a) null);
                    }
                } else if (m11879l() != EnumC10429a.ENUM) {
                    throw new C10425d(this, "Field with primitive type has type_name.", (C10419a) null);
                } else if (a2 instanceof C10426e) {
                    this.f23706j = (C10426e) a2;
                } else {
                    throw new C10425d(this, '\"' + this.f23698b.m12244z() + "\" is not an enum type.", (C10419a) null);
                }
            } else if (m11879l() == EnumC10429a.MESSAGE || m11879l() == EnumC10429a.ENUM) {
                throw new C10425d(this, "Field with message or enum type missing type_name.", (C10419a) null);
            }
            if (!this.f23698b.m12246x().m12204y() || m11872s()) {
                if (this.f23698b.m12282A()) {
                    if (!mo11731X()) {
                        try {
                            switch (C10419a.f23663a[m11876o().ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                    this.f23707k = Integer.valueOf(C10521z0.m11523b(this.f23698b.m12253q()));
                                    break;
                                case 4:
                                case 5:
                                    this.f23707k = Integer.valueOf(C10521z0.m11520d(this.f23698b.m12253q()));
                                    break;
                                case 6:
                                case 7:
                                case 8:
                                    this.f23707k = Long.valueOf(C10521z0.m11521c(this.f23698b.m12253q()));
                                    break;
                                case 9:
                                case 10:
                                    this.f23707k = Long.valueOf(C10521z0.m11519e(this.f23698b.m12253q()));
                                    break;
                                case 11:
                                    if (!this.f23698b.m12253q().equals("inf")) {
                                        if (!this.f23698b.m12253q().equals("-inf")) {
                                            if (!this.f23698b.m12253q().equals("nan")) {
                                                this.f23707k = Float.valueOf(this.f23698b.m12253q());
                                                break;
                                            } else {
                                                this.f23707k = Float.valueOf(Float.NaN);
                                                break;
                                            }
                                        } else {
                                            this.f23707k = Float.valueOf(Float.NEGATIVE_INFINITY);
                                            break;
                                        }
                                    } else {
                                        this.f23707k = Float.valueOf(Float.POSITIVE_INFINITY);
                                        break;
                                    }
                                case 12:
                                    if (!this.f23698b.m12253q().equals("inf")) {
                                        if (!this.f23698b.m12253q().equals("-inf")) {
                                            if (!this.f23698b.m12253q().equals("nan")) {
                                                this.f23707k = Double.valueOf(this.f23698b.m12253q());
                                                break;
                                            } else {
                                                this.f23707k = Double.valueOf(Double.NaN);
                                                break;
                                            }
                                        } else {
                                            this.f23707k = Double.valueOf(Double.NEGATIVE_INFINITY);
                                            break;
                                        }
                                    } else {
                                        this.f23707k = Double.valueOf(Double.POSITIVE_INFINITY);
                                        break;
                                    }
                                case 13:
                                    this.f23707k = Boolean.valueOf(this.f23698b.m12253q());
                                    break;
                                case 14:
                                    this.f23707k = this.f23698b.m12253q();
                                    break;
                                case 15:
                                    try {
                                        this.f23707k = C10521z0.m11529a((CharSequence) this.f23698b.m12253q());
                                        break;
                                    } catch (C10521z0.C10523b e) {
                                        throw new C10425d(this, "Couldn't parse default value: " + e.getMessage(), e, null);
                                    }
                                case 16:
                                    this.f23707k = this.f23706j.m11893a(this.f23698b.m12253q());
                                    if (this.f23707k != null) {
                                        break;
                                    } else {
                                        throw new C10425d(this, "Unknown enum default value: \"" + this.f23698b.m12253q() + '\"', (C10419a) null);
                                    }
                                case 17:
                                case 18:
                                    throw new C10425d(this, "Message type had default value.", (C10419a) null);
                            }
                        } catch (NumberFormatException e2) {
                            throw new C10425d(this, "Could not parse default value: \"" + this.f23698b.m12253q() + '\"', e2, null);
                        }
                    } else {
                        throw new C10425d(this, "Repeated fields cannot have default values.", (C10419a) null);
                    }
                } else if (mo11731X()) {
                    this.f23707k = Collections.emptyList();
                } else {
                    int i = C10419a.f23664b[m11879l().ordinal()];
                    if (i == 1) {
                        this.f23707k = this.f23706j.m11891e().get(0);
                    } else if (i != 2) {
                        this.f23707k = m11879l().f23718a;
                    } else {
                        this.f23707k = null;
                    }
                }
                if (!m11875p()) {
                    this.f23700d.f23745g.m11905a(this);
                }
                C10420b bVar = this.f23703g;
                if (bVar != null && bVar.m11908i().m11995w()) {
                    if (!m11875p()) {
                        throw new C10425d(this, "MessageSets cannot have fields, only extensions.", (C10419a) null);
                    } else if (!m11873r() || m11876o() != EnumC10430b.MESSAGE) {
                        throw new C10425d(this, "Extensions of MessageSets must be optional messages.", (C10419a) null);
                    }
                }
            } else {
                throw new C10425d(this, "[packed = true] can only be specified for repeated primitive fields.", (C10419a) null);
            }
        }

        /* renamed from: f */
        public C10435k m11885f() {
            return this.f23705i;
        }

        /* renamed from: g */
        public C10420b m11884g() {
            return this.f23703g;
        }

        @Override // p081h.p203i.p401g.C10465u.AbstractC10468c
        public int getNumber() {
            return this.f23698b.m12248v();
        }

        /* renamed from: h */
        public Object m11883h() {
            if (m11879l() != EnumC10429a.MESSAGE) {
                return this.f23707k;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        /* renamed from: i */
        public C10426e m11882i() {
            if (m11879l() == EnumC10429a.ENUM) {
                return this.f23706j;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.f23699c));
        }

        /* renamed from: j */
        public C10420b m11881j() {
            if (m11875p()) {
                return this.f23701e;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.f23699c));
        }

        /* renamed from: k */
        public int m11880k() {
            return this.f23697a;
        }

        /* renamed from: l */
        public EnumC10429a m11879l() {
            return this.f23702f.m11868a();
        }

        /* renamed from: m */
        public C10420b m11878m() {
            if (m11879l() == EnumC10429a.MESSAGE) {
                return this.f23704h;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.f23699c));
        }

        /* renamed from: n */
        public C10295k.C10374p m11877n() {
            return this.f23698b.m12246x();
        }

        /* renamed from: o */
        public EnumC10430b m11876o() {
            return this.f23702f;
        }

        /* renamed from: p */
        public boolean m11875p() {
            return this.f23698b.m12281B();
        }

        /* renamed from: q */
        public boolean m11874q() {
            return m11876o() == EnumC10430b.MESSAGE && mo11731X() && m11878m().m11908i().m11996v();
        }

        /* renamed from: r */
        public boolean m11873r() {
            return this.f23698b.m12250t() == C10295k.C10366n.EnumC10369c.LABEL_OPTIONAL;
        }

        /* renamed from: s */
        public boolean m11872s() {
            return mo11731X() && mo11730Y().mo11921c();
        }

        /* renamed from: t */
        public boolean m11871t() {
            return this.f23698b.m12250t() == C10295k.C10366n.EnumC10369c.LABEL_REQUIRED;
        }

        public String toString() {
            return mo11843b();
        }

        /* renamed from: u */
        public boolean m11870u() {
            if (this.f23702f != EnumC10430b.STRING) {
                return false;
            }
            if (!m11884g().m11908i().m11996v() && mo11845a().m11857j() != C10431h.EnumC10432a.PROTO3) {
                return mo11845a().m11860g().m12105E();
            }
            return true;
        }
    }

    /* renamed from: h.i.g.l$h */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$h.class */
    public static final class C10431h extends AbstractC10433i {

        /* renamed from: a */
        public C10295k.C10382r f23739a;

        /* renamed from: b */
        public final C10420b[] f23740b;

        /* renamed from: c */
        public final C10426e[] f23741c;

        /* renamed from: d */
        public final C10436l[] f23742d;

        /* renamed from: e */
        public final C10428g[] f23743e;

        /* renamed from: f */
        public final C10431h[] f23744f;

        /* renamed from: g */
        public final C10421c f23745g;

        /* renamed from: h.i.g.l$h$a */
        /* loaded from: classes2-dex2jar.jar:h/i/g/l$h$a.class */
        public enum EnumC10432a {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");
            

            /* renamed from: a */
            public final String f23750a;

            EnumC10432a(String str) {
                this.f23750a = str;
            }
        }

        public C10431h(C10295k.C10382r rVar, C10431h[] hVarArr, C10421c cVar, boolean z) throws C10425d {
            super(null);
            this.f23745g = cVar;
            this.f23739a = rVar;
            C10431h[] hVarArr2 = (C10431h[]) hVarArr.clone();
            HashMap hashMap = new HashMap();
            for (C10431h hVar : hVarArr) {
                hashMap.put(hVar.mo11842c(), hVar);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < rVar.m12187B(); i++) {
                int f = rVar.m12148f(i);
                if (f < 0 || f >= rVar.m12141q()) {
                    throw new C10425d(this, "Invalid public dependency index.", (C10419a) null);
                }
                String b = rVar.m12162b(f);
                C10431h hVar2 = (C10431h) hashMap.get(b);
                if (hVar2 != null) {
                    arrayList.add(hVar2);
                } else if (!z) {
                    throw new C10425d(this, "Invalid public dependency: " + b, (C10419a) null);
                }
            }
            this.f23744f = new C10431h[arrayList.size()];
            arrayList.toArray(this.f23744f);
            cVar.m11900a(m11859h(), this);
            this.f23740b = new C10420b[rVar.m12135w()];
            for (int i2 = 0; i2 < rVar.m12135w(); i2++) {
                this.f23740b[i2] = new C10420b(rVar.m12150e(i2), this, null, i2, null);
            }
            this.f23741c = new C10426e[rVar.m12139s()];
            for (int i3 = 0; i3 < rVar.m12139s(); i3++) {
                this.f23741c[i3] = new C10426e(rVar.m12157c(i3), this, null, i3, null);
            }
            this.f23742d = new C10436l[rVar.m12185D()];
            for (int i4 = 0; i4 < rVar.m12185D(); i4++) {
                this.f23742d[i4] = new C10436l(rVar.m12146g(i4), this, i4, null);
            }
            this.f23743e = new C10428g[rVar.m12137u()];
            for (int i5 = 0; i5 < rVar.m12137u(); i5++) {
                this.f23743e[i5] = new C10428g(rVar.m12153d(i5), this, null, i5, true, null);
            }
        }

        public C10431h(String str, C10420b bVar) throws C10425d {
            super(null);
            this.f23745g = new C10421c(new C10431h[0], true);
            C10295k.C10382r.C10384b Q = C10295k.C10382r.m12172Q();
            Q.m12126b(bVar.mo11843b() + ".placeholder.proto");
            Q.m12125c(str);
            Q.m12130a(bVar.mo11841d());
            this.f23739a = Q.build();
            this.f23744f = new C10431h[0];
            this.f23740b = new C10420b[]{bVar};
            this.f23741c = new C10426e[0];
            this.f23742d = new C10436l[0];
            this.f23743e = new C10428g[0];
            this.f23745g.m11900a(str, this);
            this.f23745g.m11903a(bVar);
        }

        /* renamed from: a */
        public static C10431h m11866a(C10295k.C10382r rVar, C10431h[] hVarArr, boolean z) throws C10425d {
            C10431h hVar = new C10431h(rVar, hVarArr, new C10421c(hVarArr, z), z);
            hVar.m11862e();
            return hVar;
        }

        /* renamed from: a */
        public static C10431h m11863a(String[] strArr, C10431h[] hVarArr) {
            try {
                C10295k.C10382r a = C10295k.C10382r.m12163a(m11864a(strArr));
                try {
                    return m11866a(a, hVarArr, true);
                } catch (C10425d e) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + a.m12133y() + "\".", e);
                }
            } catch (C10222a0 e2) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e2);
            }
        }

        /* renamed from: a */
        public static byte[] m11864a(String[] strArr) {
            if (strArr.length == 1) {
                return strArr[0].getBytes(C10516z.f23904b);
            }
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
            }
            return sb.toString().getBytes(C10516z.f23904b);
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23739a.m12133y();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23739a.m12133y();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10382r mo11841d() {
            return this.f23739a;
        }

        /* renamed from: e */
        public final void m11862e() throws C10425d {
            for (C10420b bVar : this.f23740b) {
                bVar.m11912e();
            }
            for (C10436l lVar : this.f23742d) {
                lVar.m11840e();
            }
            for (C10428g gVar : this.f23743e) {
                gVar.m11886e();
            }
        }

        /* renamed from: f */
        public List<C10420b> m11861f() {
            return Collections.unmodifiableList(Arrays.asList(this.f23740b));
        }

        /* renamed from: g */
        public C10295k.C10386t m11860g() {
            return this.f23739a.m12132z();
        }

        /* renamed from: h */
        public String m11859h() {
            return this.f23739a.m12188A();
        }

        /* renamed from: i */
        public List<C10431h> m11858i() {
            return Collections.unmodifiableList(Arrays.asList(this.f23744f));
        }

        /* renamed from: j */
        public EnumC10432a m11857j() {
            return EnumC10432a.PROTO3.f23750a.equals(this.f23739a.m12182G()) ? EnumC10432a.PROTO3 : EnumC10432a.PROTO2;
        }

        /* renamed from: k */
        public boolean m11856k() {
            return m11857j() == EnumC10432a.PROTO3;
        }
    }

    /* renamed from: h.i.g.l$i */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$i.class */
    public static abstract class AbstractC10433i {
        public AbstractC10433i() {
        }

        public /* synthetic */ AbstractC10433i(C10419a aVar) {
            this();
        }

        /* renamed from: a */
        public abstract C10431h mo11845a();

        /* renamed from: b */
        public abstract String mo11843b();

        /* renamed from: c */
        public abstract String mo11842c();

        /* renamed from: d */
        public abstract AbstractC10287j0 mo11841d();
    }

    /* renamed from: h.i.g.l$j */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$j.class */
    public static final class C10434j extends AbstractC10433i {

        /* renamed from: a */
        public C10295k.C10396x f23751a;

        /* renamed from: b */
        public final String f23752b;

        /* renamed from: c */
        public final C10431h f23753c;

        public C10434j(C10295k.C10396x xVar, C10431h hVar, C10436l lVar, int i) throws C10425d {
            super(null);
            this.f23751a = xVar;
            this.f23753c = hVar;
            this.f23752b = lVar.mo11843b() + '.' + xVar.m11966s();
            hVar.f23745g.m11903a(this);
        }

        public /* synthetic */ C10434j(C10295k.C10396x xVar, C10431h hVar, C10436l lVar, int i, C10419a aVar) throws C10425d {
            this(xVar, hVar, lVar, i);
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23753c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23752b;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23751a.m11966s();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10396x mo11841d() {
            return this.f23751a;
        }

        /* renamed from: e */
        public final void m11853e() throws C10425d {
            AbstractC10433i a = this.f23753c.f23745g.m11899a(this.f23751a.m11967r(), this, C10421c.EnumC10424c.TYPES_ONLY);
            if (a instanceof C10420b) {
                C10420b bVar = (C10420b) a;
                AbstractC10433i a2 = this.f23753c.f23745g.m11899a(this.f23751a.m11964u(), this, C10421c.EnumC10424c.TYPES_ONLY);
                if (a2 instanceof C10420b) {
                    C10420b bVar2 = (C10420b) a2;
                    return;
                }
                throw new C10425d(this, '\"' + this.f23751a.m11964u() + "\" is not a message type.", (C10419a) null);
            }
            throw new C10425d(this, '\"' + this.f23751a.m11967r() + "\" is not a message type.", (C10419a) null);
        }
    }

    /* renamed from: h.i.g.l$k */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$k.class */
    public static final class C10435k extends AbstractC10433i {

        /* renamed from: a */
        public final int f23754a;

        /* renamed from: b */
        public C10295k.C10309b0 f23755b;

        /* renamed from: c */
        public final String f23756c;

        /* renamed from: d */
        public final C10431h f23757d;

        /* renamed from: e */
        public C10420b f23758e;

        /* renamed from: f */
        public int f23759f;

        /* renamed from: g */
        public C10428g[] f23760g;

        public C10435k(C10295k.C10309b0 b0Var, C10431h hVar, C10420b bVar, int i) throws C10425d {
            super(null);
            this.f23755b = b0Var;
            this.f23756c = C10418l.m11917b(hVar, bVar, b0Var.m12562q());
            this.f23757d = hVar;
            this.f23754a = i;
            this.f23758e = bVar;
            this.f23759f = 0;
        }

        public /* synthetic */ C10435k(C10295k.C10309b0 b0Var, C10431h hVar, C10420b bVar, int i, C10419a aVar) throws C10425d {
            this(b0Var, hVar, bVar, i);
        }

        /* renamed from: b */
        public static /* synthetic */ int m11849b(C10435k kVar) {
            int i = kVar.f23759f;
            kVar.f23759f = i + 1;
            return i;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23757d;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23756c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23755b.m12562q();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10309b0 mo11841d() {
            return this.f23755b;
        }

        /* renamed from: e */
        public C10420b m11848e() {
            return this.f23758e;
        }

        /* renamed from: f */
        public int m11847f() {
            return this.f23759f;
        }

        /* renamed from: g */
        public int m11846g() {
            return this.f23754a;
        }
    }

    /* renamed from: h.i.g.l$l */
    /* loaded from: classes2-dex2jar.jar:h/i/g/l$l.class */
    public static final class C10436l extends AbstractC10433i {

        /* renamed from: a */
        public C10295k.C10329f0 f23761a;

        /* renamed from: b */
        public final String f23762b;

        /* renamed from: c */
        public final C10431h f23763c;

        /* renamed from: d */
        public C10434j[] f23764d;

        public C10436l(C10295k.C10329f0 f0Var, C10431h hVar, int i) throws C10425d {
            super(null);
            this.f23761a = f0Var;
            this.f23762b = C10418l.m11917b(hVar, null, f0Var.m12458s());
            this.f23763c = hVar;
            this.f23764d = new C10434j[f0Var.m12460q()];
            for (int i2 = 0; i2 < f0Var.m12460q(); i2++) {
                this.f23764d[i2] = new C10434j(f0Var.m12462b(i2), hVar, this, i2, null);
            }
            hVar.f23745g.m11903a(this);
        }

        public /* synthetic */ C10436l(C10295k.C10329f0 f0Var, C10431h hVar, int i, C10419a aVar) throws C10425d {
            this(f0Var, hVar, i);
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: a */
        public C10431h mo11845a() {
            return this.f23763c;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: b */
        public String mo11843b() {
            return this.f23762b;
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: c */
        public String mo11842c() {
            return this.f23761a.m12458s();
        }

        @Override // p081h.p203i.p401g.C10418l.AbstractC10433i
        /* renamed from: d */
        public C10295k.C10329f0 mo11841d() {
            return this.f23761a;
        }

        /* renamed from: e */
        public final void m11840e() throws C10425d {
            for (C10434j jVar : this.f23764d) {
                jVar.m11853e();
            }
        }
    }

    /* renamed from: b */
    public static String m11917b(C10431h hVar, C10420b bVar, String str) {
        if (bVar != null) {
            return bVar.mo11843b() + '.' + str;
        }
        String h = hVar.m11859h();
        if (h.isEmpty()) {
            return str;
        }
        return h + '.' + str;
    }
}
