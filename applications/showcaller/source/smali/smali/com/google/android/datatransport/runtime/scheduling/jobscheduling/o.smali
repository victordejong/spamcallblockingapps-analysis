.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;
.super Ljava/lang/Object;
.source "WorkInitializer.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/a$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Lcom/google/android/datatransport/runtime/synchronization/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/o;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->b(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
