.class public final Lcom/facebook/ads/redexgen/X/RX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ON;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 0

    .line 50133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RX;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAG(Ljava/lang/String;)V
    .locals 1

    .line 50134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RX;->A00:Lcom/facebook/ads/redexgen/X/ON;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0C(Lcom/facebook/ads/redexgen/X/ON;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 50135
    return-void
.end method
