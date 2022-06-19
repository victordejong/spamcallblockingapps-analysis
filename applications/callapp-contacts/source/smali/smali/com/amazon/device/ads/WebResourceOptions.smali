.class Lcom/amazon/device/ads/WebResourceOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "aps-mraid.js"

    const-string v1, "dtb-m.js"

    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/WebResourceOptions;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .line 30
    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "c.amazon-adsystem.com/"

    :goto_0
    const-string v1, "/"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static b()[Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/device/ads/WebResourceOptions;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static c()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/amazon/device/ads/WebResourceOptions;->a:Z

    return v0
.end method
