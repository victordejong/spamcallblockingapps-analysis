.class public Lcom/google/android/datatransport/runtime/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/p;


# static fields
.field private static volatile b:Lcom/google/android/datatransport/runtime/r;


# instance fields
.field public final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/h;

.field private final c:Lcom/google/android/datatransport/runtime/d/a;

.field private final d:Lcom/google/android/datatransport/runtime/d/a;

.field private final e:Lcom/google/android/datatransport/runtime/scheduling/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/d/a;Lcom/google/android/datatransport/runtime/d/a;Lcom/google/android/datatransport/runtime/scheduling/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/h;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/q;->c:Lcom/google/android/datatransport/runtime/d/a;

    .line 59
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/q;->d:Lcom/google/android/datatransport/runtime/d/a;

    .line 60
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/q;->e:Lcom/google/android/datatransport/runtime/scheduling/e;

    .line 61
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/q;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/h;

    .line 1052
    iget-object p1, p5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;->a:Ljava/util/concurrent/Executor;

    invoke-static {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/q;
    .locals 2

    .line 91
    sget-object v0, Lcom/google/android/datatransport/runtime/q;->b:Lcom/google/android/datatransport/runtime/r;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/r;->b()Lcom/google/android/datatransport/runtime/q;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 72
    sget-object v0, Lcom/google/android/datatransport/runtime/q;->b:Lcom/google/android/datatransport/runtime/r;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/google/android/datatransport/runtime/q;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/q;->b:Lcom/google/android/datatransport/runtime/r;

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lcom/google/android/datatransport/runtime/d;->a()Lcom/google/android/datatransport/runtime/r$a;

    move-result-object v1

    .line 77
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/r$a;->a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/r$a;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/r$a;->a()Lcom/google/android/datatransport/runtime/r;

    move-result-object p0

    sput-object p0, Lcom/google/android/datatransport/runtime/q;->b:Lcom/google/android/datatransport/runtime/r;

    .line 80
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/datatransport/runtime/e;)Lcom/google/android/datatransport/g;
    .locals 4

    .line 127
    new-instance v0, Lcom/google/android/datatransport/runtime/m;

    .line 1137
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/f;

    if-eqz v1, :cond_0

    .line 1138
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/f;

    .line 1139
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/f;->c()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "proto"

    .line 1141
    invoke-static {v1}, Lcom/google/android/datatransport/b;->a(Ljava/lang/String;)Lcom/google/android/datatransport/b;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 129
    :goto_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/l;->d()Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v2

    .line 130
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/l$a;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v2

    .line 131
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/e;->b()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/l$a;->a([B)Lcom/google/android/datatransport/runtime/l$a;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/l$a;->a()Lcom/google/android/datatransport/runtime/l;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/m;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/l;Lcom/google/android/datatransport/runtime/p;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/datatransport/runtime/k;Lcom/google/android/datatransport/h;)V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/q;->e:Lcom/google/android/datatransport/runtime/scheduling/e;

    .line 152
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->a()Lcom/google/android/datatransport/runtime/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->c()Lcom/google/android/datatransport/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/c;->c()Lcom/google/android/datatransport/d;

    move-result-object v2

    .line 2066
    invoke-static {}, Lcom/google/android/datatransport/runtime/l;->d()Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v3

    .line 2067
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/l$a;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v3

    .line 2068
    invoke-virtual {v3, v2}, Lcom/google/android/datatransport/runtime/l$a;->a(Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v2

    .line 2069
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/l;->b()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/datatransport/runtime/l$a;->a([B)Lcom/google/android/datatransport/runtime/l$a;

    move-result-object v1

    .line 2070
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/l$a;->a()Lcom/google/android/datatransport/runtime/l;

    move-result-object v1

    .line 2158
    invoke-static {}, Lcom/google/android/datatransport/runtime/h;->i()Lcom/google/android/datatransport/runtime/h$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/q;->c:Lcom/google/android/datatransport/runtime/d/a;

    .line 2159
    invoke-interface {v3}, Lcom/google/android/datatransport/runtime/d/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/datatransport/runtime/h$a;->a(J)Lcom/google/android/datatransport/runtime/h$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/q;->d:Lcom/google/android/datatransport/runtime/d/a;

    .line 2160
    invoke-interface {v3}, Lcom/google/android/datatransport/runtime/d/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/datatransport/runtime/h$a;->b(J)Lcom/google/android/datatransport/runtime/h$a;

    move-result-object v2

    .line 2161
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/h$a;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/h$a;

    move-result-object v2

    new-instance v3, Lcom/google/android/datatransport/runtime/g;

    .line 2162
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->e()Lcom/google/android/datatransport/b;

    move-result-object v4

    .line 3035
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->d()Lcom/google/android/datatransport/e;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->c()Lcom/google/android/datatransport/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/datatransport/c;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/datatransport/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 2162
    invoke-direct {v3, v4, v5}, Lcom/google/android/datatransport/runtime/g;-><init>(Lcom/google/android/datatransport/b;[B)V

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/h$a;->a(Lcom/google/android/datatransport/runtime/g;)Lcom/google/android/datatransport/runtime/h$a;

    move-result-object v2

    .line 2163
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/k;->c()Lcom/google/android/datatransport/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/h$a;->a(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/h$a;

    move-result-object p1

    .line 2164
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/h$a;->b()Lcom/google/android/datatransport/runtime/h;

    move-result-object p1

    .line 151
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/e;->a(Lcom/google/android/datatransport/runtime/l;Lcom/google/android/datatransport/runtime/h;Lcom/google/android/datatransport/h;)V

    return-void
.end method
