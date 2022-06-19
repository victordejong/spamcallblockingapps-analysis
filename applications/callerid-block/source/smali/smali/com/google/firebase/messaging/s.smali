.class final synthetic Lcom/google/firebase/messaging/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/messaging/t0;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->r(Ljava/lang/String;Lcom/google/firebase/messaging/t0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
