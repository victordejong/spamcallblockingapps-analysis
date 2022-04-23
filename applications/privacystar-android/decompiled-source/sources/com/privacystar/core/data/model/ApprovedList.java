package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.annotations.Required;
import io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\b\u0016\u0018��2\u00020\u0001B/\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, m254d2 = {"Lcom/privacystar/core/data/model/ApprovedList;", "Lio/realm/RealmObject;", "number", "", "added", "Ljava/util/Date;", ApprovedListFields.NUMBER_LAST_CACHED, ApprovedListFields.UPDATE_TRIGGER, "", "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;J)V", "getAdded", "()Ljava/util/Date;", "setAdded", "(Ljava/util/Date;)V", "getNumber", "()Ljava/lang/String;", "setNumber", "(Ljava/lang/String;)V", "getNumberLastCached", "setNumberLastCached", "getUpdateTrigger", "()J", "setUpdateTrigger", "(J)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/ApprovedList.class */
public class ApprovedList extends RealmObject implements com_privacystar_core_data_model_ApprovedListRealmProxyInterface {
    @Required
    @NotNull
    private Date added;
    @PrimaryKey
    @Nullable
    private String number;
    @Required
    @NotNull
    private Date numberLastCached;
    private long updateTrigger;

    public ApprovedList() {
        this(null, null, null, 0L, 15, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public ApprovedList(@Nullable String str, @NotNull Date added, @NotNull Date numberLastCached, long j) {
        Intrinsics.checkParameterIsNotNull(added, "added");
        Intrinsics.checkParameterIsNotNull(numberLastCached, "numberLastCached");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$number(str);
        realmSet$added(added);
        realmSet$numberLastCached(numberLastCached);
        realmSet$updateTrigger(j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ApprovedList(java.lang.String r8, java.util.Date r9, java.util.Date r10, long r11, int r13, kotlin.jvm.internal.DefaultConstructorMarker r14) {
        /*
            r7 = this;
            r0 = r13
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000a
            java.lang.String r0 = ""
            r8 = r0
        L_0x000a:
            r0 = 0
            r15 = r0
            r0 = r13
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001d
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r9 = r0
        L_0x001d:
            r0 = r13
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002d
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r10 = r0
        L_0x002d:
            r0 = r13
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003c
            r0 = r15
            r11 = r0
            goto L_0x003c
        L_0x003c:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4)
            r0 = r7
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x0055
            r0 = r7
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r0.realm$injectObjectContext()
        L_0x0055:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.model.ApprovedList.<init>(java.lang.String, java.util.Date, java.util.Date, long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @NotNull
    public final Date getAdded() {
        return realmGet$added();
    }

    @Nullable
    public final String getNumber() {
        return realmGet$number();
    }

    @NotNull
    public final Date getNumberLastCached() {
        return realmGet$numberLastCached();
    }

    public final long getUpdateTrigger() {
        return realmGet$updateTrigger();
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public Date realmGet$added() {
        return this.added;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public Date realmGet$numberLastCached() {
        return this.numberLastCached;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public long realmGet$updateTrigger() {
        return this.updateTrigger;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$added(Date date) {
        this.added = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$numberLastCached(Date date) {
        this.numberLastCached = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_ApprovedListRealmProxyInterface
    public void realmSet$updateTrigger(long j) {
        this.updateTrigger = j;
    }

    public final void setAdded(@NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(date, "<set-?>");
        realmSet$added(date);
    }

    public final void setNumber(@Nullable String str) {
        realmSet$number(str);
    }

    public final void setNumberLastCached(@NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(date, "<set-?>");
        realmSet$numberLastCached(date);
    }

    public final void setUpdateTrigger(long j) {
        realmSet$updateTrigger(j);
    }
}
