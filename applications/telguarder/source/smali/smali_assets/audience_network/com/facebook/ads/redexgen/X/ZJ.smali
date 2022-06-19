.class public final Lcom/facebook/ads/redexgen/X/ZJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZF;->A0K()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZF;)V
    .locals 0

    .line 66229
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZJ;->A00:Lcom/facebook/ads/redexgen/X/ZF;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZF;->A01(Lcom/facebook/ads/redexgen/X/ZF;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
