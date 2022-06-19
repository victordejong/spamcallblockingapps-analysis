.class Lcom/google/firebase/installations/j;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field private final a:Lcom/google/firebase/installations/o;

.field private final b:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Lcom/google/firebase/installations/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/installations/o;Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/installations/o;",
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Lcom/google/firebase/installations/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/installations/j;->a:Lcom/google/firebase/installations/o;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/h;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/installations/a/d;)Z
    .locals 4

    .prologue
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
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/h;

    .line 36
    invoke-static {}, Lcom/google/firebase/installations/l;->d()Lcom/google/firebase/installations/l$a;

    move-result-object v1

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

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/firebase/installations/l$a;->a()Lcom/google/firebase/installations/l;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/j;->b:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)Z

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
