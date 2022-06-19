.class Lcom/google/firebase/installations/k;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field final a:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/firebase/installations/k;->a:Lcom/google/android/gms/tasks/h;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/installations/a/d;)Z
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/k;->a:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Object;)Z

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/firebase/installations/a/d;Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
