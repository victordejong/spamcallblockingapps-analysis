.class public final Lcom/google/android/material/chip/a;
.super Lcom/google/android/material/k/h;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/b;
.implements Lcom/google/android/material/internal/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final v:[I

.field private static final w:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:Landroid/content/res/ColorStateList;

.field private B:F

.field private C:Z

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/content/res/ColorStateList;

.field private F:F

.field private G:Z

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/content/res/ColorStateList;

.field private J:F

.field private K:Z

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/content/res/ColorStateList;

.field private N:F

.field private O:F

.field private P:F

.field private Q:F

.field private final R:Landroid/graphics/Paint;

.field private final S:Landroid/graphics/Paint;

.field private final T:Landroid/graphics/Paint$FontMetrics;

.field private final U:Landroid/graphics/RectF;

.field private final V:Landroid/graphics/PointF;

.field private final W:Landroid/graphics/Path;

.field private X:I

.field private Y:I

.field private Z:I

.field a:F

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:I

.field private af:I

.field private ag:Landroid/graphics/ColorFilter;

.field private ah:Landroid/graphics/PorterDuffColorFilter;

.field private ai:Landroid/content/res/ColorStateList;

.field private aj:Landroid/graphics/PorterDuff$Mode;

.field private ak:[I

.field private al:Landroid/content/res/ColorStateList;

.field private am:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private an:Z

.field b:Landroid/content/res/ColorStateList;

.field c:Ljava/lang/CharSequence;

.field d:Z

.field e:Landroid/graphics/drawable/Drawable;

.field f:Ljava/lang/CharSequence;

.field g:Z

.field h:Lcom/google/android/material/a/h;

.field i:Lcom/google/android/material/a/h;

.field j:F

.field k:F

.field l:F

.field m:F

.field final n:Landroid/content/Context;

.field final o:Lcom/google/android/material/internal/i;

.field p:Z

.field q:Landroid/text/TextUtils$TruncateAt;

.field r:Z

.field s:I

.field private x:Landroid/content/res/ColorStateList;

.field private y:Landroid/content/res/ColorStateList;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    .line 165
    sput-object v0, Lcom/google/android/material/chip/a;->v:[I

    .line 169
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 311
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/k/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 175
    iput p2, p0, Lcom/google/android/material/chip/a;->z:F

    .line 241
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    .line 243
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/Paint$FontMetrics;

    .line 244
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    .line 245
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->V:Landroid/graphics/PointF;

    .line 246
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->W:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 258
    iput p2, p0, Lcom/google/android/material/chip/a;->af:I

    .line 262
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/a;->aj:Landroid/graphics/PorterDuff$Mode;

    .line 266
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;)V

    .line 314
    iput-object p1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    .line 315
    new-instance p2, Lcom/google/android/material/internal/i;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/i;-><init>(Lcom/google/android/material/internal/i$a;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    const-string v0, ""

    .line 317
    iput-object v0, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    .line 8087
    iget-object p2, p2, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 320
    iput-object p4, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    .line 325
    sget-object p1, Lcom/google/android/material/chip/a;->v:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setState([I)Z

    .line 326
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a([I)Z

    .line 327
    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->r:Z

    .line 329
    sget-boolean p1, Lcom/google/android/material/i/b;->a:Z

    if-eqz p1, :cond_0

    .line 331
    sget-object p1, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private A()V
    .locals 4

    .line 1877
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 22579
    iget-object v1, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    .line 1879
    invoke-static {v1}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    .locals 7

    .line 279
    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3337
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget-object v3, Lcom/google/android/material/a$l;->Chip:[I

    const/4 p0, 0x0

    new-array v6, p0, [I

    move-object v2, p1

    move v4, p2

    move v5, p3

    .line 3338
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3341
    sget p3, Lcom/google/android/material/a$l;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, v0, Lcom/google/android/material/chip/a;->an:Z

    .line 3342
    iget-object p3, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$l;->Chip_chipSurfaceColor:I

    .line 3343
    invoke-static {p3, p2, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 4354
    iget-object v1, v0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    if-eq v1, p3, :cond_0

    .line 4355
    iput-object p3, v0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    .line 4356
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    .line 3344
    :cond_0
    iget-object p3, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$l;->Chip_chipBackgroundColor:I

    .line 3345
    invoke-static {p3, p2, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3344
    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 3346
    sget p3, Lcom/google/android/material/a$l;->Chip_chipMinHeight:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->a(F)V

    .line 3347
    sget p3, Lcom/google/android/material/a$l;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3348
    sget p3, Lcom/google/android/material/a$l;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->b(F)V

    .line 3350
    :cond_1
    iget-object p3, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_chipStrokeColor:I

    .line 3351
    invoke-static {p3, p2, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 3350
    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 3352
    sget p3, Lcom/google/android/material/a$l;->Chip_chipStrokeWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->c(F)V

    .line 3353
    iget-object p3, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_rippleColor:I

    invoke-static {p3, p2, v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 3355
    sget p3, Lcom/google/android/material/a$l;->Chip_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    .line 3356
    iget-object p3, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$l;->Chip_android_textAppearance:I

    .line 3357
    invoke-static {p3, p2, v2}, Lcom/google/android/material/h/c;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/h/d;

    move-result-object p3

    .line 3358
    sget v2, Lcom/google/android/material/a$l;->Chip_android_textSize:I

    iget v3, p3, Lcom/google/android/material/h/d;->n:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 3359
    iput v2, p3, Lcom/google/android/material/h/d;->n:F

    .line 3360
    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/h/d;)V

    .line 3362
    sget p3, Lcom/google/android/material/a$l;->Chip_android_ellipsize:I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    goto :goto_0

    .line 3372
    :cond_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 6645
    iput-object p3, v0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 3369
    :cond_3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 5645
    iput-object p3, v0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 3366
    :cond_4
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 4645
    iput-object p3, v0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    .line 3380
    :goto_0
    sget p3, Lcom/google/android/material/a$l;->Chip_chipIconVisible:I

    invoke-virtual {p2, p3, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/chip/a;->b(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_5

    const-string v2, "chipIconEnabled"

    .line 3384
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "chipIconVisible"

    .line 3385
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3386
    sget v2, Lcom/google/android/material/a$l;->Chip_chipIconEnabled:I

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 3388
    :cond_5
    iget-object v2, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v3, Lcom/google/android/material/a$l;->Chip_chipIcon:I

    invoke-static {v2, p2, v3}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 3389
    sget v2, Lcom/google/android/material/a$l;->Chip_chipIconTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3390
    iget-object v2, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v3, Lcom/google/android/material/a$l;->Chip_chipIconTint:I

    .line 3391
    invoke-static {v2, p2, v3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 3390
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 3393
    :cond_6
    sget v2, Lcom/google/android/material/a$l;->Chip_chipIconSize:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->d(F)V

    .line 3395
    sget v2, Lcom/google/android/material/a$l;->Chip_closeIconVisible:I

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->c(Z)V

    if-eqz p1, :cond_7

    const-string v2, "closeIconEnabled"

    .line 3400
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v2, "closeIconVisible"

    .line 3401
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 3402
    sget v2, Lcom/google/android/material/a$l;->Chip_closeIconEnabled:I

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 3404
    :cond_7
    iget-object v2, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v3, Lcom/google/android/material/a$l;->Chip_closeIcon:I

    invoke-static {v2, p2, v3}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 3405
    iget-object v2, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget v3, Lcom/google/android/material/a$l;->Chip_closeIconTint:I

    .line 3406
    invoke-static {v2, p2, v3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 3405
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 3407
    sget v2, Lcom/google/android/material/a$l;->Chip_closeIconSize:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->e(F)V

    .line 3409
    sget v2, Lcom/google/android/material/a$l;->Chip_android_checkable:I

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 3410
    sget v2, Lcom/google/android/material/a$l;->Chip_checkedIconVisible:I

    invoke-virtual {p2, v2, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->e(Z)V

    if-eqz p1, :cond_8

    const-string v2, "checkedIconEnabled"

    .line 3415
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "checkedIconVisible"

    .line 3416
    invoke-interface {p1, p3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 3417
    sget p1, Lcom/google/android/material/a$l;->Chip_checkedIconEnabled:I

    invoke-virtual {p2, p1, p0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 3419
    :cond_8
    iget-object p0, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget p1, Lcom/google/android/material/a$l;->Chip_checkedIcon:I

    invoke-static {p0, p2, p1}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)V

    .line 3420
    sget p0, Lcom/google/android/material/a$l;->Chip_checkedIconTint:I

    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3421
    iget-object p0, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget p1, Lcom/google/android/material/a$l;->Chip_checkedIconTint:I

    .line 3422
    invoke-static {p0, p2, p1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 3421
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    .line 3425
    :cond_9
    iget-object p0, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget p1, Lcom/google/android/material/a$l;->Chip_showMotionSpec:I

    invoke-static {p0, p2, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object p0

    .line 7117
    iput-object p0, v0, Lcom/google/android/material/chip/a;->h:Lcom/google/android/material/a/h;

    .line 3426
    iget-object p0, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    sget p1, Lcom/google/android/material/a$l;->Chip_hideMotionSpec:I

    invoke-static {p0, p2, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object p0

    .line 7148
    iput-object p0, v0, Lcom/google/android/material/chip/a;->i:Lcom/google/android/material/a/h;

    .line 3428
    sget p0, Lcom/google/android/material/a$l;->Chip_chipStartPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->f(F)V

    .line 3429
    sget p0, Lcom/google/android/material/a$l;->Chip_iconStartPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->g(F)V

    .line 3430
    sget p0, Lcom/google/android/material/a$l;->Chip_iconEndPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->h(F)V

    .line 3431
    sget p0, Lcom/google/android/material/a$l;->Chip_textStartPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->i(F)V

    .line 3432
    sget p0, Lcom/google/android/material/a$l;->Chip_textEndPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->j(F)V

    .line 3433
    sget p0, Lcom/google/android/material/a$l;->Chip_closeIconStartPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->k(F)V

    .line 3434
    sget p0, Lcom/google/android/material/a$l;->Chip_closeIconEndPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->l(F)V

    .line 3435
    sget p0, Lcom/google/android/material/a$l;->Chip_chipEndPadding:I

    invoke-virtual {p2, p0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->m(F)V

    .line 3437
    sget p0, Lcom/google/android/material/a$l;->Chip_android_maxWidth:I

    const p1, 0x7fffffff

    invoke-virtual {p2, p0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    .line 7453
    iput p0, v0, Lcom/google/android/material/chip/a;->s:I

    .line 3439
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    .line 813
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 815
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->j:F

    iget v1, p0, Lcom/google/android/material/chip/a;->N:F

    add-float/2addr v0, v1

    .line 817
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->u()F

    move-result v1

    .line 819
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    .line 820
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 821
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 823
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 824
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 827
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->v()F

    move-result v0

    .line 828
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 829
    iget p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a([I[I)Z
    .locals 6

    .line 1023
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onStateChange([I)Z

    move-result v0

    .line 1026
    iget-object v1, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/material/chip/a;->X:I

    .line 1028
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1030
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b(I)I

    move-result v1

    .line 1031
    iget v3, p0, Lcom/google/android/material/chip/a;->X:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 1032
    iput v1, p0, Lcom/google/android/material/chip/a;->X:I

    const/4 v0, 0x1

    .line 1036
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    .line 1038
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 1040
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/chip/a;->b(I)I

    move-result v3

    .line 1041
    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    if-eq v5, v3, :cond_3

    .line 1042
    iput v3, p0, Lcom/google/android/material/chip/a;->Y:I

    const/4 v0, 0x1

    .line 17139
    :cond_3
    invoke-static {v3, v1}, Landroidx/core/graphics/a;->a(II)I

    move-result v1

    .line 1048
    iget v3, p0, Lcom/google/android/material/chip/a;->Z:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 17317
    :goto_2
    iget-object v5, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v5, v5, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 1052
    iput v1, p0, Lcom/google/android/material/chip/a;->Z:I

    .line 1053
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->g(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    .line 1057
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->A:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lcom/google/android/material/chip/a;->aa:I

    .line 1059
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 1061
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/a;->aa:I

    if-eq v3, v1, :cond_8

    .line 1062
    iput v1, p0, Lcom/google/android/material/chip/a;->aa:I

    const/4 v0, 0x1

    .line 1066
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    .line 1067
    invoke-static {p1}, Lcom/google/android/material/i/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->ab:I

    .line 1068
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 1070
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/a;->ab:I

    if-eq v3, v1, :cond_a

    .line 1071
    iput v1, p0, Lcom/google/android/material/chip/a;->ab:I

    .line 1072
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 1077
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 18123
    iget-object v1, v1, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    if-eqz v1, :cond_b

    .line 1078
    iget-object v1, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 19123
    iget-object v1, v1, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    .line 1079
    iget-object v1, v1, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 20123
    iget-object v1, v1, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    .line 1081
    iget-object v1, v1, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->ac:I

    .line 1083
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 1085
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/a;->ac:I

    if-eq v3, v1, :cond_c

    .line 1086
    iput v1, p0, Lcom/google/android/material/chip/a;->ac:I

    const/4 v0, 0x1

    .line 1090
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/chip/a;->b([I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->g:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 1091
    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->ad:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    .line 1093
    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->ad:Z

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x1

    :cond_f
    const/4 v1, 0x0

    .line 1102
    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, Lcom/google/android/material/chip/a;->ae:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    .line 1103
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->ae:I

    if-eq v5, v3, :cond_11

    .line 1104
    iput v3, p0, Lcom/google/android/material/chip/a;->ae:I

    .line 1105
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->aj:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_a

    :cond_11
    move v4, v0

    .line 1109
    :goto_a
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1110
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1112
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1113
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 1115
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1120
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 1121
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    iget-object p1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 1127
    :cond_14
    sget-boolean p1, Lcom/google/android/material/i/b;->a:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1128
    iget-object p1, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_15
    if-eqz v4, :cond_16

    .line 1132
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    .line 1135
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_17
    return v4
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 904
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    iget v1, p0, Lcom/google/android/material/chip/a;->Q:F

    add-float/2addr v0, v1

    .line 909
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 910
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 911
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 913
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 914
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 917
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 918
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static b([I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1366
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const v4, 0x10100a0

    if-ne v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    .line 942
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 944
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    iget v1, p0, Lcom/google/android/material/chip/a;->Q:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->P:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->l:F

    add-float/2addr v0, v1

    .line 952
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 953
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 954
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 956
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 957
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 960
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 961
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1319
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1320
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1324
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21003
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ak:[I

    .line 1326
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 1331
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1334
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->G:Z

    if-eqz p1, :cond_4

    .line 1335
    iget-object p1, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private static i(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private p()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/a$a;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/google/android/material/chip/a$a;->a()V

    :cond_0
    return-void
.end method

.method private q()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private r()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private s()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private t()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()F
    .locals 3

    .line 539
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    .line 540
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private v()F
    .locals 3

    .line 551
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    .line 552
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->F:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 553
    iget-object v1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 554
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 555
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private w()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method private x()V
    .locals 1

    .line 1349
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    .line 1350
    invoke-static {v0}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private y()F
    .locals 1

    .line 1467
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->z:F

    return v0
.end method

.method private z()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final a()F
    .locals 2

    .line 528
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 529
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->u()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->O:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final a(F)V
    .locals 1

    .line 1453
    iget v0, p0, Lcom/google/android/material/chip/a;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1454
    iput p1, p0, Lcom/google/android/material/chip/a;->a:F

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1456
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 1633
    new-instance v0, Lcom/google/android/material/h/d;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/h/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/h/d;)V

    return-void
.end method

.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1421
    iput-object p1, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    .line 1422
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public final a(Lcom/google/android/material/chip/a$a;)V
    .locals 1

    .line 458
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/google/android/material/h/d;)V
    .locals 2

    .line 1637
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/h/d;Landroid/content/Context;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1620
    iput-object p1, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    .line 1621
    iget-object p1, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    const/4 v0, 0x1

    .line 22091
    iput-boolean v0, p1, Lcom/google/android/material/internal/i;->b:Z

    .line 1622
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1623
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eq v0, p1, :cond_0

    .line 445
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->p:Z

    .line 446
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->x()V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final a([I)Z
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ak:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ak:[I

    .line 993
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    return-void
.end method

.method public final b(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    iget v0, p0, Lcom/google/android/material/chip/a;->z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1490
    iput p1, p0, Lcom/google/android/material/chip/a;->z:F

    .line 21271
    iget-object v0, p0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 1492
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/m;->a(F)Lcom/google/android/material/k/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/google/android/material/chip/a;->A:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1525
    iput-object p1, p0, Lcom/google/android/material/chip/a;->A:Landroid/content/res/ColorStateList;

    .line 1526
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)V

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1704
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1706
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1707
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    .line 1708
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 1710
    invoke-static {v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1715
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1717
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1663
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->C:Z

    if-eq v0, p1, :cond_2

    .line 1664
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v0

    .line 1665
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->C:Z

    .line 1666
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1671
    iget-object p1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1673
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1677
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_2
    return-void
.end method

.method final c()F
    .locals 2

    .line 568
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget v0, p0, Lcom/google/android/material/chip/a;->P:F

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->Q:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(F)V
    .locals 1

    .line 1560
    iget v0, p0, Lcom/google/android/material/chip/a;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1561
    iput p1, p0, Lcom/google/android/material/chip/a;->B:F

    .line 1563
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1564
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v0, :cond_0

    .line 1565
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->n(F)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1599
    iget-object v0, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1600
    iput-object p1, p0, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    .line 1601
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->x()V

    .line 1602
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1856
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1857
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    .line 1858
    sget-boolean p1, Lcom/google/android/material/i/b;->a:Z

    if-eqz p1, :cond_1

    .line 1859
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->A()V

    .line 1861
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1863
    invoke-static {v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1865
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1868
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    .line 1870
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_3
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 1813
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->d:Z

    if-eq v0, p1, :cond_2

    .line 1814
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    .line 1815
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->d:Z

    .line 1816
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1821
    iget-object p1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1823
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1826
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1827
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_2
    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(F)V
    .locals 1

    .line 1786
    iget v0, p0, Lcom/google/android/material/chip/a;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    .line 1788
    iput p1, p0, Lcom/google/android/material/chip/a;->F:F

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 1791
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1793
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    .line 1745
    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->G:Z

    .line 1746
    iget-object v0, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1747
    iput-object p1, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    .line 1748
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1752
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2040
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    .line 2041
    iput-object p1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    .line 2042
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 2044
    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 2045
    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 2047
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2049
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1948
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->g:Z

    if-eq v0, p1, :cond_1

    .line 1949
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->g:Z

    .line 1951
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    if-nez p1, :cond_0

    .line 1952
    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->ad:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1953
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ad:Z

    .line 1955
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 1957
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1959
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 580
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 586
    :cond_0
    iget v1, p0, Lcom/google/android/material/chip/a;->af:I

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 587
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget v9, p0, Lcom/google/android/material/chip/a;->af:I

    .line 9058
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v1, v4, :cond_1

    move-object v4, p1

    .line 9059
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v10, 0x1f

    move-object v4, p1

    .line 9061
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9630
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-nez v4, :cond_3

    .line 9631
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    iget v5, p0, Lcom/google/android/material/chip/a;->X:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 9632
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9633
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9634
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v5

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9639
    :cond_3
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-nez v4, :cond_4

    .line 9640
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    iget v5, p0, Lcom/google/android/material/chip/a;->Y:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 9641
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9642
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->w()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9643
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9644
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v5

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 598
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v4, :cond_5

    .line 599
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->draw(Landroid/graphics/Canvas;)V

    .line 9653
    :cond_5
    iget v4, p0, Lcom/google/android/material/chip/a;->B:F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-nez v4, :cond_7

    .line 9654
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/android/material/chip/a;->aa:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 9655
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9656
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-nez v4, :cond_6

    .line 9657
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->w()Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9659
    :cond_6
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/material/chip/a;->B:F

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, p0, Lcom/google/android/material/chip/a;->B:F

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/material/chip/a;->B:F

    div-float/2addr v10, v6

    sub-float/2addr v9, v10

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/material/chip/a;->B:F

    div-float/2addr v11, v6

    sub-float/2addr v10, v11

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9666
    iget v4, p0, Lcom/google/android/material/chip/a;->z:F

    iget v7, p0, Lcom/google/android/material/chip/a;->B:F

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    .line 9667
    iget-object v7, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9672
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    iget v7, p0, Lcom/google/android/material/chip/a;->ab:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 9673
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9674
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9675
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->an:Z

    if-nez v4, :cond_8

    .line 9676
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v7

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->y()F

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 9678
    :cond_8
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/google/android/material/chip/a;->W:Landroid/graphics/Path;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 9679
    iget-object v4, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/google/android/material/chip/a;->W:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->e()Landroid/graphics/RectF;

    move-result-object v8

    invoke-super {p0, p1, v4, v7, v8}, Lcom/google/android/material/k/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    .line 9684
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 9685
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v4}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 9686
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 9687
    iget-object v7, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 9689
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9691
    iget-object v8, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v3, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9692
    iget-object v8, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v4, v4

    neg-float v7, v7

    .line 9694
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9699
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9700
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v4}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 9701
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 9702
    iget-object v7, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 9704
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9706
    iget-object v8, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v3, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9707
    iget-object v8, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v4, v4

    neg-float v7, v7

    .line 9709
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 614
    :cond_a
    iget-boolean v4, p0, Lcom/google/android/material/chip/a;->r:Z

    if-eqz v4, :cond_13

    .line 9715
    iget-object v4, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    if-eqz v4, :cond_13

    .line 9716
    iget-object v4, p0, Lcom/google/android/material/chip/a;->V:Landroid/graphics/PointF;

    .line 9836
    invoke-virtual {v4, v5, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 9837
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 9839
    iget-object v7, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    if-eqz v7, :cond_c

    .line 9840
    iget v5, p0, Lcom/google/android/material/chip/a;->j:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/google/android/material/chip/a;->k:F

    add-float/2addr v5, v7

    .line 9842
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v7

    if-nez v7, :cond_b

    .line 9843
    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    iput v7, v4, Landroid/graphics/PointF;->x:F

    .line 9844
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 9846
    :cond_b
    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iput v7, v4, Landroid/graphics/PointF;->x:F

    .line 9847
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 9850
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    .line 9869
    iget-object v8, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 10087
    iget-object v8, v8, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 9869
    iget-object v9, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 9870
    iget-object v8, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v9, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/Paint$FontMetrics;

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v8, v9

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    .line 9850
    iput v7, v4, Landroid/graphics/PointF;->y:F

    .line 9719
    :cond_c
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    .line 10878
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 10880
    iget-object v6, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    if-eqz v6, :cond_e

    .line 10881
    iget v6, p0, Lcom/google/android/material/chip/a;->j:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/material/chip/a;->k:F

    add-float/2addr v6, v7

    .line 10882
    iget v7, p0, Lcom/google/android/material/chip/a;->m:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/chip/a;->l:F

    add-float/2addr v7, v8

    .line 10884
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v8

    if-nez v8, :cond_d

    .line 10885
    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v6

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 10886
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 10888
    :cond_d
    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 10889
    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    iput v7, v4, Landroid/graphics/RectF;->right:F

    .line 10894
    :goto_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 10895
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 9721
    :cond_e
    iget-object v4, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 11123
    iget-object v4, v4, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    if-eqz v4, :cond_f

    .line 9722
    iget-object v4, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 12087
    iget-object v4, v4, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 9722
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v6

    iput-object v6, v4, Landroid/text/TextPaint;->drawableState:[I

    .line 9723
    iget-object v4, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    iget-object v6, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;)V

    .line 9725
    :cond_f
    iget-object v4, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 13087
    iget-object v4, v4, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 9725
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 9727
    iget-object v4, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 13608
    iget-object v5, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    .line 9728
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/i;->a(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    .line 9729
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-le v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_11

    .line 9732
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 9733
    iget-object v6, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    .line 9736
    :goto_5
    iget-object v6, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    if-eqz v4, :cond_12

    .line 9737
    iget-object v7, p0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    if-eqz v7, :cond_12

    .line 9738
    iget-object v7, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 14087
    iget-object v7, v7, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    .line 9739
    iget-object v8, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_12
    move-object v8, v6

    const/4 v9, 0x0

    .line 9742
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v6, p0, Lcom/google/android/material/chip/a;->V:Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/google/android/material/chip/a;->V:Landroid/graphics/PointF;

    iget v12, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 15087
    iget-object v13, v6, Lcom/google/android/material/internal/i;->a:Landroid/text/TextPaint;

    move-object v7, p1

    .line 9741
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v4, :cond_13

    .line 9744
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15750
    :cond_13
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 15751
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v4}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 15752
    iget-object v4, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 15753
    iget-object v5, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 15755
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15757
    iget-object v6, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15759
    sget-boolean v3, Lcom/google/android/material/i/b;->a:Z

    if-eqz v3, :cond_14

    .line 15760
    iget-object v3, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 15761
    iget-object v3, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 15762
    iget-object v3, p0, Lcom/google/android/material/chip/a;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 15764
    :cond_14
    iget-object v3, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_6
    neg-float v3, v4

    neg-float v4, v5

    .line 15767
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15772
    :cond_15
    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    if-eqz v3, :cond_1c

    const/high16 v4, -0x1000000

    const/16 v5, 0x7f

    .line 15773
    invoke-static {v4, v5}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15776
    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 15779
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 15780
    :cond_16
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 15781
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15785
    :cond_17
    iget-object v3, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_18

    .line 15786
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    .line 15787
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v10

    iget-object v11, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    move-object v6, p1

    .line 15786
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 15791
    :cond_18
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 15792
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 15793
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15797
    :cond_19
    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-static {v4, v5}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15798
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    .line 15923
    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 15925
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 15926
    iget v4, p0, Lcom/google/android/material/chip/a;->m:F

    iget v6, p0, Lcom/google/android/material/chip/a;->Q:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/material/chip/a;->P:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/material/chip/a;->l:F

    add-float/2addr v4, v6

    .line 15933
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-nez v6, :cond_1a

    .line 15934
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    iput v6, v3, Landroid/graphics/RectF;->right:F

    goto :goto_7

    .line 15936
    :cond_1a
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 15799
    :cond_1b
    :goto_7
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 15802
    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-static {v4, v5}, Landroidx/core/graphics/a;->b(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15803
    iget-object v3, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 15804
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 624
    :cond_1c
    iget v0, p0, Lcom/google/android/material/chip/a;->af:I

    if-ge v0, v2, :cond_1d

    .line 625
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1d
    :goto_8
    return-void
.end method

.method public final e(F)V
    .locals 1

    .line 1916
    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1917
    iput p1, p0, Lcom/google/android/material/chip/a;->J:F

    .line 1918
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1919
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1920
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1897
    iput-object p1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    .line 1899
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1979
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->K:Z

    if-eq v0, p1, :cond_2

    .line 1980
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v0

    .line 1981
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->K:Z

    .line 1982
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1987
    iget-object p1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1989
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1992
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1993
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_2
    return-void
.end method

.method public final f(F)V
    .locals 1

    .line 2178
    iget v0, p0, Lcom/google/android/material/chip/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2179
    iput p1, p0, Lcom/google/android/material/chip/a;->j:F

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2181
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 2078
    iget-object v0, p0, Lcom/google/android/material/chip/a;->M:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2079
    iput-object p1, p0, Lcom/google/android/material/chip/a;->M:Landroid/content/res/ColorStateList;

    .line 2081
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2085
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final g(F)V
    .locals 1

    .line 2212
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    .line 2214
    iput p1, p0, Lcom/google/android/material/chip/a;->N:F

    .line 2215
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 2217
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2219
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1228
    iget v0, p0, Lcom/google/android/material/chip/a;->af:I

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 503
    iget v0, p0, Lcom/google/android/material/chip/a;->a:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    .line 488
    iget v0, p0, Lcom/google/android/material/chip/a;->j:F

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->k:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 8608
    iget-object v2, p0, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    .line 493
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/i;->a(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->l:F

    add-float/2addr v0, v1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->m:F

    add-float/2addr v0, v1

    .line 489
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 497
    iget v1, p0, Lcom/google/android/material/chip/a;->s:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 8

    .line 1270
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v0, :cond_0

    .line 1271
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    iget v1, p0, Lcom/google/android/material/chip/a;->z:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1278
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/a;->z:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1281
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public final h(F)V
    .locals 1

    .line 2251
    iget v0, p0, Lcom/google/android/material/chip/a;->O:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2252
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result v0

    .line 2253
    iput p1, p0, Lcom/google/android/material/chip/a;->O:F

    .line 2254
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()F

    move-result p1

    .line 2256
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2258
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final i(F)V
    .locals 1

    .line 2290
    iget v0, p0, Lcom/google/android/material/chip/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2291
    iput p1, p0, Lcom/google/android/material/chip/a;->k:F

    .line 2292
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2293
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1286
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1288
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 4

    .line 969
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->y:Landroid/content/res/ColorStateList;

    .line 970
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->A:Landroid/content/res/ColorStateList;

    .line 971
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    .line 972
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 16123
    iget-object v0, v0, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 16149
    iget-object v3, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/android/material/h/d;->a:Landroid/content/res/ColorStateList;

    .line 16151
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 974
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->t()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    .line 975
    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    .line 976
    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    .line 977
    invoke-static {v0}, Lcom/google/android/material/chip/a;->i(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final j(F)V
    .locals 1

    .line 2324
    iget v0, p0, Lcom/google/android/material/chip/a;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2325
    iput p1, p0, Lcom/google/android/material/chip/a;->l:F

    .line 2326
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2327
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final k(F)V
    .locals 1

    .line 2358
    iget v0, p0, Lcom/google/android/material/chip/a;->P:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2359
    iput p1, p0, Lcom/google/android/material/chip/a;->P:F

    .line 2360
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2361
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2362
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final l(F)V
    .locals 1

    .line 2394
    iget v0, p0, Lcom/google/android/material/chip/a;->Q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2395
    iput p1, p0, Lcom/google/android/material/chip/a;->Q:F

    .line 2396
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2397
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2398
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final m(F)V
    .locals 1

    .line 2430
    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2431
    iput p1, p0, Lcom/google/android/material/chip/a;->m:F

    .line 2432
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2433
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->p()V

    :cond_0
    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1156
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1158
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1161
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1162
    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1164
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1165
    iget-object v1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1169
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected final onLevelChange(I)Z
    .locals 2

    .line 1176
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onLevelChange(I)Z

    move-result v0

    .line 1178
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1181
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1184
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    iget-object v1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final onStateChange([I)Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->an:Z

    if-eqz v0, :cond_0

    .line 1015
    invoke-super {p0, p1}, Lcom/google/android/material/k/h;->onStateChange([I)Z

    .line 17003
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ak:[I

    .line 1017
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p1

    return p1
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1294
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1296
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1220
    iget v0, p0, Lcom/google/android/material/chip/a;->af:I

    if-eq v0, p1, :cond_0

    .line 1221
    iput p1, p0, Lcom/google/android/material/chip/a;->af:I

    .line 1222
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1234
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/ColorFilter;

    .line 1235
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1248
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    .line 1249
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aj:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1256
    iput-object p1, p0, Lcom/google/android/material/chip/a;->aj:Landroid/graphics/PorterDuff$Mode;

    .line 1257
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->ah:Landroid/graphics/PorterDuffColorFilter;

    .line 1258
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2

    .line 1196
    invoke-super {p0, p1, p2}, Lcom/google/android/material/k/h;->setVisible(ZZ)Z

    move-result v0

    .line 1198
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    iget-object v1, p0, Lcom/google/android/material/chip/a;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/google/android/material/chip/a;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1204
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1205
    iget-object v1, p0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1302
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1304
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
