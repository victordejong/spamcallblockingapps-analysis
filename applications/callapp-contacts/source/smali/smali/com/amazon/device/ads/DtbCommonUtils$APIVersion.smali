.class Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DtbCommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "APIVersion"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    .line 314
    iput v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->b:I

    return-void
.end method
