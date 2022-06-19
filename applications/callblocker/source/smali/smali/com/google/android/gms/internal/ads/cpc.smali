.class public abstract Lcom/google/android/gms/internal/ads/cpc;
.super Lcom/google/android/gms/internal/ads/cpb;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cpb",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/cpx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/gms/internal/ads/cpe;

    sget-object v1, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpe;-><init>(Lcom/google/android/gms/internal/ads/cpc;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cpc;->a:Lcom/google/android/gms/internal/ads/cpx;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpb;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cpc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 12
    check-cast p0, Ljava/util/Collection;

    .line 13
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/cpb;

    if-eqz v0, :cond_1

    .line 14
    check-cast p0, Lcom/google/android/gms/internal/ads/cpb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->e()Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 16
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 18
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 22
    aget-object v3, v1, v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/cpo;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    :cond_2
    array-length v0, v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    goto :goto_0

    .line 32
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cpc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/cpf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/cpf;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/cpd;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpd;->a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cpd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpf;

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/cpf;->c:Z

    .line 37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cpf;->a:[Ljava/lang/Object;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cpf;->b:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v1

    move v0, v1

    .line 4
    :goto_0
    if-gtz v0, :cond_0

    .line 5
    aget-object v3, v2, v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/cpo;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 39
    array-length v0, p0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    .line 51
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 44
    array-length v2, v0

    .line 45
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 46
    aget-object v3, v0, v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/cpo;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    goto :goto_0
.end method

.method static b([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cpc;->b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cpn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cpn;-><init>([Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public static g()Lcom/google/android/gms/internal/ads/cpc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    return-object v0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v1

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cpc;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    add-int v0, p2, v1

    return v0
.end method

.method public a(II)Lcom/google/android/gms/internal/ads/cpc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/cor;->a(III)V

    .line 102
    sub-int v0, p2, p1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    return-object p0

    .line 105
    :cond_0
    if-nez v0, :cond_1

    .line 106
    sget-object p0, Lcom/google/android/gms/internal/ads/cpn;->a:Lcom/google/android/gms/internal/ads/cpc;

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cph;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/cph;-><init>(Lcom/google/android/gms/internal/ads/cpc;II)V

    move-object p0, v0

    .line 110
    goto :goto_0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/cpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpy",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpx;

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cpc;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/cpc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 115
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    .line 122
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 125
    check-cast p1, Ljava/util/List;

    .line 126
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 128
    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/util/RandomAccess;

    if-eqz v2, :cond_2

    move v2, v1

    .line 129
    :goto_1
    if-ge v2, v3, :cond_0

    .line 130
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/com;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/ads/cpc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 134
    :cond_3
    if-ge v2, v3, :cond_5

    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/cpc;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 138
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/com;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    move v0, v1

    .line 141
    goto :goto_0

    .line 140
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 142
    const/4 v1, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v2

    .line 144
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 145
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cpc;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 146
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 59
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    if-nez p1, :cond_4

    .line 64
    :goto_1
    if-ge v1, v2, :cond_0

    .line 65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 68
    :cond_4
    if-ge v1, v2, :cond_0

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 70
    goto :goto_0

    .line 74
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 75
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/com;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpb;->a()Lcom/google/android/gms/internal/ads/cpy;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 80
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_5

    .line 83
    if-nez p1, :cond_3

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 85
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_0

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 94
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 95
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/com;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 157
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cpc;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpx;

    .line 159
    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cor;->b(II)I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cpc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/google/android/gms/internal/ads/cpc;->a:Lcom/google/android/gms/internal/ads/cpx;

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cpe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/cpe;-><init>(Lcom/google/android/gms/internal/ads/cpc;I)V

    goto :goto_0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cpc;->a(II)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    return-object v0
.end method
