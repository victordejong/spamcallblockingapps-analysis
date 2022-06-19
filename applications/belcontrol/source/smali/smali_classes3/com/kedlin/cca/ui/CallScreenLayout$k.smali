.class public Lcom/kedlin/cca/ui/CallScreenLayout$k;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Paint;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$k;->a:Landroid/graphics/Paint;

    iput p3, p0, Lcom/kedlin/cca/ui/CallScreenLayout$k;->b:F

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$k;->b:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$k;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
