.class public final Lcom/facebook/ads/redexgen/X/33;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 0

    .line 6874
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 6875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/3D;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3D;->setScrollState(I)V

    .line 6876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/33;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3D;->A0g()V

    .line 6877
    return-void
.end method
