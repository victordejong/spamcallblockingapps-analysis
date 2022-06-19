.class public final Lcom/facebook/ads/redexgen/X/Xc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Og;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/OS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OS;)V
    .locals 0

    .line 58063
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xc;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAH(Ljava/lang/String;)V
    .locals 1

    .line 58064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xc;->A00:Lcom/facebook/ads/redexgen/X/OS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OS;->A0C(Lcom/facebook/ads/redexgen/X/OS;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58065
    return-void
.end method
