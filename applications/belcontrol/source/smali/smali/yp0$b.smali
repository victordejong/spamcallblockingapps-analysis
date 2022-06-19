.class public final Lyp0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lbq0;

.field public d:Z

.field public e:I

.field public f:[I

.field public final g:Landroid/os/Bundle;

.field public h:Leq0;

.field public i:Z

.field public j:Lgq0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lyp0$b;->g:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic a(Lyp0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyp0$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lyp0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyp0$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lyp0$b;)Lbq0;
    .locals 0

    iget-object p0, p0, Lyp0$b;->c:Lbq0;

    return-object p0
.end method

.method public static synthetic d(Lyp0$b;)Leq0;
    .locals 0

    iget-object p0, p0, Lyp0$b;->h:Leq0;

    return-object p0
.end method

.method public static synthetic e(Lyp0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lyp0$b;->d:Z

    return p0
.end method

.method public static synthetic f(Lyp0$b;)I
    .locals 0

    iget p0, p0, Lyp0$b;->e:I

    return p0
.end method

.method public static synthetic g(Lyp0$b;)[I
    .locals 0

    iget-object p0, p0, Lyp0$b;->f:[I

    return-object p0
.end method

.method public static synthetic h(Lyp0$b;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lyp0$b;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic i(Lyp0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lyp0$b;->i:Z

    return p0
.end method

.method public static synthetic j(Lyp0$b;)Lgq0;
    .locals 0

    iget-object p0, p0, Lyp0$b;->j:Lgq0;

    return-object p0
.end method


# virtual methods
.method public k(Landroid/os/Bundle;)Lyp0$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lyp0$b;->g:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public l()Lyp0;
    .locals 2

    iget-object v0, p0, Lyp0$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyp0$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyp0$b;->c:Lbq0;

    if-eqz v0, :cond_0

    new-instance v0, Lyp0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyp0;-><init>(Lyp0$b;Lyp0$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required fields were not populated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m([I)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->f:[I

    return-object p0
.end method

.method public n(I)Lyp0$b;
    .locals 0

    iput p1, p0, Lyp0$b;->e:I

    return-object p0
.end method

.method public o(Z)Lyp0$b;
    .locals 0

    iput-boolean p1, p0, Lyp0$b;->d:Z

    return-object p0
.end method

.method public p(Z)Lyp0$b;
    .locals 0

    iput-boolean p1, p0, Lyp0$b;->i:Z

    return-object p0
.end method

.method public q(Leq0;)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->h:Leq0;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public t(Lbq0;)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->c:Lbq0;

    return-object p0
.end method

.method public u(Lgq0;)Lyp0$b;
    .locals 0

    iput-object p1, p0, Lyp0$b;->j:Lgq0;

    return-object p0
.end method
