package com.tmobile.services.nameid.model;

import com.google.gson.annotations.SerializedName;
import io.realm.RealmObject;
import io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.io.Serializable;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/tmobile/services/nameid/model/CheckName;", "Ljava/io/Serializable;", "Lio/realm/com_tmobile_services_nameid_model_CheckNameRealmProxyInterface;", "Lio/realm/RealmObject;", "", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "Ljava/util/Date;", "updated", "Ljava/util/Date;", "getUpdated", "()Ljava/util/Date;", "setUpdated", "(Ljava/util/Date;)V", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CheckName.class */
public class CheckName extends RealmObject implements Serializable, com_tmobile_services_nameid_model_CheckNameRealmProxyInterface {
    @SerializedName("name")
    @NotNull
    private String name;
    @NotNull
    private Date updated;

    public CheckName() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$name("");
        realmSet$updated(new Date(0L));
    }

    @NotNull
    public final String getName() {
        return realmGet$name();
    }

    @NotNull
    public final Date getUpdated() {
        return realmGet$updated();
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public Date realmGet$updated() {
        return this.updated;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.com_tmobile_services_nameid_model_CheckNameRealmProxyInterface
    public void realmSet$updated(Date date) {
        this.updated = date;
    }

    public final void setName(@NotNull String str) {
        Intrinsics.m1830e(str, "<set-?>");
        realmSet$name(str);
    }

    public final void setUpdated(@NotNull Date date) {
        Intrinsics.m1830e(date, "<set-?>");
        realmSet$updated(date);
    }
}
