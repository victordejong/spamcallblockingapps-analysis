.class public abstract Lpo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhp;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lhp$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lqp$a;

.field public c:Landroid/os/Looper;

.field public d:Lph;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lpo;->a:Ljava/util/ArrayList;

    new-instance v0, Lqp$a;

    invoke-direct {v0}, Lqp$a;-><init>()V

    iput-object v0, p0, Lpo;->b:Lqp$a;

    return-void
.end method


# virtual methods
.method public final a(Lhp$b;)V
    .locals 1

    iget-object v0, p0, Lpo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpo;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lpo;->c:Landroid/os/Looper;

    iput-object p1, p0, Lpo;->d:Lph;

    iput-object p1, p0, Lpo;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lpo;->m()V

    :cond_0
    return-void
.end method

.method public final d(Lqp;)V
    .locals 1

    iget-object v0, p0, Lpo;->b:Lqp$a;

    invoke-virtual {v0, p1}, Lqp$a;->C(Lqp;)V

    return-void
.end method

.method public final f(Landroid/os/Handler;Lqp;)V
    .locals 1

    iget-object v0, p0, Lpo;->b:Lqp$a;

    invoke-virtual {v0, p1, p2}, Lqp$a;->a(Landroid/os/Handler;Lqp;)V

    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lgp;->a(Lhp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lhp$b;Lht;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lpo;->c:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lit;->a(Z)V

    iget-object v1, p0, Lpo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lpo;->c:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Lpo;->c:Landroid/os/Looper;

    invoke-virtual {p0, p2}, Lpo;->k(Lht;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lpo;->d:Lph;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lpo;->f:Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lhp$b;->g(Lhp;Lph;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final i(ILhp$a;J)Lqp$a;
    .locals 1

    iget-object v0, p0, Lpo;->b:Lqp$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lqp$a;->D(ILhp$a;J)Lqp$a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lhp$a;)Lqp$a;
    .locals 4

    iget-object v0, p0, Lpo;->b:Lqp$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lqp$a;->D(ILhp$a;J)Lqp$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract k(Lht;)V
.end method

.method public final l(Lph;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lpo;->d:Lph;

    iput-object p2, p0, Lpo;->f:Ljava/lang/Object;

    iget-object v0, p0, Lpo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhp$b;

    invoke-interface {v1, p0, p1, p2}, Lhp$b;->g(Lhp;Lph;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract m()V
.end method
