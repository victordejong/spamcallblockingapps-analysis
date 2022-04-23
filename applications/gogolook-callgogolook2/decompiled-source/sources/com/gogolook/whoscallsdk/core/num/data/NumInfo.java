package com.gogolook.whoscallsdk.core.num.data;

import android.text.TextUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.geocoding.PhoneNumberOfflineGeocoder;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b<\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\t\b\u0086\b\u0018�� z2\u00020\u0001:\u0001zBÁ\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012$\b\u0002\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0017\u0012\b\b\u0002\u0010 \u001a\u00020\u0003\u0012\b\b\u0002\u0010!\u001a\u00020\"\u0012\b\b\u0002\u0010#\u001a\u00020\u0003\u0012\b\b\u0002\u0010$\u001a\u00020\u0003\u0012\b\b\u0002\u0010%\u001a\u00020\u0003\u0012\b\b\u0002\u0010&\u001a\u00020\u0017¢\u0006\u0002\u0010'J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\u000f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0006HÆ\u0003J\t\u0010>\u001a\u00020\u0011HÆ\u0003J%\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u0014HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0017HÆ\u0003J\t\u0010B\u001a\u00020\u0017HÆ\u0003J\t\u0010C\u001a\u00020\u001aHÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\u000f\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0003J\u000e\u0010F\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\bGJ\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0017HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\u000e\u0010L\u001a\u00020\"HÀ\u0003¢\u0006\u0002\bMJ\u000e\u0010N\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\bOJ\u000e\u0010P\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\bQJ\u000e\u0010R\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\bSJ\u000e\u0010T\u001a\u00020\u0017HÀ\u0003¢\u0006\u0002\bUJ\u000f\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0003J\t\u0010W\u001a\u00020\u0003HÆ\u0003J\t\u0010X\u001a\u00020\u0003HÆ\u0003J\t\u0010Y\u001a\u00020\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\u0003HÆ\u0003J\t\u0010[\u001a\u00020\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\rHÆ\u0003JÅ\u0002\u0010]\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\r2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00112$\b\u0002\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00032\u000e\b\u0002\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\u00032\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00032\b\b\u0002\u0010&\u001a\u00020\u0017HÆ\u0001J\u0013\u0010^\u001a\u00020_2\b\u0010`\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u000e\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020cJ\u0006\u0010d\u001a\u00020_J\t\u0010e\u001a\u00020\u0017HÖ\u0001J\u0006\u0010f\u001a\u00020_J\u0006\u0010g\u001a\u00020_J\u0006\u0010h\u001a\u00020_J\u0006\u0010i\u001a\u00020_J\u0006\u0010j\u001a\u00020_J\u0006\u0010k\u001a\u00020_J\u0006\u0010l\u001a\u00020_J\u0006\u0010m\u001a\u00020_J\u0006\u0010n\u001a\u00020_J\u0010\u0010o\u001a\u00020_2\u0006\u0010\b\u001a\u00020\u0017H\u0002J\u0006\u0010p\u001a\u00020_J\u000e\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020_J\u000e\u0010t\u001a\u00020r2\u0006\u0010s\u001a\u00020_J\u000e\u0010u\u001a\u00020r2\u0006\u0010s\u001a\u00020_J\u0018\u0010v\u001a\u00020r2\u0006\u0010\b\u001a\u00020\u00172\u0006\u0010w\u001a\u00020_H\u0002J\u000e\u0010x\u001a\u00020r2\u0006\u0010s\u001a\u00020_J\t\u0010y\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010#\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0010\u0010\u0019\u001a\u00020\u001a8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010&\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0012\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010%\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R\u001a\u0010!\u001a\u00020\"X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0012\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R.\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0013j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010 \u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u0010)\"\u0004\b7\u0010+R\u001a\u0010$\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b8\u0010)\"\u0004\b9\u0010+R\u0012\u0010\u001f\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010\u001d\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b:\u0010)\"\u0004\b;\u0010+R\u0012\u0010\u001b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0018\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006{"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/NumInfo;", "", "name", "", "spam", "name_candidates", "", "bizcate", "type", "descr", "telecom", "address", "images", "Lcom/gogolook/whoscallsdk/core/num/data/Images;", "lnglat", "", "stats", "Lcom/gogolook/whoscallsdk/core/num/data/Stats;", "hit", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "geocoding", "spamlevel", "", "warning", "ask", "Lcom/gogolook/whoscallsdk/core/num/data/Ask;", "sp_name", "sp_nums", "signed", "num", "serverLatency", "region", IapProductRealmObject.EXPIRED_TIME, "", "amzId", "requestId", "etag", "dataSource", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gogolook/whoscallsdk/core/num/data/Images;Ljava/util/List;Lcom/gogolook/whoscallsdk/core/num/data/Stats;Ljava/util/HashMap;Ljava/lang/String;IILcom/gogolook/whoscallsdk/core/num/data/Ask;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getAmzId$whoscallSDK_core_whoscallDebug", "()Ljava/lang/String;", "setAmzId$whoscallSDK_core_whoscallDebug", "(Ljava/lang/String;)V", "getDataSource$whoscallSDK_core_whoscallDebug", "()I", "setDataSource$whoscallSDK_core_whoscallDebug", "(I)V", "getEtag$whoscallSDK_core_whoscallDebug", "setEtag$whoscallSDK_core_whoscallDebug", "getExpiredTime$whoscallSDK_core_whoscallDebug", "()J", "setExpiredTime$whoscallSDK_core_whoscallDebug", "(J)V", "getRegion", "setRegion", "getRequestId$whoscallSDK_core_whoscallDebug", "setRequestId$whoscallSDK_core_whoscallDebug", "getSigned$whoscallSDK_core_whoscallDebug", "setSigned$whoscallSDK_core_whoscallDebug", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component19$whoscallSDK_core_whoscallDebug", "component2", "component20", "component21", "component22", "component23", "component23$whoscallSDK_core_whoscallDebug", "component24", "component24$whoscallSDK_core_whoscallDebug", "component25", "component25$whoscallSDK_core_whoscallDebug", "component26", "component26$whoscallSDK_core_whoscallDebug", "component27", "component27$whoscallSDK_core_whoscallDebug", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "getLocalizedGeocoder", "locale", "Ljava/util/Locale;", "hasName", "hashCode", "is165", "isCS", "isCalloutOnly", "isCardV1", "isCardV2", "isCardV3", "isMasses", "isRed", "isSpam", "isWarningType", "isWhite", "set165", "", AdsSettingsKt.KEY_ENABLE, "setCalloutOnly", "setRed", "setWarningType", "isEnable", "setWhite", "toString", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/NumInfo.class */
public final class NumInfo {
    public static final int SOURCE_NONE = 0;
    public String address;
    public String amzId;
    public final Ask ask;
    public String bizcate;
    public int dataSource;
    public String descr;
    public String etag;
    public long expiredTime;
    public String geocoding;
    public HashMap<String, Object> hit;
    public Images images;
    public List<Double> lnglat;
    public String name;
    public List<String> name_candidates;
    public String num;
    public String region;
    public String requestId;
    public int serverLatency;
    public String signed;
    public String sp_name;
    public List<String> sp_nums;
    public String spam;
    public int spamlevel;
    public Stats stats;
    public String telecom;
    public String type;
    public int warning;
    public static final Companion Companion = new Companion(null);
    public static final int SOURCE_MEMCACHE = 1;
    public static final int SOURCE_DISKCACHE = 2;
    public static final int SOURCE_SERVER = 3;
    public static final int WARNING_RED = 1;
    public static final int WARNING_CALLOUTONLY = 2;
    public static final int WARNING_WHITE = 4;
    public static final int WARNING_165 = 8;
    public static final String TYPE_WHOSCALLCARDV1 = TYPE_WHOSCALLCARDV1;
    public static final String TYPE_WHOSCALLCARDV1 = TYPE_WHOSCALLCARDV1;
    public static final String TYPE_WHOSCALLCARDV2 = TYPE_WHOSCALLCARDV2;
    public static final String TYPE_WHOSCALLCARDV2 = TYPE_WHOSCALLCARDV2;
    public static final String TYPE_WHOSCALLCARDV3 = TYPE_WHOSCALLCARDV3;
    public static final String TYPE_WHOSCALLCARDV3 = TYPE_WHOSCALLCARDV3;
    public static final String TYPE_CS = TYPE_CS;
    public static final String TYPE_CS = TYPE_CS;
    public static final String TYPE_MASSES = TYPE_MASSES;
    public static final String TYPE_MASSES = TYPE_MASSES;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/NumInfo$Companion;", "", "()V", "SOURCE_DISKCACHE", "", "SOURCE_MEMCACHE", "SOURCE_NONE", "SOURCE_SERVER", "TYPE_CS", "", "TYPE_MASSES", "TYPE_WHOSCALLCARDV1", "TYPE_WHOSCALLCARDV2", "TYPE_WHOSCALLCARDV3", "WARNING_165", "WARNING_CALLOUTONLY", "WARNING_RED", "WARNING_WHITE", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/NumInfo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public NumInfo() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null);
    }

    public NumInfo(String str, String str2, List<String> list, String str3, String str4, String str5, String str6, String str7, Images images, List<Double> list2, Stats stats, HashMap<String, Object> hashMap, String str8, int i, int i2, Ask ask, String str9, List<String> list3, String str10, String str11, int i3, String str12, long j, String str13, String str14, String str15, int i4) {
        C15149k.m377b(str, "name");
        C15149k.m377b(str2, "spam");
        C15149k.m377b(list, "name_candidates");
        C15149k.m377b(str3, "bizcate");
        C15149k.m377b(str4, "type");
        C15149k.m377b(str5, "descr");
        C15149k.m377b(str6, "telecom");
        C15149k.m377b(str7, "address");
        C15149k.m377b(images, "images");
        C15149k.m377b(list2, "lnglat");
        C15149k.m377b(stats, "stats");
        C15149k.m377b(hashMap, "hit");
        C15149k.m377b(str8, "geocoding");
        C15149k.m377b(ask, "ask");
        C15149k.m377b(str9, "sp_name");
        C15149k.m377b(list3, "sp_nums");
        C15149k.m377b(str10, "signed");
        C15149k.m377b(str11, "num");
        C15149k.m377b(str12, "region");
        C15149k.m377b(str13, "amzId");
        C15149k.m377b(str14, "requestId");
        C15149k.m377b(str15, "etag");
        this.name = str;
        this.spam = str2;
        this.name_candidates = list;
        this.bizcate = str3;
        this.type = str4;
        this.descr = str5;
        this.telecom = str6;
        this.address = str7;
        this.images = images;
        this.lnglat = list2;
        this.stats = stats;
        this.hit = hashMap;
        this.geocoding = str8;
        this.spamlevel = i;
        this.warning = i2;
        this.ask = ask;
        this.sp_name = str9;
        this.sp_nums = list3;
        this.signed = str10;
        this.num = str11;
        this.serverLatency = i3;
        this.region = str12;
        this.expiredTime = j;
        this.amzId = str13;
        this.requestId = str14;
        this.etag = str15;
        this.dataSource = i4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ NumInfo(java.lang.String r31, java.lang.String r32, java.util.List r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, java.lang.String r38, com.gogolook.whoscallsdk.core.num.data.Images r39, java.util.List r40, com.gogolook.whoscallsdk.core.num.data.Stats r41, java.util.HashMap r42, java.lang.String r43, int r44, int r45, com.gogolook.whoscallsdk.core.num.data.Ask r46, java.lang.String r47, java.util.List r48, java.lang.String r49, java.lang.String r50, int r51, java.lang.String r52, long r53, java.lang.String r55, java.lang.String r56, java.lang.String r57, int r58, int r59, p626l.p641z.p643d.C15145g r60) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.core.num.data.NumInfo.<init>(java.lang.String, java.lang.String, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.gogolook.whoscallsdk.core.num.data.Images, java.util.List, com.gogolook.whoscallsdk.core.num.data.Stats, java.util.HashMap, java.lang.String, int, int, com.gogolook.whoscallsdk.core.num.data.Ask, java.lang.String, java.util.List, java.lang.String, java.lang.String, int, java.lang.String, long, java.lang.String, java.lang.String, java.lang.String, int, int, l.z.d.g):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NumInfo copy$default(NumInfo numInfo, String str, String str2, List list, String str3, String str4, String str5, String str6, String str7, Images images, List list2, Stats stats, HashMap hashMap, String str8, int i, int i2, Ask ask, String str9, List list3, String str10, String str11, int i3, String str12, long j, String str13, String str14, String str15, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            str = numInfo.name;
        }
        if ((i5 & 2) != 0) {
            str2 = numInfo.spam;
        }
        if ((i5 & 4) != 0) {
            list = numInfo.name_candidates;
        }
        if ((i5 & 8) != 0) {
            str3 = numInfo.bizcate;
        }
        if ((i5 & 16) != 0) {
            str4 = numInfo.type;
        }
        if ((i5 & 32) != 0) {
            str5 = numInfo.descr;
        }
        if ((i5 & 64) != 0) {
            str6 = numInfo.telecom;
        }
        if ((i5 & 128) != 0) {
            str7 = numInfo.address;
        }
        if ((i5 & 256) != 0) {
            images = numInfo.images;
        }
        if ((i5 & 512) != 0) {
            list2 = numInfo.lnglat;
        }
        if ((i5 & 1024) != 0) {
            stats = numInfo.stats;
        }
        if ((i5 & 2048) != 0) {
            hashMap = numInfo.hit;
        }
        if ((i5 & 4096) != 0) {
            str8 = numInfo.geocoding;
        }
        if ((i5 & 8192) != 0) {
            i = numInfo.spamlevel;
        }
        if ((i5 & 16384) != 0) {
            i2 = numInfo.warning;
        }
        if ((i5 & 32768) != 0) {
            ask = numInfo.ask;
        }
        if ((i5 & 65536) != 0) {
            str9 = numInfo.sp_name;
        }
        if ((i5 & 131072) != 0) {
            list3 = numInfo.sp_nums;
        }
        if ((i5 & 262144) != 0) {
            str10 = numInfo.signed;
        }
        if ((i5 & 524288) != 0) {
            str11 = numInfo.num;
        }
        if ((i5 & 1048576) != 0) {
            i3 = numInfo.serverLatency;
        }
        if ((i5 & 2097152) != 0) {
            str12 = numInfo.region;
        }
        if ((i5 & 4194304) != 0) {
            j = numInfo.expiredTime;
        }
        if ((i5 & 8388608) != 0) {
            str13 = numInfo.amzId;
        }
        if ((16777216 & i5) != 0) {
            str14 = numInfo.requestId;
        }
        if ((i5 & 33554432) != 0) {
            str15 = numInfo.etag;
        }
        if ((i5 & 67108864) != 0) {
            i4 = numInfo.dataSource;
        }
        return numInfo.copy(str, str2, list, str3, str4, str5, str6, str7, images, list2, stats, hashMap, str8, i, i2, ask, str9, list3, str10, str11, i3, str12, j, str13, str14, str15, i4);
    }

    private final boolean isWarningType(int i) {
        return (this.warning & i) == i;
    }

    private final void setWarningType(int i, boolean z) {
        if (z) {
            this.warning = i | this.warning;
        } else {
            this.warning = (i ^ (-1)) & this.warning;
        }
    }

    public final String component1() {
        return this.name;
    }

    public final List<Double> component10() {
        return this.lnglat;
    }

    public final Stats component11() {
        return this.stats;
    }

    public final HashMap<String, Object> component12() {
        return this.hit;
    }

    public final String component13() {
        return this.geocoding;
    }

    public final int component14() {
        return this.spamlevel;
    }

    public final int component15() {
        return this.warning;
    }

    public final Ask component16() {
        return this.ask;
    }

    public final String component17() {
        return this.sp_name;
    }

    public final List<String> component18() {
        return this.sp_nums;
    }

    public final String component19$whoscallSDK_core_whoscallDebug() {
        return this.signed;
    }

    public final String component2() {
        return this.spam;
    }

    public final String component20() {
        return this.num;
    }

    public final int component21() {
        return this.serverLatency;
    }

    public final String component22() {
        return this.region;
    }

    public final long component23$whoscallSDK_core_whoscallDebug() {
        return this.expiredTime;
    }

    public final String component24$whoscallSDK_core_whoscallDebug() {
        return this.amzId;
    }

    public final String component25$whoscallSDK_core_whoscallDebug() {
        return this.requestId;
    }

    public final String component26$whoscallSDK_core_whoscallDebug() {
        return this.etag;
    }

    public final int component27$whoscallSDK_core_whoscallDebug() {
        return this.dataSource;
    }

    public final List<String> component3() {
        return this.name_candidates;
    }

    public final String component4() {
        return this.bizcate;
    }

    public final String component5() {
        return this.type;
    }

    public final String component6() {
        return this.descr;
    }

    public final String component7() {
        return this.telecom;
    }

    public final String component8() {
        return this.address;
    }

    public final Images component9() {
        return this.images;
    }

    public final NumInfo copy(String str, String str2, List<String> list, String str3, String str4, String str5, String str6, String str7, Images images, List<Double> list2, Stats stats, HashMap<String, Object> hashMap, String str8, int i, int i2, Ask ask, String str9, List<String> list3, String str10, String str11, int i3, String str12, long j, String str13, String str14, String str15, int i4) {
        C15149k.m377b(str, "name");
        C15149k.m377b(str2, "spam");
        C15149k.m377b(list, "name_candidates");
        C15149k.m377b(str3, "bizcate");
        C15149k.m377b(str4, "type");
        C15149k.m377b(str5, "descr");
        C15149k.m377b(str6, "telecom");
        C15149k.m377b(str7, "address");
        C15149k.m377b(images, "images");
        C15149k.m377b(list2, "lnglat");
        C15149k.m377b(stats, "stats");
        C15149k.m377b(hashMap, "hit");
        C15149k.m377b(str8, "geocoding");
        C15149k.m377b(ask, "ask");
        C15149k.m377b(str9, "sp_name");
        C15149k.m377b(list3, "sp_nums");
        C15149k.m377b(str10, "signed");
        C15149k.m377b(str11, "num");
        C15149k.m377b(str12, "region");
        C15149k.m377b(str13, "amzId");
        C15149k.m377b(str14, "requestId");
        C15149k.m377b(str15, "etag");
        return new NumInfo(str, str2, list, str3, str4, str5, str6, str7, images, list2, stats, hashMap, str8, i, i2, ask, str9, list3, str10, str11, i3, str12, j, str13, str14, str15, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NumInfo)) {
            return false;
        }
        NumInfo numInfo = (NumInfo) obj;
        if (!C15149k.m384a((Object) this.name, (Object) numInfo.name) || !C15149k.m384a((Object) this.spam, (Object) numInfo.spam) || !C15149k.m384a(this.name_candidates, numInfo.name_candidates) || !C15149k.m384a((Object) this.bizcate, (Object) numInfo.bizcate) || !C15149k.m384a((Object) this.type, (Object) numInfo.type) || !C15149k.m384a((Object) this.descr, (Object) numInfo.descr) || !C15149k.m384a((Object) this.telecom, (Object) numInfo.telecom) || !C15149k.m384a((Object) this.address, (Object) numInfo.address) || !C15149k.m384a(this.images, numInfo.images) || !C15149k.m384a(this.lnglat, numInfo.lnglat) || !C15149k.m384a(this.stats, numInfo.stats) || !C15149k.m384a(this.hit, numInfo.hit) || !C15149k.m384a((Object) this.geocoding, (Object) numInfo.geocoding)) {
            return false;
        }
        if (!(this.spamlevel == numInfo.spamlevel)) {
            return false;
        }
        if (!(this.warning == numInfo.warning) || !C15149k.m384a(this.ask, numInfo.ask) || !C15149k.m384a((Object) this.sp_name, (Object) numInfo.sp_name) || !C15149k.m384a(this.sp_nums, numInfo.sp_nums) || !C15149k.m384a((Object) this.signed, (Object) numInfo.signed) || !C15149k.m384a((Object) this.num, (Object) numInfo.num)) {
            return false;
        }
        if (!(this.serverLatency == numInfo.serverLatency) || !C15149k.m384a((Object) this.region, (Object) numInfo.region)) {
            return false;
        }
        if (!(this.expiredTime == numInfo.expiredTime) || !C15149k.m384a((Object) this.amzId, (Object) numInfo.amzId) || !C15149k.m384a((Object) this.requestId, (Object) numInfo.requestId) || !C15149k.m384a((Object) this.etag, (Object) numInfo.etag)) {
            return false;
        }
        return this.dataSource == numInfo.dataSource;
    }

    public final String getAmzId$whoscallSDK_core_whoscallDebug() {
        return this.amzId;
    }

    public final int getDataSource$whoscallSDK_core_whoscallDebug() {
        return this.dataSource;
    }

    public final String getEtag$whoscallSDK_core_whoscallDebug() {
        return this.etag;
    }

    public final long getExpiredTime$whoscallSDK_core_whoscallDebug() {
        return this.expiredTime;
    }

    public final String getLocalizedGeocoder(Locale locale) {
        C15149k.m377b(locale, "locale");
        try {
            String descriptionForNumber = PhoneNumberOfflineGeocoder.getInstance().getDescriptionForNumber(PhoneNumberUtil.getInstance().parse(this.num, locale.getCountry()), locale);
            if (!TextUtils.isEmpty(descriptionForNumber)) {
                C15149k.m383a((Object) descriptionForNumber, "geocoderString");
                return descriptionForNumber;
            }
        } catch (Throwable th) {
        }
        return this.geocoding;
    }

    public final String getRegion() {
        return this.region;
    }

    public final String getRequestId$whoscallSDK_core_whoscallDebug() {
        return this.requestId;
    }

    public final String getSigned$whoscallSDK_core_whoscallDebug() {
        return this.signed;
    }

    public final boolean hasName() {
        return !TextUtils.isEmpty(this.name);
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.spam;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        List<String> list = this.name_candidates;
        int hashCode3 = list != null ? list.hashCode() : 0;
        String str3 = this.bizcate;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.type;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.descr;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.telecom;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.address;
        int hashCode8 = str7 != null ? str7.hashCode() : 0;
        Images images = this.images;
        int hashCode9 = images != null ? images.hashCode() : 0;
        List<Double> list2 = this.lnglat;
        int hashCode10 = list2 != null ? list2.hashCode() : 0;
        Stats stats = this.stats;
        int hashCode11 = stats != null ? stats.hashCode() : 0;
        HashMap<String, Object> hashMap = this.hit;
        int hashCode12 = hashMap != null ? hashMap.hashCode() : 0;
        String str8 = this.geocoding;
        int hashCode13 = str8 != null ? str8.hashCode() : 0;
        int i2 = this.spamlevel;
        int i3 = this.warning;
        Ask ask = this.ask;
        int hashCode14 = ask != null ? ask.hashCode() : 0;
        String str9 = this.sp_name;
        int hashCode15 = str9 != null ? str9.hashCode() : 0;
        List<String> list3 = this.sp_nums;
        int hashCode16 = list3 != null ? list3.hashCode() : 0;
        String str10 = this.signed;
        int hashCode17 = str10 != null ? str10.hashCode() : 0;
        String str11 = this.num;
        int hashCode18 = str11 != null ? str11.hashCode() : 0;
        int i4 = this.serverLatency;
        String str12 = this.region;
        int hashCode19 = str12 != null ? str12.hashCode() : 0;
        long j = this.expiredTime;
        int i5 = (int) (j ^ (j >>> 32));
        String str13 = this.amzId;
        int hashCode20 = str13 != null ? str13.hashCode() : 0;
        String str14 = this.requestId;
        int hashCode21 = str14 != null ? str14.hashCode() : 0;
        String str15 = this.etag;
        if (str15 != null) {
            i = str15.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i2) * 31) + i3) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + i4) * 31) + hashCode19) * 31) + i5) * 31) + hashCode20) * 31) + hashCode21) * 31) + i) * 31) + this.dataSource;
    }

    public final boolean is165() {
        return isWarningType(WARNING_165);
    }

    public final boolean isCS() {
        return this.type.equals(TYPE_CS);
    }

    public final boolean isCalloutOnly() {
        return isWarningType(WARNING_CALLOUTONLY);
    }

    public final boolean isCardV1() {
        return this.type.equals(TYPE_WHOSCALLCARDV1);
    }

    public final boolean isCardV2() {
        return this.type.equals(TYPE_WHOSCALLCARDV2);
    }

    public final boolean isCardV3() {
        return this.type.equals(TYPE_WHOSCALLCARDV3);
    }

    public final boolean isMasses() {
        return this.type.equals(TYPE_MASSES);
    }

    public final boolean isRed() {
        return isWarningType(WARNING_RED);
    }

    public final boolean isSpam() {
        return !TextUtils.isEmpty(this.spam);
    }

    public final boolean isWhite() {
        return isWarningType(WARNING_WHITE);
    }

    public final void set165(boolean z) {
        setWarningType(WARNING_165, z);
    }

    public final void setAmzId$whoscallSDK_core_whoscallDebug(String str) {
        C15149k.m377b(str, "<set-?>");
        this.amzId = str;
    }

    public final void setCalloutOnly(boolean z) {
        setWarningType(WARNING_CALLOUTONLY, z);
    }

    public final void setDataSource$whoscallSDK_core_whoscallDebug(int i) {
        this.dataSource = i;
    }

    public final void setEtag$whoscallSDK_core_whoscallDebug(String str) {
        C15149k.m377b(str, "<set-?>");
        this.etag = str;
    }

    public final void setExpiredTime$whoscallSDK_core_whoscallDebug(long j) {
        this.expiredTime = j;
    }

    public final void setRed(boolean z) {
        setWarningType(WARNING_RED, z);
    }

    public final void setRegion(String str) {
        C15149k.m377b(str, "<set-?>");
        this.region = str;
    }

    public final void setRequestId$whoscallSDK_core_whoscallDebug(String str) {
        C15149k.m377b(str, "<set-?>");
        this.requestId = str;
    }

    public final void setSigned$whoscallSDK_core_whoscallDebug(String str) {
        C15149k.m377b(str, "<set-?>");
        this.signed = str;
    }

    public final void setWhite(boolean z) {
        setWarningType(WARNING_WHITE, z);
    }

    public String toString() {
        return "NumInfo(name=" + this.name + ", spam=" + this.spam + ", name_candidates=" + this.name_candidates + ", bizcate=" + this.bizcate + ", type=" + this.type + ", descr=" + this.descr + ", telecom=" + this.telecom + ", address=" + this.address + ", images=" + this.images + ", lnglat=" + this.lnglat + ", stats=" + this.stats + ", hit=" + this.hit + ", geocoding=" + this.geocoding + ", spamlevel=" + this.spamlevel + ", warning=" + this.warning + ", ask=" + this.ask + ", sp_name=" + this.sp_name + ", sp_nums=" + this.sp_nums + ", signed=" + this.signed + ", num=" + this.num + ", serverLatency=" + this.serverLatency + ", region=" + this.region + ", expiredTime=" + this.expiredTime + ", amzId=" + this.amzId + ", requestId=" + this.requestId + ", etag=" + this.etag + ", dataSource=" + this.dataSource + ")";
    }
}
