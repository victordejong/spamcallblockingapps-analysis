.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/k/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/MaterialCardView$a;
    }
.end annotation


# static fields
.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:I


# instance fields
.field private final i:Lcom/google/android/material/card/a;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/material/card/MaterialCardView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 89
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->e:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    .line 90
    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->f:[I

    new-array v0, v0, [I

    .line 91
    sget v1, Lcom/google/android/material/a$b;->state_dragged:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->g:[I

    .line 93
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/MaterialCardView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 114
    sget v0, Lcom/google/android/material/a$b;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 118
    sget v6, Lcom/google/android/material/card/MaterialCardView;->h:I

    invoke-static {p1, p2, p3, v6}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    .line 106
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    sget-object v2, Lcom/google/android/material/a$l;->MaterialCardView:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    move v4, v6

    .line 124
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/google/android/material/card/a;

    invoke-direct {v1, p0, p2, p3, v6}, Lcom/google/android/material/card/a;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 129
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/material/card/a;->b(Landroid/content/res/ColorStateList;)V

    .line 131
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p2

    .line 132
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result p3

    .line 133
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    .line 134
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v3

    .line 130
    invoke-virtual {v1, p2, p3, v2, v3}, Lcom/google/android/material/card/a;->a(IIII)V

    .line 1146
    iget-object p2, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1147
    invoke-virtual {p2}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$l;->MaterialCardView_strokeColor:I

    .line 1146
    invoke-static {p2, v0, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    .line 1150
    iget-object p2, v1, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 1151
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    .line 1154
    :cond_0
    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_strokeWidth:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v1, Lcom/google/android/material/card/a;->g:I

    .line 1155
    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_android_checkable:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Lcom/google/android/material/card/a;->q:Z

    .line 1156
    iget-object p2, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-boolean p3, v1, Lcom/google/android/material/card/a;->q:Z

    invoke-virtual {p2, p3}, Lcom/google/android/material/card/MaterialCardView;->setLongClickable(Z)V

    .line 1157
    iget-object p2, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1158
    invoke-virtual {p2}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$l;->MaterialCardView_checkedIconTint:I

    .line 1157
    invoke-static {p2, v0, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/material/card/a;->k:Landroid/content/res/ColorStateList;

    .line 1159
    iget-object p2, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1161
    invoke-virtual {p2}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$l;->MaterialCardView_checkedIcon:I

    .line 1160
    invoke-static {p2, v0, p3}, Lcom/google/android/material/h/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1159
    invoke-virtual {v1, p2}, Lcom/google/android/material/card/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_checkedIconSize:I

    .line 1163
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 1404
    iput p2, v1, Lcom/google/android/material/card/a;->f:I

    .line 1164
    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_checkedIconMargin:I

    .line 1165
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 1413
    iput p1, v1, Lcom/google/android/material/card/a;->e:I

    .line 1167
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1169
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_rippleColor:I

    .line 1168
    invoke-static {p1, v0, p2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    .line 1170
    iget-object p1, v1, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_1

    .line 1171
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    sget p2, Lcom/google/android/material/a$b;->colorControlHighlight:I

    .line 2053
    invoke-static {p1, p2}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result p1

    .line 1172
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    .line 1176
    :cond_1
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1178
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/google/android/material/a$l;->MaterialCardView_cardForegroundColor:I

    .line 1177
    invoke-static {p1, v0, p2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1182
    invoke-virtual {v1, p1}, Lcom/google/android/material/card/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1184
    invoke-virtual {v1}, Lcom/google/android/material/card/a;->k()V

    .line 1185
    invoke-virtual {v1}, Lcom/google/android/material/card/a;->a()V

    .line 1186
    invoke-virtual {v1}, Lcom/google/android/material/card/a;->c()V

    .line 1188
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object p2, v1, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p2}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2373
    invoke-super {p1, p2}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 1190
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/material/card/a;->j()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, v1, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    :goto_0
    iput-object p1, v1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    .line 1191
    iget-object p1, v1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object p2, v1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    if-eqz v0, :cond_0

    .line 12354
    iget-boolean v0, v0, Lcom/google/android/material/card/a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 2

    .line 631
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0}, Lcom/google/android/material/card/a;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(IIII)V
    .locals 0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final al_()F
    .locals 1

    .line 4076
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    return v0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 9244
    iget-object v0, v0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 9317
    iget-object v0, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 8263
    iget-object v0, v0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    .line 272
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 5263
    iget-object v0, v0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    .line 257
    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 7263
    iget-object v0, v0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    .line 267
    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 6263
    iget-object v0, v0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    .line 262
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 3289
    iget-object v0, v0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->k()F

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 323
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    .line 325
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 11236
    iget-object v0, v0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 325
    invoke-static {p0, v0}, Lcom/google/android/material/k/i;->a(Landroid/view/View;Lcom/google/android/material/k/h;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    .line 440
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 441
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->e:[I

    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    .line 13403
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    if-eqz v0, :cond_2

    .line 450
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->g:[I

    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 153
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    .line 160
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    .line 161
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredHeight()I

    move-result v0

    .line 2417
    iget-object v1, p1, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    .line 2418
    iget v1, p1, Lcom/google/android/material/card/a;->e:I

    sub-int/2addr p2, v1

    iget v1, p1, Lcom/google/android/material/card/a;->f:I

    sub-int/2addr p2, v1

    .line 2419
    iget v1, p1, Lcom/google/android/material/card/a;->e:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/material/card/a;->f:I

    sub-int/2addr v0, v1

    .line 2420
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2421
    iget-object v1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2422
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/card/a;->f()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int/2addr v0, v1

    .line 2423
    invoke-virtual {p1}, Lcom/google/android/material/card/a;->g()F

    move-result v1

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr p2, v1

    :cond_2
    move v9, v0

    .line 2426
    iget v0, p1, Lcom/google/android/material/card/a;->e:I

    .line 2427
    iget-object v1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v8, p2

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, p2

    move v8, v0

    .line 2434
    :goto_1
    iget-object v4, p1, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    iget v7, p1, Lcom/google/android/material/card/a;->e:I

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_4
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 12195
    iget-boolean v0, v0, Lcom/google/android/material/card/a;->p:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    const/4 v1, 0x1

    .line 12199
    iput-boolean v1, v0, Lcom/google/android/material/card/a;->p:Z

    .line 366
    :cond_0
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 330
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 331
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->a()V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->c(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 13350
    iput-boolean p1, v0, Lcom/google/android/material/card/a;->q:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    if-eq v0, p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 15413
    iput p1, v0, Lcom/google/android/material/card/a;->e:I

    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 600
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 16413
    iput p1, v0, Lcom/google/android/material/card/a;->e:I

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 14404
    iput p1, v0, Lcom/google/android/material/card/a;->f:I

    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 15404
    iput p1, v0, Lcom/google/android/material/card/a;->f:I

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 14363
    iput-object p1, v0, Lcom/google/android/material/card/a;->k:Landroid/content/res/ColorStateList;

    .line 14364
    iget-object v1, v0, Lcom/google/android/material/card/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 14365
    iget-object v0, v0, Lcom/google/android/material/card/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    .line 315
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 316
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    if-eqz p1, :cond_2

    .line 10267
    iget-object v0, p1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    .line 10268
    iget-object v1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 10269
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    :goto_0
    iput-object v1, p1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    .line 10270
    iget-object v1, p1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    .line 10271
    iget-object v0, p1, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    .line 10479
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 10480
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_1

    .line 10481
    iget-object p1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 10483
    :cond_1
    iget-object v1, p1, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/card/a;->a(IIII)V

    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    if-eq v0, p1, :cond_0

    .line 395
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    .line 396
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->refreshDrawableState()V

    .line 397
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 336
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 337
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->b()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/MaterialCardView$a;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->m:Lcom/google/android/material/card/MaterialCardView$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 349
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 350
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->b()V

    .line 351
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->d()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 4293
    iget-object v1, v0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/h;->p(F)V

    .line 4294
    iget-object v1, v0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    if-eqz v1, :cond_0

    .line 4295
    iget-object v1, v0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/h;->p(F)V

    .line 4298
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/card/a;->o:Lcom/google/android/material/k/h;

    if-eqz v1, :cond_1

    .line 4299
    iget-object v0, v0, Lcom/google/android/material/card/a;->o:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->p(F)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 212
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 213
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 3276
    iget-object v1, v0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    invoke-virtual {v1, p1}, Lcom/google/android/material/k/m;->a(F)Lcom/google/android/material/k/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/m;)V

    .line 3277
    iget-object p1, v0, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 3278
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3279
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3280
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->d()V

    .line 3283
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3284
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->b()V

    :cond_2
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 486
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/k/m;)V
    .locals 2

    .line 613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 16606
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16607
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 17236
    iget-object v1, v1, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 16607
    invoke-virtual {v1}, Lcom/google/android/material/k/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 614
    invoke-virtual {p1, v0}, Lcom/google/android/material/k/m;->a(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setClipToOutline(Z)V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/m;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    .line 3222
    iget v1, v0, Lcom/google/android/material/card/a;->g:I

    if-eq p1, v1, :cond_0

    .line 3225
    iput p1, v0, Lcom/google/android/material/card/a;->g:I

    .line 3226
    invoke-virtual {v0}, Lcom/google/android/material/card/a;->c()V

    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 342
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 343
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->b()V

    .line 344
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Lcom/google/android/material/card/a;

    invoke-virtual {p1}, Lcom/google/android/material/card/a;->d()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 428
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    .line 430
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->refreshDrawableState()V

    .line 431
    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    :cond_0
    return-void
.end method
