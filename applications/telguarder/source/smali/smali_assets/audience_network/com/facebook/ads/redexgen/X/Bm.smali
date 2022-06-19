.class public final Lcom/facebook/ads/redexgen/X/Bm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/Bo;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V
    .locals 0

    .line 23979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23980
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bm;->A00:Landroid/os/Handler;

    .line 23981
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bm;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    .line 23982
    return-void
.end method
