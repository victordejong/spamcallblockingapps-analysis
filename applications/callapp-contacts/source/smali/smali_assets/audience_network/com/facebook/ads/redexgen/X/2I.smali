.class public final Lcom/facebook/ads/redexgen/X/2I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastRecord"
.end annotation


# instance fields
.field public final A00:Landroid/content/Intent;

.field public final A01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2J;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/2J;",
            ">;)V"
        }
    .end annotation

    .line 4810
    .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/androidx/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4811
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2I;->A00:Landroid/content/Intent;

    .line 4812
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2I;->A01:Ljava/util/ArrayList;

    .line 4813
    return-void
.end method
