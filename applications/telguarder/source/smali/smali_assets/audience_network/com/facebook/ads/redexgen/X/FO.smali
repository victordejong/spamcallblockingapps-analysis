.class public final Lcom/facebook/ads/redexgen/X/FO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/FS;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 0

    .line 32502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32503
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FO;->A00:Landroid/os/Handler;

    .line 32504
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FO;->A01:Lcom/facebook/ads/redexgen/X/FS;

    .line 32505
    return-void
.end method
