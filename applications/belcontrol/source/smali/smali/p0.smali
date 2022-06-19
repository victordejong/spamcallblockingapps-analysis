.class public Lp0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnb;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Landroid/view/animation/Interpolator;

.field public d:Lob;

.field public e:Z

.field public final f:Lpb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lp0;->b:J

    new-instance v0, Lp0$a;

    invoke-direct {v0, p0}, Lp0$a;-><init>(Lp0;)V

    iput-object v0, p0, Lp0;->f:Lpb;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp0;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lp0;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnb;

    invoke-virtual {v1}, Lnb;->b()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lp0;->e:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp0;->e:Z

    return-void
.end method

.method public c(Lnb;)Lp0;
    .locals 1

    iget-boolean v0, p0, Lp0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d(Lnb;Lnb;)Lp0;
    .locals 2

    iget-object v0, p0, Lp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lnb;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lnb;->h(J)Lnb;

    iget-object p1, p0, Lp0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(J)Lp0;
    .locals 1

    iget-boolean v0, p0, Lp0;->e:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lp0;->b:J

    :cond_0
    return-object p0
.end method

.method public f(Landroid/view/animation/Interpolator;)Lp0;
    .locals 1

    iget-boolean v0, p0, Lp0;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lp0;->c:Landroid/view/animation/Interpolator;

    :cond_0
    return-object p0
.end method

.method public g(Lob;)Lp0;
    .locals 1

    iget-boolean v0, p0, Lp0;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lp0;->d:Lob;

    :cond_0
    return-object p0
.end method

.method public h()V
    .locals 7

    iget-boolean v0, p0, Lp0;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lp0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnb;

    iget-wide v2, p0, Lp0;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    invoke-virtual {v1, v2, v3}, Lnb;->d(J)Lnb;

    :cond_1
    iget-object v2, p0, Lp0;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lnb;->e(Landroid/view/animation/Interpolator;)Lnb;

    :cond_2
    iget-object v2, p0, Lp0;->d:Lob;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lp0;->f:Lpb;

    invoke-virtual {v1, v2}, Lnb;->f(Lob;)Lnb;

    :cond_3
    invoke-virtual {v1}, Lnb;->j()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp0;->e:Z

    return-void
.end method
