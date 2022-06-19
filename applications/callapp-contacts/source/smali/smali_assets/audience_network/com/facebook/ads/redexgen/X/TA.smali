.class public final Lcom/facebook/ads/redexgen/X/TA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8s;->A01(I)Lcom/facebook/ads/redexgen/X/Nx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8s;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 53701
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAJ(Z)V
    .locals 1

    .line 53702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A04(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TA;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A07(Lcom/facebook/ads/redexgen/X/8s;)V

    .line 53704
    return-void
.end method
