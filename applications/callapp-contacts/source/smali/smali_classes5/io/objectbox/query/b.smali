.class public final Lio/objectbox/query/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/query/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:I

.field private final b:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final c:[J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile e:I


# direct methods
.method public constructor <init>(Lio/objectbox/a;[JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/a<",
            "TE;>;[JZ)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 130
    iput-object p1, p0, Lio/objectbox/query/b;->b:Lio/objectbox/a;

    .line 131
    iput-object p2, p0, Lio/objectbox/query/b;->c:[J

    .line 132
    array-length p1, p2

    iput p1, p0, Lio/objectbox/query/b;->a:I

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 134
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 135
    :goto_0
    iget p3, p0, Lio/objectbox/query/b;->a:I

    if-ge p1, p3, :cond_0

    .line 136
    iget-object p3, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 139
    :cond_1
    iput-object p2, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    return-void

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Illegal null parameters passed"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 2

    .line 145
    iget v0, p0, Lio/objectbox/query/b;->e:I

    iget v1, p0, Lio/objectbox/query/b;->a:I

    if-eq v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lio/objectbox/query/b;->b()V

    .line 148
    iget-object v0, p0, Lio/objectbox/query/b;->b:Lio/objectbox/a;

    .line 1576
    iget-object v0, v0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 148
    new-instance v1, Lio/objectbox/query/-$$Lambda$b$mA87EAqXLimkx-eduBLWpEyewhA;

    invoke-direct {v1, p0}, Lio/objectbox/query/-$$Lambda$b$mA87EAqXLimkx-eduBLWpEyewhA;-><init>(Lio/objectbox/query/b;)V

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 158
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v1, "This operation only works with cached lazy lists"

    invoke-direct {v0, v1}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic c()V
    .locals 2

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget v1, p0, Lio/objectbox/query/b;->a:I

    if-ge v0, v1, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lio/objectbox/query/b;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$mA87EAqXLimkx-eduBLWpEyewhA(Lio/objectbox/query/b;)V
    .locals 0

    invoke-direct {p0}, Lio/objectbox/query/b;->c()V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 187
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 197
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 192
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 207
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 208
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 214
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_3

    .line 225
    iget v0, p0, Lio/objectbox/query/b;->a:I

    if-gt p1, v0, :cond_3

    .line 228
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lio/objectbox/query/b;->b:Lio/objectbox/a;

    iget-object v1, p0, Lio/objectbox/query/b;->c:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3}, Lio/objectbox/a;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 233
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v1, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget p1, p0, Lio/objectbox/query/b;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/objectbox/query/b;->e:I

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 242
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-object v0

    .line 246
    :cond_2
    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v0, p0, Lio/objectbox/query/b;->b:Lio/objectbox/a;

    iget-object v1, p0, Lio/objectbox/query/b;->c:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3}, Lio/objectbox/a;->a(J)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    .line 248
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 226
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Illegal cursor location "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 254
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 255
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 260
    iget v0, p0, Lio/objectbox/query/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Lio/objectbox/query/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/objectbox/query/b$a;-><init>(Lio/objectbox/query/b;I)V

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 270
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 271
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 276
    new-instance v0, Lio/objectbox/query/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/objectbox/query/b$a;-><init>(Lio/objectbox/query/b;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 281
    new-instance v0, Lio/objectbox/query/b$a;

    invoke-direct {v0, p0, p1}, Lio/objectbox/query/b$a;-><init>(Lio/objectbox/query/b;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 286
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 291
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 296
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 306
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 311
    iget v0, p0, Lio/objectbox/query/b;->a:I

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lio/objectbox/query/b;->b()V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Lio/objectbox/query/b;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 325
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 326
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 331
    invoke-direct {p0}, Lio/objectbox/query/b;->a()V

    .line 332
    iget-object v0, p0, Lio/objectbox/query/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
