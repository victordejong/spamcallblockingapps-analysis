.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/c;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$d;,
        Lcom/google/android/material/chip/ChipGroup$a;,
        Lcom/google/android/material/chip/ChipGroup$b;,
        Lcom/google/android/material/chip/ChipGroup$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/material/chip/ChipGroup$c;

.field private final e:Lcom/google/android/material/chip/ChipGroup$a;

.field private f:Lcom/google/android/material/chip/ChipGroup$d;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/google/android/material/a$b;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$a;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->e:Lcom/google/android/material/chip/ChipGroup$a;

    .line 93
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$d;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$d;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$d;

    .line 97
    iput v7, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    .line 98
    iput-boolean v6, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    .line 111
    sget-object v2, Lcom/google/android/material/a$l;->ChipGroup:[I

    sget v4, Lcom/google/android/material/a$k;->Widget_MaterialComponents_ChipGroup:I

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    sget v1, Lcom/google/android/material/a$l;->ChipGroup_chipSpacing:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 120
    sget v2, Lcom/google/android/material/a$l;->ChipGroup_chipSpacingHorizontal:I

    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 122
    sget v2, Lcom/google/android/material/a$l;->ChipGroup_chipSpacingVertical:I

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 124
    sget v1, Lcom/google/android/material/a$l;->ChipGroup_singleLine:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 125
    sget v1, Lcom/google/android/material/a$l;->ChipGroup_singleSelection:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 126
    sget v1, Lcom/google/android/material/a$l;->ChipGroup_checkedChip:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 127
    if-eq v1, v7, :cond_0

    .line 128
    iput v1, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-super {p0, v0}, Lcom/google/android/material/internal/c;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 133
    return-void
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 307
    instance-of v1, v0, Lcom/google/android/material/chip/Chip;

    if-eqz v1, :cond_0

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    .line 309
    check-cast v0, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    .line 312
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->e:Lcom/google/android/material/chip/ChipGroup$a;

    return-object v0
.end method

.method private setCheckedId(I)V
    .locals 1

    .prologue
    .line 298
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    .line 300
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Lcom/google/android/material/chip/ChipGroup$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Lcom/google/android/material/chip/ChipGroup$c;

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$c;->a(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    move v1, v2

    .line 276
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 277
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    instance-of v3, v0, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 279
    check-cast v0, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 276
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->h:Z

    .line 284
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 285
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 177
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 179
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    if-eqz v1, :cond_0

    .line 181
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    .line 183
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 187
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/c;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/google/android/material/internal/c;->b()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/google/android/material/internal/c;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/material/chip/ChipGroup$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 150
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->a:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/android/material/internal/c;->onFinishInflate()V

    .line 169
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 170
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    .line 171
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 318
    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->a:I

    if-eq v0, p1, :cond_0

    .line 334
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->a:I

    .line 335
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 336
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 338
    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 343
    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    .line 323
    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    if-eq v0, p1, :cond_0

    .line 354
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    .line 358
    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 363
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlexWrap(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$c;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->d:Lcom/google/android/material/chip/ChipGroup$c;

    .line 295
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$d;->a(Lcom/google/android/material/chip/ChipGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 162
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowDividerVertical(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleLine(I)V
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 382
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0, p1}, Lcom/google/android/material/internal/c;->setSingleLine(Z)V

    .line 377
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 409
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    if-eq v0, p1, :cond_0

    .line 396
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->c:Z

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->a()V

    .line 400
    :cond_0
    return-void
.end method
