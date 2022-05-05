package com.privacystar.core.data.model;

import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/data/model/LogItem;", "Lio/realm/RealmObject;", LogItemFields.LOG, "", LogItemFields.DATE, "Ljava/util/Date;", "(Ljava/lang/String;Ljava/util/Date;)V", "getDate", "()Ljava/util/Date;", "setDate", "(Ljava/util/Date;)V", "getLog", "()Ljava/lang/String;", "setLog", "(Ljava/lang/String;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/LogItem.class */
public class LogItem extends RealmObject implements com_privacystar_core_data_model_LogItemRealmProxyInterface {
    @Required
    @NotNull
    private Date date;
    @Required
    @NotNull
    private String log;

    public LogItem() {
        this(null, null, 3, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public LogItem(@NotNull String log, @NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(log, "log");
        Intrinsics.checkParameterIsNotNull(date, "date");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$log(log);
        realmSet$date(date);
    }

    public /* synthetic */ LogItem(String str, Date date, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new Date(0L) : date);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @NotNull
    public final Date getDate() {
        return realmGet$date();
    }

    @NotNull
    public final String getLog() {
        return realmGet$log();
    }

    @Override // io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public String realmGet$log() {
        return this.log;
    }

    @Override // io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.com_privacystar_core_data_model_LogItemRealmProxyInterface
    public void realmSet$log(String str) {
        this.log = str;
    }

    public final void setDate(@NotNull Date date) {
        Intrinsics.checkParameterIsNotNull(date, "<set-?>");
        realmSet$date(date);
    }

    public final void setLog(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$log(str);
    }
}
