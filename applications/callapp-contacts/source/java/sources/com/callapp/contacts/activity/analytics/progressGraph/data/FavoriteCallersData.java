package com.callapp.contacts.activity.analytics.progressGraph.data;

import com.callapp.contacts.model.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0015\n��\n\u0002\u0010\u000b\n\u0002\b\f\u0018��2\u00020\u0001B\u0085\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u001e\u0010\u0016¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData;", "Lcom/callapp/contacts/activity/analytics/progressGraph/data/BaseProgressBarData;", "contactImage", "", "imageView", "", "contactName", "contactPhone", Constants.EXTRA_CONTACT_ID, "", "callTimeDuration", EventConstants.PROGRESS, "", "maxProgress", "type", "color", "colors", "", "showSeparator", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Float;FII[IZ)V", "getCallTimeDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getContactId", "()J", "getContactImage", "()Ljava/lang/String;", "getContactName", "getContactPhone", "getImageView", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/data/FavoriteCallersData.class */
public final class FavoriteCallersData extends BaseProgressBarData {

    /* renamed from: a */
    private final String f20164a;

    /* renamed from: b */
    private final Integer f20165b;

    /* renamed from: c */
    private final String f20166c;

    /* renamed from: d */
    private final String f20167d;

    /* renamed from: e */
    private final long f20168e;

    /* renamed from: f */
    private final Integer f20169f;

    public FavoriteCallersData(String str, Integer num, String str2, String str3, long j, Integer num2, Float f, float f2, int i, int i2, int[] iArr, boolean z) {
        super(f, f2, i, i2, iArr, z);
        this.f20164a = str;
        this.f20165b = num;
        this.f20166c = str2;
        this.f20167d = str3;
        this.f20168e = j;
        this.f20169f = num2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    public /* synthetic */ FavoriteCallersData(String str, Integer num, String str2, String str3, long j, Integer num2, Float f, float f2, int i, int i2, int[] iArr, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : num, (i3 & 4) != 0 ? null : str2, (i3 & 8) != 0 ? null : str3, (i3 & 16) != 0 ? 0 : j, (i3 & 32) != 0 ? null : num2, (i3 & 64) != 0 ? null : f, f2, i, i2, (i3 & 1024) != 0 ? null : iArr, (i3 & 2048) != 0 ? false : z);
    }

    public final Integer getCallTimeDuration() {
        return this.f20169f;
    }

    public final long getContactId() {
        return this.f20168e;
    }

    public final String getContactImage() {
        return this.f20164a;
    }

    public final String getContactName() {
        return this.f20166c;
    }

    public final String getContactPhone() {
        return this.f20167d;
    }
}
