package com.callapp.contacts.activity.analytics.progressGraph.data;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0016\u0018��2\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u000e¨\u0006\u001b"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "", EventConstants.PROGRESS, "", "maxProgress", "type", "", "color", "colors", "", "showSeparator", "", "(Ljava/lang/Float;FII[IZ)V", "getColor", "()I", "getColors", "()[I", "getMaxProgress", "()F", "getProgress", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getShowSeparator", "()Z", "setShowSeparator", "(Z)V", "getType", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData.class */
public class BaseProgressBarData {

    /* renamed from: a */
    private final Float f20158a;

    /* renamed from: b */
    private final float f20159b;

    /* renamed from: c */
    private final int f20160c;

    /* renamed from: d */
    private final int f20161d;

    /* renamed from: e */
    private final int[] f20162e;

    /* renamed from: f */
    private boolean f20163f;

    public BaseProgressBarData(Float f, float f2, int i, int i2, int[] iArr, boolean z) {
        this.f20158a = f;
        this.f20159b = f2;
        this.f20160c = i;
        this.f20161d = i2;
        this.f20162e = iArr;
        this.f20163f = z;
    }

    public /* synthetic */ BaseProgressBarData(Float f, float f2, int i, int i2, int[] iArr, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? Float.valueOf((float) BitmapDescriptorFactory.HUE_RED) : f, (i3 & 2) != 0 ? 100.0f : f2, i, i2, (i3 & 16) != 0 ? null : iArr, (i3 & 32) != 0 ? false : z);
    }

    public final int getColor() {
        return this.f20161d;
    }

    public final int[] getColors() {
        return this.f20162e;
    }

    public final float getMaxProgress() {
        return this.f20159b;
    }

    public final Float getProgress() {
        return this.f20158a;
    }

    public final boolean getShowSeparator() {
        return this.f20163f;
    }

    public final int getType() {
        return this.f20160c;
    }

    public final void setShowSeparator(boolean z) {
        this.f20163f = z;
    }
}
