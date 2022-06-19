package com.callapp.contacts.activity.analytics.circleGraph.data;

import android.graphics.PorterDuffColorFilter;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.mopub.common.Constants;
import io.objectbox.model.PropertyFlags;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bY\b\u0086\b\u0018��2\u00020\u0001B\u0015\b\u0016\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005Bõ\u0001\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010 J\u000f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\nHÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u000b\u0010^\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010SJ\u000b\u0010a\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010c\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010e\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010h\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010i\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010j\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010m\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010n\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0080\u0002\u0010o\u001a\u00020��2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0012\u001a\u00020\n2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010pJ\u0013\u0010q\u001a\u00020\u00172\b\u0010r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010s\u001a\u00020\nHÖ\u0001J\t\u0010t\u001a\u00020\bHÖ\u0001R\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010\"\"\u0004\b0\u0010$R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b1\u0010&\"\u0004\b2\u0010(R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b3\u0010+\"\u0004\b4\u0010-R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b5\u0010&\"\u0004\b6\u0010(R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b7\u0010+\"\u0004\b8\u0010-R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b9\u0010:\"\u0004\b;\u0010\u0005R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b<\u0010&\"\u0004\b=\u0010(R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\bB\u0010+\"\u0004\bC\u0010-R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bD\u0010\"\"\u0004\bE\u0010$R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bF\u0010\"\"\u0004\bG\u0010$R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\bL\u0010+\"\u0004\bM\u0010-R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010V\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\bW\u0010&\"\u0004\bX\u0010(R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bY\u0010\"\"\u0004\bZ\u0010$¨\u0006u"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "", "circleData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;", "(Ljava/util/List;)V", "circleGraphDataList", "centerText", "", "centerTextColor", "", "centerTextSize", "", "bottomText", "subBottomText", "bottomTextColor", "bottomTextSize", "resourceTextToUpdate", "circleGraphProgressValue", "circleGraphImage", "circleGraphProfilePicture", "circleGraphProfileName", "needToShowProfile", "", "circleGraphImageColorFilter", "Landroid/graphics/PorterDuffColorFilter;", "circleGraphImageRadius", Constants.VIDEO_TRACKING_EVENTS_KEY, "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;", "circleGraphBackground", "circleGraphBackgroundRadius", "circleRadius", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V", "getBottomText", "()Ljava/lang/String;", "setBottomText", "(Ljava/lang/String;)V", "getBottomTextColor", "()Ljava/lang/Integer;", "setBottomTextColor", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getBottomTextSize", "()Ljava/lang/Float;", "setBottomTextSize", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "getCenterText", "setCenterText", "getCenterTextColor", "setCenterTextColor", "getCenterTextSize", "setCenterTextSize", "getCircleGraphBackground", "setCircleGraphBackground", "getCircleGraphBackgroundRadius", "setCircleGraphBackgroundRadius", "getCircleGraphDataList", "()Ljava/util/List;", "setCircleGraphDataList", "getCircleGraphImage", "setCircleGraphImage", "getCircleGraphImageColorFilter", "()Landroid/graphics/PorterDuffColorFilter;", "setCircleGraphImageColorFilter", "(Landroid/graphics/PorterDuffColorFilter;)V", "getCircleGraphImageRadius", "setCircleGraphImageRadius", "getCircleGraphProfileName", "setCircleGraphProfileName", "getCircleGraphProfilePicture", "setCircleGraphProfilePicture", "getCircleGraphProgressValue", "()I", "setCircleGraphProgressValue", "(I)V", "getCircleRadius", "setCircleRadius", "getEvents", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;", "setEvents", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V", "getNeedToShowProfile", "()Ljava/lang/Boolean;", "setNeedToShowProfile", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getResourceTextToUpdate", "setResourceTextToUpdate", "getSubBottomText", "setSubBottomText", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "equals", "other", "hashCode", "toString", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData.class */
public final class MultiCircleGraphData {

    /* renamed from: a */
    private List<CircleGraphData> f19884a;

    /* renamed from: b */
    private String f19885b;

    /* renamed from: c */
    private Integer f19886c;

    /* renamed from: d */
    private Float f19887d;

    /* renamed from: e */
    private String f19888e;

    /* renamed from: f */
    private String f19889f;

    /* renamed from: g */
    private Integer f19890g;

    /* renamed from: h */
    private Float f19891h;

    /* renamed from: i */
    private Integer f19892i;

    /* renamed from: j */
    private int f19893j;

    /* renamed from: k */
    private Integer f19894k;

    /* renamed from: l */
    private String f19895l;

    /* renamed from: m */
    private String f19896m;

    /* renamed from: n */
    private Boolean f19897n;

    /* renamed from: o */
    private PorterDuffColorFilter f19898o;

    /* renamed from: p */
    private Float f19899p;

    /* renamed from: q */
    private CircleGraphEvents f19900q;

    /* renamed from: r */
    private Integer f19901r;

    /* renamed from: s */
    private Float f19902s;

    /* renamed from: t */
    private Float f19903t;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiCircleGraphData(List<CircleGraphData> circleData) {
        this(circleData, null, null, null, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, 1048574, null);
        C18524p.m3840d(circleData, "circleData");
        this.f19884a = circleData;
    }

    public MultiCircleGraphData(List<CircleGraphData> circleGraphDataList, String str, Integer num, Float f, String str2, String str3, Integer num2, Float f2, Integer num3, int i, Integer num4, String str4, String str5, Boolean bool, PorterDuffColorFilter porterDuffColorFilter, Float f3, CircleGraphEvents circleGraphEvents, Integer num5, Float f4, Float f5) {
        C18524p.m3840d(circleGraphDataList, "circleGraphDataList");
        this.f19884a = circleGraphDataList;
        this.f19885b = str;
        this.f19886c = num;
        this.f19887d = f;
        this.f19888e = str2;
        this.f19889f = str3;
        this.f19890g = num2;
        this.f19891h = f2;
        this.f19892i = num3;
        this.f19893j = i;
        this.f19894k = num4;
        this.f19895l = str4;
        this.f19896m = str5;
        this.f19897n = bool;
        this.f19898o = porterDuffColorFilter;
        this.f19899p = f3;
        this.f19900q = circleGraphEvents;
        this.f19901r = num5;
        this.f19902s = f4;
        this.f19903t = f5;
    }

    public /* synthetic */ MultiCircleGraphData(List list, String str, Integer num, Float f, String str2, String str3, Integer num2, Float f2, Integer num3, int i, Integer num4, String str4, String str5, Boolean bool, PorterDuffColorFilter porterDuffColorFilter, Float f3, CircleGraphEvents circleGraphEvents, Integer num5, Float f4, Float f5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : num, (i2 & 8) != 0 ? null : f, (i2 & 16) != 0 ? null : str2, (i2 & 32) != 0 ? null : str3, (i2 & 64) != 0 ? null : num2, (i2 & 128) != 0 ? null : f2, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : num3, (i2 & 512) != 0 ? 0 : i, (i2 & 1024) != 0 ? null : num4, (i2 & 2048) != 0 ? null : str4, (i2 & 4096) != 0 ? null : str5, (i2 & PropertyFlags.UNSIGNED) != 0 ? Boolean.FALSE : bool, (i2 & 16384) != 0 ? null : porterDuffColorFilter, (i2 & 32768) != 0 ? null : f3, (i2 & 65536) != 0 ? null : circleGraphEvents, (i2 & 131072) != 0 ? null : num5, (i2 & 262144) != 0 ? null : f4, (i2 & 524288) != 0 ? null : f5);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof MultiCircleGraphData)) {
                return false;
            }
            MultiCircleGraphData multiCircleGraphData = (MultiCircleGraphData) obj;
            return C18524p.m3850a(this.f19884a, multiCircleGraphData.f19884a) && C18524p.m3850a((Object) this.f19885b, (Object) multiCircleGraphData.f19885b) && C18524p.m3850a(this.f19886c, multiCircleGraphData.f19886c) && C18524p.m3850a(this.f19887d, multiCircleGraphData.f19887d) && C18524p.m3850a((Object) this.f19888e, (Object) multiCircleGraphData.f19888e) && C18524p.m3850a((Object) this.f19889f, (Object) multiCircleGraphData.f19889f) && C18524p.m3850a(this.f19890g, multiCircleGraphData.f19890g) && C18524p.m3850a(this.f19891h, multiCircleGraphData.f19891h) && C18524p.m3850a(this.f19892i, multiCircleGraphData.f19892i) && this.f19893j == multiCircleGraphData.f19893j && C18524p.m3850a(this.f19894k, multiCircleGraphData.f19894k) && C18524p.m3850a((Object) this.f19895l, (Object) multiCircleGraphData.f19895l) && C18524p.m3850a((Object) this.f19896m, (Object) multiCircleGraphData.f19896m) && C18524p.m3850a(this.f19897n, multiCircleGraphData.f19897n) && C18524p.m3850a(this.f19898o, multiCircleGraphData.f19898o) && C18524p.m3850a(this.f19899p, multiCircleGraphData.f19899p) && C18524p.m3850a(this.f19900q, multiCircleGraphData.f19900q) && C18524p.m3850a(this.f19901r, multiCircleGraphData.f19901r) && C18524p.m3850a(this.f19902s, multiCircleGraphData.f19902s) && C18524p.m3850a(this.f19903t, multiCircleGraphData.f19903t);
        }
        return true;
    }

    public final String getBottomText() {
        return this.f19888e;
    }

    public final Integer getBottomTextColor() {
        return this.f19890g;
    }

    public final Float getBottomTextSize() {
        return this.f19891h;
    }

    public final String getCenterText() {
        return this.f19885b;
    }

    public final Integer getCenterTextColor() {
        return this.f19886c;
    }

    public final Float getCenterTextSize() {
        return this.f19887d;
    }

    public final Integer getCircleGraphBackground() {
        return this.f19901r;
    }

    public final Float getCircleGraphBackgroundRadius() {
        return this.f19902s;
    }

    public final List<CircleGraphData> getCircleGraphDataList() {
        return this.f19884a;
    }

    public final Integer getCircleGraphImage() {
        return this.f19894k;
    }

    public final PorterDuffColorFilter getCircleGraphImageColorFilter() {
        return this.f19898o;
    }

    public final Float getCircleGraphImageRadius() {
        return this.f19899p;
    }

    public final String getCircleGraphProfileName() {
        return this.f19896m;
    }

    public final String getCircleGraphProfilePicture() {
        return this.f19895l;
    }

    public final int getCircleGraphProgressValue() {
        return this.f19893j;
    }

    public final Float getCircleRadius() {
        return this.f19903t;
    }

    public final CircleGraphEvents getEvents() {
        return this.f19900q;
    }

    public final Boolean getNeedToShowProfile() {
        return this.f19897n;
    }

    public final Integer getResourceTextToUpdate() {
        return this.f19892i;
    }

    public final String getSubBottomText() {
        return this.f19889f;
    }

    public final int hashCode() {
        List<CircleGraphData> list = this.f19884a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f19885b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Integer num = this.f19886c;
        int hashCode3 = num != null ? num.hashCode() : 0;
        Float f = this.f19887d;
        int hashCode4 = f != null ? f.hashCode() : 0;
        String str2 = this.f19888e;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f19889f;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        Integer num2 = this.f19890g;
        int hashCode7 = num2 != null ? num2.hashCode() : 0;
        Float f2 = this.f19891h;
        int hashCode8 = f2 != null ? f2.hashCode() : 0;
        Integer num3 = this.f19892i;
        int hashCode9 = num3 != null ? num3.hashCode() : 0;
        int i2 = this.f19893j;
        Integer num4 = this.f19894k;
        int hashCode10 = num4 != null ? num4.hashCode() : 0;
        String str4 = this.f19895l;
        int hashCode11 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f19896m;
        int hashCode12 = str5 != null ? str5.hashCode() : 0;
        Boolean bool = this.f19897n;
        int hashCode13 = bool != null ? bool.hashCode() : 0;
        PorterDuffColorFilter porterDuffColorFilter = this.f19898o;
        int hashCode14 = porterDuffColorFilter != null ? porterDuffColorFilter.hashCode() : 0;
        Float f3 = this.f19899p;
        int hashCode15 = f3 != null ? f3.hashCode() : 0;
        CircleGraphEvents circleGraphEvents = this.f19900q;
        int hashCode16 = circleGraphEvents != null ? circleGraphEvents.hashCode() : 0;
        Integer num5 = this.f19901r;
        int hashCode17 = num5 != null ? num5.hashCode() : 0;
        Float f4 = this.f19902s;
        int hashCode18 = f4 != null ? f4.hashCode() : 0;
        Float f5 = this.f19903t;
        if (f5 != null) {
            i = f5.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i2) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + i;
    }

    public final void setBottomText(String str) {
        this.f19888e = str;
    }

    public final void setBottomTextColor(Integer num) {
        this.f19890g = num;
    }

    public final void setBottomTextSize(Float f) {
        this.f19891h = f;
    }

    public final void setCenterText(String str) {
        this.f19885b = str;
    }

    public final void setCenterTextColor(Integer num) {
        this.f19886c = num;
    }

    public final void setCenterTextSize(Float f) {
        this.f19887d = f;
    }

    public final void setCircleGraphBackground(Integer num) {
        this.f19901r = num;
    }

    public final void setCircleGraphBackgroundRadius(Float f) {
        this.f19902s = f;
    }

    public final void setCircleGraphImage(Integer num) {
        this.f19894k = num;
    }

    public final void setCircleGraphImageColorFilter(PorterDuffColorFilter porterDuffColorFilter) {
        this.f19898o = porterDuffColorFilter;
    }

    public final void setCircleGraphImageRadius(Float f) {
        this.f19899p = f;
    }

    public final void setCircleGraphProgressValue(int i) {
        this.f19893j = i;
    }

    public final void setCircleRadius(Float f) {
        this.f19903t = f;
    }

    public final void setEvents(CircleGraphEvents circleGraphEvents) {
        this.f19900q = circleGraphEvents;
    }

    public final void setResourceTextToUpdate(Integer num) {
        this.f19892i = num;
    }

    public final String toString() {
        return "MultiCircleGraphData(circleGraphDataList=" + this.f19884a + ", centerText=" + this.f19885b + ", centerTextColor=" + this.f19886c + ", centerTextSize=" + this.f19887d + ", bottomText=" + this.f19888e + ", subBottomText=" + this.f19889f + ", bottomTextColor=" + this.f19890g + ", bottomTextSize=" + this.f19891h + ", resourceTextToUpdate=" + this.f19892i + ", circleGraphProgressValue=" + this.f19893j + ", circleGraphImage=" + this.f19894k + ", circleGraphProfilePicture=" + this.f19895l + ", circleGraphProfileName=" + this.f19896m + ", needToShowProfile=" + this.f19897n + ", circleGraphImageColorFilter=" + this.f19898o + ", circleGraphImageRadius=" + this.f19899p + ", events=" + this.f19900q + ", circleGraphBackground=" + this.f19901r + ", circleGraphBackgroundRadius=" + this.f19902s + ", circleRadius=" + this.f19903t + ")";
    }
}
