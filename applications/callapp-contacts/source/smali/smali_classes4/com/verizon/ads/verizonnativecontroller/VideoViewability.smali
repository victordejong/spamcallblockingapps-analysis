.class Lcom/verizon/ads/verizonnativecontroller/VideoViewability;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/verizon/ads/Logger;


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VideoViewability;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
