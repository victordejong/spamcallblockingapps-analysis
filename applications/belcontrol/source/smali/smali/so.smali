.class public final Lso;
.super Luo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lso$a;,
        Lso$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luo<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lhp;

.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lro;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lph$c;

.field public s:Ljava/lang/Object;

.field public t:Lso$a;

.field public u:Lso$b;

.field public v:J

.field public w:J


# direct methods
.method public constructor <init>(Lhp;JJZZZ)V
    .locals 3

    invoke-direct {p0}, Luo;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->a(Z)V

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lhp;

    iput-object p1, p0, Lso;->k:Lhp;

    iput-wide p2, p0, Lso;->l:J

    iput-wide p4, p0, Lso;->m:J

    iput-boolean p6, p0, Lso;->n:Z

    iput-boolean p7, p0, Lso;->o:Z

    iput-boolean p8, p0, Lso;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lso;->q:Ljava/util/ArrayList;

    new-instance p1, Lph$c;

    invoke-direct {p1}, Lph$c;-><init>()V

    iput-object p1, p0, Lso;->r:Lph$c;

    return-void
.end method


# virtual methods
.method public b(Lfp;)V
    .locals 1

    iget-object v0, p0, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p0, Lso;->k:Lhp;

    check-cast p1, Lro;

    iget-object p1, p1, Lro;->a:Lfp;

    invoke-interface {v0, p1}, Lhp;->b(Lfp;)V

    iget-object p1, p0, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lso;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lso;->t:Lso$a;

    invoke-static {p1}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lso$a;

    iget-object p1, p1, Ldp;->b:Lph;

    invoke-virtual {p0, p1}, Lso;->w(Lph;)V

    :cond_0
    return-void
.end method

.method public e(Lhp$a;Les;J)Lfp;
    .locals 8

    new-instance v7, Lro;

    iget-object v0, p0, Lso;->k:Lhp;

    invoke-interface {v0, p1, p2, p3, p4}, Lhp;->e(Lhp$a;Les;J)Lfp;

    move-result-object v1

    iget-boolean v2, p0, Lso;->n:Z

    iget-wide v3, p0, Lso;->v:J

    iget-wide v5, p0, Lso;->w:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lro;-><init>(Lfp;ZJJ)V

    iget-object p1, p0, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lso;->k:Lhp;

    invoke-interface {v0}, Lhp;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k(Lht;)V
    .locals 1

    invoke-super {p0, p1}, Luo;->k(Lht;)V

    iget-object p1, p0, Lso;->k:Lhp;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Luo;->s(Ljava/lang/Object;Lhp;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Luo;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lso;->u:Lso$b;

    iput-object v0, p0, Lso;->t:Lso$a;

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object v0, p0, Lso;->u:Lso$b;

    if-nez v0, :cond_0

    invoke-super {p0}, Luo;->maybeThrowSourceInfoRefreshError()V

    return-void

    :cond_0
    throw v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;J)J
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lso;->u(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lso;->v(Ljava/lang/Void;Lhp;Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public u(Ljava/lang/Void;J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lso;->l:J

    invoke-static {v0, v1}, Lcg;->b(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lso;->m:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    invoke-static {v2, v3}, Lcg;->b(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public v(Ljava/lang/Void;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lso;->u:Lso$b;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-object p4, p0, Lso;->s:Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lso;->w(Lph;)V

    return-void
.end method

.method public final w(Lph;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lso;->r:Lph$c;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lph;->m(ILph$c;)Lph$c;

    iget-object v0, v1, Lso;->r:Lph$c;

    invoke-virtual {v0}, Lph$c;->d()J

    move-result-wide v5

    iget-object v0, v1, Lso;->t:Lso$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lso;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Lso;->v:J

    sub-long/2addr v2, v5

    iget-wide v9, v1, Lso;->m:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lso;->w:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v9, v1, Lso;->l:J

    iget-wide v11, v1, Lso;->m:J

    iget-boolean v0, v1, Lso;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lso;->r:Lph$c;

    invoke-virtual {v0}, Lph$c;->b()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Lso;->v:J

    iget-wide v13, v1, Lso;->m:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lso;->w:J

    iget-object v0, v1, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v3, v1, Lso;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lro;

    iget-wide v5, v1, Lso;->v:J

    iget-wide v7, v1, Lso;->w:J

    invoke-virtual {v3, v5, v6, v7, v8}, Lro;->k(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    :goto_4
    :try_start_0
    new-instance v0, Lso$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lso$a;-><init>(Lph;JJ)V

    iput-object v0, v1, Lso;->t:Lso$a;
    :try_end_0
    .catch Lso$b; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lso;->s:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lpo;->l(Lph;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Lso;->u:Lso$b;

    return-void
.end method
