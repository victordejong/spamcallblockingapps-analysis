package com.mopub.mobileads;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.ViewabilityVendor;
import io.objectbox.model.PropertyFlags;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010$\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\bU\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018�� \u0080\u00012\u00020\u0001:\u0003\u007f\u0080\u0001B\u000f\b\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BÙ\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\f\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0017\u001a\u00020\f\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001e\u001a\u00020\u0014\u0012\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 ¢\u0006\u0002\u0010\"J\u000b\u0010]\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010^\u001a\u00020\u0014HÆ\u0003J\t\u0010_\u001a\u00020\fHÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010a\u001a\u00020\fHÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010$J\u0010\u0010c\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010i\u001a\u00020\u0014HÆ\u0003J\u0011\u0010j\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 HÆ\u0003J\t\u0010k\u001a\u00020\nHÆ\u0003J\t\u0010l\u001a\u00020\fHÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010p\u001a\u00020\u0006HÆ\u0003J\u0015\u0010q\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0012HÆ\u0003J\u008c\u0002\u0010r\u001a\u00020��2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00062\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\f2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0017\u001a\u00020\f2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u001e\u001a\u00020\u00142\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 HÆ\u0001¢\u0006\u0002\u0010sJ\t\u0010t\u001a\u00020\fHÖ\u0001J\u0013\u0010u\u001a\u00020\u00142\b\u0010v\u001a\u0004\u0018\u00010wHÖ\u0003J\t\u0010x\u001a\u00020\fHÖ\u0001J\t\u0010y\u001a\u00020\u0006HÖ\u0001J\u0019\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u00020\fHÖ\u0001R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010\u0010\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010)\"\u0004\b-\u0010+R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010)\"\u0004\b/\u0010+R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b0\u0010$\"\u0004\b1\u0010&R\u001a\u0010\u001e\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010\u0017\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010)\"\u0004\b?\u0010+R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b@\u0010)\"\u0004\bA\u0010+R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bB\u0010)\"\u0004\bC\u0010+R&\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bH\u0010)\"\u0004\bI\u0010+R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bJ\u0010)\"\u0004\bK\u0010+R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bL\u0010)\"\u0004\bM\u0010+R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u00103\"\u0004\bN\u00105R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR\u001a\u0010\u0015\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bS\u0010;\"\u0004\bT\u0010=R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bU\u0010;\"\u0004\bV\u0010=R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bW\u0010)\"\u0004\bX\u0010+R\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\¨\u0006\u0081\u0001"}, d2 = {"Lcom/mopub/mobileads/AdData;", "Landroid/os/Parcelable;", "builder", "Lcom/mopub/mobileads/AdData$Builder;", "(Lcom/mopub/mobileads/AdData$Builder;)V", "vastVideoConfigString", "", "orientation", "Lcom/mopub/common/CreativeOrientation;", DataKeys.BROADCAST_IDENTIFIER_KEY, "", "timeoutDelayMillis", "", "impressionMinVisibleDips", "impressionMinVisibleMs", "dspCreativeId", "adPayload", "extras", "", "isRewarded", "", "rewardedDurationSeconds", "currencyName", "currencyAmount", "adWidth", "adHeight", "adUnit", "adType", "fullAdType", "customerId", "allowCustomClose", "viewabilityVendors", "", "Lcom/mopub/common/ViewabilityVendor;", "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)V", "getAdHeight", "()Ljava/lang/Integer;", "setAdHeight", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getAdPayload", "()Ljava/lang/String;", "setAdPayload", "(Ljava/lang/String;)V", "getAdType", "setAdType", "getAdUnit", "setAdUnit", "getAdWidth", "setAdWidth", "getAllowCustomClose", "()Z", "setAllowCustomClose", "(Z)V", "getBroadcastIdentifier", "()J", "setBroadcastIdentifier", "(J)V", "getCurrencyAmount", "()I", "setCurrencyAmount", "(I)V", "getCurrencyName", "setCurrencyName", "getCustomerId", "setCustomerId", "getDspCreativeId", "setDspCreativeId", "getExtras", "()Ljava/util/Map;", "setExtras", "(Ljava/util/Map;)V", "getFullAdType", "setFullAdType", "getImpressionMinVisibleDips", "setImpressionMinVisibleDips", "getImpressionMinVisibleMs", "setImpressionMinVisibleMs", "setRewarded", "getOrientation", "()Lcom/mopub/common/CreativeOrientation;", "setOrientation", "(Lcom/mopub/common/CreativeOrientation;)V", "getRewardedDurationSeconds", "setRewardedDurationSeconds", "getTimeoutDelayMillis", "setTimeoutDelayMillis", "getVastVideoConfigString", "setVastVideoConfigString", "getViewabilityVendors", "()Ljava/util/Set;", "setViewabilityVendors", "(Ljava/util/Set;)V", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Lcom/mopub/mobileads/AdData;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdData.class */
public final class AdData implements Parcelable {
    public static final long COUNTDOWN_UPDATE_INTERVAL_MILLIS = 250;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS = 30000;
    public static final int DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS = 30;
    public static final int DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS = 5000;
    public static final int DEFAULT_FULLSCREEN_TIMEOUT_DELAY = 30000;
    public static final int DEFAULT_INLINE_TIMEOUT_DELAY = 10000;
    public static final int DEFAULT_UNSPECIFIED_TIMEOUT_DELAY = 30000;
    public static final int MILLIS_IN_SECOND = 1000;
    private Integer adHeight;
    private String adPayload;
    private String adType;
    private String adUnit;
    private Integer adWidth;
    private boolean allowCustomClose;
    private long broadcastIdentifier;
    private int currencyAmount;
    private String currencyName;
    private String customerId;
    private String dspCreativeId;
    private Map<String, String> extras;
    private String fullAdType;
    private String impressionMinVisibleDips;
    private String impressionMinVisibleMs;
    private boolean isRewarded;
    private CreativeOrientation orientation;
    private int rewardedDurationSeconds;
    private int timeoutDelayMillis;
    private String vastVideoConfigString;
    private Set<? extends ViewabilityVendor> viewabilityVendors;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator CREATOR = new Creator();

    @Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0005\u001a\u00020��2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010>J\u000e\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020��2\b\u0010\r\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u000f\u001a\u00020��2\b\u0010\u000f\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u0011\u001a\u00020��2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010>J\u000e\u0010\u0014\u001a\u00020��2\u0006\u0010\u0014\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010?\u001a\u00020@J\u000e\u0010\u001b\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0004J\u0010\u0010\u001e\u001a\u00020��2\b\u0010\u001e\u001a\u0004\u0018\u00010\tJ\u0010\u0010 \u001a\u00020��2\b\u0010 \u001a\u0004\u0018\u00010\tJ\u0010\u0010\"\u001a\u00020��2\b\u0010\"\u001a\u0004\u0018\u00010\tJ\u001a\u0010%\u001a\u00020��2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$J\u000e\u0010A\u001a\u00020��2\u0006\u0010B\u001a\u00020@J\u0010\u0010(\u001a\u00020��2\b\u0010(\u001a\u0004\u0018\u00010\tJ\u0010\u0010*\u001a\u00020��2\b\u0010*\u001a\u0004\u0018\u00010\tJ\u0010\u0010,\u001a\u00020��2\b\u0010,\u001a\u0004\u0018\u00010\tJ\u000e\u0010.\u001a\u00020��2\u0006\u0010.\u001a\u00020\u0013J\u0010\u00100\u001a\u00020��2\b\u00100\u001a\u0004\u0018\u00010/J\u000e\u00103\u001a\u00020��2\u0006\u00103\u001a\u00020\u0004J\u000e\u00105\u001a\u00020��2\u0006\u00105\u001a\u00020\u0004J\u0010\u0010C\u001a\u00020��2\b\u00107\u001a\u0004\u0018\u00010\tJ\u0018\u0010;\u001a\u00020��2\u0010\u0010D\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010:\u0018\u000109R$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\"\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0012\u0010\u0007R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\"\u0010\u001e\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\fR\"\u0010 \u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b!\u0010\fR\"\u0010\"\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b#\u0010\fR6\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$2\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0$@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b&\u0010'R\"\u0010(\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b)\u0010\fR\"\u0010*\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b+\u0010\fR\"\u0010,\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b-\u0010\fR\u001e\u0010.\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b.\u0010\u0016R\"\u00100\u001a\u0004\u0018\u00010/2\b\u0010\u0003\u001a\u0004\u0018\u00010/@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b1\u00102R\u001e\u00103\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b4\u0010\u001dR\u001e\u00105\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b6\u0010\u001dR\"\u00107\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b8\u0010\fR.\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u0001092\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020:\u0018\u000109@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b<\u0010=¨\u0006E"}, d2 = {"Lcom/mopub/mobileads/AdData$Builder;", "", "()V", "<set-?>", "", "adHeight", "getAdHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "", "adPayload", "getAdPayload", "()Ljava/lang/String;", "adType", "getAdType", "adUnit", "getAdUnit", "adWidth", "getAdWidth", "", "allowCustomClose", "getAllowCustomClose", "()Z", "", DataKeys.BROADCAST_IDENTIFIER_KEY, "getBroadcastIdentifier", "()J", "currencyAmount", "getCurrencyAmount", "()I", "currencyName", "getCurrencyName", "customerId", "getCustomerId", "dspCreativeId", "getDspCreativeId", "", "extras", "getExtras", "()Ljava/util/Map;", "fullAdType", "getFullAdType", "impressionMinVisibleDips", "getImpressionMinVisibleDips", "impressionMinVisibleMs", "getImpressionMinVisibleMs", "isRewarded", "Lcom/mopub/common/CreativeOrientation;", "orientation", "getOrientation", "()Lcom/mopub/common/CreativeOrientation;", "rewardedDurationSeconds", "getRewardedDurationSeconds", "timeoutDelayMillis", "getTimeoutDelayMillis", "vastVideoConfigString", "getVastVideoConfigString", "", "Lcom/mopub/common/ViewabilityVendor;", "viewabilityVendors", "getViewabilityVendors", "()Ljava/util/Set;", "(Ljava/lang/Integer;)Lcom/mopub/mobileads/AdData$Builder;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/AdData;", "fromAdData", "adData", "vastVideoConfig", "vendors", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdData$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f34018a;

        /* renamed from: b  reason: collision with root package name */
        private CreativeOrientation f34019b;

        /* renamed from: c  reason: collision with root package name */
        private long f34020c;
        private String e;
        private String f;
        private boolean j;
        private String l;
        private int m;
        private Integer n;
        private Integer o;
        private String p;
        private String q;
        private String r;
        private String s;
        private boolean t;
        private Set<? extends ViewabilityVendor> u;

        /* renamed from: d  reason: collision with root package name */
        private int f34021d = 30000;
        private String g = "";
        private String h = "";
        private Map<String, String> i = new HashMap();
        private int k = 30;

        public final Builder adHeight(Integer num) {
            Builder builder = this;
            builder.o = num;
            return builder;
        }

        public final Builder adPayload(String adPayload) {
            p.c(adPayload, "adPayload");
            Builder builder = this;
            builder.h = adPayload;
            return builder;
        }

        public final Builder adType(String str) {
            Builder builder = this;
            builder.q = str;
            return builder;
        }

        public final Builder adUnit(String str) {
            Builder builder = this;
            builder.p = str;
            return builder;
        }

        public final Builder adWidth(Integer num) {
            Builder builder = this;
            builder.n = num;
            return builder;
        }

        public final Builder allowCustomClose(boolean z) {
            Builder builder = this;
            builder.t = z;
            return builder;
        }

        public final Builder broadcastIdentifier(long j) {
            Builder builder = this;
            builder.f34020c = j;
            return builder;
        }

        public final AdData build() {
            return new AdData(this, null);
        }

        public final Builder currencyAmount(int i) {
            Builder builder = this;
            builder.m = i;
            return builder;
        }

        public final Builder currencyName(String str) {
            Builder builder = this;
            builder.l = str;
            return builder;
        }

        public final Builder customerId(String str) {
            Builder builder = this;
            builder.s = str;
            return builder;
        }

        public final Builder dspCreativeId(String str) {
            Builder builder = this;
            builder.g = str;
            return builder;
        }

        public final Builder extras(Map<String, String> extras) {
            p.c(extras, "extras");
            Builder builder = this;
            builder.i = new TreeMap(extras);
            return builder;
        }

        public final Builder fromAdData(AdData adData) {
            p.c(adData, "adData");
            Builder builder = this;
            builder.f34018a = adData.getVastVideoConfigString();
            builder.f34019b = adData.getOrientation();
            builder.f34020c = adData.getBroadcastIdentifier();
            builder.f34021d = adData.getTimeoutDelayMillis();
            builder.e = adData.getImpressionMinVisibleDips();
            builder.f = adData.getImpressionMinVisibleMs();
            builder.g = adData.getDspCreativeId();
            builder.h = adData.getAdPayload();
            builder.i = adData.getExtras();
            builder.j = adData.isRewarded();
            builder.k = adData.getRewardedDurationSeconds();
            builder.l = adData.getCurrencyName();
            builder.m = adData.getCurrencyAmount();
            builder.n = adData.getAdWidth();
            builder.o = adData.getAdHeight();
            builder.p = adData.getAdUnit();
            builder.q = adData.getAdType();
            builder.r = adData.getFullAdType();
            builder.s = adData.getCustomerId();
            builder.t = adData.getAllowCustomClose();
            builder.u = adData.getViewabilityVendors();
            return builder;
        }

        public final Builder fullAdType(String str) {
            Builder builder = this;
            builder.r = str;
            return builder;
        }

        public final Integer getAdHeight() {
            return this.o;
        }

        public final String getAdPayload() {
            return this.h;
        }

        public final String getAdType() {
            return this.q;
        }

        public final String getAdUnit() {
            return this.p;
        }

        public final Integer getAdWidth() {
            return this.n;
        }

        public final boolean getAllowCustomClose() {
            return this.t;
        }

        public final long getBroadcastIdentifier() {
            return this.f34020c;
        }

        public final int getCurrencyAmount() {
            return this.m;
        }

        public final String getCurrencyName() {
            return this.l;
        }

        public final String getCustomerId() {
            return this.s;
        }

        public final String getDspCreativeId() {
            return this.g;
        }

        public final Map<String, String> getExtras() {
            return this.i;
        }

        public final String getFullAdType() {
            return this.r;
        }

        public final String getImpressionMinVisibleDips() {
            return this.e;
        }

        public final String getImpressionMinVisibleMs() {
            return this.f;
        }

        public final CreativeOrientation getOrientation() {
            return this.f34019b;
        }

        public final int getRewardedDurationSeconds() {
            return this.k;
        }

        public final int getTimeoutDelayMillis() {
            return this.f34021d;
        }

        public final String getVastVideoConfigString() {
            return this.f34018a;
        }

        public final Set<ViewabilityVendor> getViewabilityVendors() {
            return this.u;
        }

        public final Builder impressionMinVisibleDips(String str) {
            Builder builder = this;
            builder.e = str;
            return builder;
        }

        public final Builder impressionMinVisibleMs(String str) {
            Builder builder = this;
            builder.f = str;
            return builder;
        }

        public final Builder isRewarded(boolean z) {
            Builder builder = this;
            builder.j = z;
            return builder;
        }

        public final boolean isRewarded() {
            return this.j;
        }

        public final Builder orientation(CreativeOrientation creativeOrientation) {
            Builder builder = this;
            builder.f34019b = creativeOrientation;
            return builder;
        }

        public final Builder rewardedDurationSeconds(int i) {
            Builder builder = this;
            builder.k = i;
            return builder;
        }

        public final Builder timeoutDelayMillis(int i) {
            Builder builder = this;
            builder.f34021d = i;
            return builder;
        }

        public final Builder vastVideoConfig(String str) {
            Builder builder = this;
            builder.f34018a = str;
            return builder;
        }

        public final Builder viewabilityVendors(Set<? extends ViewabilityVendor> set) {
            HashSet hashSet;
            Builder builder = this;
            if (set != null) {
                Set<? extends ViewabilityVendor> filterNotNull = set;
                p.d(filterNotNull, "$this$filterNotNull");
                hashSet = new HashSet((List) n.a((Iterable) filterNotNull, new ArrayList()));
            } else {
                hashSet = null;
            }
            builder.u = hashSet;
            return builder;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/mopub/mobileads/AdData$Companion;", "", "()V", "COUNTDOWN_UPDATE_INTERVAL_MILLIS", "", "DEFAULT_DURATION_FOR_CLOSE_BUTTON_MILLIS", "", "DEFAULT_DURATION_FOR_CLOSE_BUTTON_SECONDS", "DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS", "DEFAULT_FULLSCREEN_TIMEOUT_DELAY", "DEFAULT_INLINE_TIMEOUT_DELAY", "DEFAULT_UNSPECIFIED_TIMEOUT_DELAY", "MILLIS_IN_SECOND", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdData$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdData$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel in) {
            LinkedHashSet linkedHashSet;
            p.c(in, "in");
            String readString = in.readString();
            CreativeOrientation creativeOrientation = in.readInt() != 0 ? (CreativeOrientation) Enum.valueOf(CreativeOrientation.class, in.readString()) : null;
            long readLong = in.readLong();
            int readInt = in.readInt();
            String readString2 = in.readString();
            String readString3 = in.readString();
            String readString4 = in.readString();
            String readString5 = in.readString();
            int readInt2 = in.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(readInt2);
            while (readInt2 != 0) {
                linkedHashMap.put(in.readString(), in.readString());
                readInt2--;
            }
            boolean z = in.readInt() != 0;
            int readInt3 = in.readInt();
            String readString6 = in.readString();
            int readInt4 = in.readInt();
            Integer valueOf = in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null;
            Integer valueOf2 = in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null;
            String readString7 = in.readString();
            String readString8 = in.readString();
            String readString9 = in.readString();
            String readString10 = in.readString();
            boolean z2 = in.readInt() != 0;
            if (in.readInt() != 0) {
                int readInt5 = in.readInt();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet(readInt5);
                while (readInt5 != 0) {
                    linkedHashSet2.add((ViewabilityVendor) in.readSerializable());
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

    private AdData(Builder builder) {
        this(builder.getVastVideoConfigString(), builder.getOrientation(), builder.getBroadcastIdentifier(), builder.getTimeoutDelayMillis(), builder.getImpressionMinVisibleDips(), builder.getImpressionMinVisibleMs(), builder.getDspCreativeId(), builder.getAdPayload(), builder.getExtras(), builder.isRewarded(), builder.getRewardedDurationSeconds(), builder.getCurrencyName(), builder.getCurrencyAmount(), builder.getAdWidth(), builder.getAdHeight(), builder.getAdUnit(), builder.getAdType(), builder.getFullAdType(), builder.getCustomerId(), builder.getAllowCustomClose(), builder.getViewabilityVendors());
    }

    public /* synthetic */ AdData(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    public AdData(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String adPayload, Map<String, String> extras, boolean z, int i2, String str5, int i3, Integer num, Integer num2, String str6, String str7, String str8, String str9, boolean z2, Set<? extends ViewabilityVendor> set) {
        p.c(adPayload, "adPayload");
        p.c(extras, "extras");
        this.vastVideoConfigString = str;
        this.orientation = creativeOrientation;
        this.broadcastIdentifier = j;
        this.timeoutDelayMillis = i;
        this.impressionMinVisibleDips = str2;
        this.impressionMinVisibleMs = str3;
        this.dspCreativeId = str4;
        this.adPayload = adPayload;
        this.extras = extras;
        this.isRewarded = z;
        this.rewardedDurationSeconds = i2;
        this.currencyName = str5;
        this.currencyAmount = i3;
        this.adWidth = num;
        this.adHeight = num2;
        this.adUnit = str6;
        this.adType = str7;
        this.fullAdType = str8;
        this.customerId = str9;
        this.allowCustomClose = z2;
        this.viewabilityVendors = set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdData copy$default(AdData adData, String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String str5, Map map, boolean z, int i2, String str6, int i3, Integer num, Integer num2, String str7, String str8, String str9, String str10, boolean z2, Set set, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = adData.vastVideoConfigString;
        }
        if ((i4 & 2) != 0) {
            creativeOrientation = adData.orientation;
        }
        if ((i4 & 4) != 0) {
            j = adData.broadcastIdentifier;
        }
        if ((i4 & 8) != 0) {
            i = adData.timeoutDelayMillis;
        }
        if ((i4 & 16) != 0) {
            str2 = adData.impressionMinVisibleDips;
        }
        if ((i4 & 32) != 0) {
            str3 = adData.impressionMinVisibleMs;
        }
        if ((i4 & 64) != 0) {
            str4 = adData.dspCreativeId;
        }
        if ((i4 & 128) != 0) {
            str5 = adData.adPayload;
        }
        if ((i4 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            map = adData.extras;
        }
        if ((i4 & 512) != 0) {
            z = adData.isRewarded;
        }
        if ((i4 & 1024) != 0) {
            i2 = adData.rewardedDurationSeconds;
        }
        if ((i4 & 2048) != 0) {
            str6 = adData.currencyName;
        }
        if ((i4 & 4096) != 0) {
            i3 = adData.currencyAmount;
        }
        if ((i4 & PropertyFlags.UNSIGNED) != 0) {
            num = adData.adWidth;
        }
        if ((i4 & 16384) != 0) {
            num2 = adData.adHeight;
        }
        if ((i4 & 32768) != 0) {
            str7 = adData.adUnit;
        }
        if ((i4 & 65536) != 0) {
            str8 = adData.adType;
        }
        if ((i4 & 131072) != 0) {
            str9 = adData.fullAdType;
        }
        if ((i4 & 262144) != 0) {
            str10 = adData.customerId;
        }
        if ((i4 & 524288) != 0) {
            z2 = adData.allowCustomClose;
        }
        if ((i4 & 1048576) != 0) {
            set = adData.viewabilityVendors;
        }
        return adData.copy(str, creativeOrientation, j, i, str2, str3, str4, str5, map, z, i2, str6, i3, num, num2, str7, str8, str9, str10, z2, set);
    }

    public final String component1() {
        return this.vastVideoConfigString;
    }

    public final boolean component10() {
        return this.isRewarded;
    }

    public final int component11() {
        return this.rewardedDurationSeconds;
    }

    public final String component12() {
        return this.currencyName;
    }

    public final int component13() {
        return this.currencyAmount;
    }

    public final Integer component14() {
        return this.adWidth;
    }

    public final Integer component15() {
        return this.adHeight;
    }

    public final String component16() {
        return this.adUnit;
    }

    public final String component17() {
        return this.adType;
    }

    public final String component18() {
        return this.fullAdType;
    }

    public final String component19() {
        return this.customerId;
    }

    public final CreativeOrientation component2() {
        return this.orientation;
    }

    public final boolean component20() {
        return this.allowCustomClose;
    }

    public final Set<ViewabilityVendor> component21() {
        return this.viewabilityVendors;
    }

    public final long component3() {
        return this.broadcastIdentifier;
    }

    public final int component4() {
        return this.timeoutDelayMillis;
    }

    public final String component5() {
        return this.impressionMinVisibleDips;
    }

    public final String component6() {
        return this.impressionMinVisibleMs;
    }

    public final String component7() {
        return this.dspCreativeId;
    }

    public final String component8() {
        return this.adPayload;
    }

    public final Map<String, String> component9() {
        return this.extras;
    }

    public final AdData copy(String str, CreativeOrientation creativeOrientation, long j, int i, String str2, String str3, String str4, String adPayload, Map<String, String> extras, boolean z, int i2, String str5, int i3, Integer num, Integer num2, String str6, String str7, String str8, String str9, boolean z2, Set<? extends ViewabilityVendor> set) {
        p.c(adPayload, "adPayload");
        p.c(extras, "extras");
        return new AdData(str, creativeOrientation, j, i, str2, str3, str4, adPayload, extras, z, i2, str5, i3, num, num2, str6, str7, str8, str9, z2, set);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdData)) {
            return false;
        }
        AdData adData = (AdData) obj;
        return p.a((Object) this.vastVideoConfigString, (Object) adData.vastVideoConfigString) && p.a(this.orientation, adData.orientation) && this.broadcastIdentifier == adData.broadcastIdentifier && this.timeoutDelayMillis == adData.timeoutDelayMillis && p.a((Object) this.impressionMinVisibleDips, (Object) adData.impressionMinVisibleDips) && p.a((Object) this.impressionMinVisibleMs, (Object) adData.impressionMinVisibleMs) && p.a((Object) this.dspCreativeId, (Object) adData.dspCreativeId) && p.a((Object) this.adPayload, (Object) adData.adPayload) && p.a(this.extras, adData.extras) && this.isRewarded == adData.isRewarded && this.rewardedDurationSeconds == adData.rewardedDurationSeconds && p.a((Object) this.currencyName, (Object) adData.currencyName) && this.currencyAmount == adData.currencyAmount && p.a(this.adWidth, adData.adWidth) && p.a(this.adHeight, adData.adHeight) && p.a((Object) this.adUnit, (Object) adData.adUnit) && p.a((Object) this.adType, (Object) adData.adType) && p.a((Object) this.fullAdType, (Object) adData.fullAdType) && p.a((Object) this.customerId, (Object) adData.customerId) && this.allowCustomClose == adData.allowCustomClose && p.a(this.viewabilityVendors, adData.viewabilityVendors);
    }

    public final Integer getAdHeight() {
        return this.adHeight;
    }

    public final String getAdPayload() {
        return this.adPayload;
    }

    public final String getAdType() {
        return this.adType;
    }

    public final String getAdUnit() {
        return this.adUnit;
    }

    public final Integer getAdWidth() {
        return this.adWidth;
    }

    public final boolean getAllowCustomClose() {
        return this.allowCustomClose;
    }

    public final long getBroadcastIdentifier() {
        return this.broadcastIdentifier;
    }

    public final int getCurrencyAmount() {
        return this.currencyAmount;
    }

    public final String getCurrencyName() {
        return this.currencyName;
    }

    public final String getCustomerId() {
        return this.customerId;
    }

    public final String getDspCreativeId() {
        return this.dspCreativeId;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final String getFullAdType() {
        return this.fullAdType;
    }

    public final String getImpressionMinVisibleDips() {
        return this.impressionMinVisibleDips;
    }

    public final String getImpressionMinVisibleMs() {
        return this.impressionMinVisibleMs;
    }

    public final CreativeOrientation getOrientation() {
        return this.orientation;
    }

    public final int getRewardedDurationSeconds() {
        return this.rewardedDurationSeconds;
    }

    public final int getTimeoutDelayMillis() {
        return this.timeoutDelayMillis;
    }

    public final String getVastVideoConfigString() {
        return this.vastVideoConfigString;
    }

    public final Set<ViewabilityVendor> getViewabilityVendors() {
        return this.viewabilityVendors;
    }

    public final int hashCode() {
        String str = this.vastVideoConfigString;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        CreativeOrientation creativeOrientation = this.orientation;
        int hashCode2 = creativeOrientation != null ? creativeOrientation.hashCode() : 0;
        int hashCode3 = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.broadcastIdentifier);
        int i2 = this.timeoutDelayMillis;
        String str2 = this.impressionMinVisibleDips;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.impressionMinVisibleMs;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.dspCreativeId;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.adPayload;
        int hashCode7 = str5 != null ? str5.hashCode() : 0;
        Map<String, String> map = this.extras;
        int hashCode8 = map != null ? map.hashCode() : 0;
        boolean z = this.isRewarded;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        int i5 = this.rewardedDurationSeconds;
        String str6 = this.currencyName;
        int hashCode9 = str6 != null ? str6.hashCode() : 0;
        int i6 = this.currencyAmount;
        Integer num = this.adWidth;
        int hashCode10 = num != null ? num.hashCode() : 0;
        Integer num2 = this.adHeight;
        int hashCode11 = num2 != null ? num2.hashCode() : 0;
        String str7 = this.adUnit;
        int hashCode12 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.adType;
        int hashCode13 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.fullAdType;
        int hashCode14 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.customerId;
        int hashCode15 = str10 != null ? str10.hashCode() : 0;
        boolean z2 = this.allowCustomClose;
        if (!z2) {
            i3 = z2 ? 1 : 0;
        }
        Set<? extends ViewabilityVendor> set = this.viewabilityVendors;
        if (set != null) {
            i = set.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i4) * 31) + i5) * 31) + hashCode9) * 31) + i6) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + i3) * 31) + i;
    }

    public final boolean isRewarded() {
        return this.isRewarded;
    }

    public final void setAdHeight(Integer num) {
        this.adHeight = num;
    }

    public final void setAdPayload(String str) {
        p.c(str, "<set-?>");
        this.adPayload = str;
    }

    public final void setAdType(String str) {
        this.adType = str;
    }

    public final void setAdUnit(String str) {
        this.adUnit = str;
    }

    public final void setAdWidth(Integer num) {
        this.adWidth = num;
    }

    public final void setAllowCustomClose(boolean z) {
        this.allowCustomClose = z;
    }

    public final void setBroadcastIdentifier(long j) {
        this.broadcastIdentifier = j;
    }

    public final void setCurrencyAmount(int i) {
        this.currencyAmount = i;
    }

    public final void setCurrencyName(String str) {
        this.currencyName = str;
    }

    public final void setCustomerId(String str) {
        this.customerId = str;
    }

    public final void setDspCreativeId(String str) {
        this.dspCreativeId = str;
    }

    public final void setExtras(Map<String, String> map) {
        p.c(map, "<set-?>");
        this.extras = map;
    }

    public final void setFullAdType(String str) {
        this.fullAdType = str;
    }

    public final void setImpressionMinVisibleDips(String str) {
        this.impressionMinVisibleDips = str;
    }

    public final void setImpressionMinVisibleMs(String str) {
        this.impressionMinVisibleMs = str;
    }

    public final void setOrientation(CreativeOrientation creativeOrientation) {
        this.orientation = creativeOrientation;
    }

    public final void setRewarded(boolean z) {
        this.isRewarded = z;
    }

    public final void setRewardedDurationSeconds(int i) {
        this.rewardedDurationSeconds = i;
    }

    public final void setTimeoutDelayMillis(int i) {
        this.timeoutDelayMillis = i;
    }

    public final void setVastVideoConfigString(String str) {
        this.vastVideoConfigString = str;
    }

    public final void setViewabilityVendors(Set<? extends ViewabilityVendor> set) {
        this.viewabilityVendors = set;
    }

    public final String toString() {
        return "AdData(vastVideoConfigString=" + this.vastVideoConfigString + ", orientation=" + this.orientation + ", broadcastIdentifier=" + this.broadcastIdentifier + ", timeoutDelayMillis=" + this.timeoutDelayMillis + ", impressionMinVisibleDips=" + this.impressionMinVisibleDips + ", impressionMinVisibleMs=" + this.impressionMinVisibleMs + ", dspCreativeId=" + this.dspCreativeId + ", adPayload=" + this.adPayload + ", extras=" + this.extras + ", isRewarded=" + this.isRewarded + ", rewardedDurationSeconds=" + this.rewardedDurationSeconds + ", currencyName=" + this.currencyName + ", currencyAmount=" + this.currencyAmount + ", adWidth=" + this.adWidth + ", adHeight=" + this.adHeight + ", adUnit=" + this.adUnit + ", adType=" + this.adType + ", fullAdType=" + this.fullAdType + ", customerId=" + this.customerId + ", allowCustomClose=" + this.allowCustomClose + ", viewabilityVendors=" + this.viewabilityVendors + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        p.c(parcel, "parcel");
        parcel.writeString(this.vastVideoConfigString);
        CreativeOrientation creativeOrientation = this.orientation;
        if (creativeOrientation != null) {
            parcel.writeInt(1);
            parcel.writeString(creativeOrientation.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.broadcastIdentifier);
        parcel.writeInt(this.timeoutDelayMillis);
        parcel.writeString(this.impressionMinVisibleDips);
        parcel.writeString(this.impressionMinVisibleMs);
        parcel.writeString(this.dspCreativeId);
        parcel.writeString(this.adPayload);
        Map<String, String> map = this.extras;
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
        parcel.writeInt(this.isRewarded ? 1 : 0);
        parcel.writeInt(this.rewardedDurationSeconds);
        parcel.writeString(this.currencyName);
        parcel.writeInt(this.currencyAmount);
        Integer num = this.adWidth;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num2 = this.adHeight;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.adUnit);
        parcel.writeString(this.adType);
        parcel.writeString(this.fullAdType);
        parcel.writeString(this.customerId);
        parcel.writeInt(this.allowCustomClose ? 1 : 0);
        Set<? extends ViewabilityVendor> set = this.viewabilityVendors;
        if (set != null) {
            parcel.writeInt(1);
            parcel.writeInt(set.size());
            for (ViewabilityVendor viewabilityVendor : set) {
                parcel.writeSerializable(viewabilityVendor);
            }
            return;
        }
        parcel.writeInt(0);
    }
}
