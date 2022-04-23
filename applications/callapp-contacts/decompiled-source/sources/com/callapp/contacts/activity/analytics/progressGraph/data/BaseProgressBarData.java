package com.callapp.contacts.activity.analytics.progressGraph.data;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0016\u0018��2\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "", EventConstants.PROGRESS, "", "maxProgress", "type", "", "color", "colors", "", "showSeparator", "", "(Ljava/lang/Float;FII[IZ)V", "getColor", "()I", "getColors", "()[I", "getMaxProgress", "()F", "getProgress", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getShowSeparator", "()Z", "setShowSeparator", "(Z)V", "getType", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData.class */
public class BaseProgressBarData {

    /* renamed from: a  reason: collision with root package name */
    private final Float f11004a;

    /* renamed from: b  reason: collision with root package name */
    private final float f11005b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11006c;

    /* renamed from: d  reason: collision with root package name */
    private final int f11007d;
    private final int[] e;
    private boolean f;

    public BaseProgressBarData(Float f, float f2, int i, int i2, int[] iArr, boolean z) {
        this.f11004a = f;
        this.f11005b = f2;
        this.f11006c = i;
        this.f11007d = i2;
        this.e = iArr;
        this.f = z;
    }

    public /* synthetic */ BaseProgressBarData(Float f, float f2, int i, int i2, int[] iArr, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? Float.valueOf((float) BitmapDescriptorFactory.HUE_RED) : f, (i3 & 2) != 0 ? 100.0f : f2, i, i2, (i3 & 16) != 0 ? null : iArr, (i3 & 32) != 0 ? false : z);
    }

    public final int getColor() {
        return this.f11007d;
    }

    public final int[] getColors() {
        return this.e;
    }

    public final float getMaxProgress() {
        return this.f11005b;
    }

    public final Float getProgress() {
        return this.f11004a;
    }

    public final boolean getShowSeparator() {
        return this.f;
    }

    public final int getType() {
        return this.f11006c;
    }

    public final void setShowSeparator(boolean z) {
        this.f = z;
    }
}
