package com.callapp.contacts.activity.analytics.circleGraph.data;

import android.graphics.PorterDuffColorFilter;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.mopub.common.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\bY\b\u0086\b\u0018��2\u00020\u0001B\u0015\b\u0016\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005Bõ\u0001\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u0012\u001a\u00020\n\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010 J\u000f\u0010[\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\\\u001a\u00020\nHÆ\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u000b\u0010^\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0002\u0010SJ\u000b\u0010a\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010c\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0010\u0010d\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010e\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010h\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010i\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u000b\u0010j\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010l\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0010\u0010m\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010+J\u0010\u0010n\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010&J\u0080\u0002\u0010o\u001a\u00020��2\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0012\u001a\u00020\n2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010pJ\u0013\u0010q\u001a\u00020\u00172\b\u0010r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010s\u001a\u00020\nHÖ\u0001J\t\u0010t\u001a\u00020\bHÖ\u0001R\u001c\u0010\r\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010\"\"\u0004\b0\u0010$R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b1\u0010&\"\u0004\b2\u0010(R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b3\u0010+\"\u0004\b4\u0010-R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b5\u0010&\"\u0004\b6\u0010(R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\b7\u0010+\"\u0004\b8\u0010-R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b9\u0010:\"\u0004\b;\u0010\u0005R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\b<\u0010&\"\u0004\b=\u0010(R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\bB\u0010+\"\u0004\bC\u0010-R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bD\u0010\"\"\u0004\bE\u0010$R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bF\u0010\"\"\u0004\bG\u0010$R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010.\u001a\u0004\bL\u0010+\"\u0004\bM\u0010-R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010V\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010)\u001a\u0004\bW\u0010&\"\u0004\bX\u0010(R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\bY\u0010\"\"\u0004\bZ\u0010$¨\u0006u"}, d2 = {"Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "", "circleData", "", "Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;", "(Ljava/util/List;)V", "circleGraphDataList", "centerText", "", "centerTextColor", "", "centerTextSize", "", "bottomText", "subBottomText", "bottomTextColor", "bottomTextSize", "resourceTextToUpdate", "circleGraphProgressValue", "circleGraphImage", "circleGraphProfilePicture", "circleGraphProfileName", "needToShowProfile", "", "circleGraphImageColorFilter", "Landroid/graphics/PorterDuffColorFilter;", "circleGraphImageRadius", Constants.VIDEO_TRACKING_EVENTS_KEY, "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;", "circleGraphBackground", "circleGraphBackgroundRadius", "circleRadius", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V", "getBottomText", "()Ljava/lang/String;", "setBottomText", "(Ljava/lang/String;)V", "getBottomTextColor", "()Ljava/lang/Integer;", "setBottomTextColor", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getBottomTextSize", "()Ljava/lang/Float;", "setBottomTextSize", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "getCenterText", "setCenterText", "getCenterTextColor", "setCenterTextColor", "getCenterTextSize", "setCenterTextSize", "getCircleGraphBackground", "setCircleGraphBackground", "getCircleGraphBackgroundRadius", "setCircleGraphBackgroundRadius", "getCircleGraphDataList", "()Ljava/util/List;", "setCircleGraphDataList", "getCircleGraphImage", "setCircleGraphImage", "getCircleGraphImageColorFilter", "()Landroid/graphics/PorterDuffColorFilter;", "setCircleGraphImageColorFilter", "(Landroid/graphics/PorterDuffColorFilter;)V", "getCircleGraphImageRadius", "setCircleGraphImageRadius", "getCircleGraphProfileName", "setCircleGraphProfileName", "getCircleGraphProfilePicture", "setCircleGraphProfilePicture", "getCircleGraphProgressValue", "()I", "setCircleGraphProgressValue", "(I)V", "getCircleRadius", "setCircleRadius", "getEvents", "()Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;", "setEvents", "(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;)V", "getNeedToShowProfile", "()Ljava/lang/Boolean;", "setNeedToShowProfile", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getResourceTextToUpdate", "setResourceTextToUpdate", "getSubBottomText", "setSubBottomText", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/graphics/PorterDuffColorFilter;Ljava/lang/Float;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphEvents;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;", "equals", "other", "hashCode", "toString", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData.class */
public final class MultiCircleGraphData {

    /* renamed from: a  reason: collision with root package name */
    private List<CircleGraphData> f10876a;

    /* renamed from: b  reason: collision with root package name */
    private String f10877b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f10878c;

    /* renamed from: d  reason: collision with root package name */
    private Float f10879d;
    private String e;
    private String f;
    private Integer g;
    private Float h;
    private Integer i;
    private int j;
    private Integer k;
    private String l;
    private String m;
    private Boolean n;
    private PorterDuffColorFilter o;
    private Float p;
    private CircleGraphEvents q;
    private Integer r;
    private Float s;
    private Float t;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiCircleGraphData(List<CircleGraphData> circleData) {
        this(circleData, null, null, null, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, null, 1048574, null);
        p.d(circleData, "circleData");
        this.f10876a = circleData;
    }

    public MultiCircleGraphData(List<CircleGraphData> circleGraphDataList, String str, Integer num, Float f, String str2, String str3, Integer num2, Float f2, Integer num3, int i, Integer num4, String str4, String str5, Boolean bool, PorterDuffColorFilter porterDuffColorFilter, Float f3, CircleGraphEvents circleGraphEvents, Integer num5, Float f4, Float f5) {
        p.d(circleGraphDataList, "circleGraphDataList");
        this.f10876a = circleGraphDataList;
        this.f10877b = str;
        this.f10878c = num;
        this.f10879d = f;
        this.e = str2;
        this.f = str3;
        this.g = num2;
        this.h = f2;
        this.i = num3;
        this.j = i;
        this.k = num4;
        this.l = str4;
        this.m = str5;
        this.n = bool;
        this.o = porterDuffColorFilter;
        this.p = f3;
        this.q = circleGraphEvents;
        this.r = num5;
        this.s = f4;
        this.t = f5;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ MultiCircleGraphData(java.util.List r23, java.lang.String r24, java.lang.Integer r25, java.lang.Float r26, java.lang.String r27, java.lang.String r28, java.lang.Integer r29, java.lang.Float r30, java.lang.Integer r31, int r32, java.lang.Integer r33, java.lang.String r34, java.lang.String r35, java.lang.Boolean r36, android.graphics.PorterDuffColorFilter r37, java.lang.Float r38, com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents r39, java.lang.Integer r40, java.lang.Float r41, java.lang.Float r42, int r43, kotlin.jvm.internal.DefaultConstructorMarker r44) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData.<init>(java.util.List, java.lang.String, java.lang.Integer, java.lang.Float, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Float, java.lang.Integer, int, java.lang.Integer, java.lang.String, java.lang.String, java.lang.Boolean, android.graphics.PorterDuffColorFilter, java.lang.Float, com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents, java.lang.Integer, java.lang.Float, java.lang.Float, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MultiCircleGraphData)) {
            return false;
        }
        MultiCircleGraphData multiCircleGraphData = (MultiCircleGraphData) obj;
        return p.a(this.f10876a, multiCircleGraphData.f10876a) && p.a((Object) this.f10877b, (Object) multiCircleGraphData.f10877b) && p.a(this.f10878c, multiCircleGraphData.f10878c) && p.a(this.f10879d, multiCircleGraphData.f10879d) && p.a((Object) this.e, (Object) multiCircleGraphData.e) && p.a((Object) this.f, (Object) multiCircleGraphData.f) && p.a(this.g, multiCircleGraphData.g) && p.a(this.h, multiCircleGraphData.h) && p.a(this.i, multiCircleGraphData.i) && this.j == multiCircleGraphData.j && p.a(this.k, multiCircleGraphData.k) && p.a((Object) this.l, (Object) multiCircleGraphData.l) && p.a((Object) this.m, (Object) multiCircleGraphData.m) && p.a(this.n, multiCircleGraphData.n) && p.a(this.o, multiCircleGraphData.o) && p.a(this.p, multiCircleGraphData.p) && p.a(this.q, multiCircleGraphData.q) && p.a(this.r, multiCircleGraphData.r) && p.a(this.s, multiCircleGraphData.s) && p.a(this.t, multiCircleGraphData.t);
    }

    public final String getBottomText() {
        return this.e;
    }

    public final Integer getBottomTextColor() {
        return this.g;
    }

    public final Float getBottomTextSize() {
        return this.h;
    }

    public final String getCenterText() {
        return this.f10877b;
    }

    public final Integer getCenterTextColor() {
        return this.f10878c;
    }

    public final Float getCenterTextSize() {
        return this.f10879d;
    }

    public final Integer getCircleGraphBackground() {
        return this.r;
    }

    public final Float getCircleGraphBackgroundRadius() {
        return this.s;
    }

    public final List<CircleGraphData> getCircleGraphDataList() {
        return this.f10876a;
    }

    public final Integer getCircleGraphImage() {
        return this.k;
    }

    public final PorterDuffColorFilter getCircleGraphImageColorFilter() {
        return this.o;
    }

    public final Float getCircleGraphImageRadius() {
        return this.p;
    }

    public final String getCircleGraphProfileName() {
        return this.m;
    }

    public final String getCircleGraphProfilePicture() {
        return this.l;
    }

    public final int getCircleGraphProgressValue() {
        return this.j;
    }

    public final Float getCircleRadius() {
        return this.t;
    }

    public final CircleGraphEvents getEvents() {
        return this.q;
    }

    public final Boolean getNeedToShowProfile() {
        return this.n;
    }

    public final Integer getResourceTextToUpdate() {
        return this.i;
    }

    public final String getSubBottomText() {
        return this.f;
    }

    public final int hashCode() {
        List<CircleGraphData> list = this.f10876a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.f10877b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Integer num = this.f10878c;
        int hashCode3 = num != null ? num.hashCode() : 0;
        Float f = this.f10879d;
        int hashCode4 = f != null ? f.hashCode() : 0;
        String str2 = this.e;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        Integer num2 = this.g;
        int hashCode7 = num2 != null ? num2.hashCode() : 0;
        Float f2 = this.h;
        int hashCode8 = f2 != null ? f2.hashCode() : 0;
        Integer num3 = this.i;
        int hashCode9 = num3 != null ? num3.hashCode() : 0;
        int i2 = this.j;
        Integer num4 = this.k;
        int hashCode10 = num4 != null ? num4.hashCode() : 0;
        String str4 = this.l;
        int hashCode11 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.m;
        int hashCode12 = str5 != null ? str5.hashCode() : 0;
        Boolean bool = this.n;
        int hashCode13 = bool != null ? bool.hashCode() : 0;
        PorterDuffColorFilter porterDuffColorFilter = this.o;
        int hashCode14 = porterDuffColorFilter != null ? porterDuffColorFilter.hashCode() : 0;
        Float f3 = this.p;
        int hashCode15 = f3 != null ? f3.hashCode() : 0;
        CircleGraphEvents circleGraphEvents = this.q;
        int hashCode16 = circleGraphEvents != null ? circleGraphEvents.hashCode() : 0;
        Integer num5 = this.r;
        int hashCode17 = num5 != null ? num5.hashCode() : 0;
        Float f4 = this.s;
        int hashCode18 = f4 != null ? f4.hashCode() : 0;
        Float f5 = this.t;
        if (f5 != null) {
            i = f5.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i2) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + i;
    }

    public final void setBottomText(String str) {
        this.e = str;
    }

    public final void setBottomTextColor(Integer num) {
        this.g = num;
    }

    public final void setBottomTextSize(Float f) {
        this.h = f;
    }

    public final void setCenterText(String str) {
        this.f10877b = str;
    }

    public final void setCenterTextColor(Integer num) {
        this.f10878c = num;
    }

    public final void setCenterTextSize(Float f) {
        this.f10879d = f;
    }

    public final void setCircleGraphBackground(Integer num) {
        this.r = num;
    }

    public final void setCircleGraphBackgroundRadius(Float f) {
        this.s = f;
    }

    public final void setCircleGraphImage(Integer num) {
        this.k = num;
    }

    public final void setCircleGraphImageColorFilter(PorterDuffColorFilter porterDuffColorFilter) {
        this.o = porterDuffColorFilter;
    }

    public final void setCircleGraphImageRadius(Float f) {
        this.p = f;
    }

    public final void setCircleGraphProgressValue(int i) {
        this.j = i;
    }

    public final void setCircleRadius(Float f) {
        this.t = f;
    }

    public final void setEvents(CircleGraphEvents circleGraphEvents) {
        this.q = circleGraphEvents;
    }

    public final void setResourceTextToUpdate(Integer num) {
        this.i = num;
    }

    public final String toString() {
        return "MultiCircleGraphData(circleGraphDataList=" + this.f10876a + ", centerText=" + this.f10877b + ", centerTextColor=" + this.f10878c + ", centerTextSize=" + this.f10879d + ", bottomText=" + this.e + ", subBottomText=" + this.f + ", bottomTextColor=" + this.g + ", bottomTextSize=" + this.h + ", resourceTextToUpdate=" + this.i + ", circleGraphProgressValue=" + this.j + ", circleGraphImage=" + this.k + ", circleGraphProfilePicture=" + this.l + ", circleGraphProfileName=" + this.m + ", needToShowProfile=" + this.n + ", circleGraphImageColorFilter=" + this.o + ", circleGraphImageRadius=" + this.p + ", events=" + this.q + ", circleGraphBackground=" + this.r + ", circleGraphBackgroundRadius=" + this.s + ", circleRadius=" + this.t + ")";
    }
}
