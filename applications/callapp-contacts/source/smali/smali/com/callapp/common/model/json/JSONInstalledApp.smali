.class public Lcom/callapp/common/model/json/JSONInstalledApp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x15c2c349a210aaf6L


# instance fields
.field private appName:Ljava/lang/String;

.field private firstInstallTime:J

.field private lastUpdateTime:J

.field private packageName:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    .line 14
    iput-wide v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 69
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONInstalledApp;

    .line 71
    iget v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    if-eq v2, v3, :cond_2

    return v1

    .line 72
    :cond_2
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 73
    :cond_3
    iget-wide v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    iget-wide v4, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 75
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 77
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-nez p1, :cond_a

    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    return-void
.end method

.method public setFirstInstallTime(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONInstalledApp{appName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstInstallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->firstInstallTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/common/model/json/JSONInstalledApp;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
