.class public final Lup;
.super Lpo;
.source ""

# interfaces
.implements Ltp$c;


# instance fields
.field public final g:Landroid/net/Uri;

.field public final h:Lls$a;

.field public final j:Ldk;

.field public final k:Lct;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/lang/Object;

.field public o:J

.field public p:Z

.field public q:Lht;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lls$a;Ldk;Lct;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lpo;-><init>()V

    iput-object p1, p0, Lup;->g:Landroid/net/Uri;

    iput-object p2, p0, Lup;->h:Lls$a;

    iput-object p3, p0, Lup;->j:Ldk;

    iput-object p4, p0, Lup;->k:Lct;

    iput-object p5, p0, Lup;->l:Ljava/lang/String;

    iput p6, p0, Lup;->m:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lup;->o:J

    iput-object p7, p0, Lup;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lfp;)V
    .locals 0

    check-cast p1, Ltp;

    invoke-virtual {p1}, Ltp;->J()V

    return-void
.end method

.method public e(Lhp$a;Les;J)Lfp;
    .locals 10

    iget-object p3, p0, Lup;->h:Lls$a;

    invoke-interface {p3}, Lls$a;->createDataSource()Lls;

    move-result-object v2

    iget-object p3, p0, Lup;->q:Lht;

    if-eqz p3, :cond_0

    invoke-interface {v2, p3}, Lls;->b(Lht;)V

    :cond_0
    new-instance p3, Ltp;

    iget-object v1, p0, Lup;->g:Landroid/net/Uri;

    iget-object p4, p0, Lup;->j:Ldk;

    invoke-interface {p4}, Ldk;->createExtractors()[Lak;

    move-result-object v3

    iget-object v4, p0, Lup;->k:Lct;

    invoke-virtual {p0, p1}, Lpo;->j(Lhp$a;)Lqp$a;

    move-result-object v5

    iget-object v8, p0, Lup;->l:Ljava/lang/String;

    iget v9, p0, Lup;->m:I

    move-object v0, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Ltp;-><init>(Landroid/net/Uri;Lls;[Lak;Lct;Lqp$a;Ltp$c;Les;Ljava/lang/String;I)V

    return-object p3
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lup;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Lht;)V
    .locals 2

    iput-object p1, p0, Lup;->q:Lht;

    iget-wide v0, p0, Lup;->o:J

    iget-boolean p1, p0, Lup;->p:Z

    invoke-virtual {p0, v0, v1, p1}, Lup;->n(JZ)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final n(JZ)V
    .locals 6

    iput-wide p1, p0, Lup;->o:J

    iput-boolean p3, p0, Lup;->p:Z

    new-instance p1, Laq;

    iget-wide v1, p0, Lup;->o:J

    iget-boolean v3, p0, Lup;->p:Z

    iget-object v5, p0, Lup;->n:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Laq;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lpo;->l(Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lup;->o:J

    :cond_0
    iget-wide v0, p0, Lup;->o:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lup;->p:Z

    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lup;->n(JZ)V

    return-void
.end method
