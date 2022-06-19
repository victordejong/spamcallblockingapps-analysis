.class public final Luo$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT"
        }
    .end annotation
.end field

.field public b:Lqp$a;

.field public final synthetic c:Luo;


# direct methods
.method public constructor <init>(Luo;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT)V"
        }
    .end annotation

    iput-object p1, p0, Luo$a;->c:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpo;->j(Lhp$a;)Lqp$a;

    move-result-object p1

    iput-object p1, p0, Luo$a;->b:Lqp$a;

    iput-object p2, p0, Luo$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILhp$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Luo$a;->c:Luo;

    iget-object v1, p0, Luo$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Luo;->n(Ljava/lang/Object;Lhp$a;)Lhp$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Luo$a;->c:Luo;

    iget-object v1, p0, Luo$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Luo;->p(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Luo$a;->b:Lqp$a;

    iget v1, v0, Lqp$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lqp$a;->b:Lhp$a;

    invoke-static {v0, p2}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Luo$a;->c:Luo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lpo;->i(ILhp$a;J)Lqp$a;

    move-result-object p1

    iput-object p1, p0, Luo$a;->b:Lqp$a;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p0, p4}, Luo$a;->d(Lqp$c;)Lqp$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lqp$a;->v(Lqp$b;Lqp$c;)V

    :cond_0
    return-void
.end method

.method public c(ILhp$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p1}, Lqp$a;->y()V

    :cond_0
    return-void
.end method

.method public final d(Lqp$c;)Lqp$c;
    .locals 14

    iget-object v0, p0, Luo$a;->c:Luo;

    iget-object v1, p0, Luo$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lqp$c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Luo;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, p0, Luo$a;->c:Luo;

    iget-object v1, p0, Luo$a;->a:Ljava/lang/Object;

    iget-wide v2, p1, Lqp$c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Luo;->o(Ljava/lang/Object;J)J

    move-result-wide v12

    iget-wide v0, p1, Lqp$c;->f:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_0

    iget-wide v0, p1, Lqp$c;->g:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lqp$c;

    iget v5, p1, Lqp$c;->a:I

    iget v6, p1, Lqp$c;->b:I

    iget-object v7, p1, Lqp$c;->c:Landroidx/media2/exoplayer/external/Format;

    iget v8, p1, Lqp$c;->d:I

    iget-object v9, p1, Lqp$c;->e:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lqp$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public e(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p0, p4}, Luo$a;->d(Lqp$c;)Lqp$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lqp$a;->p(Lqp$b;Lqp$c;)V

    :cond_0
    return-void
.end method

.method public f(ILhp$a;Lqp$b;Lqp$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p0, p4}, Luo$a;->d(Lqp$c;)Lqp$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lqp$a;->m(Lqp$b;Lqp$c;)V

    :cond_0
    return-void
.end method

.method public p(ILhp$a;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p0, p4}, Luo$a;->d(Lqp$c;)Lqp$c;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p5, p6}, Lqp$a;->s(Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public t(ILhp$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p1}, Lqp$a;->B()V

    :cond_0
    return-void
.end method

.method public v(ILhp$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p1}, Lqp$a;->z()V

    :cond_0
    return-void
.end method

.method public w(ILhp$a;Lqp$c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Luo$a;->a(ILhp$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Luo$a;->b:Lqp$a;

    invoke-virtual {p0, p3}, Luo$a;->d(Lqp$c;)Lqp$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqp$a;->d(Lqp$c;)V

    :cond_0
    return-void
.end method
