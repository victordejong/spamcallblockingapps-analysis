.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vg0;

.field final synthetic b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Lcom/google/android/gms/internal/ads/vg0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v1

    const-string v2, "SignalGeneratorImpl.generateSignals"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/ph0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    const-string v1, "sgf"

    const-string v2, "sgf_reason"

    .line 3
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    const-string v1, "Internal error. "

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/vg0;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "sgf_reason"

    const-string v1, "sgf"

    const-string v2, "QueryInfo generation has been disabled."

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->x5:Lcom/google/android/gms/internal/ads/cw;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    .line 5
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/vg0;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "rid"

    const-string v3, "sgs"

    const-string v4, ""

    if-nez p1, :cond_1

    .line 7
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0, v0, v0}, Lcom/google/android/gms/internal/ads/vg0;->N1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    const-string v0, "-1"

    .line 9
    invoke-static {p1, v3, v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 10
    :cond_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v6, "request_id"

    .line 11
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "The request ID is empty in request JSON."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    const-string v2, "Internal error: request ID is empty in request JSON."

    .line 14
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/vg0;->r(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    const-string v2, "rid_missing"

    .line 15
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->i5:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->S6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;->c:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->X6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Z6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    .line 19
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Z6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->a7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    .line 20
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->W6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Y6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->c7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->R6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v8}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->b7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/ads/internal/util/c2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->d7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Y6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->c7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    iget-object v6, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/i;->b:Ljava/lang/String;

    .line 25
    invoke-interface {v1, v6, p1, v0}, Lcom/google/android/gms/internal/ads/vg0;->N1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    .line 26
    invoke-static {p1, v3, v2, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v2, "Failed to create JSON object from the request string."

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->a:Lcom/google/android/gms/internal/ads/vg0;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Internal error for request JSON: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/vg0;->r(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    const-string v2, "request_invalid"

    .line 29
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    .line 30
    :goto_0
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
