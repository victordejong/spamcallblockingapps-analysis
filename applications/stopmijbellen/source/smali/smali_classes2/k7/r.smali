.class public Lk7/r;
.super Lk7/n;
.source "SourceFile"

# interfaces
.implements Ll7/c;
.implements Lk7/p;


# instance fields
.field public d:Lk7/m;

.field public e:Lk7/p$a;

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk7/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/r;->d:Lk7/m;

    invoke-interface {v0}, Lk7/m;->a()Lk7/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Lk7/m;Lk7/l;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lk7/r;->g:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lk7/l;->n()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget p1, p0, Lk7/r;->f:I

    .line 4
    iget v0, p2, Lk7/l;->c:I

    add-int/2addr p1, v0

    .line 5
    iput p1, p0, Lk7/r;->f:I

    .line 6
    :cond_1
    invoke-static {p0, p2}, Li4/d;->p(Lk7/m;Lk7/l;)V

    .line 7
    iget p1, p0, Lk7/r;->f:I

    .line 8
    iget p2, p2, Lk7/l;->c:I

    sub-int/2addr p1, p2

    .line 9
    iput p1, p0, Lk7/r;->f:I

    .line 10
    iget-object p1, p0, Lk7/r;->e:Lk7/p$a;

    if-eqz p1, :cond_3

    .line 11
    check-cast p1, Lw7/o;

    .line 12
    iget-object p2, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p2, p2, Lw7/p$a;->m:Lw7/p;

    iget-object p2, p2, Lw7/p;->b:Lw7/g;

    invoke-interface {p2}, Lw7/g;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p2, p2, Lw7/p$a;->j:Ln7/h;

    const-string v0, "context has died, cancelling"

    invoke-virtual {p2, v0}, Ln7/h;->b(Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lw7/o;->b:Lw7/p$a;

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Lm7/g;->e(Z)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p2, p2, Lw7/p$a;->m:Lw7/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p2, p2, Lw7/p$a;->m:Lw7/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p2, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p2, p2, Lw7/p$a;->m:Lw7/p;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Lw7/o;->b:Lw7/p$a;

    iget-object p1, p1, Lw7/p$a;->m:Lw7/p;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk7/r;->g:Z

    .line 2
    iget-object v0, p0, Lk7/r;->d:Lk7/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lk7/m;->close()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/r;->d:Lk7/m;

    invoke-interface {v0}, Lk7/m;->e()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/r;->d:Lk7/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lk7/m;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Lk7/p$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/r;->e:Lk7/p$a;

    return-void
.end method

.method public o(Lk7/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/r;->d:Lk7/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lk7/m;->b(Ll7/c;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lk7/r;->d:Lk7/m;

    .line 4
    invoke-interface {p1, p0}, Lk7/m;->b(Ll7/c;)V

    .line 5
    iget-object p1, p0, Lk7/r;->d:Lk7/m;

    new-instance v0, Lk7/r$a;

    invoke-direct {v0, p0}, Lk7/r$a;-><init>(Lk7/r;)V

    invoke-interface {p1, v0}, Lk7/m;->h(Ll7/a;)V

    return-void
.end method
