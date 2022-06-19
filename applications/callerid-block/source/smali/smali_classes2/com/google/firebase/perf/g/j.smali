.class final synthetic Lcom/google/firebase/perf/g/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/perf/g/k;

.field private final c:Lcom/google/firebase/perf/v1/f;

.field private final d:Lcom/google/firebase/perf/v1/ApplicationProcessState;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/g/j;->b:Lcom/google/firebase/perf/g/k;

    iput-object p2, p0, Lcom/google/firebase/perf/g/j;->c:Lcom/google/firebase/perf/v1/f;

    iput-object p3, p0, Lcom/google/firebase/perf/g/j;->d:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/g/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/perf/g/j;-><init>(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/g/j;->b:Lcom/google/firebase/perf/g/k;

    iget-object v1, p0, Lcom/google/firebase/perf/g/j;->c:Lcom/google/firebase/perf/v1/f;

    iget-object v2, p0, Lcom/google/firebase/perf/g/j;->d:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/g/k;->s(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method
