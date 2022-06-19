.class Lcom/google/firebase/installations/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/installations/m;


# instance fields
.field private final a:Lcom/google/firebase/installations/n;

.field private final b:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/installations/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/n;Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/n;",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/installations/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/installations/i;->a:Lcom/google/firebase/installations/n;

    iput-object p2, p0, Lcom/google/firebase/installations/i;->b:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/installations/i;->b:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->d(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/google/firebase/installations/local/c;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/i;->a:Lcom/google/firebase/installations/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/n;->f(Lcom/google/firebase/installations/local/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/i;->b:Lcom/google/android/gms/tasks/h;

    invoke-static {}, Lcom/google/firebase/installations/k;->a()Lcom/google/firebase/installations/k$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/k$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/k$a;

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/k$a;->d(J)Lcom/google/firebase/installations/k$a;

    invoke-virtual {p1}, Lcom/google/firebase/installations/local/c;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/k$a;->c(J)Lcom/google/firebase/installations/k$a;

    invoke-virtual {v1}, Lcom/google/firebase/installations/k$a;->a()Lcom/google/firebase/installations/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
