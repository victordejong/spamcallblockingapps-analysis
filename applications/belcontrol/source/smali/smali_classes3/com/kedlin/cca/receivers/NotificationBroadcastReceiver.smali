.class public Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field public a:Lf61;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lf61;->g()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v1, v0}, Lf61;->a(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lf61;->g()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v1, v0}, Lf61;->c(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v1, v0, Lf61;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lf61;->g()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg61;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {v1, v0}, Lf61;->c(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p2

    iput-object p2, p0, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a:Lf61;

    const-string p2, "com.android.incallui.ACTION_ANSWER_VOICE_INCOMING_CALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->a()V

    goto :goto_1

    :cond_0
    const-string p2, "com.android.incallui.ACTION_DECLINE_INCOMING_CALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->b()V

    goto :goto_1

    :cond_1
    const-string p2, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/kedlin/cca/receivers/NotificationBroadcastReceiver;->c()V

    goto :goto_1

    :cond_2
    const-string p2, "com.android.incallui.ACTION_TURN_ON_SPEAKER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Lf61;->o(I)V

    goto :goto_1

    :cond_3
    const-string p2, "com.android.incallui.ACTION_TURN_OFF_SPEAKER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lf61;->h()Lf61;

    move-result-object p1

    const/4 p2, 0x5

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
