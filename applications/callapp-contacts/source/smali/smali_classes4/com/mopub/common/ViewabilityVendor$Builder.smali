.class public Lcom/mopub/common/ViewabilityVendor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ViewabilityVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "omid"

    .line 141
    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->a:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/mopub/common/ViewabilityVendor;
    .locals 7

    const/4 v0, 0x0

    .line 183
    :try_start_0
    new-instance v1, Lcom/mopub/common/ViewabilityVendor;

    invoke-direct {v1, p0, v0}, Lcom/mopub/common/ViewabilityVendor;-><init>(Lcom/mopub/common/ViewabilityVendor$Builder;Lcom/mopub/common/ViewabilityVendor$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 185
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Warning: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public withApiFramework(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public withVendorKey(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withVerificationNotExecuted(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public withVerificationParameters(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
