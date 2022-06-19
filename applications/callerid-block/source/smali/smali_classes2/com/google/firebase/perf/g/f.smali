.class final synthetic Lcom/google/firebase/perf/g/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/perf/g/k;

.field private final c:Lcom/google/firebase/perf/g/c;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/g/f;->b:Lcom/google/firebase/perf/g/k;

    iput-object p2, p0, Lcom/google/firebase/perf/g/f;->c:Lcom/google/firebase/perf/g/c;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/g/f;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/perf/g/f;-><init>(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/g/f;->b:Lcom/google/firebase/perf/g/k;

    iget-object v1, p0, Lcom/google/firebase/perf/g/f;->c:Lcom/google/firebase/perf/g/c;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/g/k;->p(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)V

    return-void
.end method
