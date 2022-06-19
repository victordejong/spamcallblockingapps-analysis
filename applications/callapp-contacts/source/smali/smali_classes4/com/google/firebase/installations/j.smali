.class final Lcom/google/firebase/installations/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field private final a:Lcom/google/firebase/installations/o;

.field private final b:Lcom/google/android/gms/tasks/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/i<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/o;Lcom/google/android/gms/tasks/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/o;",
            "Lcom/google/android/gms/tasks/i<",
            "Lcom/google/firebase/installations/l;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/installations/j;->a:Lcom/google/firebase/installations/o;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/installations/a/d;)Z
    .locals 4

    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/j;->a:Lcom/google/firebase/installations/o;

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/o;->a(Lcom/google/firebase/installations/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/i;

    .line 1052
    new-instance v1, Lcom/google/firebase/installations/a$a;

    invoke-direct {v1}, Lcom/google/firebase/installations/a$a;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/l$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/l$a;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/l$a;->a(J)Lcom/google/firebase/installations/l$a;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/l$a;->b(J)Lcom/google/firebase/installations/l$a;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/firebase/installations/l$a;->a()Lcom/google/firebase/installations/l;

    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method
