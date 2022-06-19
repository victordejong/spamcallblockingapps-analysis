.class public final Lcom/facebook/ads/redexgen/X/GU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/GV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubtitleService"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/GO;

.field public A01:Lcom/facebook/ads/redexgen/X/GQ;

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GN;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GP;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GN;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GP;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/GS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 33827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33828
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    .line 33829
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    .line 33830
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    .line 33831
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    .line 33832
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    .line 33833
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GU;->A03:I

    .line 33834
    iput p2, p0, Lcom/facebook/ads/redexgen/X/GU;->A02:I

    .line 33835
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 33836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33838
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A04:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 33841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A00:Lcom/facebook/ads/redexgen/X/GO;

    .line 33842
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GU;->A01:Lcom/facebook/ads/redexgen/X/GQ;

    .line 33843
    return-void
.end method
