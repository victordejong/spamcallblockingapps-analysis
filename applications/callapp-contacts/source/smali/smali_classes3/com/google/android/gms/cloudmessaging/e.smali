.class final synthetic Lcom/google/android/gms/cloudmessaging/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

.field private final b:Landroid/content/Intent;

.field private final c:Landroid/content/Context;

.field private final d:Z

.field private final e:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/e;->a:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/e;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/google/android/gms/cloudmessaging/e;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/cloudmessaging/e;->e:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->a:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/e;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/android/gms/cloudmessaging/e;->d:Z

    iget-object v4, p0, Lcom/google/android/gms/cloudmessaging/e;->e:Landroid/content/BroadcastReceiver$PendingResult;

    :try_start_0
    const-string v5, "wrapped_intent"

    .line 1054
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1055
    instance-of v6, v5, Landroid/content/Intent;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 1058
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    goto :goto_1

    .line 1059
    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    :goto_1
    if-eqz v3, :cond_2

    .line 1061
    invoke-virtual {v4, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :cond_2
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    .line 1064
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 1065
    throw v0
.end method
