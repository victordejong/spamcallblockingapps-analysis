package com.callapp.contacts.activity.analytics.progressGraph.data;

import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018��2\u00020\u0001B\u008d\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010¢\u0006\u0002\u0010\u0014R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0013\u001a\u00020\u0010¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u001bR\u0011\u0010\u0012\u001a\u00020\u0010¢\u0006\b\n��\u001a\u0004\b \u0010\u001b¨\u0006!"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "leftTitle", "", "arrowResource", "", "numberOfCalls", "changeValue", "", EventConstants.PROGRESS, "maxProgress", "type", "color", "colors", "", "showSeparator", "", "showProgress", "showTotal", "isEmptyState", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;FII[IZZZZ)V", "getArrowResource", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getChangeValue", "()Ljava/lang/Float;", "Ljava/lang/Float;", "()Z", "getLeftTitle", "()Ljava/lang/String;", "getNumberOfCalls", "getShowProgress", "getShowTotal", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/NumberOfCallsProgressBarData.class */
public final class NumberOfCallsProgressBarData extends BaseProgressBarData {

    /* renamed from: a  reason: collision with root package name */
    private final String f11012a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f11013b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11014c;

    /* renamed from: d  reason: collision with root package name */
    private final Float f11015d;
    private final boolean e;
    private final boolean f;
    private final boolean g;

    public NumberOfCallsProgressBarData(String str, Integer num, String str2, Float f, Float f2, float f3, int i, int i2, int[] iArr, boolean z, boolean z2, boolean z3, boolean z4) {
        super(f2, f3, i, i2, iArr, z);
        this.f11012a = str;
        this.f11013b = num;
        this.f11014c = str2;
        this.f11015d = f;
        this.e = z2;
        this.f = z3;
        this.g = z4;
    }

    public /* synthetic */ NumberOfCallsProgressBarData(String str, Integer num, String str2, Float f, Float f2, float f3, int i, int i2, int[] iArr, boolean z, boolean z2, boolean z3, boolean z4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : num, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? null : f, (i3 & 16) != 0 ? null : f2, f3, i, i2, (i3 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : iArr, (i3 & 512) != 0 ? false : z, (i3 & 1024) != 0 ? false : z2, (i3 & 2048) != 0 ? false : z3, (i3 & 4096) != 0 ? false : z4);
    }

    public final Integer getArrowResource() {
        return this.f11013b;
    }

    public final Float getChangeValue() {
        return this.f11015d;
    }

    public final String getLeftTitle() {
        return this.f11012a;
    }

    public final String getNumberOfCalls() {
        return this.f11014c;
    }

    public final boolean getShowProgress() {
        return this.e;
    }

    public final boolean getShowTotal() {
        return this.f;
    }

    public final boolean isEmptyState() {
        return this.g;
    }
}
