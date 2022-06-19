.class public final Lcom/facebook/ads/redexgen/X/RO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NW;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8s;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V
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

    .line 50001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI(Z)V
    .locals 1

    .line 50002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A04(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Lcom/facebook/ads/redexgen/X/8s;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8s;->A08(Lcom/facebook/ads/redexgen/X/8s;)V

    .line 50004
    return-void
.end method
