package com.truecaller.insights.p168ui.models;

import android.content.Context;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8832b;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p479i.AbstractC9115i;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.f;
/* renamed from: com.truecaller.insights.ui.models.AdapterItem */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem.class */
public abstract class AdapterItem {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;", "", "<init>", "(Ljava/lang/String;I)V", "MODEL_DOWNLOAD", "DEFAULT_SMART_SMS", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$BannerType */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$BannerType.class */
    public enum BannerType {
        MODEL_DOWNLOAD,
        DEFAULT_SMART_SMS
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$a.class */
    public static final class C4109a extends AdapterItem {

        /* renamed from: a */
        public final long f12849a;

        /* renamed from: b */
        public final int f12850b;

        /* renamed from: c */
        public final int f12851c;

        /* renamed from: d */
        public final int f12852d;

        /* renamed from: e */
        public final int f12853e;

        /* renamed from: f */
        public final Integer f12854f;

        /* renamed from: g */
        public final BannerType f12855g;

        /* renamed from: h */
        public final int f12856h;

        /* renamed from: i */
        public final l<Context, s> f12857i;

        /* renamed from: j */
        public final a<s> f12858j;

        /* renamed from: k */
        public final a<s> f12859k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3 */
        public C4109a(long j, int i, int i2, int i3, int i4, Integer num, BannerType bannerType, int i5, l lVar, a aVar, a aVar2, int i6) {
            super(null);
            ?? r5 = (i6 & 1) != 0 ? 0 : j;
            s1.z.c.l.e(bannerType, "bannerType");
            s1.z.c.l.e(lVar, "primaryButtonAction");
            this.f12849a = r5;
            this.f12850b = i;
            this.f12851c = i2;
            this.f12852d = i3;
            this.f12853e = i4;
            this.f12854f = num;
            this.f12855g = bannerType;
            this.f12856h = i5;
            this.f12857i = lVar;
            this.f12858j = aVar;
            this.f12859k = aVar2;
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12849a;
        }

        public boolean equals(Object obj) {
            Object obj2 = obj;
            if (!(obj instanceof C4109a)) {
                obj2 = null;
            }
            C4109a c4109a = (C4109a) obj2;
            boolean z = false;
            if (c4109a != null) {
                z = false;
                if (this.f12850b == c4109a.f12850b) {
                    z = false;
                    if (this.f12851c == c4109a.f12851c) {
                        z = false;
                        if (this.f12852d == c4109a.f12852d) {
                            z = false;
                            if (this.f12856h == c4109a.f12856h) {
                                z = false;
                                if (this.f12853e == c4109a.f12853e) {
                                    z = false;
                                    if (s1.z.c.l.a(this.f12854f, c4109a.f12854f)) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f12849a);
            int i = this.f12850b;
            int i2 = this.f12851c;
            int i3 = this.f12852d;
            int i4 = this.f12853e;
            Integer num = this.f12854f;
            int i5 = 0;
            int hashCode = num != null ? num.hashCode() : 0;
            BannerType bannerType = this.f12855g;
            int hashCode2 = bannerType != null ? bannerType.hashCode() : 0;
            int i6 = this.f12856h;
            l<Context, s> lVar = this.f12857i;
            int hashCode3 = lVar != null ? lVar.hashCode() : 0;
            a<s> aVar = this.f12858j;
            int hashCode4 = aVar != null ? aVar.hashCode() : 0;
            a<s> aVar2 = this.f12859k;
            if (aVar2 != null) {
                i5 = aVar2.hashCode();
            }
            return (((((((((((((((((((m34274a * 31) + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode) * 31) + hashCode2) * 31) + i6) * 31) + hashCode3) * 31) + hashCode4) * 31) + i5;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("BannerItem(id=");
            m8728C.append(this.f12849a);
            m8728C.append(", bannerViewImage=");
            m8728C.append(this.f12850b);
            m8728C.append(", title=");
            m8728C.append(this.f12851c);
            m8728C.append(", subTitle=");
            m8728C.append(this.f12852d);
            m8728C.append(", primaryButtonText=");
            m8728C.append(this.f12853e);
            m8728C.append(", secondaryButtonText=");
            m8728C.append(this.f12854f);
            m8728C.append(", bannerType=");
            m8728C.append(this.f12855g);
            m8728C.append(", background=");
            m8728C.append(this.f12856h);
            m8728C.append(", primaryButtonAction=");
            m8728C.append(this.f12857i);
            m8728C.append(", secondaryButtonAction=");
            m8728C.append(this.f12858j);
            m8728C.append(", dismissAction=");
            m8728C.append(this.f12859k);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$b.class */
    public static final class C4110b extends AdapterItem implements AbstractC9115i<Long> {

        /* renamed from: a */
        public final long f12860a;

        /* renamed from: b */
        public final int f12861b;

        /* renamed from: c */
        public final Integer f12862c;

        /* renamed from: d */
        public boolean f12863d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3 */
        public C4110b(long j, int i, Integer num, boolean z, int i2) {
            super(null);
            ?? r5 = (i2 & 1) != 0 ? 0 : j;
            z = (i2 & 8) != 0 ? false : z;
            this.f12860a = r5;
            this.f12861b = i;
            this.f12862c = null;
            this.f12863d = z;
        }

        @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9115i
        /* renamed from: a */
        public Long mo27868a() {
            return Long.valueOf(this.f12860a);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12860a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4110b)) {
                    return false;
                }
                C4110b c4110b = (C4110b) obj;
                return this.f12860a == c4110b.f12860a && this.f12861b == c4110b.f12861b && s1.z.c.l.a(this.f12862c, c4110b.f12862c) && this.f12863d == c4110b.f12863d;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f12860a);
            int i = this.f12861b;
            Integer num = this.f12862c;
            int hashCode = num != null ? num.hashCode() : 0;
            boolean z = this.f12863d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((((m34274a * 31) + i) * 31) + hashCode) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CollapsibleSectionItem(id=");
            m8728C.append(this.f12860a);
            m8728C.append(", title=");
            m8728C.append(this.f12861b);
            m8728C.append(", toolTip=");
            m8728C.append(this.f12862c);
            m8728C.append(", isCollapsed=");
            return C22128a.m8590o(m8728C, this.f12863d, ")");
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$c.class */
    public static final class C4111c extends AdapterItem {

        /* renamed from: a */
        public final boolean f12864a;

        public C4111c(boolean z) {
            super(null);
            this.f12864a = z;
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return -1115L;
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$d.class */
    public static final class C4112d extends AdapterItem implements AbstractC9115i<Long> {

        /* renamed from: a */
        public final String f12865a;

        /* renamed from: b */
        public final long f12866b;

        /* renamed from: c */
        public final long f12867c;

        /* renamed from: d */
        public boolean f12868d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        public C4112d(String str, long j, long j2, boolean z, int i) {
            super(null);
            ?? r6 = (i & 2) != 0 ? 0 : j;
            z = (i & 8) != 0 ? false : z;
            s1.z.c.l.e(str, "title");
            this.f12865a = str;
            this.f12866b = r6;
            this.f12867c = j2;
            this.f12868d = z;
        }

        @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9115i
        /* renamed from: a */
        public Long mo27868a() {
            return Long.valueOf(this.f12867c);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12866b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4112d)) {
                    return false;
                }
                C4112d c4112d = (C4112d) obj;
                return s1.z.c.l.a(this.f12865a, c4112d.f12865a) && this.f12866b == c4112d.f12866b && this.f12867c == c4112d.f12867c && this.f12868d == c4112d.f12868d;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f12865a;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12866b);
            int m34274a2 = C4876d.m34274a(this.f12867c);
            boolean z = this.f12868d;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (((((hashCode * 31) + m34274a) * 31) + m34274a2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("DateTitleItem(title=");
            m8728C.append(this.f12865a);
            m8728C.append(", id=");
            m8728C.append(this.f12866b);
            m8728C.append(", keyIndex=");
            m8728C.append(this.f12867c);
            m8728C.append(", isCollapsed=");
            return C22128a.m8590o(m8728C, this.f12868d, ")");
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$e */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$e.class */
    public static final class C4113e extends AdapterItem implements AbstractC9115i<Long> {

        /* renamed from: a */
        public final int f12869a;

        /* renamed from: b */
        public final int f12870b;

        /* renamed from: c */
        public final int f12871c;

        /* renamed from: d */
        public final long f12872d;

        public C4113e(int i, int i2, int i3, long j) {
            super(null);
            this.f12869a = i;
            this.f12870b = i2;
            this.f12871c = i3;
            this.f12872d = j;
        }

        @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9115i
        /* renamed from: a */
        public Long mo27868a() {
            return Long.valueOf(this.f12872d);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12872d;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4113e)) {
                    return false;
                }
                C4113e c4113e = (C4113e) obj;
                return this.f12869a == c4113e.f12869a && this.f12870b == c4113e.f12870b && this.f12871c == c4113e.f12871c && this.f12872d == c4113e.f12872d;
            }
            return true;
        }

        public int hashCode() {
            return (((((this.f12869a * 31) + this.f12870b) * 31) + this.f12871c) * 31) + C4876d.m34274a(this.f12872d);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("EmptyItem(title=");
            m8728C.append(this.f12869a);
            m8728C.append(", caption=");
            m8728C.append(this.f12870b);
            m8728C.append(", imgRes=");
            m8728C.append(this.f12871c);
            m8728C.append(", id=");
            return C22128a.m8693K2(m8728C, this.f12872d, ")");
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$f */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$f.class */
    public static final class C4114f extends AdapterItem implements AbstractC9115i<Long> {

        /* renamed from: a */
        public final long f12873a;

        public C4114f() {
            super(null);
            this.f12873a = 0L;
        }

        public C4114f(long j) {
            super(null);
            this.f12873a = j;
        }

        @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9115i
        /* renamed from: a */
        public Long mo27868a() {
            return Long.valueOf(this.f12873a);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12873a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C4114f) && this.f12873a == ((C4114f) obj).f12873a;
            }
            return true;
        }

        public int hashCode() {
            return C4876d.m34274a(this.f12873a);
        }

        public String toString() {
            return C22128a.m8693K2(C22128a.m8728C("EmptyPageItem(id="), this.f12873a, ")");
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$g */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$g.class */
    public static final class C4115g extends AdapterItem {

        /* renamed from: a */
        public static final C4115g f12874a = new C4115g();

        public C4115g() {
            super(null);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return -1114L;
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$h */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$h.class */
    public static final class C4116h extends AdapterItem {
        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return 0L;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4116h)) {
                    return false;
                }
                Objects.requireNonNull((C4116h) obj);
                return true;
            }
            return true;
        }

        public int hashCode() {
            return (((((0 * 31) + 0) * 31) + 0) * 31) + C4876d.m34274a(0L);
        }

        public String toString() {
            return "MiniBannerItem(title=0, caption=0, imgRes=0, id=0)";
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$i */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$i.class */
    public static final class C4117i extends AdapterItem {

        /* renamed from: a */
        public final int f12875a;

        /* renamed from: b */
        public final Integer f12876b;

        /* renamed from: c */
        public final long f12877c;

        /* renamed from: d */
        public final C8833c f12878d;

        /* renamed from: e */
        public final C8832b f12879e;

        /* renamed from: f */
        public final Integer f12880f;

        /* renamed from: g */
        public final Integer f12881g;

        public C4117i(int i, Integer num, long j, C8833c c8833c, C8832b c8832b, Integer num2, Integer num3) {
            super(null);
            this.f12875a = i;
            this.f12876b = num;
            this.f12877c = j;
            this.f12878d = c8833c;
            this.f12879e = c8832b;
            this.f12880f = num2;
            this.f12881g = num3;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v1 */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        public C4117i(int i, Integer num, long j, C8833c c8833c, C8832b c8832b, Integer num2, Integer num3, int i2) {
            super(null);
            num = (i2 & 2) != 0 ? null : num;
            ?? r7 = (i2 & 4) != 0 ? 0 : j;
            c8833c = (i2 & 8) != 0 ? null : c8833c;
            c8832b = (i2 & 16) != 0 ? null : c8832b;
            num2 = (i2 & 32) != 0 ? null : num2;
            num3 = (i2 & 64) != 0 ? null : num3;
            this.f12875a = i;
            this.f12876b = num;
            this.f12877c = r7;
            this.f12878d = c8833c;
            this.f12879e = c8832b;
            this.f12880f = num2;
            this.f12881g = num3;
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12877c;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4117i)) {
                    return false;
                }
                C4117i c4117i = (C4117i) obj;
                return this.f12875a == c4117i.f12875a && s1.z.c.l.a(this.f12876b, c4117i.f12876b) && this.f12877c == c4117i.f12877c && s1.z.c.l.a(this.f12878d, c4117i.f12878d) && s1.z.c.l.a(this.f12879e, c4117i.f12879e) && s1.z.c.l.a(this.f12880f, c4117i.f12880f) && s1.z.c.l.a(this.f12881g, c4117i.f12881g);
            }
            return true;
        }

        public int hashCode() {
            int i = this.f12875a;
            Integer num = this.f12876b;
            int i2 = 0;
            int hashCode = num != null ? num.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f12877c);
            C8833c c8833c = this.f12878d;
            int hashCode2 = c8833c != null ? c8833c.hashCode() : 0;
            C8832b c8832b = this.f12879e;
            int hashCode3 = c8832b != null ? c8832b.hashCode() : 0;
            Integer num2 = this.f12880f;
            int hashCode4 = num2 != null ? num2.hashCode() : 0;
            Integer num3 = this.f12881g;
            if (num3 != null) {
                i2 = num3.hashCode();
            }
            return (((((((((((i * 31) + hashCode) * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TitleItem(title=");
            m8728C.append(this.f12875a);
            m8728C.append(", desc=");
            m8728C.append(this.f12876b);
            m8728C.append(", id=");
            m8728C.append(this.f12877c);
            m8728C.append(", titleAction=");
            m8728C.append(this.f12878d);
            m8728C.append(", secondaryAction=");
            m8728C.append(this.f12879e);
            m8728C.append(", toolTip=");
            m8728C.append(this.f12880f);
            m8728C.append(", secondaryToolTip=");
            return C22128a.m8689L2(m8728C, this.f12881g, ")");
        }
    }

    /* renamed from: com.truecaller.insights.ui.models.AdapterItem$j */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/models/AdapterItem$j.class */
    public static final class C4118j extends AdapterItem implements AbstractC9115i<Long> {

        /* renamed from: a */
        public final AbstractC9235b f12882a;

        /* renamed from: b */
        public final long f12883b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4118j(AbstractC9235b abstractC9235b, long j) {
            super(null);
            s1.z.c.l.e(abstractC9235b, "businessTabItem");
            this.f12882a = abstractC9235b;
            this.f12883b = j;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        public C4118j(AbstractC9235b abstractC9235b, long j, int i) {
            super(null);
            ?? mo27782a = (i & 2) != 0 ? abstractC9235b.mo27782a() : j;
            s1.z.c.l.e(abstractC9235b, "businessTabItem");
            this.f12882a = abstractC9235b;
            this.f12883b = mo27782a;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r0v26, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9115i
        /* renamed from: a */
        public Long mo27868a() {
            char c;
            AbstractC9235b abstractC9235b = this.f12882a;
            if (abstractC9235b instanceof AbstractC9235b.C9237b) {
                c = ((AbstractC9235b.C9237b) abstractC9235b).f28045j;
            } else if (abstractC9235b instanceof AbstractC9235b.C9243h) {
                c = ((AbstractC9235b.C9243h) abstractC9235b).f28120g;
            } else if (abstractC9235b instanceof AbstractC9235b.C9240e) {
                c = ((AbstractC9235b.C9240e) abstractC9235b).f28089u;
            } else if (!(abstractC9235b instanceof AbstractC9235b.C9242g)) {
                if (!(abstractC9235b instanceof AbstractC9235b.C9241f)) {
                    throw new IllegalStateException("This Business Item type is not supported");
                }
                Objects.requireNonNull((AbstractC9235b.C9241f) abstractC9235b);
                throw null;
            } else {
                c = abstractC9235b.mo27782a();
            }
            return Long.valueOf(c);
        }

        @Override // com.truecaller.insights.p168ui.models.AdapterItem
        /* renamed from: b */
        public long mo35161b() {
            return this.f12883b;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4118j)) {
                    return false;
                }
                C4118j c4118j = (C4118j) obj;
                return s1.z.c.l.a(this.f12882a, c4118j.f12882a) && this.f12883b == c4118j.f12883b;
            }
            return true;
        }

        public int hashCode() {
            AbstractC9235b abstractC9235b = this.f12882a;
            return ((abstractC9235b != null ? abstractC9235b.hashCode() : 0) * 31) + C4876d.m34274a(this.f12883b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ValueItem(businessTabItem=");
            m8728C.append(this.f12882a);
            m8728C.append(", id=");
            return C22128a.m8693K2(m8728C, this.f12883b, ")");
        }
    }

    public AdapterItem() {
    }

    public AdapterItem(f fVar) {
    }

    /* renamed from: b */
    public abstract long mo35161b();
}
