.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

.field private final e:Lcom/google/android/datatransport/h/m;

.field private final f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/h/m;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->e:Lcom/google/android/datatransport/h/m;

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->f:I

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/h/m;ILjava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/h/m;ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->e:Lcom/google/android/datatransport/h/m;

    iget v2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->f:I

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/g;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;->e(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/h/m;ILjava/lang/Runnable;)V

    return-void
.end method
