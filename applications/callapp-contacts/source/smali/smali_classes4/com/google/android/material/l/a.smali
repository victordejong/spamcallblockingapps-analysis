.class public Lcom/google/android/material/l/a;
.super Lcom/google/android/material/k/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/i$a;


# static fields
.field private static final e:I

.field private static final f:I


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field private g:Ljava/lang/CharSequence;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/graphics/Paint$FontMetrics;

.field private final j:Lcom/google/android/material/internal/i;

.field private final k:Landroid/view/View$OnLayoutChangeListener;

.field private final l:Landroid/graphics/Rect;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private final s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Tooltip:I

    sput v0, Lcom/google/android/material/l/a;->e:I

    .line 68
    sget v0, Lcom/google/android/material/a$b;->tooltipStyle:I

    sput v0, Lcom/google/android/material/l/a;->f:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/k/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/l/a;->i:Landroid/graphics/Paint$FontMetrics;

    .line 74
    new-instance p2, Lcom/google/android/material/internal/i;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/i;-><init>(Lcom/google/android/material/internal/i$a;)V

    iput-object p2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 78
    new-instance p3, Lcom/google/android/material/l/a$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/l/a$1;-><init>(Lcom/google/android/material/l/a;)V

    iput-object p3, p0, Lcom/google/android/material/l/a;->k:Landroid/view/View$OnLayoutChangeListener;

    .line 96
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 105
    iput p3, p0, Lcom/google/android/material/l/a;->a:F

    .line 106
    iput p3, p0, Lcom/google/android/material/l/a;->b:F

    const/high16 p4, 0x3f000000    # 0.5f

    .line 107
    iput p4, p0, Lcom/google/android/material/l/a;->s:F

    .line 108
    iput p4, p0, Lcom/google/android/material/l/a;->c:F

    .line 109
    iput p3, p0, Lcom/google/android/material/l/a;->d:F

    .line 142
    iput-object p1, p0, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    .line 5087
    iget-object p3, p2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 6087
    iget-object p1, p2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 144
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private a()F
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->p:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->p:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->p:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/l/a;->p:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/material/l/a;
    .locals 10

    .line 118
    const-class v0, Lcom/google/android/material/l/a;

    new-instance v1, Lcom/google/android/material/l/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/material/l/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1149
    iget-object v4, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    sget-object v6, Lcom/google/android/material/a$l;->Tooltip:[I

    new-array v9, v3, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, p1

    .line 1150
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1153
    iget-object p1, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/google/android/material/a$d;->mtrl_tooltip_arrowSize:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Lcom/google/android/material/l/a;->q:I

    .line 1271
    iget-object p1, v1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object p1, p1, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 1155
    invoke-virtual {p1}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object p1

    invoke-direct {v1}, Lcom/google/android/material/l/a;->c()Lcom/google/android/material/k/f;

    move-result-object v2

    .line 1412
    iput-object v2, p1, Lcom/google/android/material/k/m$a;->k:Lcom/google/android/material/k/f;

    .line 1155
    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    .line 1154
    invoke-virtual {v1, p1}, Lcom/google/android/material/l/a;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 1157
    sget p1, Lcom/google/android/material/a$l;->Tooltip_android_text:I

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/l/a;->a(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object p1, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Tooltip_android_textAppearance:I

    .line 1159
    invoke-static {p1, p0, v2}, Lcom/google/android/material/h/c;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/h/d;

    move-result-object p1

    .line 2253
    iget-object v2, v1, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    iget-object v4, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/h/d;Landroid/content/Context;)V

    .line 1162
    iget-object p1, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$b;->colorOnBackground:I

    .line 1164
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 3064
    invoke-static {p1, v2, v4}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 1165
    iget-object v2, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x1010031

    .line 4064
    invoke-static {v2, v5, v4}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    const/16 v4, 0xe5

    .line 1171
    invoke-static {v2, v4}, Landroidx/core/graphics/a;->b(II)I

    move-result v2

    const/16 v4, 0x99

    .line 1172
    invoke-static {p1, v4}, Landroidx/core/graphics/a;->b(II)I

    move-result p1

    .line 4139
    invoke-static {p1, v2}, Landroidx/core/graphics/a;->a(II)I

    move-result p1

    .line 1173
    sget v2, Lcom/google/android/material/a$l;->Tooltip_backgroundTint:I

    .line 1175
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 1174
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1173
    invoke-virtual {v1, p1}, Lcom/google/android/material/l/a;->g(Landroid/content/res/ColorStateList;)V

    .line 1177
    iget-object p1, v1, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$b;->colorSurface:I

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 5064
    invoke-static {p1, v2, v0}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 1178
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1177
    invoke-virtual {v1, p1}, Lcom/google/android/material/l/a;->h(Landroid/content/res/ColorStateList;)V

    .line 1182
    sget p1, Lcom/google/android/material/a$l;->Tooltip_android_padding:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Lcom/google/android/material/l/a;->m:I

    .line 1183
    sget p1, Lcom/google/android/material/a$l;->Tooltip_android_minWidth:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Lcom/google/android/material/l/a;->n:I

    .line 1184
    sget p1, Lcom/google/android/material/a$l;->Tooltip_android_minHeight:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Lcom/google/android/material/l/a;->o:I

    .line 1185
    sget p1, Lcom/google/android/material/a$l;->Tooltip_android_layout_margin:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v1, Lcom/google/android/material/l/a;->p:I

    .line 1187
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method static synthetic a(Lcom/google/android/material/l/a;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/material/l/a;->c(Landroid/view/View;)V

    return-void
.end method

.method private c()Lcom/google/android/material/k/f;
    .locals 7

    .line 473
    invoke-direct {p0}, Lcom/google/android/material/l/a;->a()F

    move-result v0

    neg-float v0, v0

    .line 475
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/material/l/a;->q:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 476
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 477
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 478
    new-instance v1, Lcom/google/android/material/k/j;

    new-instance v2, Lcom/google/android/material/k/g;

    iget v3, p0, Lcom/google/android/material/l/a;->q:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Lcom/google/android/material/k/g;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/material/k/j;-><init>(Lcom/google/android/material/k/f;F)V

    return-object v1
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 457
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 458
    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/l/a;->r:I

    .line 459
    iget-object v0, p0, Lcom/google/android/material/l/a;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/l/a;->c(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/material/l/a;->k:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/material/l/a;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/google/android/material/l/a;->g:Ljava/lang/CharSequence;

    .line 221
    iget-object p1, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    const/4 v0, 0x1

    .line 6091
    iput-boolean v0, p1, Lcom/google/android/material/internal/i;->b:Z

    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/l/a;->k:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    invoke-direct {p0}, Lcom/google/android/material/l/a;->a()F

    move-result v0

    .line 413
    iget v1, p0, Lcom/google/android/material/l/a;->q:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    iget v3, p0, Lcom/google/android/material/l/a;->q:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    .line 417
    iget v2, p0, Lcom/google/android/material/l/a;->a:F

    iget v3, p0, Lcom/google/android/material/l/a;->b:F

    .line 420
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/l/a;->c:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 417
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 423
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 426
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->draw(Landroid/graphics/Canvas;)V

    .line 7482
    iget-object v0, p0, Lcom/google/android/material/l/a;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 7487
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7508
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 7524
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 8087
    iget-object v2, v2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 7524
    iget-object v3, p0, Lcom/google/android/material/l/a;->i:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 7525
    iget-object v2, p0, Lcom/google/android/material/l/a;->i:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lcom/google/android/material/l/a;->i:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 7490
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 8123
    iget-object v2, v2, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    if-eqz v2, :cond_0

    .line 7491
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 9087
    iget-object v2, v2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 7491
    invoke-virtual {p0}, Lcom/google/android/material/l/a;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 7492
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    iget-object v3, p0, Lcom/google/android/material/l/a;->h:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;)V

    .line 7493
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 10087
    iget-object v2, v2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 7493
    iget v3, p0, Lcom/google/android/material/l/a;->d:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 7496
    :cond_0
    iget-object v5, p0, Lcom/google/android/material/l/a;->g:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 11087
    iget-object v10, v0, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    move-object v4, p1

    .line 7496
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 431
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    .line 7087
    iget-object v0, v0, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 400
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/l/a;->o:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 395
    iget v0, p0, Lcom/google/android/material/l/a;->m:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 6500
    iget-object v1, p0, Lcom/google/android/material/l/a;->g:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 6503
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/l/a;->j:Lcom/google/android/material/internal/i;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/i;->a(Ljava/lang/String;)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    .line 395
    iget v1, p0, Lcom/google/android/material/l/a;->n:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 436
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 11271
    iget-object p1, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object p1, p1, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 441
    invoke-virtual {p1}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/l/a;->c()Lcom/google/android/material/k/f;

    move-result-object v0

    .line 11412
    iput-object v0, p1, Lcom/google/android/material/k/m$a;->k:Lcom/google/android/material/k/f;

    .line 441
    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1}, Lcom/google/android/material/l/a;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 447
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onStateChange([I)Z

    move-result p1

    return p1
.end method
