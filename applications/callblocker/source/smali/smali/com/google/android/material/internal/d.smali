.class public Lcom/google/android/material/internal/d;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# instance fields
.field protected a:Z

.field b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/d;->d:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/d;->e:Landroid/graphics/Rect;

    .line 47
    const/16 v0, 0x77

    iput v0, p0, Lcom/google/android/material/internal/d;->f:I

    .line 49
    iput-boolean v6, p0, Lcom/google/android/material/internal/d;->a:Z

    .line 51
    iput-boolean v4, p0, Lcom/google/android/material/internal/d;->b:Z

    .line 65
    sget-object v2, Lcom/google/android/material/a$l;->ForegroundLinearLayout:[I

    new-array v5, v4, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    sget v1, Lcom/google/android/material/a$l;->ForegroundLinearLayout_android_foregroundGravity:I

    iget v2, p0, Lcom/google/android/material/internal/d;->f:I

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/d;->f:I

    .line 72
    sget v1, Lcom/google/android/material/a$l;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/d;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    sget v1, Lcom/google/android/material/a$l;->ForegroundLinearLayout_foregroundInsidePadding:I

    .line 78
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/internal/d;->a:Z

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 205
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    .line 210
    iget-boolean v1, p0, Lcom/google/android/material/internal/d;->b:Z

    if-eqz v1, :cond_0

    .line 211
    iput-boolean v6, p0, Lcom/google/android/material/internal/d;->b:Z

    .line 212
    iget-object v1, p0, Lcom/google/android/material/internal/d;->d:Landroid/graphics/Rect;

    .line 213
    iget-object v2, p0, Lcom/google/android/material/internal/d;->e:Landroid/graphics/Rect;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 218
    iget-boolean v5, p0, Lcom/google/android/material/internal/d;->a:Z

    if-eqz v5, :cond_2

    .line 219
    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    :goto_0
    iget v3, p0, Lcom/google/android/material/internal/d;->f:I

    .line 227
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 228
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 225
    invoke-static {v3, v4, v5, v1, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 236
    :cond_1
    return-void

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getPaddingRight()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    .line 221
    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    .line 243
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 246
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawableStateChanged()V

    .line 139
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 142
    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/material/internal/d;->f:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    .line 131
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 134
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 193
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 194
    iget-boolean v0, p0, Lcom/google/android/material/internal/d;->b:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/google/android/material/internal/d;->b:Z

    .line 195
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/d;->b:Z

    .line 201
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 154
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/d;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    .line 161
    if-eqz p1, :cond_4

    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/d;->setWillNotDraw(Z)V

    .line 163
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 167
    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/d;->f:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 169
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 174
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->requestLayout()V

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->invalidate()V

    .line 177
    :cond_3
    return-void

    .line 172
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/d;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/material/internal/d;->f:I

    if-eq v0, p1, :cond_2

    .line 103
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 104
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 107
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 108
    or-int/lit8 v0, v0, 0x30

    .line 111
    :cond_0
    iput v0, p0, Lcom/google/android/material/internal/d;->f:I

    .line 113
    iget v0, p0, Lcom/google/android/material/internal/d;->f:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/internal/d;->requestLayout()V

    .line 120
    :cond_2
    return-void

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/d;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
