package org.mistergroup.shouldianswer.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import androidx.customview.p026a.AbstractC0610a;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.geocoding.PhoneNumberOfflineGeocoder;
import java.util.Locale;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p073a.C1594a;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import org.mistergroup.shouldianswer.model.NumberReport;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo.class */
public final class NumberInfo implements Parcelable {

    /* renamed from: A */
    private String f6648A;

    /* renamed from: B */
    private String f6649B;

    /* renamed from: C */
    private String f6650C;

    /* renamed from: D */
    private Boolean f6651D;

    /* renamed from: E */
    private NumberCaption f6652E;

    /* renamed from: F */
    private String f6653F;

    /* renamed from: G */
    private String f6654G;

    /* renamed from: H */
    private Phonenumber.PhoneNumber f6655H;

    /* renamed from: I */
    private boolean f6656I;

    /* renamed from: J */
    private EnumC2429h f6657J;

    /* renamed from: K */
    private C2385ac f6658K;

    /* renamed from: a */
    public String f6659a;

    /* renamed from: c */
    private String f6660c;

    /* renamed from: d */
    private EnumC2436k f6661d;

    /* renamed from: e */
    private boolean f6662e;

    /* renamed from: f */
    private boolean f6663f;

    /* renamed from: g */
    private boolean f6664g;

    /* renamed from: h */
    private boolean f6665h;

    /* renamed from: i */
    private boolean f6666i;

    /* renamed from: j */
    private boolean f6667j;

    /* renamed from: k */
    private boolean f6668k;

    /* renamed from: l */
    private boolean f6669l;

    /* renamed from: m */
    private boolean f6670m;

    /* renamed from: n */
    private EnumC2395ag f6671n;

    /* renamed from: o */
    private EnumC2395ag f6672o;

    /* renamed from: p */
    private EnumC2395ag f6673p;

    /* renamed from: q */
    private EnumC2429h f6674q;

    /* renamed from: r */
    private EnumC2429h f6675r;

    /* renamed from: s */
    private EnumC2439m f6676s;

    /* renamed from: t */
    private int f6677t;

    /* renamed from: u */
    private boolean f6678u;

    /* renamed from: v */
    private boolean f6679v;

    /* renamed from: w */
    private int f6680w;

    /* renamed from: x */
    private int f6681x;

    /* renamed from: y */
    private int f6682y;

    /* renamed from: z */
    private NumberReport f6683z;

    /* renamed from: b */
    public static final C2347a f6647b = new C2347a(null);
    public static final Parcelable.Creator<NumberInfo> CREATOR = new C2349b();

    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$a.class */
    public static final class C2347a {
        private C2347a() {
        }

        public /* synthetic */ C2347a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final String m1433a(String str) {
            C1694h.m3117b(str, "number");
            if (C1694h.m3123a((Object) str, (Object) "-2")) {
                return "EMPTY";
            }
            if (C1694h.m3123a((Object) str, (Object) "-1")) {
                return "HIDDEN";
            }
            int length = str.length() - 4;
            String str2 = str;
            if (length > 0) {
                StringBuilder sb = new StringBuilder();
                String substring = str.substring(0, length);
                C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                sb.append(substring);
                sb.append("#");
                String substring2 = str.substring(length);
                C1694h.m3122a((Object) substring2, "(this as java.lang.String).substring(startIndex)");
                sb.append(Integer.toHexString(substring2.hashCode()));
                str2 = sb.toString();
            }
            return str2;
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {375}, m3160d = "wantblockIncoming", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$aa */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$aa.class */
    public static final class C2348aa extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6684a;

        /* renamed from: b */
        int f6685b;

        /* renamed from: d */
        Object f6687d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2348aa(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6684a = obj;
            this.f6685b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1458k(this);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$b.class */
    public static final class C2349b implements Parcelable.Creator<NumberInfo> {
        C2349b() {
        }

        /* renamed from: a */
        public NumberInfo createFromParcel(Parcel parcel) {
            C1694h.m3117b(parcel, "parcel");
            return new NumberInfo(parcel);
        }

        /* renamed from: a */
        public NumberInfo[] newArray(int i) {
            return new NumberInfo[i];
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {491}, m3160d = "addToCheckedCalls", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$c.class */
    public static final class C2350c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6688a;

        /* renamed from: b */
        int f6689b;

        /* renamed from: d */
        Object f6691d;

        /* renamed from: e */
        long f6692e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2350c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6688a = obj;
            this.f6689b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1478b(0L, this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {489}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo$addToCheckedCalls$2")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$d.class */
    public static final class C2351d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6693a;

        /* renamed from: b */
        int f6694b;

        /* renamed from: d */
        final /* synthetic */ long f6696d;

        /* renamed from: e */
        private AbstractC1786ad f6697e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2351d(long j, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            NumberInfo.this = r5;
            this.f6696d = j;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2351d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2351d c2351d = new C2351d(this.f6696d, abstractC1641c);
            c2351d.f6697e = (AbstractC1786ad) obj;
            return c2351d;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f6694b;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f6697e;
                NumberInfo numberInfo = NumberInfo.this;
                long j = this.f6696d;
                this.f6693a = abstractC1786ad;
                this.f6694b = 1;
                if (numberInfo.m1484a(j, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6693a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {482}, m3160d = "addToCheckedCallsInternal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$e.class */
    public static final class C2352e extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6698a;

        /* renamed from: b */
        int f6699b;

        /* renamed from: d */
        Object f6701d;

        /* renamed from: e */
        long f6702e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2352e(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6698a = obj;
            this.f6699b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1484a(0L, this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {807, 808, 809, 810, 817, 818}, m3160d = "collectData", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$f.class */
    public static final class C2353f extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6703a;

        /* renamed from: b */
        int f6704b;

        /* renamed from: d */
        Object f6706d;

        /* renamed from: e */
        Object f6707e;

        /* renamed from: f */
        Object f6708f;

        /* renamed from: g */
        Object f6709g;

        /* renamed from: h */
        Object f6710h;

        /* renamed from: i */
        boolean f6711i;

        /* renamed from: j */
        boolean f6712j;

        /* renamed from: k */
        boolean f6713k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2353f(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6703a = obj;
            this.f6704b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1434w(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {576, 589, 609, 616, 665}, m3160d = "computeBlockingIncoming", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$g.class */
    public static final class C2354g extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6714a;

        /* renamed from: b */
        int f6715b;

        /* renamed from: d */
        Object f6717d;

        /* renamed from: e */
        Object f6718e;

        /* renamed from: f */
        Object f6719f;

        /* renamed from: g */
        Object f6720g;

        /* renamed from: h */
        Object f6721h;

        /* renamed from: i */
        boolean f6722i;

        /* renamed from: j */
        boolean f6723j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2354g(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6714a = obj;
            this.f6715b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1438u(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {693, 712, 728, 734, 771, 778}, m3160d = "computeBlockingOutgoing", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$h.class */
    public static final class C2355h extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6724a;

        /* renamed from: b */
        int f6725b;

        /* renamed from: d */
        Object f6727d;

        /* renamed from: e */
        Object f6728e;

        /* renamed from: f */
        Object f6729f;

        /* renamed from: g */
        Object f6730g;

        /* renamed from: h */
        Object f6731h;

        /* renamed from: i */
        boolean f6732i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2355h(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6724a = obj;
            this.f6725b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1436v(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {519}, m3160d = "computeRating", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$i.class */
    public static final class C2356i extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6733a;

        /* renamed from: b */
        int f6734b;

        /* renamed from: d */
        Object f6736d;

        /* renamed from: e */
        Object f6737e;

        /* renamed from: f */
        Object f6738f;

        /* renamed from: g */
        Object f6739g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2356i(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6733a = obj;
            this.f6734b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1440t(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {150}, m3160d = "getBlockException", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$j.class */
    public static final class C2357j extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6740a;

        /* renamed from: b */
        int f6741b;

        /* renamed from: d */
        Object f6743d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2357j(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6740a = obj;
            this.f6741b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1476b(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {276}, m3160d = "getBlockReasonFinal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$k.class */
    public static final class C2358k extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6744a;

        /* renamed from: b */
        int f6745b;

        /* renamed from: d */
        Object f6747d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2358k(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6744a = obj;
            this.f6745b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1470e(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {473}, m3160d = "getCategory", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$l.class */
    public static final class C2359l extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6748a;

        /* renamed from: b */
        int f6749b;

        /* renamed from: d */
        Object f6751d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2359l(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6748a = obj;
            this.f6749b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1442s(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {287}, m3160d = "getCategoryAsString", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$m.class */
    public static final class C2360m extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6752a;

        /* renamed from: b */
        int f6753b;

        /* renamed from: d */
        Object f6755d;

        /* renamed from: e */
        Object f6756e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2360m(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6752a = obj;
            this.f6753b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1468f(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {137}, m3160d = "getNumberNational", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$n.class */
    public static final class C2361n extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6757a;

        /* renamed from: b */
        int f6758b;

        /* renamed from: d */
        Object f6760d;

        /* renamed from: e */
        Object f6761e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2361n(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6757a = obj;
            this.f6758b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1481a(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {408}, m3160d = "getNumberReport", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$o.class */
    public static final class C2362o extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6762a;

        /* renamed from: b */
        int f6763b;

        /* renamed from: d */
        Object f6765d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2362o(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6762a = obj;
            this.f6763b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1450o(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {385}, m3160d = "getRating", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$p.class */
    public static final class C2363p extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6766a;

        /* renamed from: b */
        int f6767b;

        /* renamed from: d */
        Object f6769d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2363p(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6766a = obj;
            this.f6767b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1454m(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {417}, m3160d = "getRatingCommunity", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$q.class */
    public static final class C2364q extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6770a;

        /* renamed from: b */
        int f6771b;

        /* renamed from: d */
        Object f6773d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2364q(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6770a = obj;
            this.f6771b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1448p(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {440}, m3160d = "getRatingCommunityCountNegative", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$r.class */
    public static final class C2365r extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6774a;

        /* renamed from: b */
        int f6775b;

        /* renamed from: d */
        Object f6777d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2365r(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6774a = obj;
            this.f6775b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1444r(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {426}, m3160d = "getRatingCommunityCountPositive", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$s */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$s.class */
    public static final class C2366s extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6778a;

        /* renamed from: b */
        int f6779b;

        /* renamed from: d */
        Object f6781d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2366s(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6778a = obj;
            this.f6779b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1446q(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {399}, m3160d = "getRatingLocal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$t */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$t.class */
    public static final class C2367t extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6782a;

        /* renamed from: b */
        int f6783b;

        /* renamed from: d */
        Object f6785d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2367t(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6782a = obj;
            this.f6783b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1452n(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {261}, m3160d = "isWantBlockButDBHasHigherSensitivityFinal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$u */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$u.class */
    public static final class C2368u extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6786a;

        /* renamed from: b */
        int f6787b;

        /* renamed from: d */
        Object f6789d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2368u(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6786a = obj;
            this.f6787b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1472d(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {356, 356}, m3160d = "wantAlertFinal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$v */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$v.class */
    public static final class C2369v extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6790a;

        /* renamed from: b */
        int f6791b;

        /* renamed from: d */
        Object f6793d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2369v(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6790a = obj;
            this.f6791b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1466g(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {360}, m3160d = "wantAlertIncoming", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$w */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$w.class */
    public static final class C2370w extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6794a;

        /* renamed from: b */
        int f6795b;

        /* renamed from: d */
        Object f6797d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2370w(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6794a = obj;
            this.f6795b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1464h(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {365}, m3160d = "wantAlertOutgoing", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$x */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$x.class */
    public static final class C2371x extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6798a;

        /* renamed from: b */
        int f6799b;

        /* renamed from: d */
        Object f6801d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2371x(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6798a = obj;
            this.f6799b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1462i(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {370, 370}, m3160d = "wantBlockFinal", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$y */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$y.class */
    public static final class C2372y extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6802a;

        /* renamed from: b */
        int f6803b;

        /* renamed from: d */
        Object f6805d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2372y(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6802a = obj;
            this.f6803b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1460j(this);
        }
    }

    @AbstractC1634f(m3162b = "NumberInfo.kt", m3161c = {380}, m3160d = "wantBlockOutgoing", m3159e = "org.mistergroup.shouldianswer.model.NumberInfo")
    /* renamed from: org.mistergroup.shouldianswer.model.NumberInfo$z */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberInfo$z.class */
    public static final class C2373z extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6806a;

        /* renamed from: b */
        int f6807b;

        /* renamed from: d */
        Object f6809d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2373z(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            NumberInfo.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6806a = obj;
            this.f6807b |= AbstractC0610a.INVALID_ID;
            return NumberInfo.this.m1456l(this);
        }
    }

    private NumberInfo() {
        this.f6671n = EnumC2395ag.UNKNOWN;
        this.f6672o = EnumC2395ag.UNKNOWN;
        this.f6673p = EnumC2395ag.UNKNOWN;
        this.f6674q = EnumC2429h.NONE;
        this.f6675r = EnumC2429h.NONE;
        this.f6676s = EnumC2439m.NONE;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NumberInfo(Parcel parcel) {
        this();
        C1694h.m3117b(parcel, "parcel");
        String readString = parcel.readString();
        this.f6659a = readString == null ? "" : readString;
        String readString2 = parcel.readString();
        this.f6660c = readString2 == null ? "" : readString2;
        this.f6648A = parcel.readString();
        this.f6649B = parcel.readString();
        this.f6662e = parcel.readByte() != 0;
        this.f6663f = parcel.readByte() != 0;
        this.f6664g = parcel.readByte() != 0;
        this.f6665h = parcel.readByte() != 0;
        this.f6666i = parcel.readByte() != 0;
        this.f6667j = parcel.readByte() != 0;
        this.f6668k = parcel.readByte() != 0;
        this.f6669l = parcel.readByte() != 0;
        this.f6670m = parcel.readByte() != 0;
        this.f6671n = EnumC2395ag.f6924e.m1314a(parcel.readInt());
        this.f6672o = EnumC2395ag.f6924e.m1314a(parcel.readInt());
        this.f6673p = EnumC2395ag.f6924e.m1314a(parcel.readInt());
        this.f6674q = EnumC2429h.values()[parcel.readInt()];
        this.f6675r = EnumC2429h.values()[parcel.readInt()];
        this.f6661d = EnumC2436k.f7111i.m1024a(parcel.readInt());
        this.f6676s = EnumC2439m.f7139w.m1016a(parcel.readInt());
        this.f6677t = parcel.readInt();
        this.f6678u = parcel.readByte() != 0;
        this.f6679v = parcel.readByte() != 0;
        this.f6680w = parcel.readInt();
        this.f6681x = parcel.readInt();
        this.f6682y = parcel.readInt();
        this.f6654G = parcel.readString();
        this.f6683z = (NumberReport) parcel.readParcelable(NumberReport.class.getClassLoader());
        this.f6652E = (NumberCaption) parcel.readParcelable(NumberCaption.class.getClassLoader());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
        if ((r4.length() == 0) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NumberInfo(java.lang.String r4, java.lang.String r5, org.mistergroup.shouldianswer.model.EnumC2436k r6, boolean r7) {
        /*
            r3 = this;
            r0 = r5
            java.lang.String r1 = "country"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r6
            java.lang.String r1 = "callType"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            r0 = r3
            r0.<init>()
            r0 = r4
            if (r0 == 0) goto L30
            r0 = r4
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            int r0 = r0.length()
            if (r0 != 0) goto L28
            r0 = 1
            r8 = r0
            goto L2b
        L28:
            r0 = 0
            r8 = r0
        L2b:
            r0 = r8
            if (r0 == 0) goto L34
        L30:
            java.lang.String r0 = "-2"
            r4 = r0
        L34:
            r0 = r3
            r1 = r4
            r0.f6659a = r1
            r0 = r3
            r1 = r6
            r0.f6661d = r1
            r0 = r3
            r1 = r7
            r0.f6679v = r1
            r0 = r3
            r1 = r5
            r0.f6660c = r1
            r0 = r3
            r1 = r6
            r0.f6661d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.<init>(java.lang.String, java.lang.String, org.mistergroup.shouldianswer.model.k, boolean):void");
    }

    public /* synthetic */ NumberInfo(String str, String str2, EnumC2436k enumC2436k, boolean z, int i, C1691e c1691e) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? EnumC2436k.UNKNOWN : enumC2436k, (i & 8) != 0 ? false : z);
    }

    /* renamed from: v */
    private final boolean m1437v() {
        if (!this.f6669l) {
            m1451o();
        }
        return this.f6668k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
        if (r0 == false) goto L22;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1435w() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            r1 = 0
            r0.f6662e = r1
            r0 = r3
            r1 = 0
            r0.f6663f = r1
            r0 = r3
            boolean r0 = org.mistergroup.shouldianswer.model.C2464x.m964e(r0)
            if (r0 == 0) goto L14
            return
        L14:
            r0 = r3
            boolean r0 = r0.m1437v()
            r5 = r0
            r0 = r3
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6671n
            org.mistergroup.shouldianswer.model.ag r1 = org.mistergroup.shouldianswer.model.EnumC2395ag.POSITIVE
            if (r0 != r1) goto L2f
            r0 = r5
            if (r0 != 0) goto L2a
            goto L2f
        L2a:
            r0 = 0
            r6 = r0
            goto L31
        L2f:
            r0 = 1
            r6 = r0
        L31:
            r0 = r3
            r1 = r6
            r0.f6662e = r1
            r0 = r3
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6671n
            org.mistergroup.shouldianswer.model.ag r1 = org.mistergroup.shouldianswer.model.EnumC2395ag.UNKNOWN
            if (r0 != r1) goto L4e
            org.mistergroup.shouldianswer.model.ai r0 = org.mistergroup.shouldianswer.model.C2398ai.f6930a
            boolean r0 = r0.m1236x()
            if (r0 != 0) goto L4e
            r0 = r3
            r1 = 0
            r0.f6662e = r1
        L4e:
            r0 = r4
            r6 = r0
            r0 = r3
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6671n
            org.mistergroup.shouldianswer.model.ag r1 = org.mistergroup.shouldianswer.model.EnumC2395ag.UNKNOWN
            if (r0 == r1) goto L6c
            r0 = r3
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6671n
            org.mistergroup.shouldianswer.model.ag r1 = org.mistergroup.shouldianswer.model.EnumC2395ag.POSITIVE
            if (r0 != r1) goto L6a
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L6c
        L6a:
            r0 = 1
            r6 = r0
        L6c:
            r0 = r3
            r1 = r6
            r0.f6663f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1435w():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m1484a(long r7, kotlin.p075c.AbstractC1641c<? super java.lang.Void> r9) {
        /*
            r6 = this;
            r0 = r9
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2352e
            if (r0 == 0) goto L2d
            r0 = r9
            org.mistergroup.shouldianswer.model.NumberInfo$e r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2352e) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f6699b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2d
            r0 = r10
            r1 = r10
            int r1 = r1.f6699b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6699b = r1
            r0 = r10
            r9 = r0
            goto L37
        L2d:
            org.mistergroup.shouldianswer.model.NumberInfo$e r0 = new org.mistergroup.shouldianswer.model.NumberInfo$e
            r1 = r0
            r2 = r6
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L37:
            r0 = r9
            java.lang.Object r0 = r0.f6698a
            r11 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r10 = r0
            r0 = r9
            int r0 = r0.f6699b
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L73
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L68
            r0 = r9
            long r0 = r0.f6702e
            r7 = r0
            r0 = r9
            java.lang.Object r0 = r0.f6701d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r9 = r0
            r0 = r11
            kotlin.C1771k.m2979a(r0)
            goto L9c
        L68:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L73:
            r0 = r11
            kotlin.C1771k.m2979a(r0)
            org.mistergroup.shouldianswer.model.r r0 = org.mistergroup.shouldianswer.model.C2450r.f7170a
            r11 = r0
            r0 = r9
            r1 = r6
            r0.f6701d = r1
            r0 = r9
            r1 = r7
            r0.f6702e = r1
            r0 = r9
            r1 = 1
            r0.f6699b = r1
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r9
            java.lang.Object r0 = r0.m986a(r1, r2, r3)
            r1 = r10
            if (r0 != r1) goto L9c
            r0 = r10
            return r0
        L9c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1484a(long, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1481a(kotlin.p075c.AbstractC1641c<? super java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1481a(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final String m1485a() {
        String str = this.f6659a;
        if (str == null) {
            C1694h.m3116b("number");
        }
        return str;
    }

    /* renamed from: a */
    public final String m1483a(Context context) {
        C1694h.m3117b(context, "context");
        String m1461j = m1461j();
        return m1461j != null ? m1461j : m1477b(context);
    }

    /* renamed from: a */
    public final void m1482a(String str) {
        this.f6653F = str;
    }

    /* renamed from: a */
    public final void m1480a(EnumC2436k enumC2436k) {
        C1694h.m3117b(enumC2436k, "callType");
        this.f6661d = enumC2436k;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1478b(long r11, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r13) {
        /*
            r10 = this;
            r0 = r13
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2350c
            if (r0 == 0) goto L2d
            r0 = r13
            org.mistergroup.shouldianswer.model.NumberInfo$c r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2350c) r0
            r14 = r0
            r0 = r14
            int r0 = r0.f6689b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2d
            r0 = r14
            r1 = r14
            int r1 = r1.f6689b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6689b = r1
            r0 = r14
            r13 = r0
            goto L37
        L2d:
            org.mistergroup.shouldianswer.model.NumberInfo$c r0 = new org.mistergroup.shouldianswer.model.NumberInfo$c
            r1 = r0
            r2 = r10
            r3 = r13
            r1.<init>(r3)
            r13 = r0
        L37:
            r0 = r13
            java.lang.Object r0 = r0.f6688a
            r14 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r15 = r0
            r0 = r13
            int r0 = r0.f6689b
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L73
            r0 = r16
            r1 = 1
            if (r0 != r1) goto L68
            r0 = r13
            long r0 = r0.f6692e
            r11 = r0
            r0 = r13
            java.lang.Object r0 = r0.f6691d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r13 = r0
            r0 = r14
            kotlin.C1771k.m2979a(r0)
            goto Lcd
        L68:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L73:
            r0 = r14
            kotlin.C1771k.m2979a(r0)
            org.mistergroup.shouldianswer.utils.r r0 = org.mistergroup.shouldianswer.utils.C3118r.f9187a
            boolean r0 = r0.m99a()
            if (r0 == 0) goto Lb0
            org.mistergroup.shouldianswer.utils.j r0 = org.mistergroup.shouldianswer.utils.C3104j.f9124a
            java.lang.String r1 = "NumberInfo.addToCheckedCalls on nav_main thread!"
            r2 = 0
            r3 = 2
            r4 = 0
            org.mistergroup.shouldianswer.utils.C3104j.m157a(r0, r1, r2, r3, r4)
            kotlinx.coroutines.bd r0 = kotlinx.coroutines.C1843bd.f4587a
            kotlinx.coroutines.ad r0 = (kotlinx.coroutines.AbstractC1786ad) r0
            kotlinx.coroutines.y r1 = org.mistergroup.shouldianswer.utils.C3084c.m193a()
            kotlin.c.f r1 = (kotlin.p075c.AbstractC1646f) r1
            r2 = 0
            org.mistergroup.shouldianswer.model.NumberInfo$d r3 = new org.mistergroup.shouldianswer.model.NumberInfo$d
            r4 = r3
            r5 = r10
            r6 = r11
            r7 = 0
            r4.<init>(r6, r7)
            kotlin.e.a.m r3 = (kotlin.p081e.p082a.AbstractC1674m) r3
            r4 = 2
            r5 = 0
            kotlinx.coroutines.bk r0 = kotlinx.coroutines.C1890e.m2682b(r0, r1, r2, r3, r4, r5)
            goto Lcd
        Lb0:
            r0 = r13
            r1 = r10
            r0.f6691d = r1
            r0 = r13
            r1 = r11
            r0.f6692e = r1
            r0 = r13
            r1 = 1
            r0.f6689b = r1
            r0 = r10
            r1 = r11
            r2 = r13
            java.lang.Object r0 = r0.m1484a(r1, r2)
            r1 = r15
            if (r0 != r1) goto Lcd
            r0 = r15
            return r0
        Lcd:
            kotlin.o r0 = kotlin.C1775o.f4450a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1478b(long, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1476b(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2357j
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$j r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2357j) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6741b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6741b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6741b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$j r0 = new org.mistergroup.shouldianswer.model.NumberInfo$j
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6740a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6741b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6743d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6743d = r1
            r0 = r6
            r1 = 1
            r0.f6741b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            java.lang.Boolean r0 = r0.f6651D
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1476b(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: b */
    public final String m1479b() {
        String str = this.f6659a;
        if (str == null) {
            C1694h.m3116b("number");
        }
        return str;
    }

    /* renamed from: b */
    public final String m1477b(Context context) {
        String str;
        C1694h.m3117b(context, "context");
        String m1203O = C2405c.f6946b.m1203O();
        if (m1203O != null) {
            String str2 = this.f6659a;
            if (str2 == null) {
                C1694h.m3116b("number");
            }
            if (C1694h.m3123a((Object) m1203O, (Object) str2)) {
                return "Voicemail";
            }
        }
        if (!C2464x.m964e(this)) {
            str = m1469f();
        } else {
            str = context.getString(2131755162);
            C1694h.m3122a((Object) str, "context.getString(R.string.block_reason_hidden)");
        }
        return str;
    }

    /* renamed from: c */
    public final Object m1474c(AbstractC1641c<? super String> abstractC1641c) {
        try {
            return PhoneNumberOfflineGeocoder.getInstance().getDescriptionForNumber(PhoneNumberUtil.getInstance().parse(m1479b(), m1475c()), Locale.getDefault());
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: c */
    public final String m1475c() {
        String str = this.f6660c;
        if (str == null) {
            C1694h.m3116b("country");
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1472d(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2368u
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$u r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2368u) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6787b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6787b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6787b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$u r0 = new org.mistergroup.shouldianswer.model.NumberInfo$u
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6786a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6787b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6789d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6789d = r1
            r0 = r6
            r1 = 1
            r0.f6787b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            org.mistergroup.shouldianswer.model.k$a r0 = org.mistergroup.shouldianswer.model.EnumC2436k.f7111i
            r7 = r0
            r0 = r6
            org.mistergroup.shouldianswer.model.k r0 = r0.f6661d
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L9b
            java.lang.String r0 = "callType"
            kotlin.p081e.p083b.C1694h.m3116b(r0)
        L9b:
            r0 = r7
            r1 = r8
            boolean r0 = r0.m1022a(r1)
            if (r0 == 0) goto Lac
            r0 = r6
            boolean r0 = r0.f6666i
            r10 = r0
            goto Lb2
        Lac:
            r0 = r6
            boolean r0 = r0.f6667j
            r10 = r0
        Lb2:
            r0 = r10
            java.lang.Boolean r0 = kotlin.p075c.p077b.p078a.C1630b.m3166a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1472d(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: d */
    public final EnumC2436k m1473d() {
        EnumC2436k enumC2436k = this.f6661d;
        if (enumC2436k == null) {
            C1694h.m3116b("callType");
        }
        return enumC2436k;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0091  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1470e(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.EnumC2429h> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2358k
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$k r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2358k) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6745b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6745b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6745b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$k r0 = new org.mistergroup.shouldianswer.model.NumberInfo$k
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6744a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6745b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6747d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6747d = r1
            r0 = r6
            r1 = 1
            r0.f6745b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.h r0 = r0.f6657J
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L94
            kotlin.p081e.p083b.C1694h.m3124a()
        L94:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1470e(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: e */
    public final boolean m1471e() {
        return this.f6670m;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1468f(kotlin.p075c.AbstractC1641c<? super java.lang.String> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2360m
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$m r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2360m) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6753b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6753b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6753b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$m r0 = new org.mistergroup.shouldianswer.model.NumberInfo$m
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6752a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6753b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L72
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L67
            r0 = r6
            java.lang.Object r0 = r0.f6756e
            org.mistergroup.shouldianswer.model.m$a r0 = (org.mistergroup.shouldianswer.model.EnumC2439m.C2440a) r0
            r10 = r0
            r0 = r6
            java.lang.Object r0 = r0.f6755d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r10
            r6 = r0
            goto L9b
        L67:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L72:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            org.mistergroup.shouldianswer.model.m$a r0 = org.mistergroup.shouldianswer.model.EnumC2439m.f7139w
            r10 = r0
            r0 = r6
            r1 = r5
            r0.f6755d = r1
            r0 = r6
            r1 = r10
            r0.f6756e = r1
            r0 = r6
            r1 = 1
            r0.f6753b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1442s(r1)
            r7 = r0
            r0 = r7
            r1 = r8
            if (r0 != r1) goto L98
            r0 = r8
            return r0
        L98:
            r0 = r10
            r6 = r0
        L9b:
            r0 = r6
            r1 = r7
            org.mistergroup.shouldianswer.model.m r1 = (org.mistergroup.shouldianswer.model.EnumC2439m) r1
            java.lang.String r0 = r0.m1015a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1468f(kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00b6 A[Catch: NumberParseException -> 0x00d3, TRY_ENTER, TryCatch #0 {NumberParseException -> 0x00d3, blocks: (B:4:0x0007, B:6:0x0010, B:8:0x0017, B:15:0x0031, B:17:0x003a, B:19:0x0041, B:22:0x004d, B:24:0x0056, B:27:0x005e, B:33:0x0070, B:35:0x0079, B:37:0x0080, B:40:0x008d, B:43:0x009b, B:46:0x00ab, B:48:0x00b6, B:50:0x00bd, B:51:0x00c9), top: B:69:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m1469f() {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1469f():java.lang.String");
    }

    /* renamed from: g */
    public final Phonenumber.PhoneNumber m1467g() {
        if (this.f6656I) {
            return this.f6655H;
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            String str = this.f6659a;
            if (str == null) {
                C1694h.m3116b("number");
            }
            String str2 = str;
            String str3 = this.f6660c;
            if (str3 == null) {
                C1694h.m3116b("country");
            }
            this.f6655H = phoneNumberUtil.parse(str2, str3);
        } catch (NumberParseException e) {
            C3104j c3104j = C3104j.f9124a;
            StringBuilder sb = new StringBuilder();
            sb.append("NumberInfo.getNumberParsed Can't parse '");
            String str4 = this.f6659a;
            if (str4 == null) {
                C1694h.m3116b("number");
            }
            sb.append(str4);
            sb.append("' for country '");
            String str5 = this.f6660c;
            if (str5 == null) {
                C1694h.m3116b("country");
            }
            sb.append(str5);
            sb.append("'");
            C3104j.m152c(c3104j, sb.toString(), null, 2, null);
        }
        this.f6656I = true;
        return this.f6655H;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1466g(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1466g(kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1464h(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2370w
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$w r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2370w) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6795b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6795b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6795b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$w r0 = new org.mistergroup.shouldianswer.model.NumberInfo$w
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6794a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6795b
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r6
            java.lang.Object r0 = r0.f6797d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L8b
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L69:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L89
            r0 = r6
            r1 = r5
            r0.f6797d = r1
            r0 = r6
            r1 = 1
            r0.f6795b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L89
            r0 = r8
            return r0
        L89:
            r0 = r5
            r6 = r0
        L8b:
            r0 = r6
            boolean r0 = r0.f6664g
            if (r0 != 0) goto L9c
            r0 = r6
            boolean r0 = r0.f6662e
            if (r0 == 0) goto L9c
            goto L9f
        L9c:
            r0 = 0
            r10 = r0
        L9f:
            r0 = r10
            java.lang.Boolean r0 = kotlin.p075c.p077b.p078a.C1630b.m3166a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1464h(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: h */
    public final String m1465h() {
        if (this.f6649B == null) {
            if (C2464x.m964e(this)) {
                this.f6649B = "-1";
            } else {
                Phonenumber.PhoneNumber m1467g = m1467g();
                if (m1467g != null) {
                    this.f6649B = PhoneNumberUtil.getInstance().format(m1467g, PhoneNumberUtil.PhoneNumberFormat.E164);
                }
                if (this.f6649B == null) {
                    String str = this.f6659a;
                    if (str == null) {
                        C1694h.m3116b("number");
                    }
                    String str2 = this.f6660c;
                    if (str2 == null) {
                        C1694h.m3116b("country");
                    }
                    this.f6649B = PhoneNumberUtils.formatNumberToE164(str, str2);
                }
            }
        }
        if (this.f6649B == null) {
            String str3 = this.f6659a;
            if (str3 == null) {
                C1694h.m3116b("number");
            }
            this.f6649B = PhoneNumberUtils.stripSeparators(str3);
        }
        if (this.f6649B == null) {
            this.f6649B = "-1";
        }
        String str4 = this.f6649B;
        if (str4 != null) {
            return str4;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
    }

    /* renamed from: i */
    public final Boolean m1463i() {
        if (this.f6670m) {
            return this.f6651D;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1462i(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2371x
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$x r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2371x) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6799b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6799b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6799b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$x r0 = new org.mistergroup.shouldianswer.model.NumberInfo$x
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6798a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6799b
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r6
            java.lang.Object r0 = r0.f6801d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L8b
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L69:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L89
            r0 = r6
            r1 = r5
            r0.f6801d = r1
            r0 = r6
            r1 = 1
            r0.f6799b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L89
            r0 = r8
            return r0
        L89:
            r0 = r5
            r6 = r0
        L8b:
            r0 = r6
            boolean r0 = r0.f6665h
            if (r0 != 0) goto L9c
            r0 = r6
            boolean r0 = r0.f6663f
            if (r0 == 0) goto L9c
            goto L9f
        L9c:
            r0 = 0
            r10 = r0
        L9f:
            r0 = r10
            java.lang.Boolean r0 = kotlin.p075c.p077b.p078a.C1630b.m3166a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1462i(kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1460j(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1460j(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: j */
    public final String m1461j() {
        NumberReport numberReport;
        NumberReport.C2376c m1402o;
        String m1397a;
        String m1360b;
        String m1491d;
        String str = this.f6654G;
        if (str != null) {
            return str;
        }
        NumberCaption numberCaption = this.f6652E;
        if (numberCaption != null && (m1491d = numberCaption.m1491d()) != null) {
            this.f6654G = m1491d;
            return m1491d;
        }
        C2385ac m1451o = m1451o();
        if (m1451o != null && (m1360b = m1451o.m1360b()) != null) {
            this.f6654G = m1360b;
            return m1360b;
        }
        if (C1594a.m3209a(EnumC2439m.f7139w.m1017a(), this.f6676s) && (numberReport = this.f6683z) != null && (m1402o = numberReport.m1402o()) != null && (m1397a = m1402o.m1397a()) != null) {
            if (m1397a.length() > 0) {
                this.f6654G = m1397a;
                return m1397a;
            }
        }
        String str2 = this.f6653F;
        if (str2 == null) {
            return null;
        }
        this.f6654G = str2;
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1458k(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2348aa
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$aa r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2348aa) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6685b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6685b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6685b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$aa r0 = new org.mistergroup.shouldianswer.model.NumberInfo$aa
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6684a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6685b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6687d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6687d = r1
            r0 = r6
            r1 = 1
            r0.f6685b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            boolean r0 = r0.f6664g
            java.lang.Boolean r0 = kotlin.p075c.p077b.p078a.C1630b.m3166a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1458k(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: k */
    public final String m1459k() {
        String str;
        String str2 = "";
        if (this.f6676s != EnumC2439m.NONE) {
            str2 = "" + EnumC2439m.f7139w.m1015a(this.f6676s);
            str = ", ";
        } else {
            str = "";
        }
        String str3 = str;
        String str4 = str2;
        if (C1594a.m3209a(EnumC2439m.f7139w.m1017a(), this.f6676s)) {
            NumberReport numberReport = this.f6683z;
            str4 = str2;
            if (numberReport != null) {
                NumberReport.C2376c m1402o = numberReport.m1402o();
                str4 = str2;
                if (m1402o != null) {
                    String m1391d = m1402o.m1391d();
                    str4 = str2;
                    if (m1391d != null) {
                        str4 = str2;
                        if (m1391d.length() > 0) {
                            str4 = str2 + str + m1391d;
                        }
                    }
                }
            }
            str3 = ", ";
        }
        EnumC2429h enumC2429h = this.f6657J;
        String str5 = str4;
        if (enumC2429h != null) {
            str5 = str4;
            if (enumC2429h != EnumC2429h.NONE) {
                str5 = str4;
                if (enumC2429h != EnumC2429h.NEGATIVE_USER_RATING) {
                    str5 = str4;
                    if (enumC2429h != EnumC2429h.NEGATIVE_COMMUNITY_RATING) {
                        str5 = str4 + str3 + EnumC2429h.f7065m.m1050a(enumC2429h);
                    }
                }
            }
        }
        return str5;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1456l(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2373z
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$z r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2373z) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6807b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6807b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6807b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$z r0 = new org.mistergroup.shouldianswer.model.NumberInfo$z
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6806a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6807b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6809d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6809d = r1
            r0 = r6
            r1 = 1
            r0.f6807b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            boolean r0 = r0.f6665h
            java.lang.Boolean r0 = kotlin.p075c.p077b.p078a.C1630b.m3166a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1456l(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: l */
    public final EnumC2429h m1457l() {
        return this.f6657J;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1454m(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.EnumC2395ag> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2363p
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$p r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2363p) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6767b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6767b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6767b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$p r0 = new org.mistergroup.shouldianswer.model.NumberInfo$p
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6766a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6767b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6769d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6769d = r1
            r0 = r6
            r1 = 1
            r0.f6767b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6671n
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1454m(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: m */
    public final EnumC2429h m1455m() {
        return this.f6670m ? this.f6657J : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1452n(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.EnumC2395ag> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2367t
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$t r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2367t) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6783b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6783b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6783b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$t r0 = new org.mistergroup.shouldianswer.model.NumberInfo$t
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6782a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6783b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6785d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6785d = r1
            r0 = r6
            r1 = 1
            r0.f6783b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6672o
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1452n(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: n */
    public final String m1453n() {
        EnumC2439m m1439u = m1439u();
        if (m1439u != null) {
            return EnumC2439m.f7139w.m1015a(m1439u);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1450o(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.NumberReport> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2362o
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$o r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2362o) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6763b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6763b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6763b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$o r0 = new org.mistergroup.shouldianswer.model.NumberInfo$o
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6762a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6763b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6765d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6765d = r1
            r0 = r6
            r1 = 1
            r0.f6763b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberReport r0 = r0.f6683z
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1450o(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: o */
    public final C2385ac m1451o() {
        if (this.f6658K == null && (!this.f6669l || this.f6668k)) {
            C2391ae c2391ae = C2391ae.f6909a;
            String str = this.f6659a;
            if (str == null) {
                C1694h.m3116b("number");
            }
            this.f6658K = c2391ae.m1321a(str, this.f6649B);
            if (!this.f6669l) {
                boolean z = true;
                this.f6669l = true;
                if (this.f6658K == null) {
                    z = false;
                }
                this.f6668k = z;
            }
        }
        return this.f6658K;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1448p(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.EnumC2395ag> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2364q
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$q r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2364q) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6771b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6771b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6771b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$q r0 = new org.mistergroup.shouldianswer.model.NumberInfo$q
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6770a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6771b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6773d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6773d = r1
            r0 = r6
            r1 = 1
            r0.f6771b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.ag r0 = r0.f6673p
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1448p(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: p */
    public final EnumC2395ag m1449p() {
        return this.f6670m ? this.f6671n : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1446q(kotlin.p075c.AbstractC1641c<? super java.lang.Integer> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2366s
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$s r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2366s) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6779b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6779b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6779b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$s r0 = new org.mistergroup.shouldianswer.model.NumberInfo$s
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6778a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6779b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6781d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6781d = r1
            r0 = r6
            r1 = 1
            r0.f6779b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            int r0 = r0.f6680w
            java.lang.Integer r0 = kotlin.p075c.p077b.p078a.C1630b.m3168a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1446q(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: q */
    public final NumberReport m1447q() {
        return this.f6670m ? this.f6683z : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1444r(kotlin.p075c.AbstractC1641c<? super java.lang.Integer> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2365r
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$r r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2365r) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6775b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6775b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6775b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$r r0 = new org.mistergroup.shouldianswer.model.NumberInfo$r
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6774a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6775b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6777d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6777d = r1
            r0 = r6
            r1 = 1
            r0.f6775b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            int r0 = r0.f6682y
            java.lang.Integer r0 = kotlin.p075c.p077b.p078a.C1630b.m3168a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1444r(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: r */
    public final EnumC2395ag m1445r() {
        return this.f6670m ? this.f6673p : null;
    }

    /* renamed from: s */
    public final Integer m1443s() {
        if (this.f6670m) {
            return Integer.valueOf(this.f6680w);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1442s(kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.EnumC2439m> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.model.NumberInfo.C2359l
            if (r0 == 0) goto L28
            r0 = r6
            org.mistergroup.shouldianswer.model.NumberInfo$l r0 = (org.mistergroup.shouldianswer.model.NumberInfo.C2359l) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f6749b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r7
            r1 = r7
            int r1 = r1.f6749b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f6749b = r1
            r0 = r7
            r6 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.model.NumberInfo$l r0 = new org.mistergroup.shouldianswer.model.NumberInfo$l
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L32:
            r0 = r6
            java.lang.Object r0 = r0.f6748a
            r7 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r8 = r0
            r0 = r6
            int r0 = r0.f6749b
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5b
            r0 = r6
            java.lang.Object r0 = r0.f6751d
            org.mistergroup.shouldianswer.model.NumberInfo r0 = (org.mistergroup.shouldianswer.model.NumberInfo) r0
            r6 = r0
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            goto L88
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L66:
            r0 = r7
            kotlin.C1771k.m2979a(r0)
            r0 = r5
            boolean r0 = r0.f6670m
            if (r0 != 0) goto L86
            r0 = r6
            r1 = r5
            r0.f6751d = r1
            r0 = r6
            r1 = 1
            r0.f6749b = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1434w(r1)
            r1 = r8
            if (r0 != r1) goto L86
            r0 = r8
            return r0
        L86:
            r0 = r5
            r6 = r0
        L88:
            r0 = r6
            org.mistergroup.shouldianswer.model.m r0 = r0.f6676s
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1442s(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: t */
    public final Integer m1441t() {
        if (this.f6670m) {
            return Integer.valueOf(this.f6682y);
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:2|(2:4|(14:6|8|56|(2:10|(3:12|13|14)(2:15|16))(7:17|18|(8:20|21|22|(1:24)|25|(1:27)(2:28|(1:30)(1:31))|32|33)|34|35|36|(2:38|39)(1:40))|41|(1:43)|44|45|(1:47)|48|49|(1:51)|54|55))|7|8|56|(0)(0)|41|(0)|44|45|(0)|48|49|(0)|54|55) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01d0, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01d1, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r8, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018c A[Catch: Exception -> 0x01d0, TRY_ENTER, TryCatch #0 {Exception -> 0x01d0, blocks: (B:13:0x006c, B:18:0x009b, B:20:0x00ae, B:22:0x00db, B:27:0x0107, B:30:0x0116, B:31:0x011d, B:33:0x0122, B:34:0x013c, B:34:0x013c, B:35:0x013f, B:41:0x017a, B:43:0x018c, B:45:0x019d, B:47:0x01af, B:49:0x01bc, B:51:0x01c5), top: B:56:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01af A[Catch: Exception -> 0x01d0, TRY_ENTER, TryCatch #0 {Exception -> 0x01d0, blocks: (B:13:0x006c, B:18:0x009b, B:20:0x00ae, B:22:0x00db, B:27:0x0107, B:30:0x0116, B:31:0x011d, B:33:0x0122, B:34:0x013c, B:34:0x013c, B:35:0x013f, B:41:0x017a, B:43:0x018c, B:45:0x019d, B:47:0x01af, B:49:0x01bc, B:51:0x01c5), top: B:56:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01c5 A[Catch: Exception -> 0x01d0, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d0, blocks: (B:13:0x006c, B:18:0x009b, B:20:0x00ae, B:22:0x00db, B:27:0x0107, B:30:0x0116, B:31:0x011d, B:33:0x0122, B:34:0x013c, B:34:0x013c, B:35:0x013f, B:41:0x017a, B:43:0x018c, B:45:0x019d, B:47:0x01af, B:49:0x01bc, B:51:0x01c5), top: B:56:0x0042 }] */
    /* JADX WARN: Type inference failed for: r0v77, types: [double] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m1440t(kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1440t(kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x08bc, code lost:
        if (r13.f6672o != org.mistergroup.shouldianswer.model.EnumC2395ag.POSITIVE) goto L147;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x089e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x05aa  */
    /* JADX WARN: Type inference failed for: r1v105, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v127, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v132, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v137, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v142, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v172, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v177, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v26, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v34, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v39, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v48, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v57, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v67, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v74, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v81, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v88, types: [T, java.lang.String] */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m1438u(kotlin.p075c.AbstractC1641c<? super java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 2314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1438u(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: u */
    public final EnumC2439m m1439u() {
        return this.f6670m ? this.f6676s : null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x091f, code lost:
        if (r12.f6672o != org.mistergroup.shouldianswer.model.EnumC2395ag.POSITIVE) goto L139;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0843  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0891  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0901  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0573  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0650  */
    /* JADX WARN: Type inference failed for: r1v107, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v112, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v117, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v122, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v131, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v140, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v153, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v160, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v178, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v183, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v23, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v39, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v49, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v56, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v63, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v70, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v86, types: [T, java.lang.String] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m1436v(kotlin.p075c.AbstractC1641c<? super java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 2413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1436v(kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:2|(2:4|(4:6|8|130|9))|7|8|130|9) */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x07c0, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x07c1, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0630 A[Catch: Exception -> 0x07c0, TRY_ENTER, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x066a A[Catch: Exception -> 0x07c0, TRY_ENTER, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x068b A[Catch: Exception -> 0x07c0, TRY_ENTER, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0727 A[Catch: Exception -> 0x07c0, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x075b A[Catch: Exception -> 0x07c0, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x07ad A[Catch: Exception -> 0x07c0, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0444 A[Catch: Exception -> 0x07c0, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x05f4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0618 A[Catch: Exception -> 0x07c0, TRY_ENTER, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0627 A[Catch: Exception -> 0x07c0, TRY_LEAVE, TryCatch #0 {Exception -> 0x07c0, blocks: (B:13:0x00b2, B:15:0x00f8, B:18:0x0144, B:20:0x018a, B:23:0x01da, B:26:0x021d, B:29:0x022b, B:31:0x0240, B:34:0x0265, B:36:0x026c, B:38:0x0279, B:40:0x0282, B:46:0x029c, B:48:0x02a3, B:50:0x02b0, B:55:0x02f2, B:61:0x0357, B:67:0x03bb, B:73:0x0433, B:75:0x0444, B:76:0x0450, B:76:0x0450, B:77:0x0453, B:81:0x047b, B:87:0x058d, B:93:0x05f8, B:95:0x0618, B:97:0x0620, B:99:0x0627, B:100:0x0630, B:102:0x0638, B:104:0x066a, B:106:0x0671, B:108:0x068b, B:110:0x0692, B:112:0x071f, B:114:0x0727, B:117:0x0753, B:119:0x075b, B:120:0x078a, B:120:0x078a, B:121:0x078d, B:123:0x07ad, B:125:0x07b9), top: B:130:0x003d }] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1434w(kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r7) {
        /*
            Method dump skipped, instructions count: 1999
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.NumberInfo.m1434w(kotlin.c.c):java.lang.Object");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C1694h.m3117b(parcel, "parcel");
        String str = this.f6659a;
        if (str == null) {
            C1694h.m3116b("number");
        }
        parcel.writeString(str);
        String str2 = this.f6660c;
        if (str2 == null) {
            C1694h.m3116b("country");
        }
        parcel.writeString(str2);
        parcel.writeString(this.f6648A);
        parcel.writeString(this.f6649B);
        parcel.writeByte(this.f6662e ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6663f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6664g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6665h ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6666i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6667j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6668k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6669l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6670m ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f6671n.m1315a());
        parcel.writeInt(this.f6672o.m1315a());
        parcel.writeInt(this.f6673p.m1315a());
        parcel.writeInt(this.f6674q.ordinal());
        parcel.writeInt(this.f6675r.ordinal());
        EnumC2436k enumC2436k = this.f6661d;
        if (enumC2436k == null) {
            C1694h.m3116b("callType");
        }
        parcel.writeInt(enumC2436k.m1025a());
        parcel.writeInt(this.f6676s.m1019a());
        parcel.writeInt(this.f6677t);
        parcel.writeByte(this.f6678u ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6679v ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f6680w);
        parcel.writeInt(this.f6681x);
        parcel.writeInt(this.f6682y);
        parcel.writeString(this.f6654G);
        parcel.writeParcelable(this.f6683z, i);
        parcel.writeParcelable(this.f6652E, i);
    }
}
