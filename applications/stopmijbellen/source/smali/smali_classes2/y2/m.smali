.class public final synthetic Ly2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Lr2/h;
.implements Lm7/g$a;
.implements Lm7/h;
.implements Li2/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly2/m;->a:I

    iput-object p1, p0, Ly2/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly2/m;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Li2/c;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_5

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "SKU"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v6, "orderId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OrderId"

    .line 6
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Z

    move-result v5

    const-string v6, "isAcknowledged"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PurchaseToken"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->b:Ljava/lang/String;

    const-string v6, "Signature"

    .line 10
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v6, "purchaseTime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "PurchaseTime"

    .line 12
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v6, "purchaseState"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    const-string v6, "PurchaseState"

    .line 14
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageName"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v6, "developerPayload"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DeveloperPayload"

    .line 17
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v6, "quantity"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "Quantity"

    .line 19
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v3, p2, Lcom/android/billingclient/api/Purchase;->a:Ljava/lang/String;

    const-string v5, "OriginalJson"

    .line 21
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v3, Lf8/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 24
    sget-object v3, Lf8/a;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 26
    new-instance v3, Li2/d;

    invoke-direct {v3}, Li2/d;-><init>()V

    .line 27
    iput-object v2, v3, Li2/d;->a:Ljava/lang/String;

    .line 28
    sget-object v2, Lz2/l;->f:Lz2/l;

    .line 29
    sget-object v4, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v4, v3, v2}, Lcom/android/billingclient/api/a;->a(Li2/d;Li2/e;)V

    goto :goto_2

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Purchase token must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sget-object v2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lf8/a;->a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    sget-object p1, Lf8/a;->a:Landroid/content/Context;

    sget-object p2, Lf8/a;->d:Ljava/util/Map;

    invoke-static {p2, v2}, Lf8/a;->b(Ljava/util/Map;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lf8/a;->k(Landroid/content/Context;Z)V

    .line 36
    sget-object p1, Lf8/a;->d:Ljava/util/Map;

    invoke-static {p1, v3}, Lf8/a;->b(Ljava/util/Map;Z)Z

    move-result p1

    const-string p2, "AKLP"

    .line 37
    invoke-static {p2, p1}, Lh8/q;->A(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Le5/y;

    sget-object v2, Lk5/a;->b:Lh5/a;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Ly2/n;

    iget-object v1, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Lu2/i;

    .line 1
    iget-object v0, v0, Ly2/n;->c:Lz2/c;

    invoke-interface {v0, v1}, Lz2/c;->h(Lu2/i;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)V
    .locals 4

    iget v0, p0, Ly2/m;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    iget-object v2, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v2, Lm7/g;

    sget v3, Lm7/g;->i:I

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-virtual {v2, v1, p2, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    return-void

    .line 2
    :goto_1
    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Ls2/b;

    iget-object v2, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v2, Lm7/g;

    sget v3, Lm7/g;->i:I

    if-nez p1, :cond_1

    .line 3
    :try_start_0
    iget-object v0, v0, Ls2/b;->a:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    .line 4
    invoke-virtual {v0, v1, p2, v1}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    :cond_1
    :goto_2
    invoke-virtual {v2, p1, p2, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ly2/m;->b:Ljava/lang/Object;

    check-cast v0, Ld8/b;

    iget-object v1, p0, Ly2/m;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lk7/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v2, Lt7/a;

    invoke-direct {v2, p1}, Lt7/a;-><init>(Lk7/l;)V

    if-eqz v1, :cond_0

    .line 2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 4
    :goto_0
    new-instance v1, Lw6/a;

    invoke-direct {v1, p1}, Lw6/a;-><init>(Ljava/io/Reader;)V

    const-string p1, " to Json"

    const-string v2, "Failed parsing JSON source: "

    .line 5
    iget-boolean v3, v1, Lw6/a;->b:Z

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v1, Lw6/a;->b:Z

    .line 7
    :try_start_0
    invoke-static {v1}, Lt6/f;->a(Lw6/a;)Ls6/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v3, v1, Lw6/a;->b:Z

    .line 9
    instance-of v1, p1, Ls6/j;

    if-nez v1, :cond_2

    .line 10
    instance-of v1, p1, Ls6/m;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, v0, Ld8/b;->a:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be casted to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Ld8/b;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    new-instance p1, Lcom/google/gson/JsonParseException;

    const-string v0, "unable to parse json"

    invoke-direct {p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    .line 15
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_1
    iput-boolean v3, v1, Lw6/a;->b:Z

    .line 17
    throw p1
.end method
