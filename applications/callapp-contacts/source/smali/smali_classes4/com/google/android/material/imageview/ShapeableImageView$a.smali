.class final Lcom/google/android/material/imageview/ShapeableImageView$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/imageview/ShapeableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/imageview/ShapeableImageView;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 580
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 584
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/google/android/material/imageview/ShapeableImageView;->a(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/google/android/material/imageview/ShapeableImageView;->b(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/h;

    move-result-object p1

    if-nez p1, :cond_1

    .line 589
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    new-instance v0, Lcom/google/android/material/k/h;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1}, Lcom/google/android/material/imageview/ShapeableImageView;->a(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    invoke-static {p1, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->a(Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/k/h;)Lcom/google/android/material/k/h;

    .line 592
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/google/android/material/imageview/ShapeableImageView;->c(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 593
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/google/android/material/imageview/ShapeableImageView;->b(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/google/android/material/k/h;->setBounds(Landroid/graphics/Rect;)V

    .line 594
    iget-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView$a;->a:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p1}, Lcom/google/android/material/imageview/ShapeableImageView;->b(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/k/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/k/h;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
