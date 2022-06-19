.class public abstract Lorg/jsoup/nodes/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/m$a;
    }
.end annotation


# instance fields
.field public g:Lorg/jsoup/nodes/m;

.field h:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/jsoup/nodes/m;)V
    .locals 1

    .line 422
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/m;->g(Lorg/jsoup/nodes/m;)V

    .line 425
    :cond_0
    iput-object p1, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    .line 505
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 506
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/m;

    .line 3568
    iput p1, v1, Lorg/jsoup/nodes/m;->h:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static c(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 639
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    .line 4534
    iget p2, p2, Lorg/jsoup/nodes/f$a;->g:I

    mul-int p1, p1, p2

    .line 639
    invoke-static {p1}, Lorg/jsoup/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public final A()Lorg/jsoup/nodes/m;
    .locals 4

    .line 532
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 535
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    .line 536
    iget v2, p0, Lorg/jsoup/nodes/m;->h:I

    add-int/lit8 v2, v2, 0x1

    .line 537
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 538
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/m;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final B()Lorg/jsoup/nodes/m;
    .locals 3

    .line 548
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 551
    :cond_0
    iget v2, p0, Lorg/jsoup/nodes/m;->h:I

    if-lez v2, :cond_1

    .line 552
    invoke-virtual {v0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/m;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/m;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 625
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->b(Ljava/lang/Appendable;)V

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 180
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Lorg/jsoup/nodes/m;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/m;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;
    .locals 3

    .line 90
    invoke-static {p0}, Lorg/jsoup/nodes/n;->b(Lorg/jsoup/nodes/m;)Lorg/jsoup/c/g;

    move-result-object v0

    .line 1093
    iget-object v0, v0, Lorg/jsoup/c/g;->b:Lorg/jsoup/c/f;

    .line 2066
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2067
    iget-boolean v0, v0, Lorg/jsoup/c/f;->d:Z

    if-nez v0, :cond_0

    .line 2068
    invoke-static {p1}, Lorg/jsoup/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    .line 2147
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2149
    iget-object v2, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object p2, v2, v1

    .line 2150
    iget-object p2, v0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2151
    iget-object p2, v0, Lorg/jsoup/nodes/b;->b:[Ljava/lang/String;

    aput-object p1, p2, v1

    goto :goto_0

    .line 2154
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_2
    :goto_0
    return-object p0
.end method

.method protected final varargs a(I[Lorg/jsoup/nodes/m;)V
    .locals 8

    .line 461
    invoke-static {p2}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 468
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->v()Lorg/jsoup/nodes/m;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 469
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 3206
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_1

    .line 475
    aget-object v5, p2, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_0

    .line 480
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->e()Lorg/jsoup/nodes/m;

    .line 481
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_2
    add-int/lit8 v0, v4, -0x1

    if-lez v4, :cond_2

    .line 484
    aget-object v2, p2, v1

    iput-object p0, v2, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    move v4, v0

    goto :goto_2

    .line 486
    :cond_2
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/m;->b(I)V

    return-void

    .line 490
    :cond_3
    invoke-static {p2}, Lorg/jsoup/a/c;->a([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_3
    if-gtz v2, :cond_4

    .line 491
    aget-object v3, p2, v1

    .line 3499
    invoke-direct {v3, p0}, Lorg/jsoup/nodes/m;->a(Lorg/jsoup/nodes/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 494
    :cond_4
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 495
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/m;->b(I)V

    return-void
.end method

.method abstract a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public aB_()Ljava/lang/String;
    .locals 1

    .line 600
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 601
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/m;->b(Ljava/lang/Appendable;)V

    .line 602
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Appendable;)V
    .locals 2

    .line 606
    new-instance v0, Lorg/jsoup/nodes/m$a;

    invoke-static {p0}, Lorg/jsoup/nodes/n;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/f$a;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/m$a;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/f;->a(Lorg/jsoup/select/g;Lorg/jsoup/nodes/m;)V

    return-void
.end method

.method abstract b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 101
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    const-string v0, "abs:"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->j()Lorg/jsoup/nodes/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 64
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->i()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public c()Lorg/jsoup/nodes/m;
    .locals 7

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/m;->e(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;

    move-result-object v0

    .line 681
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 682
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/m;

    .line 687
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->f()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 689
    invoke-virtual {v2}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v5

    .line 690
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/m;

    invoke-virtual {v6, v2}, Lorg/jsoup/nodes/m;->e(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;

    move-result-object v6

    .line 691
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()Lorg/jsoup/nodes/m;
.end method

.method protected e(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;
    .locals 1

    .line 717
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/m;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    iput-object p1, v0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 723
    :cond_0
    iget p1, p0, Lorg/jsoup/nodes/m;->h:I

    :goto_0
    iput p1, v0, Lorg/jsoup/nodes/m;->h:I

    return-object v0

    :catch_0
    move-exception p1

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract f()I
.end method

.method public f(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;
    .locals 4

    .line 302
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    iget v1, p0, Lorg/jsoup/nodes/m;->h:I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/m;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/m;->a(I[Lorg/jsoup/nodes/m;)V

    return-object p0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/m;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method protected g(Lorg/jsoup/nodes/m;)V
    .locals 2

    .line 442
    iget-object v0, p1, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Z)V

    .line 443
    iget v0, p1, Lorg/jsoup/nodes/m;->h:I

    .line 444
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/m;->b(I)V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p1, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    return-void
.end method

.method protected abstract h()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation
.end method

.method public final h(Lorg/jsoup/nodes/m;)V
    .locals 3

    .line 416
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-ne v0, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2429
    :goto_0
    invoke-static {v1}, Lorg/jsoup/a/c;->a(Z)V

    .line 2430
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 2431
    iget-object v1, p1, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-eqz v1, :cond_1

    .line 2432
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/m;->g(Lorg/jsoup/nodes/m;)V

    .line 2434
    :cond_1
    iget v1, p0, Lorg/jsoup/nodes/m;->h:I

    .line 2435
    invoke-virtual {v0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2436
    iput-object v0, p1, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    .line 2568
    iput v1, p1, Lorg/jsoup/nodes/m;->h:I

    const/4 p1, 0x0

    .line 2438
    iput-object p1, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    return-void
.end method

.method protected final i(Lorg/jsoup/nodes/m;)V
    .locals 0

    .line 499
    invoke-direct {p1, p0}, Lorg/jsoup/nodes/m;->a(Lorg/jsoup/nodes/m;)V

    return-void
.end method

.method protected abstract i()Z
.end method

.method public abstract j()Lorg/jsoup/nodes/b;
.end method

.method o()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 635
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->aB_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lorg/jsoup/nodes/m;
    .locals 2

    move-object v0, p0

    .line 262
    :goto_0
    iget-object v1, v0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public v()Lorg/jsoup/nodes/m;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lorg/jsoup/nodes/f;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->u()Lorg/jsoup/nodes/m;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lorg/jsoup/nodes/f;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jsoup/nodes/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final y()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/m;->g(Lorg/jsoup/nodes/m;)V

    return-void
.end method

.method public final z()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lorg/jsoup/nodes/m;->g:Lorg/jsoup/nodes/m;

    if-nez v0, :cond_0

    .line 517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 519
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/m;->h()Ljava/util/List;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/m;

    if-eq v2, p0, :cond_1

    .line 523
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
