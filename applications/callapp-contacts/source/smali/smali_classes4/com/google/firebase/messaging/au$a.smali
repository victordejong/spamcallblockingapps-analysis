.class final Lcom/google/firebase/messaging/au$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/messaging/au;

.field private b:Lcom/google/firebase/messaging/au;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/au;Lcom/google/firebase/messaging/au;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/au$a;->a:Lcom/google/firebase/messaging/au;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/au$a;->b:Lcom/google/firebase/messaging/au;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/google/firebase/messaging/au$a;->b:Lcom/google/firebase/messaging/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    .line 1
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/firebase/messaging/au;->a(Lcom/google/firebase/messaging/au;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    monitor-exit p0

    return-void

    .line 2
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/firebase/messaging/au;->a()Z

    .line 3
    iget-object p2, p0, Lcom/google/firebase/messaging/au$a;->b:Lcom/google/firebase/messaging/au;

    .line 4
    invoke-static {p2}, Lcom/google/firebase/messaging/au;->b(Lcom/google/firebase/messaging/au;)Lcom/google/firebase/messaging/as;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/messaging/au$a;->b:Lcom/google/firebase/messaging/au;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/firebase/messaging/as;->a(Ljava/lang/Runnable;J)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/au$a;->b:Lcom/google/firebase/messaging/au;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
