.class public final Landroidx/media2/exoplayer/external/source/MergingMediaSource;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Landroidx/media2/exoplayer/external/source/t;

.field private final b:[Landroidx/media2/exoplayer/external/al;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/t;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/media2/exoplayer/external/source/g;

.field private e:I

.field private f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/g;[Landroidx/media2/exoplayer/external/source/t;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    .line 98
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    .line 99
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->d:Landroidx/media2/exoplayer/external/source/g;

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 101
    iput p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->e:I

    .line 102
    array-length p1, p2

    new-array p1, p1, [Landroidx/media2/exoplayer/external/al;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/t;)V
    .locals 1

    .line 87
    new-instance v0, Landroidx/media2/exoplayer/external/source/k;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/k;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/MergingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/g;[Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 6

    .line 129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    array-length v0, v0

    new-array v1, v0, [Landroidx/media2/exoplayer/external/source/s;

    .line 130
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 132
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    aget-object v4, v4, v3

    .line 133
    invoke-virtual {v4, v2}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v4

    .line 134
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    aget-object v5, v5, v3

    invoke-interface {v5, v4, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/source/ae;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->d:Landroidx/media2/exoplayer/external/source/g;

    invoke-direct {p1, p2, v1}, Landroidx/media2/exoplayer/external/source/ae;-><init>(Landroidx/media2/exoplayer/external/source/g;[Landroidx/media2/exoplayer/external/source/s;)V

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 1177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 3

    .line 141
    check-cast p1, Landroidx/media2/exoplayer/external/source/ae;

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 143
    aget-object v1, v1, v0

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/ae;->a:[Landroidx/media2/exoplayer/external/source/s;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    const/4 p1, 0x0

    .line 114
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 3

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 2160
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2182
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->e:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2183
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->e:I

    goto :goto_0

    .line 2184
    :cond_0
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->e:I

    if-eq v0, v2, :cond_1

    .line 2185
    new-instance v0, Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2161
    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    .line 2163
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_3

    .line 2166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2167
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 2168
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2169
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a(Landroidx/media2/exoplayer/external/al;)V

    :cond_3
    return-void
.end method

.method protected final c()V
    .locals 2

    .line 149
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->c()V

    .line 150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->b:[Landroidx/media2/exoplayer/external/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->e:I

    .line 152
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->a:[Landroidx/media2/exoplayer/external/source/t;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/t;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource;->f:Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->f()V

    return-void

    .line 122
    :cond_0
    throw v0
.end method
