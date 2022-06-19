.class public final Lcom/google/android/material/progressindicator/e;
.super Lcom/google/android/material/progressindicator/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/b;",
        ">",
        "Lcom/google/android/material/progressindicator/f;"
    }
.end annotation


# static fields
.field private static final v:Ld/k/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k/a/c<",
            "Lcom/google/android/material/progressindicator/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private q:Lcom/google/android/material/progressindicator/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final r:Ld/k/a/e;

.field private final s:Ld/k/a/d;

.field private t:F

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/material/progressindicator/e$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/e$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/e;->v:Ld/k/a/c;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/b;",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/f;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/progressindicator/e;->u:Z

    invoke-virtual {p0, p3}, Lcom/google/android/material/progressindicator/e;->y(Lcom/google/android/material/progressindicator/g;)V

    new-instance p1, Ld/k/a/e;

    invoke-direct {p1}, Ld/k/a/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/e;->r:Ld/k/a/e;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Ld/k/a/e;->d(F)Ld/k/a/e;

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p3}, Ld/k/a/e;->f(F)Ld/k/a/e;

    new-instance p3, Ld/k/a/d;

    sget-object v0, Lcom/google/android/material/progressindicator/e;->v:Ld/k/a/c;

    invoke-direct {p3, p0, v0}, Ld/k/a/d;-><init>(Ljava/lang/Object;Ld/k/a/c;)V

    iput-object p3, p0, Lcom/google/android/material/progressindicator/e;->s:Ld/k/a/d;

    invoke-virtual {p3, p1}, Ld/k/a/d;->p(Ld/k/a/e;)Ld/k/a/d;

    invoke-virtual {p0, p2}, Lcom/google/android/material/progressindicator/f;->m(F)V

    return-void
.end method

.method static synthetic s(Lcom/google/android/material/progressindicator/e;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/e;->x()F

    move-result p0

    return p0
.end method

.method static synthetic t(Lcom/google/android/material/progressindicator/e;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/e;->z(F)V

    return-void
.end method

.method public static u(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/e<",
            "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/progressindicator/e;

    new-instance v1, Lcom/google/android/material/progressindicator/c;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V

    return-object v0
.end method

.method public static v(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ")",
            "Lcom/google/android/material/progressindicator/e<",
            "Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/progressindicator/e;

    new-instance v1, Lcom/google/android/material/progressindicator/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/progressindicator/j;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/b;Lcom/google/android/material/progressindicator/g;)V

    return-object v0
.end method

.method private x()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/e;->t:F

    return v0
.end method

.method private z(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/e;->t:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method A(F)V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/f;->g()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->g(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/progressindicator/g;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/f;->c:Lcom/google/android/material/progressindicator/b;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/b;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/e;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Le/c/a/b/o/a;->a(II)I

    move-result v7

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    iget-object v4, p0, Lcom/google/android/material/progressindicator/f;->n:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/e;->x()F

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/progressindicator/g;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/g;->e()I

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->s:Ld/k/a/d;

    invoke-virtual {v0}, Ld/k/a/b;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/e;->z(F)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/e;->u:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->s:Ld/k/a/d;

    invoke-virtual {v0}, Ld/k/a/b;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/e;->z(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->s:Ld/k/a/d;

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/e;->x()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Ld/k/a/b;->i(F)Ld/k/a/b;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->s:Ld/k/a/d;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Ld/k/a/d;->m(F)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method q(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/progressindicator/f;->q(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/progressindicator/f;->d:Lcom/google/android/material/progressindicator/a;

    iget-object p3, p0, Lcom/google/android/material/progressindicator/f;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/progressindicator/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/e;->u:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/progressindicator/e;->u:Z

    iget-object p3, p0, Lcom/google/android/material/progressindicator/e;->r:Ld/k/a/e;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Ld/k/a/e;->f(F)Ld/k/a/e;

    :goto_0
    return p1
.end method

.method w()Lcom/google/android/material/progressindicator/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    return-object v0
.end method

.method y(Lcom/google/android/material/progressindicator/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/progressindicator/g<",
            "TS;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/progressindicator/e;->q:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/g;->f(Lcom/google/android/material/progressindicator/f;)V

    return-void
.end method
