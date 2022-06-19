.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$SavedState;,
        Lcom/google/android/material/button/MaterialButton$b;,
        Lcom/google/android/material/button/MaterialButton$a;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static final g:[I

.field private static final h:I


# instance fields
.field final a:Lcom/google/android/material/button/a;

.field final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/google/android/material/button/MaterialButton$b;

.field public e:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Landroid/content/res/ColorStateList;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 130
    sput-object v1, Lcom/google/android/material/button/MaterialButton;->f:[I

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    .line 131
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->g:[I

    .line 195
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 220
    sget v0, Lcom/google/android/material/a$b;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 224
    sget v6, Lcom/google/android/material/button/MaterialButton;->h:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->b:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 212
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 228
    sget-object v2, Lcom/google/android/material/a$l;->MaterialButton:[I

    new-array v5, p1, [I

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Lcom/google/android/material/a$l;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    .line 233
    sget v1, Lcom/google/android/material/a$l;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 234
    invoke-static {v1, v3}, Lcom/google/android/material/internal/r;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/PorterDuff$Mode;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/material/a$l;->MaterialButton_iconTint:I

    .line 238
    invoke-static {v1, v0, v3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/content/res/ColorStateList;

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/google/android/material/a$l;->MaterialButton_icon:I

    invoke-static {v1, v0, v3}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    .line 241
    sget v1, Lcom/google/android/material/a$l;->MaterialButton_iconGravity:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    .line 243
    sget v1, Lcom/google/android/material/a$l;->MaterialButton_iconSize:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    .line 245
    invoke-static {v7, p2, p3, v6}, Lcom/google/android/material/k/m;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/k/m$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p2

    .line 248
    new-instance p3, Lcom/google/android/material/button/a;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/button/a;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/k/m;)V

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 2083
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_android_insetLeft:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->d:I

    .line 2084
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_android_insetRight:I

    .line 2085
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->e:I

    .line 2086
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_android_insetTop:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->f:I

    .line 2087
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_android_insetBottom:I

    .line 2088
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->g:I

    .line 2091
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_cornerRadius:I

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2092
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_cornerRadius:I

    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->h:I

    .line 2093
    iget-object p2, p3, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    iget v1, p3, Lcom/google/android/material/button/a;->h:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/k/m;->a(F)Lcom/google/android/material/k/m;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/k/m;)V

    .line 2094
    iput-boolean v3, p3, Lcom/google/android/material/button/a;->q:Z

    .line 2097
    :cond_0
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_strokeWidth:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->i:I

    .line 2099
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_backgroundTintMode:I

    .line 2101
    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2100
    invoke-static {p2, v1}, Lcom/google/android/material/internal/r;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 2102
    iget-object p2, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 2104
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_backgroundTint:I

    .line 2103
    invoke-static {p2, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 2105
    iget-object p2, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 2107
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_strokeColor:I

    .line 2106
    invoke-static {p2, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 2108
    iget-object p2, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 2110
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/google/android/material/a$l;->MaterialButton_rippleColor:I

    .line 2109
    invoke-static {p2, v0, v1}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 2112
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_android_checkable:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p3, Lcom/google/android/material/button/a;->r:Z

    .line 2113
    sget p2, Lcom/google/android/material/a$l;->MaterialButton_elevation:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p3, Lcom/google/android/material/button/a;->s:I

    .line 2116
    iget-object p2, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p2}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result p2

    .line 2117
    iget-object v1, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 2118
    iget-object v2, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v2

    .line 2119
    iget-object v4, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v4

    .line 2122
    sget v5, Lcom/google/android/material/a$l;->MaterialButton_android_background:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2123
    invoke-virtual {p3}, Lcom/google/android/material/button/a;->b()V

    goto :goto_0

    .line 2125
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/material/button/a;->a()V

    .line 2128
    :goto_0
    iget-object v5, p3, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget v6, p3, Lcom/google/android/material/button/a;->d:I

    add-int/2addr p2, v6

    iget v6, p3, Lcom/google/android/material/button/a;->f:I

    add-int/2addr v1, v6

    iget v6, p3, Lcom/google/android/material/button/a;->e:I

    add-int/2addr v2, v6

    iget p3, p3, Lcom/google/android/material/button/a;->g:I

    add-int/2addr v4, p3

    invoke-static {v5, p2, v1, v2, v4}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 254
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 518
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 519
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    .line 520
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 521
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    .line 525
    :cond_2
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 528
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->g()I

    move-result v0

    sub-int/2addr p2, v0

    .line 529
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    sub-int/2addr p2, p1

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    .line 535
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    if-eq p1, p2, :cond_4

    .line 536
    iput p2, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 537
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_4
    return-void

    .line 491
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    .line 492
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    goto :goto_2

    .line 498
    :cond_6
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 501
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->f()I

    move-result v2

    sub-int/2addr p1, v2

    .line 502
    invoke-static {p0}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    sub-int/2addr p1, p2

    .line 505
    invoke-static {p0}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 509
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->h()Z

    move-result p2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eq p2, v0, :cond_9

    neg-int p1, p1

    .line 513
    :cond_9
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    if-eq p2, p1, :cond_a

    .line 514
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 515
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_a
    return-void

    .line 493
    :cond_b
    :goto_2
    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    .line 494
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 754
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 755
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    .line 756
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 757
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 761
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 762
    :goto_0
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 763
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->l:I

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz p1, :cond_4

    .line 768
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->i()V

    return-void

    .line 773
    :cond_4
    invoke-static {p0}, Landroidx/core/widget/h;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 774
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 775
    aget-object v3, p1, v2

    const/4 v4, 0x2

    .line 776
    aget-object p1, p1, v4

    .line 778
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-ne v1, v4, :cond_7

    .line 779
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_7

    .line 780
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    .line 783
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->i()V

    :cond_9
    return-void
.end method

.method private f()I
    .locals 3

    .line 543
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 5

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 556
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 564
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 566
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    .line 570
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 2

    .line 788
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v1, v1, v1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 790
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v1, v0, v1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v0, v1, v1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private j()Z
    .locals 3

    .line 798
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private k()Z
    .locals 2

    .line 802
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private l()Z
    .locals 2

    .line 806
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    .line 11353
    iget-boolean v0, v0, Lcom/google/android/material/button/a;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 581
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 932
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10293
    iget v0, v0, Lcom/google/android/material/button/a;->i:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lcom/google/android/material/k/m;
    .locals 2

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 12394
    iget-object v0, v0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    return-object v0

    .line 1173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method e()Z
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    .line 13158
    iget-boolean v0, v0, Lcom/google/android/material/button/a;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 4176
    iget-object v0, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    return-object v0

    .line 333
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 6189
    iget-object v0, v0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 370
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1107
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 468
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onAttachedToWindow()V

    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    const/4 v1, 0x0

    .line 8345
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 471
    invoke-static {p0, v0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 1045
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1047
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    .line 1051
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->g:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 275
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 266
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 267
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 447
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 449
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    .line 8244
    iget-object p2, p1, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 8245
    iget-object p2, p1, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lcom/google/android/material/button/a;->d:I

    iget v0, p1, Lcom/google/android/material/button/a;->f:I

    iget v1, p1, Lcom/google/android/material/button/a;->e:I

    sub-int/2addr p4, v1

    iget p1, p1, Lcom/google/android/material/button/a;->g:I

    sub-int/2addr p5, p1

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 290
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 294
    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 295
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 296
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 282
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 284
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    iput-boolean v0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onSizeChanged(IIII)V

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 462
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 1119
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    const/4 v1, 0x0

    .line 6345
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7345
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 6251
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setTint(I)V

    :cond_0
    return-void

    .line 403
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->b()V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .line 441
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 418
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 387
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 12349
    iput-boolean p1, v0, Lcom/google/android/material/button/a;->r:Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1088
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    if-eq v0, p1, :cond_2

    .line 1089
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    .line 1090
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 1093
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1097
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 1098
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$a;

    .line 1099
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$a;->a(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1101
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->p:Z

    :cond_2
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2

    .line 944
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10314
    iget-boolean v1, v0, Lcom/google/android/material/button/a;->q:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/material/button/a;->h:I

    if-eq v1, p1, :cond_1

    .line 10315
    :cond_0
    iput p1, v0, Lcom/google/android/material/button/a;->h:I

    const/4 v1, 0x1

    .line 10316
    iput-boolean v1, v0, Lcom/google/android/material/button/a;->q:Z

    .line 10318
    iget-object v1, v0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/k/m;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/m;->a(F)Lcom/google/android/material/k/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/k/m;)V

    :cond_1
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 958
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 479
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setElevation(F)V

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    const/4 v1, 0x0

    .line 9345
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 481
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->r(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 651
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 652
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 996
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    if-eq v0, p1, :cond_0

    .line 997
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    .line 998
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->a(II)V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 592
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    if-eq v0, p1, :cond_0

    .line 593
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    .line 594
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 670
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 622
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    if-eq v0, p1, :cond_0

    .line 623
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->k:I

    const/4 p1, 0x1

    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void

    .line 619
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "iconSize cannot be less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 695
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 696
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 733
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 734
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setInsetBottom(I)V
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10398
    iget v1, v0, Lcom/google/android/material/button/a;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/button/a;->a(II)V

    return-void
.end method

.method public setInsetTop(I)V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10406
    iget v1, v0, Lcom/google/android/material/button/a;->g:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/button/a;->a(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->c:Lcom/google/android/material/button/MaterialButton$b;

    if-eqz v0, :cond_0

    .line 1190
    invoke-interface {v0}, Lcom/google/android/material/button/MaterialButton$b;->a()V

    .line 1192
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setPressed(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10256
    iget-object v1, v0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 10257
    iput-object p1, v0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 10258
    sget-boolean v1, Lcom/google/android/material/button/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 10259
    iget-object v0, v0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 10260
    invoke-static {p1}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 10261
    :cond_0
    sget-boolean v1, Lcom/google/android/material/button/a;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/i/a;

    if-eqz v1, :cond_1

    .line 10262
    iget-object v0, v0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/i/a;

    .line 10263
    invoke-static {p1}, Lcom/google/android/material/i/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 10262
    invoke-virtual {v0, p1}, Lcom/google/android/material/i/a;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 1

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/k/m;)V

    return-void

    .line 1154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 860
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10274
    iget-object v1, v0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 10275
    iput-object p1, v0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 10276
    invoke-virtual {v0}, Lcom/google/android/material/button/a;->c()V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 875
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 902
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 10286
    iget v1, v0, Lcom/google/android/material/button/a;->i:I

    if-eq v1, p1, :cond_0

    .line 10287
    iput p1, v0, Lcom/google/android/material/button/a;->i:I

    .line 10288
    invoke-virtual {v0}, Lcom/google/android/material/button/a;->c()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 2167
    iget-object v1, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2168
    iput-object p1, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 2345
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3345
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object p1

    .line 2170
    iget-object v0, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void

    .line 313
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->a:Lcom/google/android/material/button/a;

    .line 4180
    iget-object v1, v0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 4181
    iput-object p1, v0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 4345
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4182
    iget-object v1, v0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 5345
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/a;->a(Z)Lcom/google/android/material/k/h;

    move-result-object p1

    .line 4183
    iget-object v0, v0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void

    .line 351
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
