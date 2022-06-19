.class public Landroidx/constraintlayout/a/a/j;
.super Landroidx/constraintlayout/a/a/e;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/a/a/i;


# instance fields
.field public aX:[Landroidx/constraintlayout/a/a/e;

.field public aY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/e;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/a/a/e;

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/a/e;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 32
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/a/e;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    iget v1, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 35
    iput v1, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/a/a/e;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/a/a/e;",
            "Landroidx/constraintlayout/a/a/e;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/e;Ljava/util/HashMap;)V

    .line 41
    check-cast p1, Landroidx/constraintlayout/a/a/j;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    .line 43
    iget v1, p1, Landroidx/constraintlayout/a/a/j;->aY:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    iget-object v2, p1, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/j;->a(Landroidx/constraintlayout/a/a/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;ILandroidx/constraintlayout/a/a/a/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/a/o;",
            ">;I",
            "Landroidx/constraintlayout/a/a/a/o;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    if-ge v1, v2, :cond_0

    .line 59
    iget-object v2, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v2, v2, v1

    .line 60
    invoke-virtual {p3, v2}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/a/e;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    .line 64
    invoke-static {v1, p2, p1, p3}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public f_()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(I)I
    .locals 4

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/a/a/j;->aY:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 70
    iget-object v1, p0, Landroidx/constraintlayout/a/a/j;->aX:[Landroidx/constraintlayout/a/a/e;

    aget-object v1, v1, v0

    if-nez p1, :cond_0

    .line 71
    iget v3, v1, Landroidx/constraintlayout/a/a/e;->aG:I

    if-eq v3, v2, :cond_0

    .line 72
    iget p1, v1, Landroidx/constraintlayout/a/a/e;->aG:I

    return p1

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 74
    iget v3, v1, Landroidx/constraintlayout/a/a/e;->aH:I

    if-eq v3, v2, :cond_1

    .line 75
    iget p1, v1, Landroidx/constraintlayout/a/a/e;->aH:I

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
