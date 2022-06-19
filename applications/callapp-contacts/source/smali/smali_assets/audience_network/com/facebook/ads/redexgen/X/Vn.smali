.class public final Lcom/facebook/ads/redexgen/X/Vn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vp;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vp;)V
    .locals 0

    .line 56641
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 3

    .line 56642
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Lcom/facebook/ads/redexgen/X/Vp;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A07(J)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
