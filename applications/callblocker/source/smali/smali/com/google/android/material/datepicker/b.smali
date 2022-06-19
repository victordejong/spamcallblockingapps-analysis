.class final Lcom/google/android/material/datepicker/b;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/content/res/ColorStateList;

.field private final e:I

.field private final f:Lcom/google/android/material/q/k;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/q/k;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/g/f;->a(I)I

    .line 68
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/g/f;->a(I)I

    .line 69
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/g/f;->a(I)I

    .line 70
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/g/f;->a(I)I

    .line 72
    iput-object p6, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    .line 73
    iput-object p2, p0, Lcom/google/android/material/datepicker/b;->b:Landroid/content/res/ColorStateList;

    .line 74
    iput-object p1, p0, Lcom/google/android/material/datepicker/b;->c:Landroid/content/res/ColorStateList;

    .line 75
    iput-object p3, p0, Lcom/google/android/material/datepicker/b;->d:Landroid/content/res/ColorStateList;

    .line 76
    iput p4, p0, Lcom/google/android/material/datepicker/b;->e:I

    .line 77
    iput-object p5, p0, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/q/k;

    .line 78
    return-void
.end method

.method static a(Landroid/content/Context;I)Lcom/google/android/material/datepicker/b;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 87
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v0, v1}, Landroidx/core/g/f;->a(ZLjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/google/android/material/a$l;->MaterialCalendarItem:[I

    .line 91
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    sget v1, Lcom/google/android/material/a$l;->MaterialCalendarItem_android_insetLeft:I

    .line 93
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 95
    sget v2, Lcom/google/android/material/a$l;->MaterialCalendarItem_android_insetTop:I

    .line 96
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 98
    sget v3, Lcom/google/android/material/a$l;->MaterialCalendarItem_android_insetRight:I

    .line 99
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 101
    sget v4, Lcom/google/android/material/a$l;->MaterialCalendarItem_android_insetBottom:I

    .line 102
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    sget v1, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemFillColor:I

    .line 107
    invoke-static {p0, v0, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 109
    sget v2, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemTextColor:I

    .line 110
    invoke-static {p0, v0, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 112
    sget v3, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemStrokeColor:I

    .line 113
    invoke-static {p0, v0, v3}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 115
    sget v4, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemStrokeWidth:I

    .line 116
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 118
    sget v7, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemShapeAppearance:I

    .line 119
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 120
    sget v8, Lcom/google/android/material/a$l;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 121
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 125
    invoke-static {p0, v7, v5}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;II)Lcom/google/android/material/q/k$a;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v5

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    new-instance v0, Lcom/google/android/material/datepicker/b;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/b;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/q/k;Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    move v0, v5

    .line 87
    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method a(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/material/q/g;

    invoke-direct {v0}, Lcom/google/android/material/q/g;-><init>()V

    .line 137
    new-instance v2, Lcom/google/android/material/q/g;

    invoke-direct {v2}, Lcom/google/android/material/q/g;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/q/k;

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 139
    iget-object v1, p0, Lcom/google/android/material/datepicker/b;->f:Lcom/google/android/material/q/k;

    invoke-virtual {v2, v1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/material/datepicker/b;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 141
    iget v1, p0, Lcom/google/android/material/datepicker/b;->e:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/material/datepicker/b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/q/g;->a(FLandroid/content/res/ColorStateList;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/material/datepicker/b;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 145
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v3, p0, Lcom/google/android/material/datepicker/b;->b:Landroid/content/res/ColorStateList;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void

    :cond_0
    move-object v1, v0

    .line 147
    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/material/datepicker/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method
