.class public final Ldt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldt$g;,
        Ldt$d;,
        Ldt$c;,
        Ldt$f;,
        Ldt$b;,
        Ldt$e;,
        Ldt$h;
    }
.end annotation


# static fields
.field public static final d:Ldt$c;

.field public static final e:Ldt$c;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Ldt$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt$d<",
            "+",
            "Ldt$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1, v2}, Ldt;->f(ZJ)Ldt$c;

    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Ldt;->f(ZJ)Ldt$c;

    new-instance v0, Ldt$c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Ldt$c;-><init>(IJLdt$a;)V

    sput-object v0, Ldt;->d:Ldt$c;

    new-instance v0, Ldt$c;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Ldt$c;-><init>(IJLdt$a;)V

    sput-object v0, Ldt;->e:Ldt$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnu;->X(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Ldt;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Ldt;)Ldt$d;
    .locals 0

    iget-object p0, p0, Ldt;->b:Ldt$d;

    return-object p0
.end method

.method public static synthetic b(Ldt;Ldt$d;)Ldt$d;
    .locals 0

    iput-object p1, p0, Ldt;->b:Ldt$d;

    return-object p1
.end method

.method public static synthetic c(Ldt;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Ldt;->c:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic d(Ldt;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Ldt;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static f(ZJ)Ldt$c;
    .locals 2

    new-instance v0, Ldt$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Ldt$c;-><init>(IJLdt$a;)V

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 2

    iget-object v0, p0, Ldt;->b:Ldt$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldt$d;->a(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Ldt;->b:Ldt$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Ldt;->i(I)V

    return-void
.end method

.method public i(I)V
    .locals 2

    iget-object v0, p0, Ldt;->c:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldt;->b:Ldt$d;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iget p1, v0, Ldt$d;->a:I

    :cond_0
    invoke-virtual {v0, p1}, Ldt$d;->e(I)V

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldt;->k(Ldt$f;)V

    return-void
.end method

.method public k(Ldt$f;)V
    .locals 2

    iget-object v0, p0, Ldt;->b:Ldt$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldt$d;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldt;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldt$g;

    invoke-direct {v1, p1}, Ldt$g;-><init>(Ldt$f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Ldt;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public l(Ldt$e;Ldt$b;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ldt$e;",
            ">(TT;",
            "Ldt$b<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldt;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Ldt$d;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Ldt$d;-><init>(Ldt;Landroid/os/Looper;Ldt$e;Ldt$b;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Ldt$d;->f(J)V

    return-wide v8
.end method
