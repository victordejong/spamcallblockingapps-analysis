package com.mopub.mobileads;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.ViewabilityVendor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bU\b\u0087\b\u0018�� \u009b\u00012\u00020\u0001:\u0004\u009c\u0001\u009b\u0001BÝ\u0001\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010)\u001a\u00020\b\u0012\u0006\u0010*\u001a\u00020\u000b\u0012\b\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010-\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0012\u0012\u0006\u00100\u001a\u00020\u0015\u0012\u0006\u00101\u001a\u00020\u000b\u0012\b\u00102\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u00103\u001a\u00020\u000b\u0012\b\u00104\u001a\u0004\u0018\u00010\u000b\u0012\b\u00105\u001a\u0004\u0018\u00010\u000b\u0012\b\u00106\u001a\u0004\u0018\u00010\u0002\u0012\b\u00107\u001a\u0004\u0018\u00010\u0002\u0012\b\u00108\u001a\u0004\u0018\u00010\u0002\u0012\b\u00109\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010:\u001a\u00020\u0015\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u001c\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0012HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u0018\u0010\rJ\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\u001a\u0010\rJ\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u0004J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u0004J\u0012\u0010 \u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b \u0010\u0004J\u0012\u0010!\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b!\u0010\u0004J\u0010\u0010\"\u001a\u00020\u0015HÆ\u0003¢\u0006\u0004\b\"\u0010\u0017J\u0018\u0010%\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#HÆ\u0003¢\u0006\u0004\b%\u0010&J\u008e\u0002\u0010<\u001a\u00020��2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010)\u001a\u00020\b2\b\b\u0002\u0010*\u001a\u00020\u000b2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010.\u001a\u00020\u00022\u0014\b\u0002\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00122\b\b\u0002\u00100\u001a\u00020\u00152\b\b\u0002\u00101\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u00103\u001a\u00020\u000b2\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00105\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010:\u001a\u00020\u00152\u0010\b\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#HÆ\u0001¢\u0006\u0004\b<\u0010=J\u0010\u0010>\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b>\u0010\u0004J\u0010\u0010?\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b?\u0010\rJ\u001a\u0010B\u001a\u00020\u00152\b\u0010A\u001a\u0004\u0018\u00010@HÖ\u0003¢\u0006\u0004\bB\u0010CJ\u0010\u0010D\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\bD\u0010\rJ \u0010I\u001a\u00020H2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\bI\u0010JR.\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010\u0014\"\u0004\bN\u0010OR$\u00109\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010\u0004\"\u0004\bS\u0010TR$\u0010'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bU\u0010Q\u001a\u0004\bV\u0010\u0004\"\u0004\bW\u0010TR$\u0010,\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010Q\u001a\u0004\bY\u0010\u0004\"\u0004\bZ\u0010TR\"\u00103\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010\r\"\u0004\b^\u0010_R$\u00104\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010\u001c\"\u0004\bc\u0010dR$\u0010(\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010\u0007\"\u0004\bh\u0010iR$\u00107\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bj\u0010Q\u001a\u0004\bk\u0010\u0004\"\u0004\bl\u0010TR$\u0010+\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bm\u0010Q\u001a\u0004\bn\u0010\u0004\"\u0004\bo\u0010TR\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010Q\u001a\u0004\bq\u0010\u0004\"\u0004\br\u0010TR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bs\u0010Q\u001a\u0004\bt\u0010\u0004\"\u0004\bu\u0010TR\"\u00100\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010w\u001a\u0004\b0\u0010\u0017\"\u0004\bx\u0010yR$\u00105\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010a\u001a\u0004\b{\u0010\u001c\"\u0004\b|\u0010dR$\u00106\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b}\u0010Q\u001a\u0004\b~\u0010\u0004\"\u0004\b\u007f\u0010TR'\u00108\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010Q\u001a\u0005\b\u0081\u0001\u0010\u0004\"\u0005\b\u0082\u0001\u0010TR/\u0010;\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0005\b\u0085\u0001\u0010&\"\u0006\b\u0086\u0001\u0010\u0087\u0001R%\u0010:\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0088\u0001\u0010w\u001a\u0005\b\u0089\u0001\u0010\u0017\"\u0005\b\u008a\u0001\u0010yR%\u0010*\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008b\u0001\u0010\\\u001a\u0005\b\u008c\u0001\u0010\r\"\u0005\b\u008d\u0001\u0010_R'\u00102\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008e\u0001\u0010Q\u001a\u0005\b\u008f\u0001\u0010\u0004\"\u0005\b\u0090\u0001\u0010TR%\u00101\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0091\u0001\u0010\\\u001a\u0005\b\u0092\u0001\u0010\r\"\u0005\b\u0093\u0001\u0010_R'\u0010)\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0094\u0001\u0010\u0095\u0001\u001a\u0005\b\u0096\u0001\u0010\n\"\u0006\b\u0097\u0001\u0010\u0098\u0001¨\u0006\u009d\u0001"}, d2 = {"Lcom/mopub/mobileads/AdData;", "Landroid/os/Parcelable;", "", "component1", "()Ljava/lang/String;", "Lcom/mopub/common/CreativeOrientation;", "component2", "()Lcom/mopub/common/CreativeOrientation;", "", "component3", "()J", "", "component4", "()I", "component5", "component6", "component7", "component8", "", "component9", "()Ljava/util/Map;", "", "component10", "()Z", "component11", "component12", "component13", "component14", "()Ljava/lang/Integer;", "component15", "component16", "component17", "component18", "component19", "component20", "", "Lcom/mopub/common/ViewabilityVendor;", "component21", "()Ljava/util/Set;", "vastVideoConfigString", "orientation", DataKeys.BROADCAST_IDENTIFIER_KEY, "timeoutDelayMillis", "impressionMinVisibleDips", "impressionMinVisibleMs", "dspCreativeId", "adPayload", "extras", "isRewarded", "rewardedDurationSeconds", "currencyName", "currencyAmount", "adWidth", "adHeight", "adUnit", "adType", "fullAdType", "customerId", "allowCustomClose", "viewabilityVendors", "copy", "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Lcom/mopub/mobileads/AdData;", "toString", "hashCode", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "i", "Ljava/util/Map;", "getExtras", "setExtras", "(Ljava/util/Map;)V", "s", "Ljava/lang/String;", "getCustomerId", "setCustomerId", "(Ljava/lang/String;)V", "a", "getVastVideoConfigString", "setVastVideoConfigString", "f", "getImpressionMinVisibleMs", "setImpressionMinVisibleMs", "m", "I", "getCurrencyAmount", "setCurrencyAmount", "(I)V", "n", "Ljava/lang/Integer;", "getAdWidth", "setAdWidth", "(Ljava/lang/Integer;)V", C22021b.f61237c, "Lcom/mopub/common/CreativeOrientation;", "getOrientation", "setOrientation", "(Lcom/mopub/common/CreativeOrientation;)V", "q", "getAdType", "setAdType", "e", "getImpressionMinVisibleDips", "setImpressionMinVisibleDips", "h", "getAdPayload", "setAdPayload", "g", "getDspCreativeId", "setDspCreativeId", "j", "Z", "setRewarded", "(Z)V", "o", "getAdHeight", "setAdHeight", "p", "getAdUnit", "setAdUnit", "r", "getFullAdType", "setFullAdType", "u", "Ljava/util/Set;", "getViewabilityVendors", "setViewabilityVendors", "(Ljava/util/Set;)V", "t", "getAllowCustomClose", "setAllowCustomClose", "d", "getTimeoutDelayMillis", "setTimeoutDelayMillis", "l", "getCurrencyName", "setCurrencyName", "k", "getRewardedDurationSeconds", "setRewardedDurationSeconds", AbstractC2405c.f7629a, "J", "getBroadcastIdentifier", "setBroadcastIdentifier", "(J)V", "<init>", "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V", "Companion", "Builder", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData.class */
public final class AdData implements Parcelable {
    public static final long COUNTDOWN_UPDATE_INTERVAL_MILLIS = 250;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS = 30000;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS = 30;
    public static final int DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS = 5000;
    public static final int DEFAULT_FULLSCREEN_TIMEOUT_DELAY = 30000;
    public static final int DEFAULT_INLINE_TIMEOUT_DELAY = 10000;
    public static final int DEFAULT_UNSPECIFIED_TIMEOUT_DELAY = 30000;
    public static final int MILLIS_IN_SECOND = 1000;

    /* renamed from: a */
    public String f8728a;

    /* renamed from: b */
    public CreativeOrientation f8729b;

    /* renamed from: c */
    public long f8730c;

    /* renamed from: d */
    public int f8731d;

    /* renamed from: e */
    public String f8732e;

    /* renamed from: f */
    public String f8733f;

    /* renamed from: g */
    public String f8734g;

    /* renamed from: h */
    public String f8735h;

    /* renamed from: i */
    public Map<String, String> f8736i;

    /* renamed from: j */
    public boolean f8737j;

    /* renamed from: k */
    public int f8738k;

    /* renamed from: l */
    public String f8739l;

    /* renamed from: m */
    public int f8740m;

    /* renamed from: n */
    public Integer f8741n;

    /* renamed from: o */
    public Integer f8742o;

    /* renamed from: p */
    public String f8743p;

    /* renamed from: q */
    public String f8744q;

    /* renamed from: r */
    public String f8745r;

    /* renamed from: s */
    public String f8746s;

    /* renamed from: t */
    public boolean f8747t;

    /* renamed from: u */
    public Set<? extends ViewabilityVendor> f8748u;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator CREATOR = new Creator();

    @Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bB\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bi\u0010jJ\u0017\u0010\u0004\u001a\u00020��2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0007\u001a\u00020��2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020��2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020��2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u0017\u0010\u0010\u001a\u00020��2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u0017\u0010\u0011\u001a\u00020��2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u0015\u0010\u0012\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0005J!\u0010\u0014\u001a\u00020��2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020��2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\f¢\u0006\u0004\b\u0019\u0010\u000eJ\u0017\u0010\u001a\u001a\u00020��2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0015\u0010\u001b\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\f¢\u0006\u0004\b\u001b\u0010\u000eJ\u0017\u0010\u001c\u001a\u00020��2\b\u0010\u001c\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020��2\b\u0010\u001e\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020��2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u0017\u0010 \u001a\u00020��2\b\u0010 \u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b \u0010\u0005J\u0017\u0010!\u001a\u00020��2\b\u0010!\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b!\u0010\u0005J\u0017\u0010\"\u001a\u00020��2\b\u0010\"\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\"\u0010\u0005J\u0015\u0010#\u001a\u00020��2\u0006\u0010#\u001a\u00020\u0016¢\u0006\u0004\b#\u0010\u0018J\u001f\u0010'\u001a\u00020��2\u0010\u0010&\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010%\u0018\u00010$¢\u0006\u0004\b'\u0010(J\r\u0010*\u001a\u00020)¢\u0006\u0004\b*\u0010+J\u0015\u0010-\u001a\u00020��2\u0006\u0010,\u001a\u00020)¢\u0006\u0004\b-\u0010.R$\u0010\r\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b\u0017\u00106R(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R(\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b;\u00108\u001a\u0004\b<\u0010:R(\u0010\u001f\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b=\u00108\u001a\u0004\b>\u0010:R$\u0010\u0012\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b?\u00108\u001a\u0004\b@\u0010:R(\u0010\u001e\u001a\u0004\u0018\u00010\f2\b\u0010/\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR(\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bE\u00108\u001a\u0004\bF\u0010:R<\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00132\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00138\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR(\u0010!\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bK\u00108\u001a\u0004\bL\u0010:R$\u0010\n\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR(\u0010\u001a\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bQ\u00108\u001a\u0004\bR\u0010:R(\u0010\"\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bS\u00108\u001a\u0004\bT\u0010:R(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010/\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bW\u0010XR4\u0010'\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R$\u0010\u0019\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b]\u00101\u001a\u0004\b^\u00103R$\u0010#\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b_\u00105\u001a\u0004\b`\u00106R$\u0010\u001b\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\ba\u00101\u001a\u0004\bb\u00103R(\u0010 \u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bc\u00108\u001a\u0004\bd\u0010:R(\u0010\u001c\u001a\u0004\u0018\u00010\f2\b\u0010/\u001a\u0004\u0018\u00010\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\be\u0010B\u001a\u0004\bf\u0010DR(\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bg\u00108\u001a\u0004\bh\u0010:¨\u0006k"}, d2 = {"Lcom/mopub/mobileads/AdData$Builder;", "", "", "vastVideoConfigString", "vastVideoConfig", "(Ljava/lang/String;)Lcom/mopub/mobileads/AdData$Builder;", "Lcom/mopub/common/CreativeOrientation;", "orientation", "(Lcom/mopub/common/CreativeOrientation;)Lcom/mopub/mobileads/AdData$Builder;", "", DataKeys.BROADCAST_IDENTIFIER_KEY, "(J)Lcom/mopub/mobileads/AdData$Builder;", "", "timeoutDelayMillis", "(I)Lcom/mopub/mobileads/AdData$Builder;", "impressionMinVisibleDips", "impressionMinVisibleMs", "dspCreativeId", "adPayload", "", "extras", "(Ljava/util/Map;)Lcom/mopub/mobileads/AdData$Builder;", "", "isRewarded", "(Z)Lcom/mopub/mobileads/AdData$Builder;", "rewardedDurationSeconds", "currencyName", "currencyAmount", "adWidth", "(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;", "adHeight", "adUnit", "adType", "fullAdType", "customerId", "allowCustomClose", "", "Lcom/mopub/common/ViewabilityVendor;", "vendors", "viewabilityVendors", "(Ljava/util/Set;)Lcom/mopub/mobileads/AdData$Builder;", "Lcom/mopub/mobileads/AdData;", "build", "()Lcom/mopub/mobileads/AdData;", "adData", "fromAdData", "(Lcom/mopub/mobileads/AdData;)Lcom/mopub/mobileads/AdData$Builder;", "<set-?>", "d", "I", "getTimeoutDelayMillis", "()I", "j", "Z", "()Z", "a", "Ljava/lang/String;", "getVastVideoConfigString", "()Ljava/lang/String;", "f", "getImpressionMinVisibleMs", "p", "getAdUnit", "h", "getAdPayload", "o", "Ljava/lang/Integer;", "getAdHeight", "()Ljava/lang/Integer;", "e", "getImpressionMinVisibleDips", "i", "Ljava/util/Map;", "getExtras", "()Ljava/util/Map;", "r", "getFullAdType", AbstractC2405c.f7629a, "J", "getBroadcastIdentifier", "()J", "l", "getCurrencyName", "s", "getCustomerId", C22021b.f61237c, "Lcom/mopub/common/CreativeOrientation;", "getOrientation", "()Lcom/mopub/common/CreativeOrientation;", "u", "Ljava/util/Set;", "getViewabilityVendors", "()Ljava/util/Set;", "k", "getRewardedDurationSeconds", "t", "getAllowCustomClose", "m", "getCurrencyAmount", "q", "getAdType", "n", "getAdWidth", "g", "getDspCreativeId", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f8749a;

        /* renamed from: b */
        public CreativeOrientation f8750b;

        /* renamed from: c */
        public long f8751c;

        /* renamed from: e */
        public String f8753e;

        /* renamed from: f */
        public String f8754f;

        /* renamed from: j */
        public boolean f8758j;

        /* renamed from: l */
        public String f8760l;

        /* renamed from: m */
        public int f8761m;

        /* renamed from: n */
        public Integer f8762n;

        /* renamed from: o */
        public Integer f8763o;

        /* renamed from: p */
        public String f8764p;

        /* renamed from: q */
        public String f8765q;

        /* renamed from: r */
        public String f8766r;

        /* renamed from: s */
        public String f8767s;

        /* renamed from: t */
        public boolean f8768t;

        /* renamed from: u */
        public Set<? extends ViewabilityVendor> f8769u;

        /* renamed from: d */
        public int f8752d = 30000;

        /* renamed from: g */
        public String f8755g = "";

        /* renamed from: h */
        public String f8756h = "";

        /* renamed from: i */
        public Map<String, String> f8757i = new HashMap();

        /* renamed from: k */
        public int f8759k = 30;

        public final Builder adHeight(Integer num) {
            this.f8763o = num;
            return this;
        }

        public final Builder adPayload(String str) {
            l.f(str, "adPayload");
            this.f8756h = str;
            return this;
        }

        public final Builder adType(String str) {
            this.f8765q = str;
            return this;
        }

        public final Builder adUnit(String str) {
            this.f8764p = str;
            return this;
        }

        public final Builder adWidth(Integer num) {
            this.f8762n = num;
            return this;
        }

        public final Builder allowCustomClose(boolean z) {
            this.f8768t = z;
            return this;
        }

        public final Builder broadcastIdentifier(long j) {
            this.f8751c = j;
            return this;
        }

        public final AdData build() {
            return new AdData(this, null);
        }

        public final Builder currencyAmount(int i) {
            this.f8761m = i;
            return this;
        }

        public final Builder currencyName(String str) {
            this.f8760l = str;
            return this;
        }

        public final Builder customerId(String str) {
            this.f8767s = str;
            return this;
        }

        public final Builder dspCreativeId(String str) {
            this.f8755g = str;
            return this;
        }

        public final Builder extras(Map<String, String> map) {
            l.f(map, "extras");
            this.f8757i = new TreeMap(map);
            return this;
        }

        public final Builder fromAdData(AdData adData) {
            l.f(adData, "adData");
            this.f8749a = adData.getVastVideoConfigString();
            this.f8750b = adData.getOrientation();
            this.f8751c = adData.getBroadcastIdentifier();
            this.f8752d = adData.getTimeoutDelayMillis();
            this.f8753e = adData.getImpressionMinVisibleDips();
            this.f8754f = adData.getImpressionMinVisibleMs();
            this.f8755g = adData.getDspCreativeId();
            this.f8756h = adData.getAdPayload();
            this.f8757i = adData.getExtras();
            this.f8758j = adData.isRewarded();
            this.f8759k = adData.getRewardedDurationSeconds();
            this.f8760l = adData.getCurrencyName();
            this.f8761m = adData.getCurrencyAmount();
            this.f8762n = adData.getAdWidth();
            this.f8763o = adData.getAdHeight();
            this.f8764p = adData.getAdUnit();
            this.f8765q = adData.getAdType();
            this.f8766r = adData.getFullAdType();
            this.f8767s = adData.getCustomerId();
            this.f8768t = adData.getAllowCustomClose();
            this.f8769u = adData.getViewabilityVendors();
            return this;
        }

        public final Builder fullAdType(String str) {
            this.f8766r = str;
            return this;
        }

        public final Integer getAdHeight() {
            return this.f8763o;
        }

        public final String getAdPayload() {
            return this.f8756h;
        }

        public final String getAdType() {
            return this.f8765q;
        }

        public final String getAdUnit() {
            return this.f8764p;
        }

        public final Integer getAdWidth() {
            return this.f8762n;
        }

        public final boolean getAllowCustomClose() {
            return this.f8768t;
        }

        public final long getBroadcastIdentifier() {
            return this.f8751c;
        }

        public final int getCurrencyAmount() {
            return this.f8761m;
        }

        public final String getCurrencyName() {
            return this.f8760l;
        }

        public final String getCustomerId() {
            return this.f8767s;
        }

        public final String getDspCreativeId() {
            return this.f8755g;
        }

        public final Map<String, String> getExtras() {
            return this.f8757i;
        }

        public final String getFullAdType() {
            return this.f8766r;
        }

        public final String getImpressionMinVisibleDips() {
            return this.f8753e;
        }

        public final String getImpressionMinVisibleMs() {
            return this.f8754f;
        }

        public final CreativeOrientation getOrientation() {
            return this.f8750b;
        }

        public final int getRewardedDurationSeconds() {
            return this.f8759k;
        }

        public final int getTimeoutDelayMillis() {
            return this.f8752d;
        }

        public final String getVastVideoConfigString() {
            return this.f8749a;
        }

        public final Set<ViewabilityVendor> getViewabilityVendors() {
            return this.f8769u;
        }

        public final Builder impressionMinVisibleDips(String str) {
            this.f8753e = str;
            return this;
        }

        public final Builder impressionMinVisibleMs(String str) {
            this.f8754f = str;
            return this;
        }

        public final Builder isRewarded(boolean z) {
            this.f8758j = z;
            return this;
        }

        public final boolean isRewarded() {
            return this.f8758j;
        }

        public final Builder orientation(CreativeOrientation creativeOrientation) {
            this.f8750b = creativeOrientation;
            return this;
        }

        public final Builder rewardedDurationSeconds(int i) {
            this.f8759k = i;
            return this;
        }

        public final Builder timeoutDelayMillis(int i) {
            this.f8752d = i;
            return this;
        }

        public final Builder vastVideoConfig(String str) {
            this.f8749a = str;
            return this;
        }

        public final Builder viewabilityVendors(Set<? extends ViewabilityVendor> set) {
            this.f8769u = set != null ? new HashSet(i.z(set)) : null;
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0016\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0016\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/mopub/mobileads/AdData$Companion;", "", "", "COUNTDOWN_UPDATE_INTERVAL_MILLIS", "J", "", "DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS", "I", "DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS", "DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS", "DEFAULT_FULLSCREEN_TIMEOUT_DELAY", "DEFAULT_INLINE_TIMEOUT_DELAY", "DEFAULT_UNSPECIFIED_TIMEOUT_DELAY", "MILLIS_IN_SECOND", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdData$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            LinkedHashSet linkedHashSet;
            l.f(parcel, "in");
            String readString = parcel.readString();
            CreativeOrientation creativeOrientation = parcel.readInt() != 0 ? (CreativeOrientation) Enum.valueOf(CreativeOrientation.class, parcel.readString()) : null;
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            int readInt2 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(readInt2);
            while (readInt2 != 0) {
                linkedHashMap.put(parcel.readString(), parcel.readString());
                readInt2--;
            }
            boolean z = parcel.readInt() != 0;
            int readInt3 = parcel.readInt();
            String readString6 = parcel.readString();
            int readInt4 = parcel.readInt();
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            Integer valueOf2 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            String readString7 = parcel.readString();
            String readString8 = parcel.readString();
            String readString9 = parcel.readString();
            String readString10 = parcel.readString();
            boolean z2 = parcel.readInt() != 0;
            if (parcel.readInt() != 0) {
                int readInt5 = parcel.readInt();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(readInt5);
                while (readInt5 != 0) {
                    linkedHashSet2.add((ViewabilityVendor) parcel.readSerializable());
                    readInt5--;
                }
                linkedHashSet = linkedHashSet2;
            } else {
                linkedHashSet = null;
            }
            return new AdData(readString, creativeOrientation, readLong, readInt, readString2, readString3, readString4, readString5, linkedHashMap, z, readInt3, readString6, readInt4, valueOf, valueOf2, readString7, readString8, readString9, readString10, z2, linkedHashSet);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new AdData[i];
        }
    }

    public AdData(Builder builder, f fVar) {
        this(builder.getVastVideoConfigString(), builder.getOrientation(), builder.getBroadcastIdentifier(), builder.getTimeoutDelayMillis(), builder.getImpressionMinVisibleDips(), builder.getImpressionMinVisibleMs(), builder.getDspCreativeId(), builder.getAdPayload(), builder.getExtras(), builder.isRewarded(), builder.getRewardedDurationSeconds(), builder.getCurrencyName(), builder.getCurrencyAmount(), builder.getAdWidth(), builder.getAdHeight(), builder.getAdUnit(), builder.getAdType(), builder.getFullAdType(), builder.getCustomerId(), builder.getAllowCustomClose(), builder.getViewabilityVendors());
    }

    public AdData(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set<? extends ViewabilityVendor> set) {
        l.f(str5, "adPayload");
        l.f(map, "extras");
        this.f8728a = str;
        this.f8729b = creativeOrientation;
        this.f8730c = j;
        this.f8731d = i;
        this.f8732e = str2;
        this.f8733f = str3;
        this.f8734g = str4;
        this.f8735h = str5;
        this.f8736i = map;
        this.f8737j = z;
        this.f8738k = i2;
        this.f8739l = str6;
        this.f8740m = i3;
        this.f8741n = num;
        this.f8742o = num2;
        this.f8743p = str7;
        this.f8744q = str8;
        this.f8745r = str9;
        this.f8746s = str10;
        this.f8747t = z2;
        this.f8748u = set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r24v0, types: [com.mopub.mobileads.AdData] */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    public static /* synthetic */ AdData copy$default(AdData adData, String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set set, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = adData.f8728a;
        }
        if ((i4 & 2) != 0) {
            creativeOrientation = adData.f8729b;
        }
        ?? r27 = j;
        if ((i4 & 4) != 0) {
            r27 = adData.f8730c;
        }
        if ((i4 & 8) != 0) {
            i = adData.f8731d;
        }
        if ((i4 & 16) != 0) {
            str2 = adData.f8732e;
        }
        if ((i4 & 32) != 0) {
            str3 = adData.f8733f;
        }
        if ((i4 & 64) != 0) {
            str4 = adData.f8734g;
        }
        if ((i4 & 128) != 0) {
            str5 = adData.f8735h;
        }
        Map<String, String> map2 = map;
        if ((i4 & 256) != 0) {
            map2 = adData.f8736i;
        }
        if ((i4 & 512) != 0) {
            z = adData.f8737j;
        }
        if ((i4 & 1024) != 0) {
            i2 = adData.f8738k;
        }
        if ((i4 & 2048) != 0) {
            str6 = adData.f8739l;
        }
        if ((i4 & 4096) != 0) {
            i3 = adData.f8740m;
        }
        if ((i4 & 8192) != 0) {
            num = adData.f8741n;
        }
        if ((i4 & 16384) != 0) {
            num2 = adData.f8742o;
        }
        if ((i4 & 32768) != 0) {
            str7 = adData.f8743p;
        }
        if ((i4 & 65536) != 0) {
            str8 = adData.f8744q;
        }
        if ((i4 & 131072) != 0) {
            str9 = adData.f8745r;
        }
        if ((i4 & 262144) != 0) {
            str10 = adData.f8746s;
        }
        if ((i4 & 524288) != 0) {
            z2 = adData.f8747t;
        }
        Set<? extends ViewabilityVendor> set2 = set;
        if ((i4 & 1048576) != 0) {
            set2 = adData.f8748u;
        }
        return adData.copy(str, creativeOrientation, r27, i, str2, str3, str4, str5, map2, z, i2, str6, i3, num, num2, str7, str8, str9, str10, z2, set2);
    }

    public final String component1() {
        return this.f8728a;
    }

    public final boolean component10() {
        return this.f8737j;
    }

    public final int component11() {
        return this.f8738k;
    }

    public final String component12() {
        return this.f8739l;
    }

    public final int component13() {
        return this.f8740m;
    }

    public final Integer component14() {
        return this.f8741n;
    }

    public final Integer component15() {
        return this.f8742o;
    }

    public final String component16() {
        return this.f8743p;
    }

    public final String component17() {
        return this.f8744q;
    }

    public final String component18() {
        return this.f8745r;
    }

    public final String component19() {
        return this.f8746s;
    }

    public final CreativeOrientation component2() {
        return this.f8729b;
    }

    public final boolean component20() {
        return this.f8747t;
    }

    public final Set<ViewabilityVendor> component21() {
        return this.f8748u;
    }

    public final long component3() {
        return this.f8730c;
    }

    public final int component4() {
        return this.f8731d;
    }

    public final String component5() {
        return this.f8732e;
    }

    public final String component6() {
        return this.f8733f;
    }

    public final String component7() {
        return this.f8734g;
    }

    public final String component8() {
        return this.f8735h;
    }

    public final Map<String, String> component9() {
        return this.f8736i;
    }

    public final AdData copy(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map<String, String> map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set<? extends ViewabilityVendor> set) {
        l.f(str5, "adPayload");
        l.f(map, "extras");
        return new AdData(str, creativeOrientation, j, i, str2, str3, str4, str5, map, z, i2, str6, i3, num, num2, str7, str8, str9, str10, z2, set);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdData)) {
                return false;
            }
            AdData adData = (AdData) obj;
            return l.a(this.f8728a, adData.f8728a) && l.a(this.f8729b, adData.f8729b) && this.f8730c == adData.f8730c && this.f8731d == adData.f8731d && l.a(this.f8732e, adData.f8732e) && l.a(this.f8733f, adData.f8733f) && l.a(this.f8734g, adData.f8734g) && l.a(this.f8735h, adData.f8735h) && l.a(this.f8736i, adData.f8736i) && this.f8737j == adData.f8737j && this.f8738k == adData.f8738k && l.a(this.f8739l, adData.f8739l) && this.f8740m == adData.f8740m && l.a(this.f8741n, adData.f8741n) && l.a(this.f8742o, adData.f8742o) && l.a(this.f8743p, adData.f8743p) && l.a(this.f8744q, adData.f8744q) && l.a(this.f8745r, adData.f8745r) && l.a(this.f8746s, adData.f8746s) && this.f8747t == adData.f8747t && l.a(this.f8748u, adData.f8748u);
        }
        return true;
    }

    public final Integer getAdHeight() {
        return this.f8742o;
    }

    public final String getAdPayload() {
        return this.f8735h;
    }

    public final String getAdType() {
        return this.f8744q;
    }

    public final String getAdUnit() {
        return this.f8743p;
    }

    public final Integer getAdWidth() {
        return this.f8741n;
    }

    public final boolean getAllowCustomClose() {
        return this.f8747t;
    }

    public final long getBroadcastIdentifier() {
        return this.f8730c;
    }

    public final int getCurrencyAmount() {
        return this.f8740m;
    }

    public final String getCurrencyName() {
        return this.f8739l;
    }

    public final String getCustomerId() {
        return this.f8746s;
    }

    public final String getDspCreativeId() {
        return this.f8734g;
    }

    public final Map<String, String> getExtras() {
        return this.f8736i;
    }

    public final String getFullAdType() {
        return this.f8745r;
    }

    public final String getImpressionMinVisibleDips() {
        return this.f8732e;
    }

    public final String getImpressionMinVisibleMs() {
        return this.f8733f;
    }

    public final CreativeOrientation getOrientation() {
        return this.f8729b;
    }

    public final int getRewardedDurationSeconds() {
        return this.f8738k;
    }

    public final int getTimeoutDelayMillis() {
        return this.f8731d;
    }

    public final String getVastVideoConfigString() {
        return this.f8728a;
    }

    public final Set<ViewabilityVendor> getViewabilityVendors() {
        return this.f8748u;
    }

    public int hashCode() {
        String str = this.f8728a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        CreativeOrientation creativeOrientation = this.f8729b;
        int hashCode2 = creativeOrientation != null ? creativeOrientation.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f8730c);
        int i2 = this.f8731d;
        String str2 = this.f8732e;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f8733f;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f8734g;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f8735h;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        Map<String, String> map = this.f8736i;
        int hashCode7 = map != null ? map.hashCode() : 0;
        boolean z = this.f8737j;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        int i5 = this.f8738k;
        String str6 = this.f8739l;
        int hashCode8 = str6 != null ? str6.hashCode() : 0;
        int i6 = this.f8740m;
        Integer num = this.f8741n;
        int hashCode9 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f8742o;
        int hashCode10 = num2 != null ? num2.hashCode() : 0;
        String str7 = this.f8743p;
        int hashCode11 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f8744q;
        int hashCode12 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f8745r;
        int hashCode13 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.f8746s;
        int hashCode14 = str10 != null ? str10.hashCode() : 0;
        boolean z2 = this.f8747t;
        if (!z2) {
            i3 = z2 ? 1 : 0;
        }
        Set<? extends ViewabilityVendor> set = this.f8748u;
        if (set != null) {
            i = set.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i4) * 31) + i5) * 31) + hashCode8) * 31) + i6) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + i3) * 31) + i;
    }

    public final boolean isRewarded() {
        return this.f8737j;
    }

    public final void setAdHeight(Integer num) {
        this.f8742o = num;
    }

    public final void setAdPayload(String str) {
        l.f(str, "<set-?>");
        this.f8735h = str;
    }

    public final void setAdType(String str) {
        this.f8744q = str;
    }

    public final void setAdUnit(String str) {
        this.f8743p = str;
    }

    public final void setAdWidth(Integer num) {
        this.f8741n = num;
    }

    public final void setAllowCustomClose(boolean z) {
        this.f8747t = z;
    }

    public final void setBroadcastIdentifier(long j) {
        this.f8730c = j;
    }

    public final void setCurrencyAmount(int i) {
        this.f8740m = i;
    }

    public final void setCurrencyName(String str) {
        this.f8739l = str;
    }

    public final void setCustomerId(String str) {
        this.f8746s = str;
    }

    public final void setDspCreativeId(String str) {
        this.f8734g = str;
    }

    public final void setExtras(Map<String, String> map) {
        l.f(map, "<set-?>");
        this.f8736i = map;
    }

    public final void setFullAdType(String str) {
        this.f8745r = str;
    }

    public final void setImpressionMinVisibleDips(String str) {
        this.f8732e = str;
    }

    public final void setImpressionMinVisibleMs(String str) {
        this.f8733f = str;
    }

    public final void setOrientation(CreativeOrientation creativeOrientation) {
        this.f8729b = creativeOrientation;
    }

    public final void setRewarded(boolean z) {
        this.f8737j = z;
    }

    public final void setRewardedDurationSeconds(int i) {
        this.f8738k = i;
    }

    public final void setTimeoutDelayMillis(int i) {
        this.f8731d = i;
    }

    public final void setVastVideoConfigString(String str) {
        this.f8728a = str;
    }

    public final void setViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        this.f8748u = set;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdData(vastVideoConfigString=");
        m8728C.append(this.f8728a);
        m8728C.append(", orientation=");
        m8728C.append(this.f8729b);
        m8728C.append(", broadcastIdentifier=");
        m8728C.append(this.f8730c);
        m8728C.append(", timeoutDelayMillis=");
        m8728C.append(this.f8731d);
        m8728C.append(", impressionMinVisibleDips=");
        m8728C.append(this.f8732e);
        m8728C.append(", impressionMinVisibleMs=");
        m8728C.append(this.f8733f);
        m8728C.append(", dspCreativeId=");
        m8728C.append(this.f8734g);
        m8728C.append(", adPayload=");
        m8728C.append(this.f8735h);
        m8728C.append(", extras=");
        m8728C.append(this.f8736i);
        m8728C.append(", isRewarded=");
        m8728C.append(this.f8737j);
        m8728C.append(", rewardedDurationSeconds=");
        m8728C.append(this.f8738k);
        m8728C.append(", currencyName=");
        m8728C.append(this.f8739l);
        m8728C.append(", currencyAmount=");
        m8728C.append(this.f8740m);
        m8728C.append(", adWidth=");
        m8728C.append(this.f8741n);
        m8728C.append(", adHeight=");
        m8728C.append(this.f8742o);
        m8728C.append(", adUnit=");
        m8728C.append(this.f8743p);
        m8728C.append(", adType=");
        m8728C.append(this.f8744q);
        m8728C.append(", fullAdType=");
        m8728C.append(this.f8745r);
        m8728C.append(", customerId=");
        m8728C.append(this.f8746s);
        m8728C.append(", allowCustomClose=");
        m8728C.append(this.f8747t);
        m8728C.append(", viewabilityVendors=");
        m8728C.append(this.f8748u);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.f(parcel, "parcel");
        parcel.writeString(this.f8728a);
        CreativeOrientation creativeOrientation = this.f8729b;
        if (creativeOrientation != null) {
            parcel.writeInt(1);
            parcel.writeString(creativeOrientation.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.f8730c);
        parcel.writeInt(this.f8731d);
        parcel.writeString(this.f8732e);
        parcel.writeString(this.f8733f);
        parcel.writeString(this.f8734g);
        parcel.writeString(this.f8735h);
        Map<String, String> map = this.f8736i;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
        parcel.writeInt(this.f8737j ? 1 : 0);
        parcel.writeInt(this.f8738k);
        parcel.writeString(this.f8739l);
        parcel.writeInt(this.f8740m);
        Integer num = this.f8741n;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num2 = this.f8742o;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f8743p);
        parcel.writeString(this.f8744q);
        parcel.writeString(this.f8745r);
        parcel.writeString(this.f8746s);
        parcel.writeInt(this.f8747t ? 1 : 0);
        Set<? extends ViewabilityVendor> set = this.f8748u;
        if (set == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(set.size());
        for (ViewabilityVendor viewabilityVendor : set) {
            parcel.writeSerializable(viewabilityVendor);
        }
    }
}
