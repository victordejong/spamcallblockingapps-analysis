.class public Lcom/callapp/contacts/util/PackageUtils$PackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/PackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageInfo"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->d:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->e:J

    .line 30
    iput-wide v0, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->f:J

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->d:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;J)J
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/util/PackageUtils$PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getJsonObject()Lcom/callapp/common/model/json/JSONInstalledApp;
    .locals 3

    .line 33
    new-instance v0, Lcom/callapp/common/model/json/JSONInstalledApp;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONInstalledApp;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONInstalledApp;->setAppName(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONInstalledApp;->setPackageName(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONInstalledApp;->setVersionName(Ljava/lang/String;)V

    .line 37
    iget v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->d:I

    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONInstalledApp;->setVersionCode(I)V

    .line 38
    iget-wide v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONInstalledApp;->setFirstInstallTime(J)V

    .line 39
    iget-wide v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/common/model/json/JSONInstalledApp;->setLastUpdateTime(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callapp/contacts/util/PackageUtils$PackageInfo;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
