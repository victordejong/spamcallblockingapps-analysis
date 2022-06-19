.class public Lnz$c;
.super Lnz$b;
.source ""

# interfaces
.implements Lhz$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public y:Lhz$a;

.field public z:Lhz$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnz$f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnz$b;-><init>(Landroid/content/Context;Lnz$f;)V

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lhz;->a(Lhz$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public P(Lnz$b$b;Lxy$a;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lnz$b;->P(Lnz$b$b;Lxy$a;)V

    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lhz$e;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lxy$a;->g(Z)Lxy$a;

    :cond_0
    invoke-virtual {p0, p1}, Lnz$c;->W(Lnz$b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lxy$a;->d(I)Lxy$a;

    :cond_1
    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {p1}, Lhz$e;->a(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {p2, p1}, Lxy$a;->l(I)Lxy$a;

    :cond_2
    return-void
.end method

.method public S()V
    .locals 3

    invoke-super {p0}, Lnz$b;->S()V

    iget-object v0, p0, Lnz$c;->y:Lhz$a;

    if-nez v0, :cond_0

    new-instance v0, Lhz$a;

    invoke-virtual {p0}, Lzy;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lzy;->q()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhz$a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lnz$c;->y:Lhz$a;

    :cond_0
    iget-object v0, p0, Lnz$c;->y:Lhz$a;

    iget-boolean v1, p0, Lnz$b;->q:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnz$b;->p:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lhz$a;->a(I)V

    return-void
.end method

.method public W(Lnz$b$b;)Z
    .locals 1

    iget-object v0, p0, Lnz$c;->z:Lhz$d;

    if-nez v0, :cond_0

    new-instance v0, Lhz$d;

    invoke-direct {v0}, Lhz$d;-><init>()V

    iput-object v0, p0, Lnz$c;->z:Lhz$d;

    :cond_0
    iget-object v0, p0, Lnz$c;->z:Lhz$d;

    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lhz$d;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz$b$b;

    invoke-static {p1}, Lhz$e;->a(Ljava/lang/Object;)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object v1, v0, Lnz$b$b;->c:Lxy;

    invoke-virtual {v1}, Lxy;->s()I

    move-result v1

    if-eq p1, v1, :cond_1

    new-instance v1, Lxy$a;

    iget-object v2, v0, Lnz$b$b;->c:Lxy;

    invoke-direct {v1, v2}, Lxy$a;-><init>(Lxy;)V

    invoke-virtual {v1, p1}, Lxy$a;->l(I)Lxy$a;

    invoke-virtual {v1}, Lxy$a;->c()Lxy;

    move-result-object p1

    iput-object p1, v0, Lnz$b$b;->c:Lxy;

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_1
    return-void
.end method
