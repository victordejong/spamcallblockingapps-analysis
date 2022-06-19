.class public final Lcom/google/android/datatransport/h/x/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/h/x/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/synchronization/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/synchronization/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/d;->a:Lh/a/a;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/d;->b:Lh/a/a;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/d;->c:Lh/a/a;

    iput-object p4, p0, Lcom/google/android/datatransport/h/x/d;->d:Lh/a/a;

    iput-object p5, p0, Lcom/google/android/datatransport/h/x/d;->e:Lh/a/a;

    return-void
.end method

.method public static a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/e;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/synchronization/a;",
            ">;)",
            "Lcom/google/android/datatransport/h/x/d;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/datatransport/h/x/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/h/x/d;-><init>(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/synchronization/a;)Lcom/google/android/datatransport/h/x/c;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/h/x/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/h/x/c;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/synchronization/a;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/h/x/c;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/d;->a:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/d;->b:Lh/a/a;

    invoke-interface {v1}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/e;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/d;->c:Lh/a/a;

    invoke-interface {v2}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    iget-object v3, p0, Lcom/google/android/datatransport/h/x/d;->d:Lh/a/a;

    invoke-interface {v3}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/h/x/j/c;

    iget-object v4, p0, Lcom/google/android/datatransport/h/x/d;->e:Lh/a/a;

    invoke-interface {v4}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/synchronization/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/h/x/d;->c(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/synchronization/a;)Lcom/google/android/datatransport/h/x/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/h/x/d;->b()Lcom/google/android/datatransport/h/x/c;

    move-result-object v0

    return-object v0
.end method
