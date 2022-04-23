package com.callapp.contacts.activity.analytics.progressGraph.data;

import com.callapp.contacts.model.Constants;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018��2\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0016R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "contactImage", "", "contactName", Constants.EXTRA_CONTACT_ID, "", "contactPhone", "imageView", "", EventConstants.PROGRESS, "", "maxProgress", "type", "colors", "", "showSeparator", "", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZ)V", "getContactId", "()J", "getContactImage", "()Ljava/lang/String;", "getContactName", "getContactPhone", "getImageView", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData.class */
public final class ProfilePictureProgressBarData extends BaseProgressBarData {

    /* renamed from: a  reason: collision with root package name */
    private final String f11016a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11017b;

    /* renamed from: c  reason: collision with root package name */
    private final long f11018c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11019d;
    private final Integer e;

    public ProfilePictureProgressBarData(String str, String str2, long j, String str3, Integer num, Float f, float f2, int i, int[] iArr, boolean z) {
        super(f, f2, i, 0, iArr, z);
        this.f11016a = str;
        this.f11017b = str2;
        this.f11018c = j;
        this.f11019d = str3;
        this.e = num;
    }

    public /* synthetic */ ProfilePictureProgressBarData(String str, String str2, long j, String str3, Integer num, Float f, float f2, int i, int[] iArr, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0L : j, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : num, (i2 & 32) != 0 ? null : f, f2, i, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : iArr, (i2 & 512) != 0 ? false : z);
    }

    public final long getContactId() {
        return this.f11018c;
    }

    public final String getContactImage() {
        return this.f11016a;
    }

    public final String getContactName() {
        return this.f11017b;
    }

    public final String getContactPhone() {
        return this.f11019d;
    }
}
