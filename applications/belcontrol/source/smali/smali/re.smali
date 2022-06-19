.class public Lre;
.super Lme;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lre$b;
    }
.end annotation


# instance fields
.field public a:Ly2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2<",
            "Lpe;",
            "Lre$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lme$b;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lqe;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lme$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqe;)V
    .locals 1

    invoke-direct {p0}, Lme;-><init>()V

    new-instance v0, Ly2;

    invoke-direct {v0}, Ly2;-><init>()V

    iput-object v0, p0, Lre;->a:Ly2;

    const/4 v0, 0x0

    iput v0, p0, Lre;->d:I

    iput-boolean v0, p0, Lre;->e:Z

    iput-boolean v0, p0, Lre;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lre;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lre;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Lme$b;->b:Lme$b;

    iput-object p1, p0, Lre;->b:Lme$b;

    return-void
.end method

.method public static f(Lme$b;)Lme$a;
    .locals 3

    sget-object v0, Lre$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lme$a;->ON_PAUSE:Lme$a;

    return-object p0

    :cond_2
    sget-object p0, Lme$a;->ON_STOP:Lme$a;

    return-object p0

    :cond_3
    sget-object p0, Lme$a;->ON_DESTROY:Lme$a;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static h(Lme$a;)Lme$b;
    .locals 3

    sget-object v0, Lre$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lme$b;->a:Lme$b;

    return-object p0

    :pswitch_1
    sget-object p0, Lme$b;->f:Lme$b;

    return-object p0

    :pswitch_2
    sget-object p0, Lme$b;->d:Lme$b;

    return-object p0

    :pswitch_3
    sget-object p0, Lme$b;->c:Lme$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Lme$b;Lme$b;)Lme$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static r(Lme$b;)Lme$a;
    .locals 3

    sget-object v0, Lre$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Lme$a;->ON_RESUME:Lme$a;

    return-object p0

    :cond_3
    sget-object p0, Lme$a;->ON_START:Lme$a;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lme$a;->ON_CREATE:Lme$a;

    return-object p0
.end method


# virtual methods
.method public a(Lpe;)V
    .locals 6

    iget-object v0, p0, Lre;->b:Lme$b;

    sget-object v1, Lme$b;->a:Lme$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lme$b;->b:Lme$b;

    :goto_0
    new-instance v0, Lre$b;

    invoke-direct {v0, p1, v1}, Lre$b;-><init>(Lpe;Lme$b;)V

    iget-object v1, p0, Lre;->a:Ly2;

    invoke-virtual {v1, p1, v0}, Ly2;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lre$b;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lre;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Lre;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lre;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Lre;->e(Lpe;)Lme$b;

    move-result-object v4

    iget v5, p0, Lre;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Lre;->d:I

    :goto_3
    iget-object v5, v0, Lre$b;->a:Lme$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Lre;->a:Ly2;

    invoke-virtual {v4, p1}, Ly2;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lre$b;->a:Lme$b;

    invoke-virtual {p0, v4}, Lre;->o(Lme$b;)V

    iget-object v4, v0, Lre$b;->a:Lme$b;

    invoke-static {v4}, Lre;->r(Lme$b;)Lme$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lre$b;->a(Lqe;Lme$a;)V

    invoke-virtual {p0}, Lre;->n()V

    invoke-virtual {p0, p1}, Lre;->e(Lpe;)Lme$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lre;->q()V

    :cond_6
    iget p1, p0, Lre;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Lre;->d:I

    return-void
.end method

.method public b()Lme$b;
    .locals 1

    iget-object v0, p0, Lre;->b:Lme$b;

    return-object v0
.end method

.method public c(Lpe;)V
    .locals 1

    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0, p1}, Ly2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Lqe;)V
    .locals 5

    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0}, Lz2;->a()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lre;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre$b;

    :goto_0
    iget-object v3, v2, Lre$b;->a:Lme$b;

    iget-object v4, p0, Lre;->b:Lme$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lre;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lre;->a:Ly2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ly2;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lre$b;->a:Lme$b;

    invoke-static {v3}, Lre;->f(Lme$b;)Lme$a;

    move-result-object v3

    invoke-static {v3}, Lre;->h(Lme$a;)Lme$b;

    move-result-object v4

    invoke-virtual {p0, v4}, Lre;->o(Lme$b;)V

    invoke-virtual {v2, p1, v3}, Lre$b;->a(Lqe;Lme$a;)V

    invoke-virtual {p0}, Lre;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lpe;)Lme$b;
    .locals 2

    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0, p1}, Ly2;->i(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lre$b;

    iget-object p1, p1, Lre$b;->a:Lme$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lre;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lre;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme$b;

    :cond_1
    iget-object v1, p0, Lre;->b:Lme$b;

    invoke-static {v1, p1}, Lre;->l(Lme$b;Lme$b;)Lme$b;

    move-result-object p1

    invoke-static {p1, v0}, Lre;->l(Lme$b;Lme$b;)Lme$b;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lqe;)V
    .locals 5

    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0}, Lz2;->d()Lz2$d;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lre;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre$b;

    :goto_0
    iget-object v3, v2, Lre$b;->a:Lme$b;

    iget-object v4, p0, Lre;->b:Lme$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lre;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lre;->a:Ly2;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ly2;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lre$b;->a:Lme$b;

    invoke-virtual {p0, v3}, Lre;->o(Lme$b;)V

    iget-object v3, v2, Lre$b;->a:Lme$b;

    invoke-static {v3}, Lre;->r(Lme$b;)Lme$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lre$b;->a(Lqe;Lme$a;)V

    invoke-virtual {p0}, Lre;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(Lme$a;)V
    .locals 0

    invoke-static {p1}, Lre;->h(Lme$a;)Lme$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lre;->m(Lme$b;)V

    return-void
.end method

.method public final j()Z
    .locals 3

    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0}, Lz2;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lre;->a:Ly2;

    invoke-virtual {v0}, Lz2;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lre$b;

    iget-object v0, v0, Lre$b;->a:Lme$b;

    iget-object v2, p0, Lre;->a:Ly2;

    invoke-virtual {v2}, Lz2;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre$b;

    iget-object v2, v2, Lre$b;->a:Lme$b;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lre;->b:Lme$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k(Lme$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lre;->p(Lme$b;)V

    return-void
.end method

.method public final m(Lme$b;)V
    .locals 1

    iget-object v0, p0, Lre;->b:Lme$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lre;->b:Lme$b;

    iget-boolean p1, p0, Lre;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lre;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lre;->e:Z

    invoke-virtual {p0}, Lre;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lre;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lre;->f:Z

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lre;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final o(Lme$b;)V
    .locals 1

    iget-object v0, p0, Lre;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Lme$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lre;->m(Lme$b;)V

    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lre;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lre;->j()Z

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lre;->f:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lre;->b:Lme$b;

    iget-object v2, p0, Lre;->a:Ly2;

    invoke-virtual {v2}, Lz2;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre$b;

    iget-object v2, v2, Lre$b;->a:Lme$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Lre;->d(Lqe;)V

    :cond_1
    iget-object v1, p0, Lre;->a:Ly2;

    invoke-virtual {v1}, Lz2;->e()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Lre;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lre;->b:Lme$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lre$b;

    iget-object v1, v1, Lre$b;->a:Lme$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lre;->g(Lqe;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
