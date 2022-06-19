.class public final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Z

.field private static final j:Landroid/graphics/Paint;


# instance fields
.field private A:Landroid/graphics/Typeface;

.field private B:Lcom/google/android/material/h/a;

.field private C:Lcom/google/android/material/h/a;

.field private D:Ljava/lang/CharSequence;

.field private E:Z

.field private F:Z

.field private G:Landroid/graphics/Bitmap;

.field private H:Landroid/graphics/Paint;

.field private I:F

.field private J:F

.field private K:[I

.field private L:Z

.field private final M:Landroid/text/TextPaint;

.field private N:Landroid/animation/TimeInterpolator;

.field private O:F

.field private P:F

.field private Q:F

.field private R:Landroid/content/res/ColorStateList;

.field private S:F

.field private T:F

.field private U:F

.field private V:Landroid/content/res/ColorStateList;

.field private W:F

.field private X:Landroid/text/StaticLayout;

.field private Y:F

.field private Z:F

.field public a:F

.field private aa:F

.field private ab:Ljava/lang/CharSequence;

.field private ac:I

.field public b:F

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/Typeface;

.field public e:Ljava/lang/CharSequence;

.field public final f:Landroid/text/TextPaint;

.field public g:Landroid/animation/TimeInterpolator;

.field public h:F

.field private final k:Landroid/view/View;

.field private l:Z

.field private final m:Landroid/graphics/Rect;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/RectF;

.field private p:I

.field private q:I

.field private r:F

.field private s:Landroid/content/res/ColorStateList;

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/a;->i:Z

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 90
    iput v0, p0, Lcom/google/android/material/internal/a;->p:I

    .line 91
    iput v0, p0, Lcom/google/android/material/internal/a;->q:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 92
    iput v0, p0, Lcom/google/android/material/internal/a;->b:F

    .line 93
    iput v0, p0, Lcom/google/android/material/internal/a;->r:F

    const/4 v0, 0x1

    .line 148
    iput v0, p0, Lcom/google/android/material/internal/a;->ac:I

    .line 151
    iput-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    .line 153
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 154
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/text/TextPaint;

    .line 156
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    .line 157
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    .line 158
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->o:Landroid/graphics/RectF;

    return-void
.end method

.method private static a(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 969
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 971
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/a/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method private static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 959
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 960
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 961
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 962
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 963
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a(IFZ)Landroid/text/StaticLayout;
    .locals 2

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    float-to-int p2, p2

    .line 851
    invoke-static {v0, v1, p2}, Lcom/google/android/material/internal/h;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/h;

    move-result-object p2

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 5176
    iput-object v0, p2, Lcom/google/android/material/internal/h;->e:Landroid/text/TextUtils$TruncateAt;

    .line 5304
    iput-boolean p3, p2, Lcom/google/android/material/internal/h;->d:Z

    .line 853
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6111
    iput-object p3, p2, Lcom/google/android/material/internal/h;->a:Landroid/text/Layout$Alignment;

    const/4 p3, 0x0

    .line 6125
    iput-boolean p3, p2, Lcom/google/android/material/internal/h;->c:Z

    .line 6162
    iput p1, p2, Lcom/google/android/material/internal/h;->b:I

    .line 857
    invoke-virtual {p2}, Lcom/google/android/material/internal/h;->a()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/h$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 859
    invoke-virtual {p1}, Lcom/google/android/material/internal/h$a;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CollapsingTextHelper"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 862
    :goto_0
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 12

    .line 720
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 722
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 724
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/a;->Z:F

    int-to-float v1, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 725
    iget-object p2, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 728
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/a;->Y:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 729
    iget-object p2, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p2

    .line 730
    iget-object v2, p0, Lcom/google/android/material/internal/a;->ab:Ljava/lang/CharSequence;

    .line 733
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v10, p2

    iget-object v7, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v10

    .line 730
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 738
    iget-object p2, p0, Lcom/google/android/material/internal/a;->ab:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u2026"

    .line 739
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v6, p2

    .line 743
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v7, 0x0

    .line 744
    iget-object p2, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    .line 747
    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    move-object v5, p1

    .line 744
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/text/TextPaint;)V
    .locals 2

    .line 284
    iget v0, p0, Lcom/google/android/material/internal/a;->r:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 285
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/google/android/material/internal/a;->W:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    return-void
.end method

.method private static a(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 940
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 975
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 754
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    sget-object v0, Landroidx/core/d/e;->d:Landroidx/core/d/d;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/d/e;->c:Landroidx/core/d/d;

    .line 758
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroidx/core/d/d;->a(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method private c()F
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->a(Landroid/text/TextPaint;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private c(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->K:[I

    if-eqz v1, :cond_1

    .line 554
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 556
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method private c(F)V
    .locals 6

    .line 495
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(F)V

    .line 496
    iget v0, p0, Lcom/google/android/material/internal/a;->v:F

    iget v1, p0, Lcom/google/android/material/internal/a;->w:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->x:F

    .line 497
    iget v0, p0, Lcom/google/android/material/internal/a;->t:F

    iget v1, p0, Lcom/google/android/material/internal/a;->u:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->y:F

    .line 499
    iget v0, p0, Lcom/google/android/material/internal/a;->b:F

    iget v1, p0, Lcom/google/android/material/internal/a;->r:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 500
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 499
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->g(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 502
    sget-object v2, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    const/4 v3, 0x0

    .line 503
    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    .line 502
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->e(F)V

    .line 504
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->f(F)V

    .line 506
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 510
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->g()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/internal/a;->h()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v1

    .line 509
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 515
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 516
    iget v0, p0, Lcom/google/android/material/internal/a;->W:F

    iget v1, p0, Lcom/google/android/material/internal/a;->h:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    sget-object v3, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    .line 518
    invoke-static {v1, v0, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 517
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_1

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 528
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->S:F

    iget v2, p0, Lcom/google/android/material/internal/a;->O:F

    const/4 v3, 0x0

    .line 529
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/a;->T:F

    iget v4, p0, Lcom/google/android/material/internal/a;->P:F

    .line 530
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/a;->U:F

    iget v5, p0, Lcom/google/android/material/internal/a;->Q:F

    .line 531
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/a;->V:Landroid/content/res/ColorStateList;

    .line 533
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/a;->R:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 532
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result p1

    .line 528
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 535
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    .line 296
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->l:Z

    return-void
.end method

.method private d(F)V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    .line 653
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 654
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/a;->t:F

    iget v2, p0, Lcom/google/android/material/internal/a;->u:F

    iget-object v3, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 655
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    .line 656
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 657
    iget-object v0, p0, Lcom/google/android/material/internal/a;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->g:Landroid/animation/TimeInterpolator;

    .line 658
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Lcom/google/android/material/h/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4064
    iput-boolean v1, v0, Lcom/google/android/material/h/a;->a:Z

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 418
    iput-object p1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e(F)V
    .locals 0

    .line 662
    iput p1, p0, Lcom/google/android/material/internal/a;->Y:F

    .line 663
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private e(Landroid/graphics/Typeface;)Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/h/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5064
    iput-boolean v1, v0, Lcom/google/android/material/h/a;->a:Z

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->d:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 432
    iput-object p1, p0, Lcom/google/android/material/internal/a;->d:Landroid/graphics/Typeface;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .locals 1

    .line 491
    iget v0, p0, Lcom/google/android/material/internal/a;->a:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(F)V

    return-void
.end method

.method private f(F)V
    .locals 0

    .line 667
    iput p1, p0, Lcom/google/android/material/internal/a;->Z:F

    .line 668
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method

.method private g()I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private g(F)V
    .locals 1

    .line 766
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 769
    sget-boolean p1, Lcom/google/android/material/internal/a;->i:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/a;->I:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->F:Z

    if-eqz p1, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->l()V

    .line 776
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    return-void
.end method

.method private h()I
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method private h(F)V
    .locals 8

    .line 781
    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 786
    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 792
    iget v2, p0, Lcom/google/android/material/internal/a;->r:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 793
    iget p1, p0, Lcom/google/android/material/internal/a;->r:F

    .line 794
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F

    .line 795
    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 796
    iput-object v2, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 801
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/a;->b:F

    .line 802
    iget-object v6, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/a;->d:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 803
    iput-object v7, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 806
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 808
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F

    goto :goto_1

    .line 811
    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/a;->b:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/a;->I:F

    .line 814
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/a;->r:F

    iget v7, p0, Lcom/google/android/material/internal/a;->b:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 825
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 830
    iget v2, p0, Lcom/google/android/material/internal/a;->J:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->L:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    .line 831
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/a;->J:F

    .line 832
    iput-boolean v4, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 835
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_c

    .line 836
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->J:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 837
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 839
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->I:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    const/4 v4, 0x1

    :cond_a
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 841
    iget-object p1, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 842
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    iget v5, p0, Lcom/google/android/material/internal/a;->ac:I

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    invoke-direct {p0, v5, v0, p1}, Lcom/google/android/material/internal/a;->a(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    .line 843
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    :cond_c
    return-void
.end method

.method private i()V
    .locals 13

    .line 560
    iget v0, p0, Lcom/google/android/material/internal/a;->J:F

    .line 563
    iget v1, p0, Lcom/google/android/material/internal/a;->r:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 564
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 565
    iget-object v3, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 566
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/a;->ab:Ljava/lang/CharSequence;

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->ab:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 570
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 572
    :goto_0
    iget v4, p0, Lcom/google/android/material/internal/a;->q:I

    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 573
    invoke-static {v4, v5}, Landroidx/core/view/e;->a(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_2

    .line 586
    iget-object v5, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 587
    iget-object v9, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iput v9, p0, Lcom/google/android/material/internal/a;->u:F

    goto :goto_1

    .line 579
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/android/material/internal/a;->u:F

    goto :goto_1

    .line 582
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/internal/a;->u:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    .line 600
    iget-object v1, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->w:F

    goto :goto_2

    .line 596
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/a;->w:F

    goto :goto_2

    .line 593
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/a;->w:F

    .line 604
    :goto_2
    iget v1, p0, Lcom/google/android/material/internal/a;->b:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->h(F)V

    .line 605
    iget-object v1, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 607
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    iget-object v11, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 608
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v11, v4, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 609
    :goto_4
    iget-object v11, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    if-eqz v11, :cond_8

    iget v12, p0, Lcom/google/android/material/internal/a;->ac:I

    if-le v12, v10, :cond_8

    iget-boolean v12, p0, Lcom/google/android/material/internal/a;->E:Z

    if-nez v12, :cond_8

    .line 610
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 612
    :cond_8
    iget-object v11, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_9
    iput v3, p0, Lcom/google/android/material/internal/a;->aa:F

    .line 614
    iget v2, p0, Lcom/google/android/material/internal/a;->p:I

    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 615
    invoke-static {v2, v3}, Landroidx/core/view/e;->a(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_b

    if-eq v3, v6, :cond_a

    div-float/2addr v1, v8

    .line 628
    iget-object v3, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_5

    .line 620
    :cond_a
    iget-object v3, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_5

    .line 623
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->t:F

    :goto_5
    and-int v1, v2, v5

    if-eq v1, v10, :cond_d

    if-eq v1, v9, :cond_c

    .line 641
    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->v:F

    goto :goto_6

    .line 637
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/a;->v:F

    goto :goto_6

    .line 634
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/a;->v:F

    .line 646
    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->m()V

    .line 648
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->g(F)V

    return-void
.end method

.method private j()Z
    .locals 2

    .line 716
    iget v0, p0, Lcom/google/android/material/internal/a;->ac:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->F:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 870
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(F)V

    .line 871
    iget-object v0, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 872
    iget-object v1, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 878
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    .line 879
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 880
    iget-object v1, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 882
    iget-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 884
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->a(Landroid/text/TextPaint;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public final a(F)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/google/android/material/internal/a;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 173
    iput p1, p0, Lcom/google/android/material/internal/a;->b:F

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 300
    iget v0, p0, Lcom/google/android/material/internal/a;->p:I

    if-eq v0, p1, :cond_0

    .line 301
    iput p1, p0, Lcom/google/android/material/internal/a;->p:I

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/material/internal/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 203
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->d()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/google/android/material/internal/a;->N:Landroid/animation/TimeInterpolator;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 672
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 674
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->l:Z

    if-eqz v1, :cond_4

    .line 675
    iget v1, p0, Lcom/google/android/material/internal/a;->x:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    .line 676
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/internal/a;->aa:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    .line 678
    iget-object v2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/material/internal/a;->J:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 679
    iget v2, p0, Lcom/google/android/material/internal/a;->x:F

    .line 680
    iget v4, p0, Lcom/google/android/material/internal/a;->y:F

    .line 681
    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->F:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 693
    :cond_0
    iget v5, p0, Lcom/google/android/material/internal/a;->I:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    .line 694
    invoke-virtual {p1, v5, v5, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v3, :cond_2

    .line 699
    iget-object v1, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 700
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 704
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 705
    invoke-direct {p0, p1, v1, v4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 707
    :cond_3
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 708
    iget-object v1, p0, Lcom/google/android/material/internal/a;->X:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 711
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/graphics/RectF;II)V
    .locals 7

    .line 224
    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->E:Z

    const/4 v1, 0x1

    const/16 v2, 0x11

    const/4 v3, 0x5

    const v4, 0x800005

    const/high16 v5, 0x40000000    # 2.0f

    if-eq p3, v2, :cond_4

    and-int/lit8 v6, p3, 0x7

    if-ne v6, v1, :cond_0

    goto :goto_1

    :cond_0
    and-int v6, p3, v4

    if-eq v6, v4, :cond_2

    and-int/lit8 v6, p3, 0x5

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result v6

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1237
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result v6

    goto :goto_2

    .line 1239
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_3

    :cond_4
    :goto_1
    int-to-float v0, p2

    div-float/2addr v0, v5

    .line 1234
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result v6

    div-float/2addr v6, v5

    :goto_2
    sub-float/2addr v0, v6

    .line 225
    :goto_3
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 226
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    if-eq p3, v2, :cond_9

    and-int/lit8 v0, p3, 0x7

    if-ne v0, v1, :cond_5

    goto :goto_6

    :cond_5
    and-int p2, p3, v4

    if-eq p2, v4, :cond_7

    and-int/lit8 p2, p3, 0x5

    if-ne p2, v3, :cond_6

    goto :goto_4

    .line 1251
    :cond_6
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->E:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 1249
    :cond_7
    :goto_4
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->E:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float p2, p2

    goto :goto_8

    .line 1251
    :cond_8
    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result p3

    goto :goto_7

    :cond_9
    :goto_6
    int-to-float p2, p2

    div-float/2addr p2, v5

    .line 1246
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result p3

    div-float/2addr p3, v5

    :goto_7
    add-float/2addr p2, p3

    .line 227
    :goto_8
    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 228
    iget-object p2, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->e:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 905
    iput-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->m()V

    .line 907
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_1
    return-void
.end method

.method public final a([I)Z
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/google/android/material/internal/a;->K:[I

    .line 465
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->i()V

    .line 893
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->f()V

    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 454
    invoke-static {p1, v0, v1}, Landroidx/core/b/a;->a(FFF)F

    move-result p1

    .line 456
    iget v0, p0, Lcom/google/android/material/internal/a;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 457
    iput p1, p0, Lcom/google/android/material/internal/a;->a:F

    .line 458
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->f()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 311
    iget v0, p0, Lcom/google/android/material/internal/a;->q:I

    if-eq v0, p1, :cond_0

    .line 312
    iput p1, p0, Lcom/google/android/material/internal/a;->q:I

    .line 313
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final b(IIII)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 215
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->d()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;)V
    .locals 0

    .line 397
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->e(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 322
    new-instance v0, Lcom/google/android/material/h/d;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/h/d;-><init>(Landroid/content/Context;I)V

    .line 324
    iget-object p1, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->c:Landroid/content/res/ColorStateList;

    .line 327
    :cond_0
    iget p1, v0, Lcom/google/android/material/h/d;->n:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 328
    iget p1, v0, Lcom/google/android/material/h/d;->n:F

    iput p1, p0, Lcom/google/android/material/internal/a;->r:F

    .line 330
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 331
    iget-object p1, v0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->R:Landroid/content/res/ColorStateList;

    .line 333
    :cond_2
    iget p1, v0, Lcom/google/android/material/h/d;->i:F

    iput p1, p0, Lcom/google/android/material/internal/a;->P:F

    .line 334
    iget p1, v0, Lcom/google/android/material/h/d;->j:F

    iput p1, p0, Lcom/google/android/material/internal/a;->Q:F

    .line 335
    iget p1, v0, Lcom/google/android/material/h/d;->k:F

    iput p1, p0, Lcom/google/android/material/internal/a;->O:F

    .line 336
    iget p1, v0, Lcom/google/android/material/h/d;->m:F

    iput p1, p0, Lcom/google/android/material/internal/a;->W:F

    .line 339
    iget-object p1, p0, Lcom/google/android/material/internal/a;->C:Lcom/google/android/material/h/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 2064
    iput-boolean v1, p1, Lcom/google/android/material/h/a;->a:Z

    .line 342
    :cond_3
    new-instance p1, Lcom/google/android/material/h/a;

    new-instance v1, Lcom/google/android/material/internal/a$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/a$1;-><init>(Lcom/google/android/material/internal/a;)V

    .line 350
    invoke-virtual {v0}, Lcom/google/android/material/h/d;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/h/a;-><init>(Lcom/google/android/material/h/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->C:Lcom/google/android/material/h/a;

    .line 351
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->C:Lcom/google/android/material/h/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;Lcom/google/android/material/h/f;)V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    return-void
.end method

.method public final c(Landroid/graphics/Typeface;)V
    .locals 1

    .line 403
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 404
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->e(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_1
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 357
    new-instance v0, Lcom/google/android/material/h/d;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/h/d;-><init>(Landroid/content/Context;I)V

    .line 358
    iget-object p1, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 359
    iget-object p1, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->s:Landroid/content/res/ColorStateList;

    .line 361
    :cond_0
    iget p1, v0, Lcom/google/android/material/h/d;->n:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 362
    iget p1, v0, Lcom/google/android/material/h/d;->n:F

    iput p1, p0, Lcom/google/android/material/internal/a;->b:F

    .line 364
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, v0, Lcom/google/android/material/h/d;->d:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->V:Landroid/content/res/ColorStateList;

    .line 367
    :cond_2
    iget p1, v0, Lcom/google/android/material/h/d;->i:F

    iput p1, p0, Lcom/google/android/material/internal/a;->T:F

    .line 368
    iget p1, v0, Lcom/google/android/material/h/d;->j:F

    iput p1, p0, Lcom/google/android/material/internal/a;->U:F

    .line 369
    iget p1, v0, Lcom/google/android/material/h/d;->k:F

    iput p1, p0, Lcom/google/android/material/internal/a;->S:F

    .line 370
    iget p1, v0, Lcom/google/android/material/h/d;->m:F

    iput p1, p0, Lcom/google/android/material/internal/a;->h:F

    .line 373
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/h/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 3064
    iput-boolean v1, p1, Lcom/google/android/material/h/a;->a:Z

    .line 376
    :cond_3
    new-instance p1, Lcom/google/android/material/h/a;

    new-instance v1, Lcom/google/android/material/internal/a$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/a$2;-><init>(Lcom/google/android/material/internal/a;)V

    .line 384
    invoke-virtual {v0}, Lcom/google/android/material/h/d;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/h/a;-><init>(Lcom/google/android/material/h/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/h/a;

    .line 385
    iget-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/h/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;Lcom/google/android/material/h/f;)V

    .line 387
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 924
    iget v0, p0, Lcom/google/android/material/internal/a;->ac:I

    if-eq p1, v0, :cond_0

    .line 925
    iput p1, p0, Lcom/google/android/material/internal/a;->ac:I

    .line 926
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->m()V

    .line 927
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->b()V

    :cond_0
    return-void
.end method
