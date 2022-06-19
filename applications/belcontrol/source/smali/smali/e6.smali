.class public Le6;
.super Lz5;
.source ""

# interfaces
.implements Ld6;


# instance fields
.field public K0:[Lz5;

.field public L0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz5;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lz5;

    iput-object v0, p0, Le6;->K0:[Lz5;

    const/4 v0, 0x0

    iput v0, p0, Le6;->L0:I

    return-void
.end method


# virtual methods
.method public a(Lz5;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Le6;->L0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le6;->K0:[Lz5;

    array-length v2, v1

    if-le v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz5;

    iput-object v0, p0, Le6;->K0:[Lz5;

    :cond_1
    iget-object v0, p0, Le6;->K0:[Lz5;

    iget v1, p0, Le6;->L0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le6;->L0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Le6;->L0:I

    iget-object v0, p0, Le6;->K0:[Lz5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(La6;)V
    .locals 0

    return-void
.end method

.method public e1(Ljava/util/ArrayList;ILw6;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lw6;",
            ">;I",
            "Lw6;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le6;->L0:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Le6;->K0:[Lz5;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Lw6;->a(Lz5;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Le6;->L0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Le6;->K0:[Lz5;

    aget-object v1, v1, v0

    invoke-static {v1, p2, p1, p3}, Lq6;->a(Lz5;ILjava/util/ArrayList;Lw6;)Lw6;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public f1(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le6;->L0:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Le6;->K0:[Lz5;

    aget-object v1, v1, v0

    if-nez p1, :cond_0

    iget v3, v1, Lz5;->H0:I

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget v1, v1, Lz5;->I0:I

    if-eq v1, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public m(Lz5;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz5;",
            "Ljava/util/HashMap<",
            "Lz5;",
            "Lz5;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lz5;->m(Lz5;Ljava/util/HashMap;)V

    check-cast p1, Le6;

    const/4 v0, 0x0

    iput v0, p0, Le6;->L0:I

    iget v1, p1, Le6;->L0:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p1, Le6;->K0:[Lz5;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz5;

    invoke-virtual {p0, v2}, Le6;->a(Lz5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
