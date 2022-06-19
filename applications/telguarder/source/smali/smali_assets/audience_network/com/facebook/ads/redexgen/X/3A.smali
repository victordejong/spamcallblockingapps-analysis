.class public final Lcom/facebook/ads/redexgen/X/3A;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerObserver"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3D;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3D;)V
    .locals 0

    .line 6900
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3A;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6901
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 6902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3A;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3D;->A0f()V

    .line 6903
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .line 6904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3A;->A00:Lcom/facebook/ads/redexgen/X/3D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3D;->A0f()V

    .line 6905
    return-void
.end method
