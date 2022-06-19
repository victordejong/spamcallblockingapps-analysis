.class public Lcom/telguarder/helpers/backend/BackendRequestCreator;
.super Ljava/lang/Object;
.source "BackendRequestCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, p2, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;Ljava/lang/String;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p0

    return-object p0
.end method

.method public static backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;Ljava/lang/String;)Lcom/telguarder/helpers/backend/BackendRequest;
    .locals 2

    .line 26
    new-instance v0, Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-direct {v0, p1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;-><init>(Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)V

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "X-Country-Code"

    invoke-virtual {v0, v1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "X-Language-Code"

    invoke-virtual {v0, v1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "X-MCC"

    invoke-virtual {v0, v1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f1001ad

    .line 31
    invoke-static {p0, p2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "X-ServiceKey"

    invoke-virtual {v0, v1, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "X-SiteId"

    invoke-virtual {v0, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "X-DeviceId"

    invoke-virtual {v0, p3, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Android-Api-Level"

    .line 34
    invoke-virtual {v0, p2, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2ec

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-BuildNumber"

    invoke-virtual {v0, p2, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-Session-ID"

    invoke-virtual {v0, p2, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "X-ApplicationID"

    invoke-virtual {v0, p1, p0}, Lcom/telguarder/helpers/backend/BackendRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
