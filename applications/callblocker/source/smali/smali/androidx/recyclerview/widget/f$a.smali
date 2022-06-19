.class Landroidx/recyclerview/widget/f$a;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$i$a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:[I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/f$a;->d:I

    .line 156
    return-void
.end method

.method a(II)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Landroidx/recyclerview/widget/f$a;->a:I

    .line 75
    iput p2, p0, Landroidx/recyclerview/widget/f$a;->b:I

    .line 76
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/f$a;->d:I

    .line 80
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 84
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 85
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    if-eqz p2, :cond_3

    .line 91
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V

    .line 102
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/f$a;->d:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$i;->x:I

    if-le v1, v2, :cond_2

    .line 103
    iget v1, p0, Landroidx/recyclerview/widget/f$a;->d:I

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$i;->x:I

    .line 104
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$i;->y:Z

    .line 105
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b()V

    .line 108
    :cond_2
    return-void

    .line 96
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget v1, p0, Landroidx/recyclerview/widget/f$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/f$a;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V

    goto :goto_0
.end method

.method a(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    if-eqz v1, :cond_0

    .line 140
    iget v1, p0, Landroidx/recyclerview/widget/f$a;->d:I

    mul-int/lit8 v2, v1, 0x2

    move v1, v0

    .line 141
    :goto_0
    if-ge v1, v2, :cond_0

    .line 142
    iget-object v3, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public b(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    if-gez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Layout positions must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-gez p2, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pixel distance must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/f$a;->d:I

    mul-int/lit8 v0, v0, 0x2

    .line 122
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    if-nez v1, :cond_3

    .line 123
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    .line 124
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 132
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    aput p1, v1, v0

    .line 133
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    .line 135
    iget v0, p0, Landroidx/recyclerview/widget/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/f$a;->d:I

    .line 136
    return-void

    .line 125
    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 126
    iget-object v1, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    .line 127
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    .line 128
    iget-object v2, p0, Landroidx/recyclerview/widget/f$a;->c:[I

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
