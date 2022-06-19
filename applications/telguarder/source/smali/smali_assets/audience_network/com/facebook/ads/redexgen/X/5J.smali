.class public final Lcom/facebook/ads/redexgen/X/5J;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeBannerImageLoadTaskParams"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13408
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:Ljava/lang/String;

    .line 13409
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:Ljava/lang/String;

    .line 13410
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/aG;)V
    .locals 0

    .line 13411
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
