.class public Lcom/google/android/material/chip/a;
.super Lcom/google/android/material/q/g;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/internal/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private final I:Landroid/content/Context;

.field private final J:Landroid/graphics/Paint;

.field private final K:Landroid/graphics/Paint;

.field private final L:Landroid/graphics/Paint$FontMetrics;

.field private final M:Landroid/graphics/RectF;

.field private final N:Landroid/graphics/PointF;

.field private final O:Landroid/graphics/Path;

.field private final P:Lcom/google/android/material/internal/g;

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Z

.field private X:I

.field private Y:I

.field private Z:Landroid/graphics/ColorFilter;

.field private aa:Landroid/graphics/PorterDuffColorFilter;

.field private ab:Landroid/content/res/ColorStateList;

.field private ac:Landroid/graphics/PorterDuff$Mode;

.field private ad:[I

.field private ae:Z

.field private af:Landroid/content/res/ColorStateList;

.field private ag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/material/chip/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Landroid/text/TextUtils$TruncateAt;

.field private ai:Z

.field private aj:I

.field private ak:Z

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/content/res/ColorStateList;

.field private e:F

.field private f:F

.field private g:Landroid/content/res/ColorStateList;

.field private h:F

.field private i:Landroid/content/res/ColorStateList;

.field private j:Ljava/lang/CharSequence;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/content/res/ColorStateList;

.field private t:F

.field private u:Ljava/lang/CharSequence;

.field private v:Z

.field private w:Z

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Lcom/google/android/material/a/h;

.field private z:Lcom/google/android/material/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/chip/a;->a:[I

    .line 166
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 307
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/q/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    .line 239
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint$FontMetrics;

    .line 240
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    .line 241
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/PointF;

    .line 242
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/Path;

    .line 254
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/chip/a;->Y:I

    .line 258
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/graphics/PorterDuff$Mode;

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ag:Ljava/lang/ref/WeakReference;

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;)V

    .line 310
    iput-object p1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    .line 311
    new-instance v0, Lcom/google/android/material/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g;-><init>(Lcom/google/android/material/internal/g$a;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 313
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    .line 315
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 316
    iput-object v3, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    :cond_0
    sget-object v0, Lcom/google/android/material/chip/a;->a:[I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->setState([I)Z

    .line 322
    sget-object v0, Lcom/google/android/material/chip/a;->a:[I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a([I)Z

    .line 323
    iput-boolean v2, p0, Lcom/google/android/material/chip/a;->ai:Z

    .line 325
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 329
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 276
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/a;->a(Landroid/util/AttributeSet;II)V

    .line 277
    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->Q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 594
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 596
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 773
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 775
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    iget v1, p0, Lcom/google/android/material/chip/a;->B:F

    add-float/2addr v0, v1

    .line 778
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_2

    .line 779
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 780
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 786
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 787
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 789
    :cond_1
    return-void

    .line 782
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 783
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 333
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/a$l;->Chip:[I

    new-array v5, v7, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 334
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 337
    sget v1, Lcom/google/android/material/a$l;->Chip_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->ak:Z

    .line 338
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipSurfaceColor:I

    .line 339
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 338
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)V

    .line 340
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipBackgroundColor:I

    .line 341
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 342
    sget v1, Lcom/google/android/material/a$l;->Chip_chipMinHeight:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(F)V

    .line 343
    sget v1, Lcom/google/android/material/a$l;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    sget v1, Lcom/google/android/material/a$l;->Chip_chipCornerRadius:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(F)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipStrokeColor:I

    .line 347
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 346
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 348
    sget v1, Lcom/google/android/material/a$l;->Chip_chipStrokeWidth:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(F)V

    .line 349
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_rippleColor:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 351
    sget v1, Lcom/google/android/material/a$l;->Chip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_android_textAppearance:I

    .line 353
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/n/d;

    move-result-object v1

    .line 352
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/n/d;)V

    .line 355
    sget v1, Lcom/google/android/material/a$l;->Chip_android_ellipsize:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 357
    packed-switch v1, :pswitch_data_0

    .line 373
    :goto_0
    sget v1, Lcom/google/android/material/a$l;->Chip_chipIconVisible:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 376
    if-eqz p1, :cond_1

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "chipIconEnabled"

    .line 377
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "chipIconVisible"

    .line 378
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 379
    sget v1, Lcom/google/android/material/a$l;->Chip_chipIconEnabled:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipIcon:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 382
    sget v1, Lcom/google/android/material/a$l;->Chip_chipIconTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipIconTint:I

    .line 384
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 383
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 386
    :cond_2
    sget v1, Lcom/google/android/material/a$l;->Chip_chipIconSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(F)V

    .line 388
    sget v1, Lcom/google/android/material/a$l;->Chip_closeIconVisible:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 392
    if-eqz p1, :cond_3

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "closeIconEnabled"

    .line 393
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "closeIconVisible"

    .line 394
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 395
    sget v1, Lcom/google/android/material/a$l;->Chip_closeIconEnabled:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_closeIcon:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_closeIconTint:I

    .line 399
    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 398
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 400
    sget v1, Lcom/google/android/material/a$l;->Chip_closeIconSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(F)V

    .line 402
    sget v1, Lcom/google/android/material/a$l;->Chip_android_checkable:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 403
    sget v1, Lcom/google/android/material/a$l;->Chip_checkedIconVisible:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 407
    if-eqz p1, :cond_4

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "checkedIconEnabled"

    .line 408
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v2, "checkedIconVisible"

    .line 409
    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 410
    sget v1, Lcom/google/android/material/a$l;->Chip_checkedIconEnabled:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 412
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_checkedIcon:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/n/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 414
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_showMotionSpec:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    .line 415
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_hideMotionSpec:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    .line 417
    sget v1, Lcom/google/android/material/a$l;->Chip_chipStartPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->f(F)V

    .line 418
    sget v1, Lcom/google/android/material/a$l;->Chip_iconStartPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->g(F)V

    .line 419
    sget v1, Lcom/google/android/material/a$l;->Chip_iconEndPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->h(F)V

    .line 420
    sget v1, Lcom/google/android/material/a$l;->Chip_textStartPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->i(F)V

    .line 421
    sget v1, Lcom/google/android/material/a$l;->Chip_textEndPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->j(F)V

    .line 422
    sget v1, Lcom/google/android/material/a$l;->Chip_closeIconStartPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->k(F)V

    .line 423
    sget v1, Lcom/google/android/material/a$l;->Chip_closeIconEndPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->l(F)V

    .line 424
    sget v1, Lcom/google/android/material/a$l;->Chip_chipEndPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->m(F)V

    .line 426
    sget v1, Lcom/google/android/material/a$l;->Chip_android_maxWidth:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->B(I)V

    .line 428
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 429
    return-void

    .line 359
    :pswitch_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 362
    :pswitch_1
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 365
    :pswitch_2
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1318
    if-nez p0, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return v0

    .line 1322
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 1323
    if-ne v3, p1, :cond_2

    .line 1324
    const/4 v0, 0x1

    goto :goto_0

    .line 1322
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a([I[I)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 981
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->onStateChange([I)Z

    move-result v2

    .line 984
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/google/android/material/chip/a;->Q:I

    .line 986
    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 988
    :goto_0
    iget v4, p0, Lcom/google/android/material/chip/a;->Q:I

    if-eq v4, v0, :cond_0

    .line 989
    iput v0, p0, Lcom/google/android/material/chip/a;->Q:I

    move v2, v3

    .line 993
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/google/android/material/chip/a;->R:I

    .line 995
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 997
    :goto_1
    iget v5, p0, Lcom/google/android/material/chip/a;->R:I

    if-eq v5, v4, :cond_1

    .line 998
    iput v4, p0, Lcom/google/android/material/chip/a;->R:I

    move v2, v3

    .line 1003
    :cond_1
    invoke-static {v0, v4}, Lcom/google/android/material/g/a;->a(II)I

    move-result v5

    .line 1004
    iget v0, p0, Lcom/google/android/material/chip/a;->S:I

    if-eq v0, v5, :cond_e

    move v0, v3

    .line 1006
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->M()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v3

    :goto_3
    or-int/2addr v0, v4

    .line 1007
    if-eqz v0, :cond_2

    .line 1008
    iput v5, p0, Lcom/google/android/material/chip/a;->S:I

    .line 1009
    iget v0, p0, Lcom/google/android/material/chip/a;->S:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    move v2, v3

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/google/android/material/chip/a;->T:I

    .line 1015
    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1017
    :goto_4
    iget v4, p0, Lcom/google/android/material/chip/a;->T:I

    if-eq v4, v0, :cond_3

    .line 1018
    iput v0, p0, Lcom/google/android/material/chip/a;->T:I

    move v2, v3

    .line 1022
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    .line 1023
    invoke-static {p1}, Lcom/google/android/material/o/b;->a([I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/google/android/material/chip/a;->U:I

    .line 1024
    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1026
    :goto_5
    iget v4, p0, Lcom/google/android/material/chip/a;->U:I

    if-eq v4, v0, :cond_4

    .line 1027
    iput v0, p0, Lcom/google/android/material/chip/a;->U:I

    .line 1028
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ae:Z

    if-eqz v0, :cond_4

    move v2, v3

    .line 1033
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 1034
    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 1035
    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 1037
    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/google/android/material/chip/a;->V:I

    .line 1039
    invoke-virtual {v0, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1041
    :goto_6
    iget v4, p0, Lcom/google/android/material/chip/a;->V:I

    if-eq v4, v0, :cond_5

    .line 1042
    iput v0, p0, Lcom/google/android/material/chip/a;->V:I

    move v2, v3

    .line 1046
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    const v4, 0x10100a0

    invoke-static {v0, v4}, Lcom/google/android/material/chip/a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eqz v0, :cond_13

    move v0, v3

    .line 1047
    :goto_7
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->W:Z

    if-eq v4, v0, :cond_17

    iget-object v4, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_17

    .line 1048
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v2

    .line 1049
    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->W:Z

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1053
    cmpl-float v0, v2, v0

    if-eqz v0, :cond_16

    move v0, v3

    move v2, v3

    .line 1058
    :goto_8
    iget-object v4, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/google/android/material/chip/a;->X:I

    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1059
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->X:I

    if-eq v5, v4, :cond_15

    .line 1060
    iput v4, p0, Lcom/google/android/material/chip/a;->X:I

    .line 1061
    iget-object v2, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/android/material/chip/a;->ac:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v2, v4}, Lcom/google/android/material/i/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/PorterDuffColorFilter;

    .line 1065
    :goto_a
    iget-object v2, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1066
    iget-object v2, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v3, v2

    .line 1068
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1069
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v3, v2

    .line 1071
    :cond_7
    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1076
    array-length v2, p1

    array-length v4, p2

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 1077
    array-length v4, p1

    invoke-static {p1, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1078
    array-length v4, p1

    array-length v5, p2

    invoke-static {p2, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v3, v1

    .line 1083
    :cond_8
    sget-boolean v1, Lcom/google/android/material/o/b;->a:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1084
    iget-object v1, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v3, v1

    .line 1087
    :cond_9
    if-eqz v3, :cond_a

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1090
    :cond_a
    if-eqz v0, :cond_b

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1093
    :cond_b
    return v3

    :cond_c
    move v0, v1

    .line 986
    goto/16 :goto_0

    :cond_d
    move v4, v1

    .line 995
    goto/16 :goto_1

    :cond_e
    move v0, v1

    .line 1004
    goto/16 :goto_2

    :cond_f
    move v4, v1

    .line 1006
    goto/16 :goto_3

    :cond_10
    move v0, v1

    .line 1015
    goto/16 :goto_4

    :cond_11
    move v0, v1

    .line 1024
    goto/16 :goto_5

    :cond_12
    move v0, v1

    .line 1039
    goto/16 :goto_6

    :cond_13
    move v0, v1

    .line 1046
    goto/16 :goto_7

    :cond_14
    move v4, v1

    .line 1058
    goto/16 :goto_9

    :cond_15
    move v3, v2

    goto :goto_a

    :cond_16
    move v0, v1

    move v2, v3

    goto/16 :goto_8

    :cond_17
    move v0, v1

    goto/16 :goto_8
.end method

.method private ad()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ae()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private af()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ag()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ah()F
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 828
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private ai()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Z:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->Z:Landroid/graphics/ColorFilter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method private aj()V
    .locals 1

    .prologue
    .line 1305
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ae:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 1306
    invoke-static {v0}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/content/res/ColorStateList;

    .line 1307
    return-void

    .line 1306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ak()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1803
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 1805
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->m()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->b:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    .line 1810
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->R:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 602
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 603
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 604
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 606
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 836
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 838
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 839
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->D:F

    add-float/2addr v0, v1

    .line 840
    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v1, v2

    .line 842
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    .line 843
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 844
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 852
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 853
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 855
    :cond_0
    return-void

    .line 846
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 847
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private static b(Lcom/google/android/material/n/d;)Z
    .locals 1

    .prologue
    .line 1105
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/n/d;->b:Landroid/content/res/ColorStateList;

    .line 1107
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1105
    :goto_0
    return v0

    .line 1107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 613
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-nez v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->T:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 616
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ai()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 626
    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    iget v1, p0, Lcom/google/android/material/chip/a;->h:F

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 627
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 629
    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 862
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 864
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    .line 867
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 868
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 869
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 875
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 876
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 878
    :cond_0
    return-void

    .line 871
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 872
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->U:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 633
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 634
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 635
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->O()Landroid/graphics/RectF;

    move-result-object v2

    invoke-super {p0, p1, v0, v1, v2}, Lcom/google/android/material/q/g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 881
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 883
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    .line 891
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 892
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1101
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 644
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 647
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 649
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 651
    iget-object v2, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 652
    iget-object v2, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 654
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 656
    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 900
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 902
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    .line 910
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 911
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 912
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 918
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 919
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 921
    :cond_0
    return-void

    .line 914
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 915
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method

.method private e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1265
    if-eqz p1, :cond_0

    .line 1266
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1268
    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 659
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 661
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 662
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 664
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 666
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 667
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 669
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 671
    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 1272
    if-nez p1, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1276
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1277
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1278
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1280
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    .line 1281
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1282
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1287
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1288
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1290
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->o:Z

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 681
    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v3

    iput-object v3, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 683
    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/g;->a(Landroid/content/Context;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 687
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 688
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->a(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    .line 689
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    move v8, v0

    .line 691
    :goto_0
    if-eqz v8, :cond_4

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move v7, v0

    .line 696
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    .line 697
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 699
    invoke-virtual {v1}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->ah:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 702
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->N:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->a()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, p1

    .line 701
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 703
    if-eqz v8, :cond_2

    .line 704
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 707
    :cond_2
    return-void

    :cond_3
    move v8, v2

    .line 689
    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_1
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 710
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 712
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 713
    iget-object v1, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 715
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 717
    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 719
    sget-boolean v2, Lcom/google/android/material/o/b;->a:Z

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 721
    iget-object v2, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 722
    iget-object v2, p0, Lcom/google/android/material/chip/a;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 727
    :goto_0
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 729
    :cond_0
    return-void

    .line 724
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static h(Landroid/content/res/ColorStateList;)Z
    .locals 1

    .prologue
    .line 1097
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1311
    iput-object p1, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1314
    :cond_0
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const/16 v6, 0x7f

    .line 732
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {v1, v6}, Landroidx/core/graphics/a;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 739
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 741
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 746
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    .line 747
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    move-object v0, p1

    .line 746
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 751
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 753
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v6}, Landroidx/core/graphics/a;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 758
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 762
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v6}, Landroidx/core/graphics/a;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 766
    :cond_4
    return-void
.end method


# virtual methods
.method public A()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Lcom/google/android/material/a/h;

    return-object v0
.end method

.method public A(I)V
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->m(F)V

    .line 2312
    return-void
.end method

.method public B()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/android/material/chip/a;->z:Lcom/google/android/material/a/h;

    return-object v0
.end method

.method public B(I)V
    .locals 0

    .prologue
    .line 2344
    iput p1, p0, Lcom/google/android/material/chip/a;->aj:I

    .line 2345
    return-void
.end method

.method public C()F
    .locals 1

    .prologue
    .line 2049
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    return v0
.end method

.method public D()F
    .locals 1

    .prologue
    .line 2083
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    return v0
.end method

.method public E()F
    .locals 1

    .prologue
    .line 2122
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    return v0
.end method

.method public F()F
    .locals 1

    .prologue
    .line 2161
    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    return v0
.end method

.method public G()F
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Lcom/google/android/material/chip/a;->E:F

    return v0
.end method

.method public H()F
    .locals 1

    .prologue
    .line 2229
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    return v0
.end method

.method public I()F
    .locals 1

    .prologue
    .line 2265
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    return v0
.end method

.method public J()F
    .locals 1

    .prologue
    .line 2301
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    return v0
.end method

.method K()Z
    .locals 1

    .prologue
    .line 2348
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ai:Z

    return v0
.end method

.method a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 794
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 795
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 797
    iget-object v1, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 798
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->D:F

    add-float/2addr v0, v1

    .line 800
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 801
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 802
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 808
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ah()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 811
    :cond_0
    return-object v0

    .line 804
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 805
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1401
    iput p1, p0, Lcom/google/android/material/chip/a;->e:F

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1403
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1405
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1358
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1368
    iput-object p1, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1371
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 472
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1652
    if-eq v1, p1, :cond_1

    .line 1653
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v2

    .line 1654
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 1655
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1657
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1662
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1663
    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1

    .line 1664
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1667
    :cond_1
    return-void

    .line 1654
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ah:Landroid/text/TextUtils$TruncateAt;

    .line 1593
    return-void
.end method

.method public a(Lcom/google/android/material/a/h;)V
    .locals 0

    .prologue
    .line 2008
    iput-object p1, p0, Lcom/google/android/material/chip/a;->y:Lcom/google/android/material/a/h;

    .line 2009
    return-void
.end method

.method public a(Lcom/google/android/material/chip/a$a;)V
    .locals 1

    .prologue
    .line 447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ag:Ljava/lang/ref/WeakReference;

    .line 448
    return-void
.end method

.method public a(Lcom/google/android/material/n/d;)V
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/n/d;Landroid/content/Context;)V

    .line 1585
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1563
    if-nez p1, :cond_0

    .line 1564
    const-string/jumbo p1, ""

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1567
    iput-object p1, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    .line 1568
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->a(Z)V

    .line 1569
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1570
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1572
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ae:Z

    if-eq v0, p1, :cond_0

    .line 434
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ae:Z

    .line 435
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()V

    .line 436
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 438
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ae:Z

    return v0
.end method

.method public a([I)Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ad:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ad:[I

    .line 951
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result v0

    .line 955
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/a$a;

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0}, Lcom/google/android/material/chip/a$a;->a()V

    .line 456
    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1437
    iput p1, p0, Lcom/google/android/material/chip/a;->f:F

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->L()Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k;->a(F)Lcom/google/android/material/q/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 1441
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(F)V

    .line 1391
    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1472
    iput-object p1, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    .line 1473
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Landroid/content/res/ColorStateList;)V

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1478
    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1781
    if-eq v1, p1, :cond_2

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v2

    .line 1783
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    .line 1784
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_0

    .line 1785
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ak()V

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v0

    .line 1789
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1790
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1794
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1795
    cmpl-float v0, v2, v0

    if-eqz v0, :cond_2

    .line 1796
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1799
    :cond_2
    return-void

    .line 1783
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/google/android/material/a/h;)V
    .locals 0

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/google/android/material/chip/a;->z:Lcom/google/android/material/a/h;

    .line 2040
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1854
    invoke-static {}, Landroidx/core/f/a;->a()Landroidx/core/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/f/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    .line 1856
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1858
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 1610
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->k:Z

    if-eq v0, p1, :cond_0

    .line 1611
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    .line 1612
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->k:Z

    .line 1613
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v1

    .line 1615
    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1616
    :goto_0
    if-eqz v0, :cond_0

    .line 1617
    if-eqz v1, :cond_2

    .line 1618
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1623
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1624
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1627
    :cond_0
    return-void

    .line 1615
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1620
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method c()F
    .locals 2

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    iget v1, p0, Lcom/google/android/material/chip/a;->n:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->C:F

    add-float/2addr v0, v1

    .line 520
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 1507
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1508
    iput p1, p0, Lcom/google/android/material/chip/a;->h:F

    .line 1510
    iget-object v0, p0, Lcom/google/android/material/chip/a;->J:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1511
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    .line 1512
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->n(F)V

    .line 1514
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1516
    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->b(F)V

    .line 1426
    return-void
.end method

.method public c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1547
    iput-object p1, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 1548
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aj()V

    .line 1549
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1551
    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    .line 1965
    if-eq v0, p1, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1967
    iput-object p1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    .line 1968
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    .line 1970
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1971
    iget-object v2, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1974
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1978
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 1739
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eq v0, p1, :cond_0

    .line 1740
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    .line 1741
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->p:Z

    .line 1742
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v1

    .line 1744
    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1745
    :goto_0
    if-eqz v0, :cond_0

    .line 1746
    if-eqz v1, :cond_2

    .line 1747
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1752
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1753
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1756
    :cond_0
    return-void

    .line 1744
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method d()F
    .locals 2

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    iget v1, p0, Lcom/google/android/material/chip/a;->t:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->G:F

    add-float/2addr v0, v1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(F)V
    .locals 2

    .prologue
    .line 1712
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1714
    iput p1, p0, Lcom/google/android/material/chip/a;->n:F

    .line 1715
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    .line 1717
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1718
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1722
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 1462
    return-void
.end method

.method public d(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->o:Z

    .line 1693
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1694
    iput-object p1, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    .line 1695
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1701
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 1874
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    if-eq v0, p1, :cond_1

    .line 1875
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->v:Z

    .line 1877
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1878
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->W:Z

    if-eqz v1, :cond_0

    .line 1879
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->W:Z

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    .line 1883
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1884
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1885
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1888
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/16 v7, 0xff

    .line 540
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 541
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const/4 v0, 0x0

    .line 546
    iget v1, p0, Lcom/google/android/material/chip/a;->Y:I

    if-ge v1, v7, :cond_2

    .line 547
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    move-object v0, p1

    .line 548
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/c/a;->a(Landroid/graphics/Canvas;FFFFI)I

    move-result v0

    .line 553
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 556
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 558
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v1, :cond_3

    .line 559
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->draw(Landroid/graphics/Canvas;)V

    .line 562
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 565
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 568
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 571
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 574
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->ai:Z

    if-eqz v1, :cond_4

    .line 575
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 579
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 582
    invoke-direct {p0, p1, v6}, Lcom/google/android/material/chip/a;->i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 584
    iget v1, p0, Lcom/google/android/material/chip/a;->Y:I

    if-ge v1, v7, :cond_0

    .line 585
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 967
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 968
    return-void
.end method

.method public e(F)V
    .locals 1

    .prologue
    .line 1842
    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1843
    iput p1, p0, Lcom/google/android/material/chip/a;->t:F

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1845
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1849
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->c(F)V

    .line 1498
    return-void
.end method

.method public e(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1823
    iput-object p1, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    .line 1825
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1831
    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 1905
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->w:Z

    if-eq v0, p1, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v0

    .line 1907
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->w:Z

    .line 1908
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v1

    .line 1910
    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1911
    :goto_0
    if-eqz v0, :cond_0

    .line 1912
    if-eqz v1, :cond_2

    .line 1913
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1918
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1919
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 1922
    :cond_0
    return-void

    .line 1910
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1915
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public f(F)V
    .locals 1

    .prologue
    .line 2069
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2070
    iput p1, p0, Lcom/google/android/material/chip/a;->A:F

    .line 2071
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2072
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2074
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1537
    return-void
.end method

.method f(Z)V
    .locals 0

    .prologue
    .line 2358
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ai:Z

    .line 2359
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public g(F)V
    .locals 2

    .prologue
    .line 2103
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2105
    iput p1, p0, Lcom/google/android/material/chip/a;->B:F

    .line 2106
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    .line 2108
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2109
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2110
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2113
    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    .prologue
    .line 1580
    new-instance v0, Lcom/google/android/material/n/d;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/n/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/n/d;)V

    .line 1581
    return-void
.end method

.method public g()[I
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ad:[I

    return-object v0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/google/android/material/chip/a;->Y:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Z:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 477
    iget v0, p0, Lcom/google/android/material/chip/a;->A:F

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->D:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/g;->a(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->E:F

    add-float/2addr v0, v1

    .line 484
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    .line 478
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 486
    iget v1, p0, Lcom/google/android/material/chip/a;->aj:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1220
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1226
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    .line 1227
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->getOutline(Landroid/graphics/Outline;)V

    .line 1238
    :goto_0
    return-void

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1231
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1232
    iget v1, p0, Lcom/google/android/material/chip/a;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 1237
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    goto :goto_0

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/chip/a;->f:F

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_1
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h(F)V
    .locals 2

    .prologue
    .line 2142
    iget v0, p0, Lcom/google/android/material/chip/a;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2144
    iput p1, p0, Lcom/google/android/material/chip/a;->C:F

    .line 2145
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    .line 2147
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2148
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2152
    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 1607
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 1380
    iget v0, p0, Lcom/google/android/material/chip/a;->e:F

    return v0
.end method

.method public i(F)V
    .locals 1

    .prologue
    .line 2181
    iget v0, p0, Lcom/google/android/material/chip/a;->D:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2182
    iput p1, p0, Lcom/google/android/material/chip/a;->D:F

    .line 2183
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2184
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2186
    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1648
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_0

    .line 1244
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->d:Landroid/content/res/ColorStateList;

    .line 928
    invoke-static {v0}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    .line 929
    invoke-static {v0}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ae:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/content/res/ColorStateList;

    .line 930
    invoke-static {v0}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    .line 931
    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/n/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    .line 933
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    .line 934
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    .line 935
    invoke-static {v0}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 927
    :goto_0
    return v0

    .line 935
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Y()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->f:F

    goto :goto_0
.end method

.method public j(F)V
    .locals 1

    .prologue
    .line 2215
    iget v0, p0, Lcom/google/android/material/chip/a;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2216
    iput p1, p0, Lcom/google/android/material/chip/a;->E:F

    .line 2217
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2218
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2220
    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 1683
    return-void
.end method

.method public k()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public k(F)V
    .locals 1

    .prologue
    .line 2249
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2250
    iput p1, p0, Lcom/google/android/material/chip/a;->F:F

    .line 2251
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2252
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2256
    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->d(F)V

    .line 1709
    return-void
.end method

.method public l()F
    .locals 1

    .prologue
    .line 1487
    iget v0, p0, Lcom/google/android/material/chip/a;->h:F

    return v0
.end method

.method public l(F)V
    .locals 1

    .prologue
    .line 2285
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2286
    iput p1, p0, Lcom/google/android/material/chip/a;->G:F

    .line 2287
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2288
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2289
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2292
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1777
    return-void
.end method

.method public m()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public m(F)V
    .locals 1

    .prologue
    .line 2321
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2322
    iput p1, p0, Lcom/google/android/material/chip/a;->H:F

    .line 2323
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2324
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 2326
    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 1819
    return-void
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/material/chip/a;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public n(I)V
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->e(F)V

    .line 1839
    return-void
.end method

.method public o()Lcom/google/android/material/n/d;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->b()Lcom/google/android/material/n/d;

    move-result-object v0

    return-object v0
.end method

.method public o(I)V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 1871
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .prologue
    .line 1112
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1114
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1120
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1124
    :cond_2
    if-eqz v0, :cond_3

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1127
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .prologue
    .line 1132
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->onLevelChange(I)Z

    move-result v0

    .line 1134
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1137
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1140
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1141
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1144
    :cond_2
    if-eqz v0, :cond_3

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1147
    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    .line 973
    invoke-super {p0, p1}, Lcom/google/android/material/q/g;->onStateChange([I)Z

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result v0

    return v0
.end method

.method public p()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public p(I)V
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 1902
    return-void
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(I)V
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1955
    return-void
.end method

.method public r()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public r(I)V
    .locals 1

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    .line 1999
    return-void
.end method

.method public s()F
    .locals 1

    .prologue
    .line 1704
    iget v0, p0, Lcom/google/android/material/chip/a;->n:F

    return v0
.end method

.method public s(I)V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    .line 2030
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1251
    if-eqz v0, :cond_0

    .line 1252
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1254
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/google/android/material/chip/a;->Y:I

    if-eq v0, p1, :cond_0

    .line 1177
    iput p1, p0, Lcom/google/android/material/chip/a;->Y:I

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1180
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Z:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1190
    iput-object p1, p0, Lcom/google/android/material/chip/a;->Z:Landroid/graphics/ColorFilter;

    .line 1191
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1193
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1204
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 1207
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ac:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1212
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ac:Landroid/graphics/PorterDuff$Mode;

    .line 1213
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ab:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/i/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->aa:Landroid/graphics/PorterDuffColorFilter;

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1216
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 1152
    invoke-super {p0, p1, p2}, Lcom/google/android/material/q/g;->setVisible(ZZ)Z

    move-result v0

    .line 1154
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1157
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ae()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1160
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->af()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1161
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1164
    :cond_2
    if-eqz v0, :cond_3

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1167
    :cond_3
    return v0
.end method

.method public t(I)V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->f(F)V

    .line 2060
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    return v0
.end method

.method public u()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u(I)V
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->g(F)V

    .line 2094
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1258
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_0

    .line 1260
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1262
    :cond_0
    return-void
.end method

.method public v()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/google/android/material/chip/a;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public v(I)V
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->h(F)V

    .line 2133
    return-void
.end method

.method public w()F
    .locals 1

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/android/material/chip/a;->t:F

    return v0
.end method

.method public w(I)V
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->i(F)V

    .line 2172
    return-void
.end method

.method public x()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public x(I)V
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->j(F)V

    .line 2206
    return-void
.end method

.method public y(I)V
    .locals 1

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->k(F)V

    .line 2240
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->v:Z

    return v0
.end method

.method public z()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public z(I)V
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->l(F)V

    .line 2276
    return-void
.end method
