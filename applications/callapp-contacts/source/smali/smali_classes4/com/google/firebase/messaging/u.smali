.class final synthetic Lcom/google/firebase/messaging/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/messaging/aj$a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final b:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/u;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/u;->b:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/u;->b:Lcom/google/android/gms/tasks/h;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lcom/google/firebase/messaging/z;

    .line 1001
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/messaging/z;->a:Lcom/google/firebase/b;

    .line 2001
    invoke-static {v2}, Lcom/google/firebase/messaging/ag;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "*"

    .line 2002
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/firebase/messaging/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/h;

    move-result-object v1

    .line 2003
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/z;->a(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method
