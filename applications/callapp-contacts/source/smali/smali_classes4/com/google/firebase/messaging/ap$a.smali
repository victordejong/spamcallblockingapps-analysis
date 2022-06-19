.class final Lcom/google/firebase/messaging/ap$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/firebase/messaging/ap;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/ap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/ap;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/ap;->b()Z

    .line 3
    iget-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/messaging/ap;->a(Lcom/google/firebase/messaging/ap;)Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    .line 5
    iget-object p1, p1, Lcom/google/firebase/messaging/ap;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2000
    iget-object p1, p1, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/ap$a;->a:Lcom/google/firebase/messaging/ap;

    return-void
.end method
