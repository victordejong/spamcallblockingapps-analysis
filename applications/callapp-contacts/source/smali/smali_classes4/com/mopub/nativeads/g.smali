.class final Lcom/mopub/nativeads/g;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mopub/nativeads/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/m/pos"

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mopub/nativeads/g;->b:Ljava/lang/String;

    const-string v0, "id"

    .line 1058
    invoke-virtual {p0, v0, p1}, Lcom/mopub/nativeads/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    .line 36
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/g;->a(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/mopub/nativeads/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nv"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/mopub/nativeads/g;->d()V

    .line 44
    invoke-virtual {p0}, Lcom/mopub/nativeads/g;->e()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 48
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/g;->a([Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/g;->b(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mopub/nativeads/g;->c()V

    .line 54
    invoke-virtual {p0}, Lcom/mopub/nativeads/g;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final withAdUnitId(Ljava/lang/String;)Lcom/mopub/nativeads/g;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mopub/nativeads/g;->b:Ljava/lang/String;

    return-object p0
.end method
