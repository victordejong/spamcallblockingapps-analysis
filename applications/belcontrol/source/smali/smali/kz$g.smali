.class public final Lkz$g;
.super Lzy$e;
.source ""

# interfaces
.implements Lkz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Lkz$a;

.field public g:I

.field public final synthetic h:Lkz;


# direct methods
.method public constructor <init>(Lkz;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkz$g;->h:Lkz;

    invoke-direct {p0}, Lzy$e;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkz$g;->d:I

    iput-object p2, p0, Lkz$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lkz$g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lkz$g;->g:I

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1}, Lkz$a;->p(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lkz$g;->f:Lkz$a;

    const/4 v0, 0x0

    iput v0, p0, Lkz$g;->g:I

    :cond_0
    return-void
.end method

.method public c(Lkz$a;)V
    .locals 2

    iput-object p1, p0, Lkz$g;->f:Lkz$a;

    iget-object v0, p0, Lkz$g;->a:Ljava/lang/String;

    iget-object v1, p0, Lkz$g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lkz$a;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lkz$g;->g:I

    iget-boolean v1, p0, Lkz$g;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lkz$a;->r(I)V

    iget v0, p0, Lkz$g;->d:I

    if-ltz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {p1, v1, v0}, Lkz$a;->v(II)V

    const/4 v0, -0x1

    iput v0, p0, Lkz$g;->d:I

    :cond_0
    iget v0, p0, Lkz$g;->e:I

    if-eqz v0, :cond_1

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {p1, v1, v0}, Lkz$a;->y(II)V

    const/4 p1, 0x0

    iput p1, p0, Lkz$g;->e:I

    :cond_1
    return-void
.end method

.method public d(Landroid/content/Intent;Ldz$d;)Z
    .locals 2

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1, p1, p2}, Lkz$a;->s(ILandroid/content/Intent;Ldz$d;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lkz$g;->h:Lkz;

    invoke-virtual {v0, p0}, Lkz;->N(Lkz$c;)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkz$g;->c:Z

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1}, Lkz$a;->r(I)V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->v(II)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lkz$g;->d:I

    const/4 p1, 0x0

    iput p1, p0, Lkz$g;->e:I

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkz$g;->i(I)V

    return-void
.end method

.method public i(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkz$g;->c:Z

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->w(II)V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 2

    iget-object v0, p0, Lkz$g;->f:Lkz$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lkz$g;->g:I

    invoke-virtual {v0, v1, p1}, Lkz$a;->y(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lkz$g;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lkz$g;->e:I

    :goto_0
    return-void
.end method
