.class public Lu2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/l;


# static fields
.field public static volatile e:Lu2/n;


# instance fields
.field public final a:Lb3/a;

.field public final b:Lb3/a;

.field public final c:Lx2/e;

.field public final d:Ly2/n;


# direct methods
.method public constructor <init>(Lb3/a;Lb3/a;Lx2/e;Ly2/n;Ly2/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu2/m;->a:Lb3/a;

    .line 3
    iput-object p2, p0, Lu2/m;->b:Lb3/a;

    .line 4
    iput-object p3, p0, Lu2/m;->c:Lx2/e;

    .line 5
    iput-object p4, p0, Lu2/m;->d:Ly2/n;

    .line 6
    iget-object p1, p5, Ly2/r;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Ly2/q;

    const/4 p3, 0x0

    invoke-direct {p2, p5, p3}, Ly2/q;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lu2/m;
    .locals 2

    .line 1
    sget-object v0, Lu2/m;->e:Lu2/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lu2/c;

    .line 3
    iget-object v0, v0, Lu2/c;->e:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/m;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lu2/m;->e:Lu2/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lu2/m;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lu2/m;->e:Lu2/n;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    new-instance v1, Lu2/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lu2/c;-><init>(Landroid/content/Context;Lu2/c$a;)V

    .line 7
    sput-object v1, Lu2/m;->e:Lu2/n;

    .line 8
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
.method public c(Lu2/d;)Lr2/g;
    .locals 4

    .line 1
    new-instance v0, Lu2/j;

    .line 2
    instance-of v1, p1, Lu2/d;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Ls2/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Ls2/a;->d:Ljava/util/Set;

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lr2/b;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 8
    :goto_0
    invoke-static {}, Lu2/i;->a()Lu2/i$a;

    move-result-object v2

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cct"

    invoke-virtual {v2, v3}, Lu2/i$a;->b(Ljava/lang/String;)Lu2/i$a;

    .line 10
    check-cast p1, Ls2/a;

    invoke-virtual {p1}, Ls2/a;->b()[B

    move-result-object p1

    check-cast v2, Lu2/b$b;

    .line 11
    iput-object p1, v2, Lu2/b$b;->b:[B

    .line 12
    invoke-virtual {v2}, Lu2/b$b;->a()Lu2/i;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lu2/j;-><init>(Ljava/util/Set;Lu2/i;Lu2/l;)V

    return-object v0
.end method
