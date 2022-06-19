.class public final Lvp0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzp0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lhq0;

.field public b:Ljava/lang/String;

.field public c:Landroid/os/Bundle;

.field public d:Ljava/lang/String;

.field public e:Lbq0;

.field public f:I

.field public g:[I

.field public h:Leq0;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lhq0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lfq0;->a:Lbq0$c;

    iput-object v0, p0, Lvp0$b;->e:Lbq0;

    const/4 v0, 0x1

    iput v0, p0, Lvp0$b;->f:I

    sget-object v0, Leq0;->d:Leq0;

    iput-object v0, p0, Lvp0$b;->h:Leq0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvp0$b;->i:Z

    iput-boolean v0, p0, Lvp0$b;->j:Z

    iput-object p1, p0, Lvp0$b;->a:Lhq0;

    return-void
.end method

.method public constructor <init>(Lhq0;Lzp0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lfq0;->a:Lbq0$c;

    iput-object v0, p0, Lvp0$b;->e:Lbq0;

    const/4 v0, 0x1

    iput v0, p0, Lvp0$b;->f:I

    sget-object v0, Leq0;->d:Leq0;

    iput-object v0, p0, Lvp0$b;->h:Leq0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvp0$b;->i:Z

    iput-boolean v0, p0, Lvp0$b;->j:Z

    iput-object p1, p0, Lvp0$b;->a:Lhq0;

    invoke-interface {p2}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->d:Ljava/lang/String;

    invoke-interface {p2}, Lzp0;->getService()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->b:Ljava/lang/String;

    invoke-interface {p2}, Lzp0;->a()Lbq0;

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->e:Lbq0;

    invoke-interface {p2}, Lzp0;->f()Z

    move-result p1

    iput-boolean p1, p0, Lvp0$b;->j:Z

    invoke-interface {p2}, Lzp0;->d()I

    move-result p1

    iput p1, p0, Lvp0$b;->f:I

    invoke-interface {p2}, Lzp0;->c()[I

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->g:[I

    invoke-interface {p2}, Lzp0;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->c:Landroid/os/Bundle;

    invoke-interface {p2}, Lzp0;->b()Leq0;

    move-result-object p1

    iput-object p1, p0, Lvp0$b;->h:Leq0;

    return-void
.end method

.method public static synthetic g(Lvp0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvp0$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lvp0$b;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lvp0$b;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic i(Lvp0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvp0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lvp0$b;)Lbq0;
    .locals 0

    iget-object p0, p0, Lvp0$b;->e:Lbq0;

    return-object p0
.end method

.method public static synthetic k(Lvp0$b;)Leq0;
    .locals 0

    iget-object p0, p0, Lvp0$b;->h:Leq0;

    return-object p0
.end method

.method public static synthetic l(Lvp0$b;)I
    .locals 0

    iget p0, p0, Lvp0$b;->f:I

    return p0
.end method

.method public static synthetic m(Lvp0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lvp0$b;->j:Z

    return p0
.end method

.method public static synthetic n(Lvp0$b;)[I
    .locals 0

    iget-object p0, p0, Lvp0$b;->g:[I

    return-object p0
.end method

.method public static synthetic o(Lvp0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lvp0$b;->i:Z

    return p0
.end method


# virtual methods
.method public a()Lbq0;
    .locals 1

    iget-object v0, p0, Lvp0$b;->e:Lbq0;

    return-object v0
.end method

.method public b()Leq0;
    .locals 1

    iget-object v0, p0, Lvp0$b;->h:Leq0;

    return-object v0
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lvp0$b;->g:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lvp0$b;->f:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lvp0$b;->i:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lvp0$b;->j:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lvp0$b;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvp0$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvp0$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lvp0;
    .locals 2

    iget-object v0, p0, Lvp0$b;->a:Lhq0;

    invoke-virtual {v0, p0}, Lhq0;->c(Lzp0;)V

    new-instance v0, Lvp0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvp0;-><init>(Lvp0$b;Lvp0$a;)V

    return-object v0
.end method

.method public q(Landroid/os/Bundle;)Lvp0$b;
    .locals 0

    iput-object p1, p0, Lvp0$b;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public r(Z)Lvp0$b;
    .locals 0

    iput-boolean p1, p0, Lvp0$b;->j:Z

    return-object p0
.end method

.method public s(Z)Lvp0$b;
    .locals 0

    iput-boolean p1, p0, Lvp0$b;->i:Z

    return-object p0
.end method

.method public t(Ljava/lang/Class;)Lvp0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/firebase/jobdispatcher/JobService;",
            ">;)",
            "Lvp0$b;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lvp0$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lvp0$b;
    .locals 0

    iput-object p1, p0, Lvp0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public v(Lbq0;)Lvp0$b;
    .locals 0

    iput-object p1, p0, Lvp0$b;->e:Lbq0;

    return-object p0
.end method
