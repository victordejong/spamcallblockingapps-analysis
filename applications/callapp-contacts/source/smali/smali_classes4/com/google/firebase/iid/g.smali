.class final synthetic Lcom/google/firebase/iid/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/g;


# instance fields
.field private final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/g;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;
    .locals 8

    iget-object v0, p0, Lcom/google/firebase/iid/g;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v3, p0, Lcom/google/firebase/iid/g;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/iid/g;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/iid/g;->d:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Lcom/google/firebase/iid/u;

    .line 1001
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/firebase/iid/n;

    .line 1002
    invoke-virtual {v0}, Lcom/google/firebase/iid/n;->b()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    .line 1003
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/iid/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/iid/m;

    .line 1004
    invoke-direct {v0, v7, p1}, Lcom/google/firebase/iid/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
