.class final synthetic Lcom/google/firebase/perf/g/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/firebase/perf/g/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/g/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/g/g;->b:Lcom/google/firebase/perf/g/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/perf/g/k;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/perf/g/g;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/g/g;-><init>(Lcom/google/firebase/perf/g/k;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/g;->b:Lcom/google/firebase/perf/g/k;

    invoke-static {v0}, Lcom/google/firebase/perf/g/k;->t(Lcom/google/firebase/perf/g/k;)V

    return-void
.end method
