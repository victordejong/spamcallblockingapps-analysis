.class public final Lvp0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lbq0;

.field public final d:Leq0;

.field public final e:I

.field public final f:Z

.field public final g:[I

.field public final h:Z

.field public final i:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lvp0$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lvp0$b;->g(Lvp0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvp0;->a:Ljava/lang/String;

    invoke-static {p1}, Lvp0$b;->h(Lvp0$b;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Lvp0$b;->h(Lvp0$b;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Lvp0;->i:Landroid/os/Bundle;

    invoke-static {p1}, Lvp0$b;->i(Lvp0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvp0;->b:Ljava/lang/String;

    invoke-static {p1}, Lvp0$b;->j(Lvp0$b;)Lbq0;

    move-result-object v0

    iput-object v0, p0, Lvp0;->c:Lbq0;

    invoke-static {p1}, Lvp0$b;->k(Lvp0$b;)Leq0;

    move-result-object v0

    iput-object v0, p0, Lvp0;->d:Leq0;

    invoke-static {p1}, Lvp0$b;->l(Lvp0$b;)I

    move-result v0

    iput v0, p0, Lvp0;->e:I

    invoke-static {p1}, Lvp0$b;->m(Lvp0$b;)Z

    move-result v0

    iput-boolean v0, p0, Lvp0;->f:Z

    invoke-static {p1}, Lvp0$b;->n(Lvp0$b;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lvp0$b;->n(Lvp0$b;)[I

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_1
    iput-object v0, p0, Lvp0;->g:[I

    invoke-static {p1}, Lvp0$b;->o(Lvp0$b;)Z

    move-result p1

    iput-boolean p1, p0, Lvp0;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(Lvp0$b;Lvp0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lvp0;-><init>(Lvp0$b;)V

    return-void
.end method


# virtual methods
.method public a()Lbq0;
    .locals 1

    iget-object v0, p0, Lvp0;->c:Lbq0;

    return-object v0
.end method

.method public b()Leq0;
    .locals 1

    iget-object v0, p0, Lvp0;->d:Leq0;

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lvp0;->g:[I

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lvp0;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lvp0;->h:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lvp0;->f:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lvp0;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvp0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvp0;->b:Ljava/lang/String;

    return-object v0
.end method
