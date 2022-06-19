.class final Lcom/google/android/exoplayer2/source/n$a;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/exoplayer2/source/w$a;

.field final synthetic f:Lcom/google/android/exoplayer2/source/n;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/n;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/l;->m(Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/w$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    return-void
.end method

.method private a(ILcom/google/android/exoplayer2/source/v$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/n;->t(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/v$a;)Lcom/google/android/exoplayer2/source/v$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/n;->v(Ljava/lang/Object;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    iget v1, v0, Lcom/google/android/exoplayer2/source/w$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/source/v$a;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/h0;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/l;->l(ILcom/google/android/exoplayer2/source/v$a;J)Lcom/google/android/exoplayer2/source/w$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/w$c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/n;->u(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/w$c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/n;->u(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/w$c;->f:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/w$c;->g:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/w$c;

    iget v5, p1, Lcom/google/android/exoplayer2/source/w$c;->a:I

    iget v6, p1, Lcom/google/android/exoplayer2/source/w$c;->b:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/w$c;->c:Lcom/google/android/exoplayer2/Format;

    iget v8, p1, Lcom/google/android/exoplayer2/source/w$c;->d:I

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/w$c;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/w$c;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public A(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/n$a;->b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/w$a;->d(Lcom/google/android/exoplayer2/source/w$c;)V

    :cond_0
    return-void
.end method

.method public e(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/n$a;->b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/w$a;->x(Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    :cond_0
    return-void
.end method

.method public h(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w$a;->J()V

    :cond_0
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/n$a;->b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/w$a;->u(Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    :cond_0
    return-void
.end method

.method public q(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/n$a;->b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/w$a;->D(Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;)V

    :cond_0
    return-void
.end method

.method public r(ILcom/google/android/exoplayer2/source/v$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    .line 3
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/n$a;->b(Lcom/google/android/exoplayer2/source/w$c;)Lcom/google/android/exoplayer2/source/w$c;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/w$a;->A(Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/source/w$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public u(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/source/v$a;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/v$a;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/n;->A(Lcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w$a;->H()V

    :cond_0
    return-void
.end method

.method public w(ILcom/google/android/exoplayer2/source/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;->a(ILcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->f:Lcom/google/android/exoplayer2/source/n;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/source/v$a;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/v$a;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/n;->A(Lcom/google/android/exoplayer2/source/v$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Lcom/google/android/exoplayer2/source/w$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w$a;->G()V

    :cond_0
    return-void
.end method
