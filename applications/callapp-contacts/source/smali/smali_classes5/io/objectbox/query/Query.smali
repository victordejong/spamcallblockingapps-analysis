.class public Lio/objectbox/query/Query;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
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
.field public final a:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lio/objectbox/query/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:J

.field private final d:Lio/objectbox/BoxStore;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/objectbox/query/a<",
            "TT;*>;>;"
        }
    .end annotation
.end field

.field private final f:Lio/objectbox/query/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:I


# direct methods
.method constructor <init>(Lio/objectbox/a;JLjava/util/List;Lio/objectbox/query/d;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/a<",
            "TT;>;J",
            "Ljava/util/List<",
            "Lio/objectbox/query/a<",
            "TT;*>;>;",
            "Lio/objectbox/query/d<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 1576
    iget-object v0, p1, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 113
    iput-object v0, p0, Lio/objectbox/query/Query;->d:Lio/objectbox/BoxStore;

    .line 2173
    iget v0, v0, Lio/objectbox/BoxStore;->p:I

    .line 114
    iput v0, p0, Lio/objectbox/query/Query;->h:I

    .line 115
    iput-wide p2, p0, Lio/objectbox/query/Query;->c:J

    .line 116
    new-instance p2, Lio/objectbox/query/e;

    invoke-direct {p2, p0, p1}, Lio/objectbox/query/e;-><init>(Lio/objectbox/query/Query;Lio/objectbox/a;)V

    iput-object p2, p0, Lio/objectbox/query/Query;->b:Lio/objectbox/query/e;

    .line 117
    iput-object p4, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    .line 118
    iput-object p5, p0, Lio/objectbox/query/Query;->f:Lio/objectbox/query/d;

    .line 119
    iput-object p6, p0, Lio/objectbox/query/Query;->g:Ljava/util/Comparator;

    return-void
.end method

.method private synthetic a(JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    iget-wide v1, p0, Lio/objectbox/query/Query;->c:J

    invoke-direct {p0}, Lio/objectbox/query/Query;->g()J

    move-result-wide v3

    move-object v0, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lio/objectbox/query/Query;->nativeFind(JJJJ)Ljava/util/List;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lio/objectbox/query/Query;->a(Ljava/util/List;)V

    return-object p1
.end method

.method private a(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/objectbox/query/a;

    .line 345
    iget v2, v1, Lio/objectbox/query/a;->a:I

    if-eqz v2, :cond_1

    iget v2, v1, Lio/objectbox/query/a;->a:I

    if-ge p2, v2, :cond_0

    .line 346
    :cond_1
    invoke-direct {p0, p1, v1}, Lio/objectbox/query/Query;->a(Ljava/lang/Object;Lio/objectbox/query/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;Lio/objectbox/query/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/objectbox/query/a<",
            "TT;*>;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 361
    iget-object p2, p2, Lio/objectbox/query/a;->b:Lio/objectbox/relation/b;

    .line 362
    iget-object v0, p2, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    if-eqz v0, :cond_1

    .line 363
    iget-object p2, p2, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    invoke-interface {p2, p1}, Lio/objectbox/b/h;->getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p1}, Lio/objectbox/relation/ToOne;->a()Ljava/lang/Object;

    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p2, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    if-eqz v0, :cond_2

    .line 371
    iget-object p2, p2, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    invoke-interface {p2, p1}, Lio/objectbox/b/g;->getToMany(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 374
    invoke-interface {p1}, Ljava/util/List;->size()I

    goto :goto_0

    .line 369
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Relation info without relation getter: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 335
    invoke-direct {p0, v1, v0}, Lio/objectbox/query/Query;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(JJJ)[J
    .locals 9

    .line 254
    iget-wide v1, p0, Lio/objectbox/query/Query;->c:J

    move-object v0, p0

    move-wide v3, p5

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v0 .. v8}, Lio/objectbox/query/Query;->nativeFindIds(JJJJ)[J

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(J)Ljava/lang/Long;
    .locals 2

    .line 590
    iget-wide v0, p0, Lio/objectbox/query/Query;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/objectbox/query/Query;->nativeRemove(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Lio/objectbox/query/c;)V
    .locals 5

    .line 307
    new-instance v0, Lio/objectbox/query/b;

    iget-object v1, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 4244
    invoke-virtual {p0}, Lio/objectbox/query/Query;->d()[J

    move-result-object v2

    const/4 v3, 0x0

    .line 307
    invoke-direct {v0, v1, v2, v3}, Lio/objectbox/query/b;-><init>(Lio/objectbox/a;[JZ)V

    .line 308
    invoke-virtual {v0}, Lio/objectbox/query/b;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_4

    .line 310
    invoke-virtual {v0, v3}, Lio/objectbox/query/b;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 314
    iget-object v4, p0, Lio/objectbox/query/Query;->f:Lio/objectbox/query/d;

    if-eqz v4, :cond_0

    .line 315
    invoke-interface {v4}, Lio/objectbox/query/d;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    :cond_0
    iget-object v4, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 320
    invoke-direct {p0, v2, v3}, Lio/objectbox/query/Query;->a(Ljava/lang/Object;I)V

    .line 323
    :cond_1
    :try_start_0
    invoke-interface {p1, v2}, Lio/objectbox/query/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Lio/objectbox/query/BreakForEach; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return-void

    .line 312
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: data object was null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method private synthetic c(J)Ljava/lang/Long;
    .locals 2

    .line 383
    iget-wide v0, p0, Lio/objectbox/query/Query;->c:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/objectbox/query/Query;->nativeCount(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private g()J
    .locals 2

    .line 146
    iget-object v0, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 3059
    invoke-virtual {v0}, Lio/objectbox/a;->a()Lio/objectbox/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/Cursor;->internalHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method private h()V
    .locals 2

    .line 169
    iget-object v0, p0, Lio/objectbox/query/Query;->f:Lio/objectbox/query/d;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Does not work with a filter. Only find() and forEach() support filters."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()V
    .locals 2

    .line 176
    iget-object v0, p0, Lio/objectbox/query/Query;->g:Ljava/util/Comparator;

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Does not work with a sorting comparator. Only find() supports sorting with a comparator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic j()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    iget-wide v1, p0, Lio/objectbox/query/Query;->c:J

    invoke-direct {p0}, Lio/objectbox/query/Query;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/objectbox/query/Query;->nativeFind(JJJJ)Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lio/objectbox/query/Query;->f:Lio/objectbox/query/d;

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lio/objectbox/query/Query;->f:Lio/objectbox/query/d;

    invoke-interface {v2}, Lio/objectbox/query/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lio/objectbox/query/Query;->a(Ljava/util/List;)V

    .line 215
    iget-object v1, p0, Lio/objectbox/query/Query;->g:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    .line 216
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method private synthetic k()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-wide v0, p0, Lio/objectbox/query/Query;->c:J

    invoke-direct {p0}, Lio/objectbox/query/Query;->g()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/objectbox/query/Query;->nativeFindFirst(JJ)Ljava/lang/Object;

    move-result-object v0

    .line 4352
    iget-object v1, p0, Lio/objectbox/query/Query;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4353
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/query/a;

    .line 4354
    invoke-direct {p0, v0, v2}, Lio/objectbox/query/Query;->a(Ljava/lang/Object;Lio/objectbox/query/a;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$F9Mj6UQkNElYy1cnI6f1U-EU9Lw(Lio/objectbox/query/Query;JJJ)[J
    .locals 0

    invoke-direct/range {p0 .. p6}, Lio/objectbox/query/Query;->a(JJJ)[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$GSfXJtZdRHQfjBFOXwxneWMTnPY(Lio/objectbox/query/Query;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/objectbox/query/Query;->b(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$N5_mnxSAX-3ip-3n4R_5Voa8B2w(Lio/objectbox/query/Query;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lio/objectbox/query/Query;->k()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$XubRnrNaiVlGDmvMXPw-8vkZgOU(Lio/objectbox/query/Query;JJ)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/objectbox/query/Query;->a(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$aK9Eq4vTl-gSJwzL5OrvUyBVDvA(Lio/objectbox/query/Query;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lio/objectbox/query/Query;->j()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$iuJtMMLbI-iJEHEo3YteEt1XvrM(Lio/objectbox/query/Query;Lio/objectbox/query/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/objectbox/query/Query;->b(Lio/objectbox/query/c;)V

    return-void
.end method

.method public static synthetic lambda$rFSWYDkNYghwU-R5E4-PWAxw2JM(Lio/objectbox/query/Query;J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/objectbox/query/Query;->c(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/Query;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/g<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/objectbox/query/Query<",
            "TT;>;"
        }
    .end annotation

    .line 390
    iget-wide v1, p0, Lio/objectbox/query/Query;->c:J

    invoke-virtual {p1}, Lio/objectbox/g;->a()I

    move-result v3

    invoke-virtual {p1}, Lio/objectbox/g;->b()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lio/objectbox/query/Query;->nativeSetParameter(JIILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lio/objectbox/query/Query;->b()V

    .line 155
    new-instance v0, Lio/objectbox/query/-$$Lambda$Query$N5_mnxSAX-3ip-3n4R_5Voa8B2w;

    invoke-direct {v0, p0}, Lio/objectbox/query/-$$Lambda$Query$N5_mnxSAX-3ip-3n4R_5Voa8B2w;-><init>(Lio/objectbox/query/Query;)V

    invoke-virtual {p0, v0}, Lio/objectbox/query/Query;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lio/objectbox/query/Query;->d:Lio/objectbox/BoxStore;

    iget v1, p0, Lio/objectbox/query/Query;->h:I

    invoke-virtual {v0, p1, v1}, Lio/objectbox/BoxStore;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lio/objectbox/query/Query;->b()V

    .line 229
    new-instance v6, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;-><init>(Lio/objectbox/query/Query;JJ)V

    invoke-virtual {p0, v6}, Lio/objectbox/query/Query;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(Lio/objectbox/query/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/query/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lio/objectbox/query/Query;->i()V

    .line 306
    iget-object v0, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 3576
    iget-object v0, v0, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 306
    new-instance v1, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;

    invoke-direct {v1, p0, p1}, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;-><init>(Lio/objectbox/query/Query;Lio/objectbox/query/c;)V

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lio/objectbox/query/Query;->h()V

    .line 165
    invoke-direct {p0}, Lio/objectbox/query/Query;->i()V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lio/objectbox/query/-$$Lambda$Query$aK9Eq4vTl-gSJwzL5OrvUyBVDvA;

    invoke-direct {v0, p0}, Lio/objectbox/query/-$$Lambda$Query$aK9Eq4vTl-gSJwzL5OrvUyBVDvA;-><init>(Lio/objectbox/query/Query;)V

    invoke-virtual {p0, v0}, Lio/objectbox/query/Query;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p0, Lio/objectbox/query/Query;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 139
    iput-wide v2, p0, Lio/objectbox/query/Query;->c:J

    .line 140
    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/Query;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()[J
    .locals 8

    .line 254
    iget-object v0, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    new-instance v7, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;-><init>(Lio/objectbox/query/Query;JJ)V

    invoke-virtual {v0, v7}, Lio/objectbox/a;->a(Lio/objectbox/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 382
    invoke-direct {p0}, Lio/objectbox/query/Query;->h()V

    .line 383
    iget-object v0, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    new-instance v1, Lio/objectbox/query/-$$Lambda$Query$rFSWYDkNYghwU-R5E4-PWAxw2JM;

    invoke-direct {v1, p0}, Lio/objectbox/query/-$$Lambda$Query$rFSWYDkNYghwU-R5E4-PWAxw2JM;-><init>(Lio/objectbox/query/Query;)V

    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Lio/objectbox/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 589
    invoke-direct {p0}, Lio/objectbox/query/Query;->h()V

    .line 590
    iget-object v0, p0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    new-instance v1, Lio/objectbox/query/-$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY;

    invoke-direct {v1, p0}, Lio/objectbox/query/-$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY;-><init>(Lio/objectbox/query/Query;)V

    invoke-virtual {v0, v1}, Lio/objectbox/a;->b(Lio/objectbox/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lio/objectbox/query/Query;->close()V

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method native nativeCount(JJ)J
.end method

.method native nativeDestroy(J)V
.end method

.method native nativeFind(JJJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method native nativeFindFirst(JJ)Ljava/lang/Object;
.end method

.method native nativeFindIds(JJJJ)[J
.end method

.method native nativeRemove(JJ)J
.end method

.method native nativeSetParameter(JIILjava/lang/String;Ljava/lang/String;)V
.end method
