package com.privacystar.core.data.model;

import com.privacystar.core.data.model.AFAnalyticConfigurationFields;
import io.realm.AbstractC1909x5d86b024;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0016\u0018��2\u00020\u0001BG\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\b\u0010\u0017\u001a\u00020\u0006H\u0016R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0002\u001a\u00020\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n��R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012¨\u0006\u0018"}, m254d2 = {"Lcom/privacystar/core/data/model/AFAnalyticConfiguration;", "Lio/realm/RealmObject;", "id", "", AFAnalyticConfigurationFields.PRIMARY_URLS.f250$, "Lio/realm/RealmList;", "", AFAnalyticConfigurationFields.BACKUP_URLS.f249$, AFAnalyticConfigurationFields.REPORT_NAME, AFAnalyticConfigurationFields.CONFIG_VERSION, "(ILio/realm/RealmList;Lio/realm/RealmList;Ljava/lang/String;Ljava/lang/String;)V", "getBackupUrls", "()Lio/realm/RealmList;", "setBackupUrls", "(Lio/realm/RealmList;)V", "getConfigVersion", "()Ljava/lang/String;", "setConfigVersion", "(Ljava/lang/String;)V", "getPrimaryUrls", "setPrimaryUrls", "getReportName", "setReportName", "toString", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/AFAnalyticConfiguration.class */
public class AFAnalyticConfiguration extends RealmObject implements AbstractC1909x5d86b024 {
    @Nullable
    private RealmList<String> backupUrls;
    @NotNull
    private String configVersion;
    @PrimaryKey

    /* renamed from: id */
    private int f247id;
    @Nullable
    private RealmList<String> primaryUrls;
    @NotNull
    private String reportName;

    public AFAnalyticConfiguration() {
        this(0, null, null, null, null, 31, null);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public AFAnalyticConfiguration(int i, @Nullable RealmList<String> realmList, @Nullable RealmList<String> realmList2, @NotNull String reportName, @NotNull String configVersion) {
        Intrinsics.checkParameterIsNotNull(reportName, "reportName");
        Intrinsics.checkParameterIsNotNull(configVersion, "configVersion");
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(i);
        realmSet$primaryUrls(realmList);
        realmSet$backupUrls(realmList2);
        realmSet$reportName(reportName);
        realmSet$configVersion(configVersion);
    }

    public /* synthetic */ AFAnalyticConfiguration(int i, RealmList realmList, RealmList realmList2, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : realmList, (i2 & 4) != 0 ? null : realmList2, (i2 & 8) != 0 ? "" : str, (i2 & 16) != 0 ? "" : str2);
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Nullable
    public final RealmList<String> getBackupUrls() {
        return realmGet$backupUrls();
    }

    @NotNull
    public final String getConfigVersion() {
        return realmGet$configVersion();
    }

    @Nullable
    public final RealmList<String> getPrimaryUrls() {
        return realmGet$primaryUrls();
    }

    @NotNull
    public final String getReportName() {
        return realmGet$reportName();
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public RealmList realmGet$backupUrls() {
        return this.backupUrls;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public String realmGet$configVersion() {
        return this.configVersion;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public int realmGet$id() {
        return this.f247id;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public RealmList realmGet$primaryUrls() {
        return this.primaryUrls;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public String realmGet$reportName() {
        return this.reportName;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public void realmSet$backupUrls(RealmList realmList) {
        this.backupUrls = realmList;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public void realmSet$configVersion(String str) {
        this.configVersion = str;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public void realmSet$id(int i) {
        this.f247id = i;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public void realmSet$primaryUrls(RealmList realmList) {
        this.primaryUrls = realmList;
    }

    @Override // io.realm.AbstractC1909x5d86b024
    public void realmSet$reportName(String str) {
        this.reportName = str;
    }

    public final void setBackupUrls(@Nullable RealmList<String> realmList) {
        realmSet$backupUrls(realmList);
    }

    public final void setConfigVersion(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$configVersion(str);
    }

    public final void setPrimaryUrls(@Nullable RealmList<String> realmList) {
        realmSet$primaryUrls(realmList);
    }

    public final void setReportName(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        realmSet$reportName(str);
    }

    @NotNull
    public String toString() {
        return "AFAnalyticConfiguration(id=" + realmGet$id() + ", primaryUrls=" + realmGet$primaryUrls() + ", backupUrls=" + realmGet$backupUrls() + ", reportName='" + realmGet$reportName() + "', configVersion='" + realmGet$configVersion() + "')";
    }
}
