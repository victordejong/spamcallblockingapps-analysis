.class Landroidx/recyclerview/widget/q$a;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    return-void
.end method


# virtual methods
.method a(II)I
    .locals 1

    .prologue
    .line 156
    if-le p1, p2, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    if-ne p1, p2, :cond_1

    .line 160
    const/4 v0, 0x2

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    .line 153
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    .line 149
    return-void
.end method

.method a(IIII)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Landroidx/recyclerview/widget/q$a;->b:I

    .line 142
    iput p2, p0, Landroidx/recyclerview/widget/q$a;->c:I

    .line 143
    iput p3, p0, Landroidx/recyclerview/widget/q$a;->d:I

    .line 144
    iput p4, p0, Landroidx/recyclerview/widget/q$a;->e:I

    .line 145
    return-void
.end method

.method b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_1

    .line 167
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/q$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/q$a;->b:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/q$a;->a(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit8 v1, v1, 0x70

    if-eqz v1, :cond_2

    .line 173
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/q$a;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/q$a;->c:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/q$a;->a(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 178
    :cond_2
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit16 v1, v1, 0x700

    if-eqz v1, :cond_3

    .line 179
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/q$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/q$a;->b:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/q$a;->a(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 184
    :cond_3
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    and-int/lit16 v1, v1, 0x7000

    if-eqz v1, :cond_4

    .line 185
    iget v1, p0, Landroidx/recyclerview/widget/q$a;->a:I

    iget v2, p0, Landroidx/recyclerview/widget/q$a;->e:I

    iget v3, p0, Landroidx/recyclerview/widget/q$a;->c:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/q$a;->a(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 189
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
