.class public Lcom/google/android/datatransport/h/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/q;


# static fields
.field private static volatile e:Lcom/google/android/datatransport/h/s;


# instance fields
.field private final a:Lcom/google/android/datatransport/h/y/a;

.field private final b:Lcom/google/android/datatransport/h/y/a;

.field private final c:Lcom/google/android/datatransport/h/x/e;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/x/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/r;->a:Lcom/google/android/datatransport/h/y/a;

    iput-object p2, p0, Lcom/google/android/datatransport/h/r;->b:Lcom/google/android/datatransport/h/y/a;

    iput-object p3, p0, Lcom/google/android/datatransport/h/r;->c:Lcom/google/android/datatransport/h/x/e;

    iput-object p4, p0, Lcom/google/android/datatransport/h/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a()V

    return-void
.end method

.method private b(Lcom/google/android/datatransport/h/l;)Lcom/google/android/datatransport/h/h;
    .locals 4

    invoke-static {}, Lcom/google/android/datatransport/h/h;->a()Lcom/google/android/datatransport/h/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/h/r;->a:Lcom/google/android/datatransport/h/y/a;

    invoke-interface {v1}, Lcom/google/android/datatransport/h/y/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/h/h$a;->i(J)Lcom/google/android/datatransport/h/h$a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/r;->b:Lcom/google/android/datatransport/h/y/a;

    invoke-interface {v1}, Lcom/google/android/datatransport/h/y/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/h/h$a;->k(J)Lcom/google/android/datatransport/h/h$a;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/h/h$a;->j(Ljava/lang/String;)Lcom/google/android/datatransport/h/h$a;

    new-instance v1, Lcom/google/android/datatransport/h/g;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->b()Lcom/google/android/datatransport/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/h/g;-><init>(Lcom/google/android/datatransport/b;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/h/h$a;->h(Lcom/google/android/datatransport/h/g;)Lcom/google/android/datatransport/h/h$a;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->c()Lcom/google/android/datatransport/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/h/h$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/h/h$a;

    invoke-virtual {v0}, Lcom/google/android/datatransport/h/h$a;->d()Lcom/google/android/datatransport/h/h;

    move-result-object p1

    return-object p1
.end method

.method public static c()Lcom/google/android/datatransport/h/r;
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/h/r;->e:Lcom/google/android/datatransport/h/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/datatransport/h/s;->p()Lcom/google/android/datatransport/h/r;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lcom/google/android/datatransport/h/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/h/e;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/b;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/datatransport/h/f;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/datatransport/h/f;

    invoke-interface {p0}, Lcom/google/android/datatransport/h/f;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    invoke-static {p0}, Lcom/google/android/datatransport/b;->b(Ljava/lang/String;)Lcom/google/android/datatransport/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/h/r;->e:Lcom/google/android/datatransport/h/s;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/datatransport/h/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/h/r;->e:Lcom/google/android/datatransport/h/s;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/datatransport/h/d;->x()Lcom/google/android/datatransport/h/s$a;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/datatransport/h/s$a;->b(Landroid/content/Context;)Lcom/google/android/datatransport/h/s$a;

    invoke-interface {v1}, Lcom/google/android/datatransport/h/s$a;->a()Lcom/google/android/datatransport/h/s;

    move-result-object p0

    sput-object p0, Lcom/google/android/datatransport/h/r;->e:Lcom/google/android/datatransport/h/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/h/l;Lcom/google/android/datatransport/g;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/r;->c:Lcom/google/android/datatransport/h/x/e;

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->f()Lcom/google/android/datatransport/h/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/h/l;->c()Lcom/google/android/datatransport/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/c;->c()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/h/m;->e(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/h/m;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/h/r;->b(Lcom/google/android/datatransport/h/l;)Lcom/google/android/datatransport/h/h;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/datatransport/h/x/e;->a(Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;Lcom/google/android/datatransport/g;)V

    return-void
.end method

.method public e()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    return-object v0
.end method

.method public g(Lcom/google/android/datatransport/h/e;)Lcom/google/android/datatransport/f;
    .locals 4

    new-instance v0, Lcom/google/android/datatransport/h/n;

    invoke-static {p1}, Lcom/google/android/datatransport/h/r;->d(Lcom/google/android/datatransport/h/e;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lcom/google/android/datatransport/h/m;->a()Lcom/google/android/datatransport/h/m$a;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/datatransport/h/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/h/m$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/h/m$a;

    invoke-interface {p1}, Lcom/google/android/datatransport/h/e;->b()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/h/m$a;->c([B)Lcom/google/android/datatransport/h/m$a;

    invoke-virtual {v2}, Lcom/google/android/datatransport/h/m$a;->a()Lcom/google/android/datatransport/h/m;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/h/n;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/q;)V

    return-object v0
.end method
