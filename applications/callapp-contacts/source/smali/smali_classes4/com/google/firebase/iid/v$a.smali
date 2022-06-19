.class final Lcom/google/firebase/iid/v$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/firebase/iid/v;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/iid/v;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Z

    .line 3
    iget-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/iid/v;->a(Lcom/google/firebase/iid/v;)Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    return-void
.end method
