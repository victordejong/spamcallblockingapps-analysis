.class public final Lcom/facebook/ads/redexgen/X/Tq;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5K;->A03(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/5K;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/cD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5K;Lcom/facebook/ads/redexgen/X/cD;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 55557
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A01:Lcom/facebook/ads/redexgen/X/5K;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tq;->A02:Lcom/facebook/ads/redexgen/X/cD;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 55558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tq;->A02:Lcom/facebook/ads/redexgen/X/cD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tq;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1J(Landroid/graphics/drawable/Drawable;)V

    .line 55559
    return-void
.end method
