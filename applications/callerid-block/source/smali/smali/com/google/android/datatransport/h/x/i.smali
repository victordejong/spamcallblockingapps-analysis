.class public final Lcom/google/android/datatransport/h/x/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/i;->a:Lh/a/a;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/i;->b:Lh/a/a;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/i;->c:Lh/a/a;

    iput-object p4, p0, Lcom/google/android/datatransport/h/x/i;->d:Lh/a/a;

    return-void
.end method

.method public static a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/c;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;)",
            "Lcom/google/android/datatransport/h/x/i;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/h/x/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/i;-><init>(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/h/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/h;->a(Landroid/content/Context;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/h/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lcom/google/android/datatransport/h/u/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/i;->a:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/i;->b:Lh/a/a;

    invoke-interface {v1}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/h/x/j/c;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/i;->c:Lh/a/a;

    invoke-interface {v2}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    iget-object v3, p0, Lcom/google/android/datatransport/h/x/i;->d:Lh/a/a;

    invoke-interface {v3}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/h/y/a;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/h/x/i;->c(Landroid/content/Context;Lcom/google/android/datatransport/h/x/j/c;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Lcom/google/android/datatransport/h/y/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/h/x/i;->b()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;

    move-result-object v0

    return-object v0
.end method
