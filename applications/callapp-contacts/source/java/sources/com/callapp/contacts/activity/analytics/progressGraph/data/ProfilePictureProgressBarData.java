package com.callapp.contacts.activity.analytics.progressGraph.data;

import com.callapp.contacts.model.Constants;
import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018��2\u00020\u0001Bq\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0016R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "contactImage", "", "contactName", Constants.EXTRA_CONTACT_ID, "", "contactPhone", "imageView", "", EventConstants.PROGRESS, "", "maxProgress", "type", "colors", "", "showSeparator", "", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;FI[IZ)V", "getContactId", "()J", "getContactImage", "()Ljava/lang/String;", "getContactName", "getContactPhone", "getImageView", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/ProfilePictureProgressBarData.class */
public final class ProfilePictureProgressBarData extends BaseProgressBarData {

    /* renamed from: a */
    private final String f20177a;

    /* renamed from: b */
    private final String f20178b;

    /* renamed from: c */
    private final long f20179c;

    /* renamed from: d */
    private final String f20180d;

    /* renamed from: e */
    private final Integer f20181e;

    public ProfilePictureProgressBarData(String str, String str2, long j, String str3, Integer num, Float f, float f2, int i, int[] iArr, boolean z) {
        super(f, f2, i, 0, iArr, z);
        this.f20177a = str;
        this.f20178b = str2;
        this.f20179c = j;
        this.f20180d = str3;
        this.f20181e = num;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    public /* synthetic */ ProfilePictureProgressBarData(String str, String str2, long j, String str3, Integer num, Float f, float f2, int i, int[] iArr, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0 : j, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : num, (i2 & 32) != 0 ? null : f, f2, i, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? null : iArr, (i2 & 512) != 0 ? false : z);
    }

    public final long getContactId() {
        return this.f20179c;
    }

    public final String getContactImage() {
        return this.f20177a;
    }

    public final String getContactName() {
        return this.f20178b;
    }

    public final String getContactPhone() {
        return this.f20180d;
    }
}
