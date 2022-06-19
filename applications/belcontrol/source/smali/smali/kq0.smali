.class public Lkq0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Lk01;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkq0;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkq0;->d:Z

    return-void
.end method

.method public constructor <init>(Lk01;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkq0;->c:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkq0;->d:Z

    iput-object p1, p0, Lkq0;->e:Lk01;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-interface {p1}, Lk01;->getTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lkq0;->a:Ljava/lang/String;

    sget-object v2, Li11;->j:Li11;

    if-ne p1, v2, :cond_1

    invoke-interface {p1}, Lk01;->d()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    iget-boolean v2, v0, Lea1;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11022e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lea1;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11063b

    goto :goto_0

    :cond_1
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lk01;->d()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lkq0;->b:Ljava/lang/String;

    invoke-interface {p1}, Lk01;->b()Z

    move-result v0

    iput-boolean v0, p0, Lkq0;->d:Z

    invoke-interface {p1}, Lk01;->c()I

    move-result p1

    iput p1, p0, Lkq0;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lkq0;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkq0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkq0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lk01;
    .locals 1

    iget-object v0, p0, Lkq0;->e:Lk01;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lkq0;->d:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkq0;->b:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lkq0;->d:Z

    return-void
.end method
