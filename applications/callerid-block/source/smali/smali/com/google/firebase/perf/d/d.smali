.class final synthetic Lcom/google/firebase/perf/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/perf/d/f;

.field private final c:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/d/f;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/d/d;->b:Lcom/google/firebase/perf/d/f;

    iput-object p2, p0, Lcom/google/firebase/perf/d/d;->c:Lcom/google/firebase/perf/util/Timer;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/d/f;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/d/d;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/perf/d/d;-><init>(Lcom/google/firebase/perf/d/f;Lcom/google/firebase/perf/util/Timer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/d/d;->b:Lcom/google/firebase/perf/d/f;

    iget-object v1, p0, Lcom/google/firebase/perf/d/d;->c:Lcom/google/firebase/perf/util/Timer;

    invoke-static {v0, v1}, Lcom/google/firebase/perf/d/f;->f(Lcom/google/firebase/perf/d/f;Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method
