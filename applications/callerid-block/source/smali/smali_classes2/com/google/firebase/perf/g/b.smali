.class final Lcom/google/firebase/perf/g/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Lcom/google/firebase/perf/f/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/k/b<",
            "Lcom/google/android/datatransport/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/datatransport/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/e<",
            "Lcom/google/firebase/perf/v1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/f/a;->e()Lcom/google/firebase/perf/f/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/g/b;->d:Lcom/google/firebase/perf/f/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/k/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/k/b<",
            "Lcom/google/android/datatransport/f;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/perf/g/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/perf/g/b;->b:Lcom/google/firebase/k/b;

    return-void
.end method

.method private a()Z
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/perf/g/b;->c:Lcom/google/android/datatransport/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/g/b;->b:Lcom/google/firebase/k/b;

    invoke-interface {v0}, Lcom/google/firebase/k/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/g/b;->a:Ljava/lang/String;

    const-class v2, Lcom/google/firebase/perf/v1/g;

    const-string v3, "proto"

    invoke-static {v3}, Lcom/google/android/datatransport/b;->b(Ljava/lang/String;)Lcom/google/android/datatransport/b;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/perf/g/a;->b()Lcom/google/android/datatransport/d;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/datatransport/f;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/d;)Lcom/google/android/datatransport/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/b;->c:Lcom/google/android/datatransport/e;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/perf/g/b;->d:Lcom/google/firebase/perf/f/a;

    const-string v1, "Flg TransportFactory is not available at the moment"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/f/a;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/g/b;->c:Lcom/google/android/datatransport/e;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public b(Lcom/google/firebase/perf/v1/g;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/g/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/firebase/perf/g/b;->d:Lcom/google/firebase/perf/f/a;

    const-string v0, "Unable to dispatch event because Flg Transport is not available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/f/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/g/b;->c:Lcom/google/android/datatransport/e;

    invoke-static {p1}, Lcom/google/android/datatransport/c;->d(Ljava/lang/Object;)Lcom/google/android/datatransport/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/e;->a(Lcom/google/android/datatransport/c;)V

    return-void
.end method
