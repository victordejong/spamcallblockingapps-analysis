.class final synthetic Lcom/google/firebase/iid/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/iid/r$a;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/firebase/iid/u$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/u$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/f;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/iid/f;->e:Lcom/google/firebase/iid/u$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 8

    iget-object v0, p0, Lcom/google/firebase/iid/f;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/f;->e:Lcom/google/firebase/iid/u$a;

    iget-object v5, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:Lcom/google/firebase/iid/j;

    .line 1001
    new-instance v6, Landroid/os/Bundle;

    .line 2001
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/google/firebase/iid/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/h;

    move-result-object v6

    .line 2002
    invoke-virtual {v5, v6}, Lcom/google/firebase/iid/j;->a(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object v5

    .line 1001
    iget-object v6, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/firebase/iid/g;

    invoke-direct {v7, v0, v2, v3, v1}, Lcom/google/firebase/iid/g;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/iid/h;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/iid/i;

    invoke-direct {v3, v0, v4}, Lcom/google/firebase/iid/i;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/iid/u$a;)V

    .line 1003
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method
