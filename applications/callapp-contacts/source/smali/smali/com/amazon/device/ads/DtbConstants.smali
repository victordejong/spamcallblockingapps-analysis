.class Lcom/amazon/device/ads/DtbConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "status"

    const-string v1, "errorCode"

    const-string v2, "instrPixelURL"

    .line 68
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->a:Ljava/util/List;

    const-string v0, "aax-us.amazon-adsystem.com"

    .line 91
    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->b:Ljava/lang/String;

    const-string v0, "aax.amazon-adsystem.com"

    .line 92
    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->c:Ljava/lang/String;

    const-string v0, "s.amazon-adsystem.com"

    .line 93
    sput-object v0, Lcom/amazon/device/ads/DtbConstants;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
