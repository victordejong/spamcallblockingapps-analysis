.class final synthetic Lcom/google/firebase/messaging/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/messaging/k0$a;


# instance fields
.field private final a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field private final b:Lcom/google/android/gms/tasks/g;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/u;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/u;->b:Lcom/google/android/gms/tasks/g;

    return-void
.end method


# virtual methods
.method public start()Lcom/google/android/gms/tasks/g;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/u;->b:Lcom/google/android/gms/tasks/g;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->n(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
