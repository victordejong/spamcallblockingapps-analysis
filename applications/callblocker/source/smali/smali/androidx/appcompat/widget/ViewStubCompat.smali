.class public final Landroidx/appcompat/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ViewStubCompat$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroidx/appcompat/widget/ViewStubCompat$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 59
    sget-object v0, Landroidx/appcompat/a$j;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Landroidx/appcompat/a$j;->ViewStubCompat_android_inflatedId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 63
    sget v1, Landroidx/appcompat/a$j;->ViewStubCompat_android_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 65
    sget v1, Landroidx/appcompat/a$j;->ViewStubCompat_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ViewStubCompat;->setId(I)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setWillNotDraw(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 199
    iget v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    if-eqz v1, :cond_4

    .line 200
    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    iget-object v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    .line 207
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 210
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 211
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 214
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 215
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 217
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_3

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->c:Ljava/lang/ref/WeakReference;

    .line 226
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->e:Landroidx/appcompat/widget/ViewStubCompat$a;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->e:Landroidx/appcompat/widget/ViewStubCompat$a;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/widget/ViewStubCompat$a;->a(Landroidx/appcompat/widget/ViewStubCompat;Landroid/view/View;)V

    .line 230
    :cond_1
    return-object v1

    .line 205
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 232
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ViewStub must have a valid layoutResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setMeasuredDimension(II)V

    .line 150
    return-void
.end method

.method public setInflatedId(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->b:I

    .line 98
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->d:Landroid/view/LayoutInflater;

    .line 138
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->a:I

    .line 130
    return-void
.end method

.method public setOnInflateListener(Landroidx/appcompat/widget/ViewStubCompat$a;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->e:Landroidx/appcompat/widget/ViewStubCompat$a;

    .line 249
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 175
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setVisibility called on un-referenced view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 183
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    goto :goto_0
.end method
