.class final Lcom/google/protobuf/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/m0;

.field private final b:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/protobuf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/p<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/protobuf/g1;Lcom/google/protobuf/p;Lcom/google/protobuf/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/g1<",
            "**>;",
            "Lcom/google/protobuf/p<",
            "*>;",
            "Lcom/google/protobuf/m0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->e(Lcom/google/protobuf/m0;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/protobuf/q0;->c:Z

    iput-object p2, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    iput-object p3, p0, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/m0;

    return-void
.end method

.method private j(Lcom/google/protobuf/g1;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/g1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/g1;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private k(Lcom/google/protobuf/g1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/z0;Lcom/google/protobuf/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$b<",
            "TET;>;>(",
            "Lcom/google/protobuf/g1<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/p<",
            "TET;>;TT;",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/google/protobuf/g1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, p3}, Lcom/google/protobuf/p;->d(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object v8

    :goto_0
    :try_start_0
    invoke-interface {p4}, Lcom/google/protobuf/z0;->t()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v4, v8

    move-object v5, p1

    move-object v6, v7

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/q0;->m(Lcom/google/protobuf/z0;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/g1;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, p3, v7}, Lcom/google/protobuf/g1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method static l(Lcom/google/protobuf/g1;Lcom/google/protobuf/p;Lcom/google/protobuf/m0;)Lcom/google/protobuf/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "**>;",
            "Lcom/google/protobuf/p<",
            "*>;",
            "Lcom/google/protobuf/m0;",
            ")",
            "Lcom/google/protobuf/q0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/q0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/q0;-><init>(Lcom/google/protobuf/g1;Lcom/google/protobuf/p;Lcom/google/protobuf/m0;)V

    return-object v0
.end method

.method private m(Lcom/google/protobuf/z0;Lcom/google/protobuf/o;Lcom/google/protobuf/p;Lcom/google/protobuf/t;Lcom/google/protobuf/g1;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/t$b<",
            "TET;>;>(",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/o;",
            "Lcom/google/protobuf/p<",
            "TET;>;",
            "Lcom/google/protobuf/t<",
            "TET;>;",
            "Lcom/google/protobuf/g1<",
            "TUT;TUB;>;TUB;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/z0;->a()I

    move-result v0

    sget v1, Lcom/google/protobuf/WireFormat;->a:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/m0;

    invoke-static {v0}, Lcom/google/protobuf/WireFormat;->a(I)I

    move-result v0

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/o;Lcom/google/protobuf/m0;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0, p2, p4}, Lcom/google/protobuf/p;->h(Lcom/google/protobuf/z0;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    return v2

    :cond_0
    invoke-virtual {p5, p6, p1}, Lcom/google/protobuf/g1;->m(Ljava/lang/Object;Lcom/google/protobuf/z0;)Z

    move-result p1

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/z0;->F()Z

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/google/protobuf/z0;->t()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/z0;->a()I

    move-result v4

    sget v5, Lcom/google/protobuf/WireFormat;->c:I

    if-ne v4, v5, :cond_5

    invoke-interface {p1}, Lcom/google/protobuf/z0;->D()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/m0;

    invoke-virtual {p3, p2, v1, v0}, Lcom/google/protobuf/p;->b(Lcom/google/protobuf/o;Lcom/google/protobuf/m0;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget v5, Lcom/google/protobuf/WireFormat;->d:I

    if-ne v4, v5, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p3, p1, v1, p2, p4}, Lcom/google/protobuf/p;->h(Lcom/google/protobuf/z0;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lcom/google/protobuf/z0;->B()Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Lcom/google/protobuf/z0;->F()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-interface {p1}, Lcom/google/protobuf/z0;->a()I

    move-result p1

    sget v4, Lcom/google/protobuf/WireFormat;->b:I

    if-ne p1, v4, :cond_a

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {p3, v3, v1, p2, p4}, Lcom/google/protobuf/p;->i(Lcom/google/protobuf/ByteString;Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/t;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p5, p6, v0, v3}, Lcom/google/protobuf/g1;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    :cond_9
    :goto_2
    return v2

    :cond_a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private n(Lcom/google/protobuf/g1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/g1<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/g1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/g1;->s(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/c1;->G(Lcom/google/protobuf/g1;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/q0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/c1;->E(Lcom/google/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/t;->s()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/t$b;

    invoke-interface {v2}, Lcom/google/protobuf/t$b;->i()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->j:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/t$b;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/protobuf/t$b;->isPacked()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/protobuf/z$b;

    invoke-interface {v2}, Lcom/google/protobuf/t$b;->getNumber()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/protobuf/z$b;

    invoke-virtual {v1}, Lcom/google/protobuf/z$b;->a()Lcom/google/protobuf/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/a0;->e()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/protobuf/Writer;->h(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/protobuf/q0;->n(Lcom/google/protobuf/g1;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t;->p()Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;Lcom/google/protobuf/z0;Lcom/google/protobuf/o;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/z0;",
            "Lcom/google/protobuf/o;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    iget-object v2, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/q0;->k(Lcom/google/protobuf/g1;Lcom/google/protobuf/p;Ljava/lang/Object;Lcom/google/protobuf/z0;Lcom/google/protobuf/o;)V

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/g1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/q0;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/q0;->j(Lcom/google/protobuf/g1;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/protobuf/q0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t;->j()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->a:Lcom/google/protobuf/m0;

    invoke-interface {v0}, Lcom/google/protobuf/m0;->i()Lcom/google/protobuf/m0$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/m0$a;->x()Lcom/google/protobuf/m0;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/q0;->b:Lcom/google/protobuf/g1;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/protobuf/q0;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/q0;->d:Lcom/google/protobuf/p;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/p;->c(Ljava/lang/Object;)Lcom/google/protobuf/t;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/protobuf/t;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
