.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/a/a/a;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 119
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 124
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 129
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/a/e;IZ)V
    .locals 5

    .line 151
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    .line 152
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x11

    if-ge p2, v4, :cond_1

    .line 155
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    if-ne p2, v3, :cond_0

    .line 156
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_5

    .line 158
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 163
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    if-ne p2, v3, :cond_2

    .line 164
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_5

    .line 166
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    goto :goto_0

    .line 169
    :cond_3
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    if-ne p2, v3, :cond_4

    .line 170
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    goto :goto_0

    :cond_4
    if-ne p2, v2, :cond_5

    .line 172
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    .line 176
    :cond_5
    :goto_0
    instance-of p2, p1, Landroidx/constraintlayout/a/a/a;

    if-eqz p2, :cond_6

    .line 177
    check-cast p1, Landroidx/constraintlayout/a/a/a;

    .line 178
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->c:I

    .line 1055
    iput p2, p1, Landroidx/constraintlayout/a/a/a;->a:I

    :cond_6
    return-void
.end method


# virtual methods
.method protected final a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 193
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroid/util/AttributeSet;)V

    .line 194
    new-instance v0, Landroidx/constraintlayout/a/a/a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 199
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 200
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_0

    .line 201
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_1

    .line 202
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1058
    iput-boolean v3, v4, Landroidx/constraintlayout/a/a/a;->b:Z

    goto :goto_1

    .line 204
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/e$b;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_2

    .line 205
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 206
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 1230
    iput v3, v4, Landroidx/constraintlayout/a/a/a;->c:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    iput-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->m:Landroidx/constraintlayout/a/a/i;

    .line 212
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->c()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/e;Z)V
    .locals 1

    .line 184
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/Barrier;->a(Landroidx/constraintlayout/a/a/e;IZ)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/a/a/j;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/c$a;",
            "Landroidx/constraintlayout/a/a/j;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->a(Landroidx/constraintlayout/widget/c$a;Landroidx/constraintlayout/a/a/j;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 255
    instance-of p3, p2, Landroidx/constraintlayout/a/a/a;

    if-eqz p3, :cond_0

    .line 256
    move-object p3, p2

    check-cast p3, Landroidx/constraintlayout/a/a/a;

    .line 3620
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 257
    check-cast p2, Landroidx/constraintlayout/a/a/f;

    .line 4473
    iget-boolean p2, p2, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 259
    iget-object p4, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iget p4, p4, Landroidx/constraintlayout/widget/c$b;->ab:I

    invoke-direct {p0, p3, p4, p2}, Landroidx/constraintlayout/widget/Barrier;->a(Landroidx/constraintlayout/a/a/e;IZ)V

    .line 260
    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/c$b;->aj:Z

    .line 5058
    iput-boolean p2, p3, Landroidx/constraintlayout/a/a/a;->b:Z

    .line 261
    iget-object p1, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$b;

    iget p1, p1, Landroidx/constraintlayout/widget/c$b;->ac:I

    .line 5230
    iput p1, p3, Landroidx/constraintlayout/a/a/a;->c:I

    :cond_0
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 2058
    iput-boolean p1, v0, Landroidx/constraintlayout/a/a/a;->b:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 2230
    iput p1, v0, Landroidx/constraintlayout/a/a/a;->c:I

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->b:Landroidx/constraintlayout/a/a/a;

    .line 3230
    iput p1, v0, Landroidx/constraintlayout/a/a/a;->c:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 147
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    return-void
.end method
