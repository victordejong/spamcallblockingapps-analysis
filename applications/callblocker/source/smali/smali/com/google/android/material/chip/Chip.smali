.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "Chip.java"

# interfaces
.implements Lcom/google/android/material/chip/a$a;
.implements Lcom/google/android/material/q/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Rect;

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private d:Lcom/google/android/material/chip/a;

.field private e:Landroid/graphics/drawable/InsetDrawable;

.field private f:Landroid/graphics/drawable/RippleDrawable;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private final p:Lcom/google/android/material/chip/Chip$a;

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/RectF;

.field private final s:Lcom/google/android/material/n/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->a:Landroid/graphics/Rect;

    .line 134
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/chip/Chip;->b:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/chip/Chip;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/google/android/material/a$b;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    .line 167
    new-instance v0, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->s:Lcom/google/android/material/n/f;

    .line 191
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->a(Landroid/util/AttributeSet;)V

    .line 192
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Chip_Action:I

    .line 193
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object v6

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    invoke-virtual {p0, v6}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V

    .line 197
    invoke-static {p0}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/chip/a;->r(F)V

    .line 198
    sget-object v2, Lcom/google/android/material/a$l;->Chip:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Chip_Action:I

    new-array v5, v7, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 208
    sget v1, Lcom/google/android/material/a$l;->Chip_android_textColor:I

    .line 209
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/Chip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 211
    :cond_0
    sget v1, Lcom/google/android/material/a$l;->Chip_shapeAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 212
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    new-instance v0, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {v0, p0, p0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_4

    .line 216
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 220
    :goto_0
    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->i()V

    .line 224
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->i:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 225
    invoke-virtual {v6}, Lcom/google/android/material/chip/a;->n()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v6}, Lcom/google/android/material/chip/a;->p()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 228
    invoke-virtual {p0, v7}, Lcom/google/android/material/chip/Chip;->setIncludeFontPadding(Z)V

    .line 229
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->K()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->setSingleLine()V

    .line 237
    :cond_2
    const v0, 0x800013

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 239
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 243
    :cond_3
    invoke-static {p0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/Chip;->n:I

    .line 244
    return-void

    .line 218
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    return-object v0
.end method

.method private a(IIII)V
    .locals 6

    .prologue
    .line 2275
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    .line 2277
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 292
    sget-object v2, Lcom/google/android/material/a$l;->Chip:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Chip_Action:I

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 299
    sget v1, Lcom/google/android/material/a$l;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 303
    sget v2, Lcom/google/android/material/a$l;->Chip_chipMinTouchTargetSize:I

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-double v2, v1

    .line 305
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 308
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 309
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x800013

    const/4 v2, 0x1

    .line 348
    if-nez p1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "background"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "drawableLeft"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_3
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "drawableStart"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_4
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "drawableEnd"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_5
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "drawableRight"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_6
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "singleLine"

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "lines"

    .line 367
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "minLines"

    .line 368
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "maxLines"

    .line 369
    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 370
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_8
    const-string/jumbo v0, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v1, "gravity"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 376
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Chip text must be vertically center and start aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/material/chip/a;)V
    .locals 1

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    .line 458
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 796
    :try_start_0
    const-class v0, Landroidx/d/b/a;

    const-string/jumbo v3, "k"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 797
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 798
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 800
    if-eq v0, v4, :cond_0

    .line 801
    const-class v0, Landroidx/d/b/a;

    const-string/jumbo v3, "e"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 802
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 803
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 804
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    move v0, v1

    .line 821
    :goto_0
    return v0

    .line 807
    :catch_0
    move-exception v0

    .line 809
    const-string/jumbo v1, "Chip"

    const-string/jumbo v3, "Unable to send Accessibility Exit event"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    move v0, v2

    .line 821
    goto :goto_0

    .line 810
    :catch_1
    move-exception v0

    .line 812
    const-string/jumbo v1, "Chip"

    const-string/jumbo v3, "Unable to send Accessibility Exit event"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 813
    :catch_2
    move-exception v0

    .line 815
    const-string/jumbo v1, "Chip"

    const-string/jumbo v3, "Unable to send Accessibility Exit event"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 816
    :catch_3
    move-exception v0

    .line 818
    const-string/jumbo v1, "Chip"

    const-string/jumbo v3, "Unable to send Accessibility Exit event"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;Z)Z
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->l:Z

    return p1
.end method

.method private b(Lcom/google/android/material/chip/a;)V
    .locals 0

    .prologue
    .line 461
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    .line 462
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/Chip;)Z
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/android/material/chip/Chip;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    goto :goto_0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 945
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->r:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 957
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->q:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/n/d;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->o()Lcom/google/android/material/n/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 321
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->J()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 322
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->G()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 323
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 324
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 326
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->C()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 327
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->F()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 328
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->c()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 331
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 330
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 382
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 395
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 417
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    .line 424
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 432
    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 444
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 446
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->m()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/o/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    .line 449
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 451
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 452
    return-void
.end method

.method private m()[I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 894
    .line 895
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 898
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v3, :cond_0

    .line 899
    add-int/lit8 v0, v0, 0x1

    .line 901
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v3, :cond_1

    .line 902
    add-int/lit8 v0, v0, 0x1

    .line 904
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v3, :cond_2

    .line 905
    add-int/lit8 v0, v0, 0x1

    .line 907
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 908
    add-int/lit8 v0, v0, 0x1

    .line 911
    :cond_3
    new-array v0, v0, [I

    .line 914
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 915
    const v3, 0x101009e

    aput v3, v0, v2

    .line 918
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->l:Z

    if-eqz v2, :cond_4

    .line 919
    const v2, 0x101009c

    aput v2, v0, v1

    .line 920
    add-int/lit8 v1, v1, 0x1

    .line 922
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eqz v2, :cond_5

    .line 923
    const v2, 0x1010367

    aput v2, v0, v1

    .line 924
    add-int/lit8 v1, v1, 0x1

    .line 926
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v2, :cond_6

    .line 927
    const v2, 0x10100a7

    aput v2, v0, v1

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 930
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 931
    const v2, 0x10100a1

    aput v2, v0, v1

    .line 932
    add-int/lit8 v1, v1, 0x1

    .line 934
    :cond_7
    return-object v0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1379
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1382
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/n/d;

    move-result-object v1

    .line 1383
    if-eqz v1, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->s:Lcom/google/android/material/n/f;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/n/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/n/f;)V

    .line 1386
    :cond_1
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 2266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    .line 2267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2268
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2269
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    .line 2271
    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->k:Z

    if-eq v0, p1, :cond_0

    .line 872
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->k:Z

    .line 873
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 875
    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eq v0, p1, :cond_0

    .line 865
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->j:Z

    .line 866
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    .line 868
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->a(I)Z

    .line 673
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    .line 674
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 675
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 676
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    .line 679
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2222
    iput p1, p0, Lcom/google/android/material/chip/Chip;->o:I

    .line 2223
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2224
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->p()V

    .line 2261
    :goto_0
    return v0

    .line 2228
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2229
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2231
    if-gtz v2, :cond_1

    if-gtz v3, :cond_1

    .line 2232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->p()V

    goto :goto_0

    .line 2236
    :cond_1
    if-lez v2, :cond_3

    div-int/lit8 v2, v2, 0x2

    .line 2237
    :goto_1
    if-lez v3, :cond_2

    div-int/lit8 v0, v3, 0x2

    .line 2239
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_4

    .line 2240
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2241
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2242
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ne v4, v0, :cond_4

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v0, :cond_4

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ne v4, v2, :cond_4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v3, v2, :cond_4

    move v0, v1

    .line 2246
    goto :goto_0

    :cond_3
    move v2, v0

    .line 2236
    goto :goto_1

    .line 2249
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_7

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    move-result v3

    if-eq v3, p1, :cond_5

    .line 2251
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2253
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    move-result v3

    if-eq v3, p1, :cond_6

    .line 2254
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2260
    :cond_6
    :goto_2
    invoke-direct {p0, v2, v0, v2, v0}, Lcom/google/android/material/chip/Chip;->a(IIII)V

    move v0, v1

    .line 2261
    goto :goto_0

    .line 2257
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2258
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    goto :goto_2
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 721
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 724
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v2, v1, v1}, Lcom/google/android/material/chip/Chip$a;->a(II)Z

    .line 733
    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    .line 827
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    .line 828
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 840
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    .line 841
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->c()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 842
    const/4 v0, 0x1

    .line 844
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 879
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 881
    const/4 v0, 0x0

    .line 883
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a([I)Z

    move-result v0

    .line 887
    :cond_0
    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    .line 890
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->m:Z

    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 439
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/drawable/InsetDrawable;

    goto :goto_0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->h()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipCornerRadius()F
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->j()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->J()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipIconSize()F
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->s()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->r()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipMinHeight()F
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->i()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipStartPadding()F
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->C()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->k()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->l()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->x()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->I()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseIconSize()F
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->w()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->H()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->v()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->p()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 855
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    .line 856
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->b()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->B()Lcom/google/android/material/a/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconEndPadding()F
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->E()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconStartPadding()F
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->D()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->m()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/q/k;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->L()Lcom/google/android/material/q/k;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->A()Lcom/google/android/material/a/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextEndPadding()F
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->G()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextStartPadding()F
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->F()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 250
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-static {p0, v0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;Lcom/google/android/material/q/g;)V

    .line 251
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 466
    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    sget-object v1, Lcom/google/android/material/chip/Chip;->b:[I

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    sget-object v1, Lcom/google/android/material/chip/Chip;->c:[I

    invoke-static {v0, v1}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 473
    :cond_1
    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 850
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->p:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$a;->a(ZILandroid/graphics/Rect;)V

    .line 851
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 775
    packed-switch v0, :pswitch_data_0

    .line 785
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 777
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 780
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.widget.CompoundButton"

    .line 266
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 275
    return-void

    .line 267
    :cond_1
    const-string/jumbo v0, "android.widget.Button"

    goto :goto_0

    .line 271
    :cond_2
    const-string/jumbo v0, "android.view.View"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRtlPropertiesChanged(I)V

    .line 341
    iget v0, p0, Lcom/google/android/material/chip/Chip;->n:I

    if-eq v0, p1, :cond_0

    .line 342
    iput p1, p0, Lcom/google/android/material/chip/Chip;->n:I

    .line 343
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->h()V

    .line 345
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 738
    .line 740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 741
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    .line 742
    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 769
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 744
    :pswitch_0
    if-eqz v3, :cond_0

    .line 745
    invoke-direct {p0, v1}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    move v0, v1

    .line 746
    goto :goto_0

    .line 750
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v0, :cond_0

    .line 751
    if-nez v3, :cond_3

    .line 752
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_3
    move v0, v1

    .line 754
    goto :goto_0

    .line 758
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->j:Z

    if-eqz v0, :cond_4

    .line 759
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->b()Z

    move v0, v1

    .line 764
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_0

    :cond_4
    :pswitch_3
    move v0, v2

    goto :goto_1

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 507
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 496
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 516
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2

    .prologue
    .line 501
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 486
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 491
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 1760
    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->o(I)V

    .line 1748
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_1

    .line 685
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->i:Z

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 690
    if-eq v0, p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 1847
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1811
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    .line 1812
    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1805
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    .line 1806
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->q(I)V

    .line 1835
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->p(I)V

    .line 1788
    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Z)V

    .line 1800
    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1096
    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(I)V

    .line 1084
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    .line 1177
    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(I)V

    .line 1153
    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eq v0, p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/a;)V

    .line 406
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    .line 409
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->f(Z)V

    .line 410
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/a;)V

    .line 411
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->a(I)Z

    .line 412
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->j()V

    .line 414
    :cond_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    .line 2189
    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->A(I)V

    .line 2177
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    .line 1443
    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1436
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    .line 1437
    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i(I)V

    .line 1466
    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    .line 1548
    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k(I)V

    .line 1536
    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 1514
    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j(I)V

    .line 1501
    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h(I)V

    .line 1419
    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 1431
    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    .line 1130
    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(I)V

    .line 1118
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    .line 1951
    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->t(I)V

    .line 1939
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 1212
    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(I)V

    .line 1200
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    .line 1246
    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(I)V

    .line 1234
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1635
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 1636
    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Ljava/lang/CharSequence;)V

    .line 1716
    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1598
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1599
    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1592
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    .line 1593
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    .line 2155
    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->z(I)V

    .line 2143
    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->l(I)V

    .line 1622
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 1623
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    .line 1705
    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->n(I)V

    .line 1693
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    .line 2121
    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->y(I)V

    .line 2109
    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 1671
    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->m(I)V

    .line 1659
    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    .line 1574
    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Z)V

    .line 1586
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->g()V

    .line 1587
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    if-eqz p3, :cond_1

    .line 532
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 536
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    if-eqz p3, :cond_1

    .line 576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 580
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 2

    .prologue
    .line 585
    if-eqz p1, :cond_0

    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    if-eqz p3, :cond_1

    .line 589
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 593
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    if-eqz p3, :cond_1

    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 608
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 2

    .prologue
    .line 540
    if-eqz p1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    if-eqz p3, :cond_1

    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 548
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 556
    if-eqz p1, :cond_0

    .line 557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    if-eqz p3, :cond_1

    .line 560
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 564
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setElevation(F)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->r(F)V

    .line 260
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_2

    .line 622
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Text within a chip are not allowed to scroll."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 625
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .prologue
    .line 2210
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->m:Z

    .line 2211
    iget v0, p0, Lcom/google/android/material/chip/Chip;->o:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->a(I)Z

    .line 2212
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    .line 478
    const v0, 0x800013

    if-eq p1, v0, :cond_0

    .line 479
    const-string/jumbo v0, "Chip"

    const-string/jumbo v1, "Chip text must be vertically center and start aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setGravity(I)V

    goto :goto_0
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    .line 1917
    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->s(I)V

    .line 1905
    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    .line 2019
    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->v(I)V

    .line 2007
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    .line 1985
    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->u(I)V

    .line 1973
    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1305
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLayoutDirection(I)V

    goto :goto_0
.end method

.method public setLines(I)V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setLines(I)V

    .line 644
    return-void
.end method

.method public setMaxLines(I)V
    .locals 2

    .prologue
    .line 656
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxLines(I)V

    .line 660
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .prologue
    .line 664
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMaxWidth(I)V

    .line 665
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->B(I)V

    .line 668
    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 2

    .prologue
    .line 648
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setMinLines(I)V

    .line 652
    return-void
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 704
    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->g:Landroid/view/View$OnClickListener;

    .line 709
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    .line 1287
    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(I)V

    .line 1268
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    .line 1272
    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/q/k;)V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 1158
    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    .line 1882
    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->r(I)V

    .line 1870
    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 2

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Chip does not support multi-line text"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSingleLine(Z)V

    .line 636
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_1

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    if-nez p1, :cond_2

    .line 1315
    const-string/jumbo p1, ""

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1318
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1317
    goto :goto_1
.end method

.method public setTextAppearance(I)V
    .locals 1

    .prologue
    .line 1370
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(I)V

    .line 1371
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->g(I)V

    .line 1374
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    .line 1375
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 1361
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1362
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/a;->g(I)V

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    .line 1366
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/n/d;)V
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/n/d;)V

    .line 1356
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    .line 1357
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    .line 1343
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    .line 2087
    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->x(I)V

    .line 2075
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    .line 2053
    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->d:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->w(I)V

    .line 2041
    :cond_0
    return-void
.end method
