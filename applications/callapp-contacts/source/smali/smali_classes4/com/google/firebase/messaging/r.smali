.class final synthetic Lcom/google/firebase/messaging/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/f;


# instance fields
.field private final a:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lcom/google/firebase/messaging/as;

    .line 1001
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2001
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3001
    iget-object v0, p1, Lcom/google/firebase/messaging/as;->a:Lcom/google/firebase/messaging/ar;

    .line 4001
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ar;->a()Lcom/google/firebase/messaging/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3002
    invoke-virtual {p1}, Lcom/google/firebase/messaging/as;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 5001
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/messaging/as;->a(J)V

    :cond_1
    return-void
.end method
