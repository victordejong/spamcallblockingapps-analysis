.class public final Lcom/facebook/ads/redexgen/X/Ag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/I0;)Lcom/facebook/ads/redexgen/X/W4;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/AT;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21630
    new-instance v0, Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/W4;-><init>(Lcom/facebook/ads/redexgen/X/AT;Lcom/facebook/ads/redexgen/X/I0;)V

    return-object v0
.end method
