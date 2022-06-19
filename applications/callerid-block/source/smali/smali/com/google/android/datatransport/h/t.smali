.class public final Lcom/google/android/datatransport/h/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/h/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
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
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/e;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/t;->a:Lh/a/a;

    iput-object p2, p0, Lcom/google/android/datatransport/h/t;->b:Lh/a/a;

    iput-object p3, p0, Lcom/google/android/datatransport/h/t;->c:Lh/a/a;

    iput-object p4, p0, Lcom/google/android/datatransport/h/t;->d:Lh/a/a;

    iput-object p5, p0, Lcom/google/android/datatransport/h/t;->e:Lh/a/a;

    return-void
.end method

.method public static a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/e;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;)",
            "Lcom/google/android/datatransport/h/t;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/datatransport/h/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/h/t;-><init>(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)V

    return-object v6
.end method

.method public static c(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/x/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lcom/google/android/datatransport/h/r;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/h/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/h/r;-><init>(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/x/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V

    return-object v6
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/h/r;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/h/t;->a:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/h/y/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/t;->b:Lh/a/a;

    invoke-interface {v1}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/h/y/a;

    iget-object v2, p0, Lcom/google/android/datatransport/h/t;->c:Lh/a/a;

    invoke-interface {v2}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/h/x/e;

    iget-object v3, p0, Lcom/google/android/datatransport/h/t;->d:Lh/a/a;

    invoke-interface {v3}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v4, p0, Lcom/google/android/datatransport/h/t;->e:Lh/a/a;

    invoke-interface {v4}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/h/t;->c(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/x/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lcom/google/android/datatransport/h/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/h/t;->b()Lcom/google/android/datatransport/h/r;

    move-result-object v0

    return-object v0
.end method
