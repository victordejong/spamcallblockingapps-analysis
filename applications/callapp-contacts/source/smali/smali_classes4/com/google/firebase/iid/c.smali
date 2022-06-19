.class final synthetic Lcom/google/firebase/iid/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/c;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 9

    iget-object v1, p0, Lcom/google/firebase/iid/c;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object p1, p0, Lcom/google/firebase/iid/c;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/iid/c;->c:Ljava/lang/String;

    .line 1001
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Ljava/lang/String;

    move-result-object v2

    .line 1002
    invoke-virtual {v1, p1, v6}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/iid/u$a;

    move-result-object v5

    .line 1003
    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/u$a;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/firebase/iid/m;

    .line 1004
    iget-object v0, v5, Lcom/google/firebase/iid/u$a;->a:Ljava/lang/String;

    invoke-direct {p1, v2, v0}, Lcom/google/firebase/iid/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v7, v1, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Lcom/google/firebase/iid/r;

    new-instance v8, Lcom/google/firebase/iid/f;

    move-object v0, v8

    move-object v3, p1

    move-object v4, v6

    .line 1005
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/f;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/u$a;)V

    invoke-virtual {v7, p1, v6, v8}, Lcom/google/firebase/iid/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/iid/r$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
