.class public final Lcom/facebook/ads/redexgen/X/Rf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rb;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/MZ;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rb;)V
    .locals 0

    .line 50322
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABG()V
    .locals 2

    .line 50323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A01(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/50;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rf;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A01(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/50;

    move-result-object v1

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 50325
    :cond_0
    return-void
.end method
