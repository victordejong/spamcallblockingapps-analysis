.class public Lai1;
.super Lcom/mopub/common/BaseUrlGenerator;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    iput-object p1, p0, Lai1;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/m/pos"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lai1;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lai1;->m(Ljava/lang/String;)V

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lai1;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nv"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->d()V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->e()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/mopub/common/BaseUrlGenerator;->l([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/BaseUrlGenerator;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->c()V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public withAdUnitId(Ljava/lang/String;)Lai1;
    .locals 0

    iput-object p1, p0, Lai1;->f:Ljava/lang/String;

    return-object p0
.end method
