.class public final Lcom/facebook/ads/redexgen/X/bU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Oj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/b6;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/b6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b6;)V
    .locals 0

    .line 70001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAW()V
    .locals 2

    .line 70002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A0D(Lcom/facebook/ads/redexgen/X/b6;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bU;->A00:Lcom/facebook/ads/redexgen/X/b6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/b6;->A0R(Lcom/facebook/ads/redexgen/X/b6;)V

    .line 70004
    return-void
.end method
