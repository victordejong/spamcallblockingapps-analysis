.class public Lio/objectbox/query/QueryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/query/QueryBuilder$a;,
        Lio/objectbox/query/QueryBuilder$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public a:J

.field private final b:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/objectbox/query/a<",
            "TT;*>;>;"
        }
    .end annotation
.end field

.field private h:Lio/objectbox/query/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final j:Z


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget v0, Lio/objectbox/query/QueryBuilder$a;->a:I

    iput v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lio/objectbox/query/QueryBuilder;->b:Lio/objectbox/a;

    .line 210
    iput-wide p1, p0, Lio/objectbox/query/QueryBuilder;->c:J

    .line 211
    iput-wide p3, p0, Lio/objectbox/query/QueryBuilder;->a:J

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lio/objectbox/query/QueryBuilder;->j:Z

    return-void
.end method

.method public constructor <init>(Lio/objectbox/a;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/a<",
            "TT;>;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget v0, Lio/objectbox/query/QueryBuilder$a;->a:I

    iput v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    .line 201
    iput-object p1, p0, Lio/objectbox/query/QueryBuilder;->b:Lio/objectbox/a;

    .line 202
    iput-wide p2, p0, Lio/objectbox/query/QueryBuilder;->c:J

    .line 203
    invoke-direct {p0, p2, p3, p4}, Lio/objectbox/query/QueryBuilder;->nativeCreate(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lio/objectbox/query/QueryBuilder;->j:Z

    return-void

    .line 204
    :cond_0
    new-instance p1, Lio/objectbox/exception/DbException;

    const-string p2, "Could not create native query builder"

    invoke-direct {p1, p2}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 5

    .line 483
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 486
    iget v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    sget v1, Lio/objectbox/query/QueryBuilder$a;->a:I

    if-ne v0, v1, :cond_0

    .line 489
    iput p1, p0, Lio/objectbox/query/QueryBuilder;->f:I

    return-void

    .line 487
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another operator is pending. Use operators like and() and or() only between two conditions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 484
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No previous condition. Use operators like and() and or() only between two conditions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lio/objectbox/query/QueryBuilder;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This call is not supported on sub query builders (links)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeBetween(JIJJ)J
.end method

.method private native nativeBuild(J)J
.end method

.method private native nativeCombine(JJJZ)J
.end method

.method private native nativeContains(JILjava/lang/String;Z)J
.end method

.method private native nativeCreate(JLjava/lang/String;)J
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeEqual(JIJ)J
.end method

.method private native nativeEqual(JILjava/lang/String;Z)J
.end method

.method private native nativeGreater(JIJZ)J
.end method

.method private native nativeLess(JIJZ)J
.end method

.method private native nativeNotEqual(JIJ)J
.end method

.method private native nativeNotEqual(JILjava/lang/String;Z)J
.end method

.method private native nativeNotNull(JI)J
.end method

.method private native nativeNull(JI)J
.end method

.method private native nativeOrder(JII)V
.end method


# virtual methods
.method public final a()Lio/objectbox/query/Query;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/query/Query<",
            "TT;>;"
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lio/objectbox/query/QueryBuilder;->e()V

    .line 241
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 242
    iget v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    sget v1, Lio/objectbox/query/QueryBuilder$a;->a:I

    if-ne v0, v1, :cond_1

    .line 245
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-direct {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->nativeBuild(J)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 247
    new-instance v0, Lio/objectbox/query/Query;

    iget-object v3, p0, Lio/objectbox/query/QueryBuilder;->b:Lio/objectbox/a;

    iget-object v6, p0, Lio/objectbox/query/QueryBuilder;->g:Ljava/util/List;

    iget-object v7, p0, Lio/objectbox/query/QueryBuilder;->h:Lio/objectbox/query/d;

    iget-object v8, p0, Lio/objectbox/query/QueryBuilder;->i:Ljava/util/Comparator;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lio/objectbox/query/Query;-><init>(Lio/objectbox/a;JLjava/util/List;Lio/objectbox/query/d;Ljava/util/Comparator;)V

    .line 248
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->close()V

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Lio/objectbox/exception/DbException;

    const-string v1, "Could not create native query"

    invoke-direct {v0, v1}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incomplete logic condition. Use or()/and() between two conditions only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 505
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lio/objectbox/query/QueryBuilder;->nativeNull(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;I)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Lio/objectbox/query/QueryBuilder;->e()V

    .line 307
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 308
    iget v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    sget v1, Lio/objectbox/query/QueryBuilder$a;->a:I

    if-ne v0, v1, :cond_0

    .line 312
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lio/objectbox/query/QueryBuilder;->nativeOrder(JII)V

    return-object p0

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An operator is pending. Use operators like and() and or() only between two conditions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;J)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 521
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeEqual(JIJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final a(Lio/objectbox/g;JJ)Lio/objectbox/query/QueryBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;JJ)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 560
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    move-object v0, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lio/objectbox/query/QueryBuilder;->nativeBetween(JIJJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 695
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeEqual(JILjava/lang/String;Z)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final a(Lio/objectbox/g;Ljava/util/Date;)Lio/objectbox/query/QueryBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;",
            "Ljava/util/Date;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 636
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/objectbox/query/QueryBuilder;->nativeLess(JIJZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;Z)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 599
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    move-wide v4, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeEqual(JIJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final varargs a(Lio/objectbox/relation/b;[Lio/objectbox/relation/b;)Lio/objectbox/query/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/relation/b;",
            "[",
            "Lio/objectbox/relation/b;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 400
    invoke-direct {p0}, Lio/objectbox/query/QueryBuilder;->e()V

    .line 401
    iget-object p2, p0, Lio/objectbox/query/QueryBuilder;->g:Ljava/util/List;

    if-nez p2, :cond_0

    .line 402
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/objectbox/query/QueryBuilder;->g:Ljava/util/List;

    .line 404
    :cond_0
    iget-object p2, p0, Lio/objectbox/query/QueryBuilder;->g:Ljava/util/List;

    new-instance v0, Lio/objectbox/query/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lio/objectbox/query/a;-><init>(ILio/objectbox/relation/b;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(J)V
    .locals 9

    .line 493
    iget v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    sget v1, Lio/objectbox/query/QueryBuilder$a;->a:I

    if-eq v0, v1, :cond_1

    .line 494
    iget v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    sget v1, Lio/objectbox/query/QueryBuilder$a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 495
    :goto_0
    iget-wide v2, p0, Lio/objectbox/query/QueryBuilder;->a:J

    iget-wide v4, p0, Lio/objectbox/query/QueryBuilder;->d:J

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Lio/objectbox/query/QueryBuilder;->nativeCombine(JJJZ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/objectbox/query/QueryBuilder;->d:J

    .line 496
    sget v0, Lio/objectbox/query/QueryBuilder$a;->a:I

    iput v0, p0, Lio/objectbox/query/QueryBuilder;->f:I

    goto :goto_1

    .line 498
    :cond_1
    iput-wide p1, p0, Lio/objectbox/query/QueryBuilder;->d:J

    .line 500
    :goto_1
    iput-wide p1, p0, Lio/objectbox/query/QueryBuilder;->e:J

    return-void
.end method

.method public final b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 511
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lio/objectbox/query/QueryBuilder;->nativeNotNull(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final b(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;J)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 527
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeNotEqual(JIJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 727
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 728
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeNotEqual(JILjava/lang/String;Z)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final b()V
    .locals 5

    .line 259
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This QueryBuilder has already been closed. Please use a new instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lio/objectbox/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 445
    sget v0, Lio/objectbox/query/QueryBuilder$a;->c:I

    invoke-direct {p0, v0}, Lio/objectbox/query/QueryBuilder;->a(I)V

    return-object p0
.end method

.method public final c(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;J)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 533
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lio/objectbox/query/QueryBuilder;->nativeLess(JIJZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public final c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 754
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/QueryBuilder;->nativeContains(JILjava/lang/String;Z)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 226
    :try_start_0
    iget-wide v0, p0, Lio/objectbox/query/QueryBuilder;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 229
    iput-wide v2, p0, Lio/objectbox/query/QueryBuilder;->a:J

    .line 230
    iget-boolean v2, p0, Lio/objectbox/query/QueryBuilder;->j:Z

    if-nez v2, :cond_0

    .line 231
    invoke-direct {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lio/objectbox/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 478
    sget v0, Lio/objectbox/query/QueryBuilder$a;->b:I

    invoke-direct {p0, v0}, Lio/objectbox/query/QueryBuilder;->a(I)V

    return-object p0
.end method

.method public final d(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "TT;>;J)",
            "Lio/objectbox/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->b()V

    .line 545
    iget-wide v1, p0, Lio/objectbox/query/QueryBuilder;->a:J

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lio/objectbox/query/QueryBuilder;->nativeGreater(JIJZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(J)V

    return-object p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->close()V

    .line 222
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native nativeIn(JI[IZ)J
.end method

.method public native nativeIn(JI[Ljava/lang/String;Z)J
.end method
