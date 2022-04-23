package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018��2\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m254d2 = {"Lcom/privacystar/core/data/model/CallStats;", "Lio/realm/RealmObject;", "categoryId", "", "number", "", CallStatsFields.OCCURRED, "Ljava/util/Date;", "(ILjava/lang/String;Ljava/util/Date;)V", "getCategoryId", "()I", "setCategoryId", "(I)V", "getNumber", "()Ljava/lang/String;", "setNumber", "(Ljava/lang/String;)V", "getOccurred", "()Ljava/util/Date;", "setOccurred", "(Ljava/util/Date;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/CallStats.class */
public class CallStats extends RealmObject implements com_privacystar_core_data_model_CallStatsRealmProxyInterface {
    private int categoryId;
    @Required
    @NotNull
    private String number;
    @Required
    @NotNull
    private Date occurred;

    public CallStats() {
        this(0, null, null, 7, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public CallStats(int i, @NotNull String number, @NotNull Date occurred) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(occurred, "occurred");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$categoryId(i);
        realmSet$number(number);
        realmSet$occurred(occurred);
    }

    public /* synthetic */ CallStats(int i, String str, Date date, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? -1 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? new Date(0L) : date);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final int getCategoryId() {
        return realmGet$categoryId();
    }

    @NotNull
    public final String getNumber() {
        return realmGet$number();
    }

    @NotNull
    public final Date getOccurred() {
        return realmGet$occurred();
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public int realmGet$categoryId() {
        return this.categoryId;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public Date realmGet$occurred() {
        return this.occurred;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$categoryId(int i) {
        this.categoryId = i;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.com_privacystar_core_data_model_CallStatsRealmProxyInterface
    public void realmSet$occurred(Date date) {
        this.occurred = date;
    }

    public final void setCategoryId(int i) {
        realmSet$categoryId(i);
    }

    public final void setNumber(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$number(str);
    }

    public final void setOccurred(@NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(date, "<set-?>");
        realmSet$occurred(date);
    }
}
