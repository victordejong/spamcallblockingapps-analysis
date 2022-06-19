.class public Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;,
        Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;,
        Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field public static final D:I

.field public static final E:I


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Landroid/graphics/Bitmap;

.field public final d:Landroid/graphics/Bitmap;

.field public final f:Landroid/graphics/Bitmap;

.field public final g:Landroid/graphics/Bitmap;

.field public final h:F

.field public final j:F

.field public final k:F

.field public final l:F

.field public final m:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final n:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final o:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;

.field public final p:D

.field public final q:D

.field public final r:D

.field public s:D

.field public t:D

.field public u:D

.field public v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

.field public w:Z

.field public x:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public y:Landroid/graphics/RectF;

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xff

    const/16 v1, 0xdc

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sput v3, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->D:I

    const/16 v4, 0xca

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    sput v3, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->E:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p4, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f080355

    invoke-static {p4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080356

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080358

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080357

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080359

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->g:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->h:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->j:F

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, v2

    iput p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k:F

    iput v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    iput-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->w:Z

    iput-object p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    const/16 p4, 0xff

    iput p4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m:Ljava/lang/Number;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->n:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    iput-wide p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->r:D

    sub-double/2addr v3, v1

    div-double/2addr p2, v3

    iput-wide p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    invoke-static {p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;->a(Ljava/lang/Number;)Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;

    move-result-object p1

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->o:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;

    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final b(FZLandroid/graphics/Canvas;Z)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f:Landroid/graphics/Bitmap;

    :goto_0
    move-object v0, p2

    :cond_3
    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, p2

    iget p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->j:F

    sub-float/2addr p4, p2

    iget p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, p4, p1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(F)Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;
    .locals 3

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    invoke-virtual {p0, p1, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->e(FD)Z

    move-result v0

    iget-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    invoke-virtual {p0, p1, v1, v2}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->e(FD)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    sget-object p1, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    sget-object p1, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->B:I

    return-void
.end method

.method public final e(FD)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->h:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(D)F
    .locals 5

    iget v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method

.method public final g(D)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->o:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;

    iget-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    iget-wide v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    sub-double/2addr v3, v1

    mul-double p1, p1, v3

    iget-wide v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->r:D

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    add-double/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$b;->b(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getAbsoluteMaxValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->n:Ljava/lang/Number;

    return-object v0
.end method

.method public getAbsoluteMinValue()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m:Ljava/lang/Number;

    return-object v0
.end method

.method public getSelectedMaxValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->g(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMinValue()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->g(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->x:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v2

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;->a(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Object;Ljava/lang/Object;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->z:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->C:Z

    return-void
.end method

.method public k()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->C:Z

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    mul-double v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMaxValue(D)V

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->u:D

    mul-double v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMinValue(D)V

    return-void
.end method

.method public final l(F)D
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    const-wide/16 v4, 0x0

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    return-wide v4

    :cond_0
    sub-float/2addr p1, v1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .locals 2

    iget v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sget-object v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMinValue(D)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l(F)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMaxValue(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/Number;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    sub-double/2addr v0, v2

    iget-wide v4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    sub-double/2addr v4, v2

    div-double/2addr v0, v4

    return-wide v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    iget-wide v4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    invoke-virtual {p0, v2, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    sget v2, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->E:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget v4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    iput v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    sget v2, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->E:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-wide v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    invoke-virtual {p0, v3, v4}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->l:F

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->y:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    invoke-virtual {p0, v2, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v0

    sget-object v2, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->a:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->b(FZLandroid/graphics/Canvas;Z)V

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->f(D)F

    move-result v0

    sget-object v1, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;->b:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    iget-object v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->b(FZLandroid/graphics/Canvas;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->h:F

    float-to-int v0, v0

    iget v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0xe

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-ne v3, v5, :cond_2

    move v1, p2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SUPER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "MIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "SUPER"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    const-string v3, "MIN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    const-string v3, "MAX"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->i(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->z:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_4

    :cond_4
    iget-boolean p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->C:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k()V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->C:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->z:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->B:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->j()V

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a()V

    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->w:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->x:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->C:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k()V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->j()V

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->k()V

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->x:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;

    if-eqz p1, :cond_c

    :goto_3
    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v1

    iget-object v3, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-interface {p1, p0, v0, v1, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;->a(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Object;Ljava/lang/Object;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->A:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->z:F

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->c(F)Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    move-result-object v0

    iput-object v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->j()V

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->m(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->a()V

    :cond_c
    :goto_4
    return v2
.end method

.method public setNormalizedMaxValue(D)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->t:D

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setNormalizedMinValue(D)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->s:D

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->w:Z

    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->x:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;

    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setOnRangeSeekBarChangeListener(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->v:Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;

    invoke-interface {p1, p0, p2, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$c;->a(Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;Ljava/lang/Object;Ljava/lang/Object;Lcom/kedlin/cca/ui/CCARangeSeekbarVertical$d;)V

    :cond_0
    return-void
.end method

.method public setSelectedMaxValue(Ljava/lang/Number;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->n(Ljava/lang/Number;)D

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMaxValue(D)V

    return-void
.end method

.method public setSelectedMinValue(Ljava/lang/Number;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->q:D

    iget-wide v2, p0, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->p:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v2, v0

    if-nez v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMinValue(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->n(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kedlin/cca/ui/CCARangeSeekbarVertical;->setNormalizedMinValue(D)V

    :goto_0
    return-void
.end method
