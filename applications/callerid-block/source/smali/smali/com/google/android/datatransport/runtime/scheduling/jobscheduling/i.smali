.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/a$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

.field private final b:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

.field private final c:Ljava/lang/Iterable;

.field private final d:Lcom/google/android/datatransport/h/m;

.field private final e:I


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/h/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->b:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->d:Lcom/google/android/datatransport/h/m;

    iput p5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->e:I

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/h/m;I)Lcom/google/android/datatransport/runtime/synchronization/a$a;
    .locals 7

    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/h/m;I)V

    return-object v6
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->b:Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->c:Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->d:Lcom/google/android/datatransport/h/m;

    iget v4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/i;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->c(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/backends/BackendResponse;Ljava/lang/Iterable;Lcom/google/android/datatransport/h/m;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
