.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/a$a;
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$a;
    }
.end annotation


# static fields
.field private static final c:I

.field private static final d:Landroid/graphics/Rect;

.field private static final e:[I

.field private static final f:[I


# instance fields
.field a:Lcom/google/android/material/chip/a;

.field b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private g:Landroid/graphics/drawable/InsetDrawable;

.field private h:Landroid/graphics/drawable/RippleDrawable;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private final q:Lcom/google/android/material/chip/Chip$a;

.field private final r:Landroid/graphics/Rect;

.field private final s:Landroid/graphics/RectF;

.field private final t:Lcom/google/android/material/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->c:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 139
    sput-object v1, Lcom/google/android/material/chip/Chip;->e:[I

    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v3

    .line 140
    sput-object v0, Lcom/google/android/material/chip/Chip;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 191
    sget v0, Lcom/google/android/material/a$b;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 195
    sget v6, Lcom/google/android/material/chip/Chip;->c:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    .line 171
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    .line 172
    new-instance p1, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/h/f;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    const v7, 0x800013

    const/4 v8, 0x1

    if-eqz p2, :cond_6

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    .line 3374
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Chip"

    if-eqz v1, :cond_0

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    .line 3375
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "drawableLeft"

    .line 3377
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "drawableStart"

    .line 3380
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "drawableEnd"

    .line 3383
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_3

    const-string v1, "drawableRight"

    .line 3386
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "singleLine"

    .line 3389
    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lines"

    .line 3390
    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_1

    const-string v1, "minLines"

    .line 3391
    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_1

    const-string v1, "maxLines"

    .line 3392
    invoke-interface {p2, v0, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_1

    const-string v1, "gravity"

    .line 3396
    invoke-interface {p2, v0, v1, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_6

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 3399
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3393
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Chip does not support multi-line text"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3387
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3384
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3381
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3378
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_6
    :goto_0
    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object v9

    .line 4309
    sget-object v2, Lcom/google/android/material/a$l;->Chip:[I

    const/4 v10, 0x0

    new-array v5, v10, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 4310
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4316
    sget v1, Lcom/google/android/material/a$l;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 4319
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 4320
    sget v2, Lcom/google/android/material/a$l;->Chip_chipMinTouchTargetSize:I

    .line 4323
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-double v1, v1

    .line 4322
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 4325
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-virtual {p0, v9}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V

    .line 205
    invoke-static {p0}, Landroidx/core/view/v;->n(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v9, v0}, Lcom/google/android/material/chip/a;->r(F)V

    .line 206
    sget-object v2, Lcom/google/android/material/a$l;->Chip:[I

    new-array v5, v10, [I

    move-object v0, p1

    move-object v1, p2

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 213
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p3, v0, :cond_7

    .line 216
    sget p3, Lcom/google/android/material/a$l;->Chip_android_textColor:I

    .line 217
    invoke-static {p1, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    :cond_7
    sget p1, Lcom/google/android/material/a$l;->Chip_shapeAppearance:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    new-instance p2, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    .line 223
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->f()V

    if-nez p1, :cond_8

    .line 4404
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_8

    .line 4405
    new-instance p1, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 228
    :cond_8
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 4608
    iget-object p1, v9, Lcom/google/android/material/chip/a;->c:Ljava/lang/CharSequence;

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 4641
    iget-object p1, v9, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    .line 235
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 5457
    iget-boolean p1, p1, Lcom/google/android/material/chip/a;->r:Z

    if-nez p1, :cond_9

    .line 236
    invoke-virtual {p0, v8}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 237
    invoke-virtual {p0, v8}, Lcom/google/android/material/chip/Chip;->setHorizontallyScrolling(Z)V

    .line 241
    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 243
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 6265
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    if-eqz p1, :cond_a

    .line 245
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 247
    :cond_a
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    return-object p0
.end method

.method private a(IIII)V
    .locals 7

    .line 2351
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 891
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 5

    .line 2288
    iput p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    .line 23265
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2290
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 2291
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->q()V

    goto :goto_0

    .line 2293
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    :goto_0
    return v1

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2299
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    .line 2302
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    .line 2303
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->q()V

    goto :goto_1

    .line 2305
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 2310
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-lez v0, :cond_5

    .line 2311
    div-int/lit8 v1, v0, 0x2

    .line 2313
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 2314
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2315
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2316
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v2, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_6

    .line 2320
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return v3

    .line 2324
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_8

    .line 2325
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 2326
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2328
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 2329
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    goto :goto_3

    .line 2332
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2333
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2335
    :cond_9
    :goto_3
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/google/android/material/chip/Chip;->a(IIII)V

    .line 2336
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    return v3
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "Unable to send Accessibility Exit event"

    const-string v1, "Chip"

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 821
    :try_start_0
    const-class p1, Landroidx/customview/a/a;

    const-string v3, "d"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v3, 0x1

    .line 822
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 823
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_0

    .line 826
    const-class p1, Landroidx/customview/a/a;

    const-string v5, "b"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 827
    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 828
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 829
    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {p1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 843
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 840
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 837
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 834
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v2
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    return p1
.end method

.method private b(Z)V
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eq v0, p1, :cond_0

    .line 897
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    .line 898
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e()Landroid/graphics/Rect;
    .locals 1

    .line 129
    sget-object v0, Lcom/google/android/material/chip/Chip;->d:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 303
    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/a;)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6410
    :cond_0
    iget v0, v0, Lcom/google/android/material/chip/a;->m:F

    .line 338
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 7304
    iget v1, v1, Lcom/google/android/material/chip/a;->l:F

    add-float/2addr v0, v1

    .line 339
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 340
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 341
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 8158
    iget v1, v1, Lcom/google/android/material/chip/a;->j:F

    .line 343
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 8270
    iget v2, v2, Lcom/google/android/material/chip/a;->k:F

    add-float/2addr v1, v2

    .line 344
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 345
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->a()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 346
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    .line 347
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 348
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 349
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 350
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 353
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 439
    sget-boolean v0, Lcom/google/android/material/i/b;->a:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 443
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 10450
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10453
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method private i()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    :cond_0
    return-object v0
.end method

.method private j()V
    .locals 4

    .line 467
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 10579
    iget-object v1, v1, Lcom/google/android/material/chip/a;->b:Landroid/content/res/ColorStateList;

    .line 469
    invoke-static {v1}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 470
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/RippleDrawable;

    .line 472
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 475
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    return-void
.end method

.method private k()Z
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()Landroid/graphics/RectF;
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 970
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Landroid/graphics/RectF;

    return-object v0
.end method

.method private m()Landroid/graphics/Rect;
    .locals 5

    .line 980
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()Landroid/graphics/RectF;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 982
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method private n()F
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16433
    iget v0, v0, Lcom/google/android/material/chip/a;->a:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 4

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v1, :cond_0

    .line 1404
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1406
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->p()Lcom/google/android/material/h/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->t:Lcom/google/android/material/h/f;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/h/d;->a(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/h/f;)V

    :cond_1
    return-void
.end method

.method private p()Lcom/google/android/material/h/d;
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 18629
    iget-object v0, v0, Lcom/google/android/material/chip/a;->o:Lcom/google/android/material/internal/i;

    .line 19123
    iget-object v0, v0, Lcom/google/android/material/internal/i;->d:Lcom/google/android/material/h/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private q()V
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2342
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 2343
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2344
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->n()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2345
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 696
    iget v0, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->a(I)Z

    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 747
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 748
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 754
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v1, v2, v2}, Lcom/google/android/material/chip/Chip$a;->a(II)Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19799
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19940
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 851
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    .line 852
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    .line 12298
    iget v0, v0, Landroidx/customview/a/a;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 869
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public drawableStateChanged()V
    .locals 5

    .line 904
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 908
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 14983
    iget-object v0, v0, Lcom/google/android/material/chip/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 909
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 15920
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 15923
    :goto_0
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 15926
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 15929
    :cond_2
    iget-boolean v4, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 15932
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 15936
    :cond_4
    new-array v2, v2, [I

    .line 15939
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x101009e

    .line 15940
    aput v4, v2, v1

    const/4 v1, 0x1

    .line 15943
    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->m:Z

    if-eqz v3, :cond_6

    const v3, 0x101009c

    .line 15944
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 15947
    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_7

    const v3, 0x1010367

    .line 15948
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 15951
    :cond_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_8

    const v3, 0x10100a7

    .line 15952
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 15955
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x10100a1

    .line 15956
    aput v3, v2, v1

    .line 909
    :cond_9
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/a;->a([I)Z

    move-result v1

    :cond_a
    if-eqz v1, :cond_b

    .line 913
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    :cond_b
    return-void
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 10641
    iget-object v0, v0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    .line 13298
    iget v0, v0, Landroidx/customview/a/a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 880
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    .line 14290
    iget v0, v0, Landroidx/customview/a/a;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void

    .line 882
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 252
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 254
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    invoke-static {p0, v0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 490
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/google/android/material/chip/Chip;->e:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    sget-object v0, Lcom/google/android/material/chip/Chip;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 874
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 875
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$a;->a(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 805
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->b(Z)V

    goto :goto_0

    .line 802
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->b(Z)V

    .line 810
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 268
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.view.View"

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 271
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_1

    :cond_2
    const-string v0, "android.widget.Button"

    .line 270
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 277
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_6

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 282
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    .line 284
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->a()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6395
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 6396
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/material/chip/Chip;

    if-eqz v4, :cond_4

    .line 6397
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/chip/Chip;

    if-ne v4, p0, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 287
    :cond_5
    :goto_4
    invoke-static {p0}, Lcom/google/android/material/chip/ChipGroup;->a(Landroid/view/View;)I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    const/4 v3, 0x1

    .line 286
    invoke-static {v0, v3, v2, v3, v1}, Landroidx/core/view/a/c$c;->a(IIIIZ)Landroidx/core/view/a/c$c;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    .line 989
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 360
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    .line 364
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    if-eq v0, p1, :cond_0

    .line 365
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 366
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 766
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 775
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    .line 777
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->a(Z)V

    goto :goto_1

    .line 783
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->b()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 789
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->a(Z)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 770
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->a(Z)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    .line 794
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    return v2

    :cond_7
    :goto_4
    return v3
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 530
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 531
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 533
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    .line 520
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 539
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    .line 540
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    .line 525
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    .line 510
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    .line 515
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1788
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    .line 1775
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19944
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    .line 707
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    return-void

    .line 11940
    :cond_0
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->g:Z

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 710
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 714
    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1874
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1841
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 1862
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 20028
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1911
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 2

    .line 1897
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 20067
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    .line 1815
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19975
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1828
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16410
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16478
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8480
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    .line 429
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    const/4 v0, 0x0

    .line 9467
    iput-boolean v0, p1, Lcom/google/android/material/chip/a;->r:Z

    .line 433
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 9485
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    .line 434
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(I)Z

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2252
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22420
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19700
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    .line 1561
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19775
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    .line 1522
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19735
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19659
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1453
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16443
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 2014
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2015
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    .line 2002
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22168
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16514
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16550
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1663
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1665
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19926
    iget-object v1, v0, Lcom/google/android/material/chip/a;->f:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_0

    .line 19928
    invoke-static {}, Landroidx/core/d/a;->a()Landroidx/core/d/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/core/d/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/material/chip/a;->f:Ljava/lang/CharSequence;

    .line 19930
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1628
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2219
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    .line 2206
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22384
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .line 1649
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19850
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1652
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    .line 1720
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19912
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2185
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    .line 2172
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22348
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1698
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1699
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 19892
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1603
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 1616
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 556
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 603
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 600
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 613
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 631
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 629
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 626
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 568
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 587
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 584
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 581
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    .line 260
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    .line 261
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->r(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 648
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_1

    .line 10645
    iput-object p1, v0, Lcom/google/android/material/chip/a;->q:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    return-void

    .line 646
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 2276
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->n:Z

    .line 2277
    iget p1, p0, Lcom/google/android/material/chip/Chip;->p:I

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    .line 503
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22148
    iput-object p1, v0, Lcom/google/android/material/chip/a;->i:Lcom/google/android/material/a/h;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    .line 1968
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 21138
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    .line 21148
    iput-object p1, v0, Lcom/google/android/material/chip/a;->i:Lcom/google/android/material/a/h;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2082
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2083
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    .line 2070
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22241
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    .line 2036
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22202
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 1329
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1330
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 667
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    return-void

    .line 665
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 683
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    return-void

    .line 681
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 689
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 11453
    iput p1, v0, Lcom/google/android/material/chip/a;->s:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 675
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    return-void

    .line 673
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    .line 731
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->f()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1309
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 18453
    iget-boolean p1, p1, Lcom/google/android/material/chip/a;->p:Z

    if-nez p1, :cond_1

    .line 1310
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 16589
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1293
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    .line 17453
    iget-boolean p1, p1, Lcom/google/android/material/chip/a;->p:Z

    if-nez p1, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .line 1945
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 21117
    iput-object p1, v0, Lcom/google/android/material/chip/a;->h:Lcom/google/android/material/a/h;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    .line 1933
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 20107
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    .line 20117
    iput-object p1, v0, Lcom/google/android/material/chip/a;->h:Lcom/google/android/material/a/h;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 659
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    return-void

    .line 657
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 18457
    :cond_1
    iget-boolean v0, v0, Lcom/google/android/material/chip/a;->r:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1342
    :goto_0
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1343
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz p2, :cond_3

    .line 1344
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1394
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(I)V

    .line 1398
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 1385
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1386
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz p1, :cond_0

    .line 1387
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/a;->a(I)V

    .line 1389
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/h/d;)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/h/d;)V

    .line 1380
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2150
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    .line 2138
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22314
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2117
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    .line 2104
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->a:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 22280
    iget-object v1, v0, Lcom/google/android/material/chip/a;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    :cond_0
    return-void
.end method
