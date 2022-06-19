.class Lcom/a/a/a/a/c/h;
.super Ljava/lang/Object;
.source "DraggingItemEffectsInfo.java"


# instance fields
.field a:I

.field b:F

.field c:F

.field d:F

.field e:Landroid/view/animation/Interpolator;

.field f:Landroid/view/animation/Interpolator;

.field g:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/a/a/a/a/c/h;->b:F

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/a/a/a/a/c/h;->c:F

    .line 25
    iput v0, p0, Lcom/a/a/a/a/c/h;->d:F

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/a/a/a/a/c/h;->e:Landroid/view/animation/Interpolator;

    .line 27
    iput-object v0, p0, Lcom/a/a/a/a/c/h;->f:Landroid/view/animation/Interpolator;

    .line 28
    iput-object v0, p0, Lcom/a/a/a/a/c/h;->g:Landroid/view/animation/Interpolator;

    return-void
.end method
