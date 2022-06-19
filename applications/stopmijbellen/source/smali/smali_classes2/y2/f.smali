.class public final synthetic Ly2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Lz2/r$b;
.implements Lw5/a$a;
.implements Lm7/d;
.implements Li2/g;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Ly2/f;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    iget-object v1, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v1, Lm7/g;

    sget v2, Lm7/g;->i:I

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, p1, p2, v2}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Lm7/g;->n(Ljava/lang/Exception;)Z

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast v0, Lz2/r;

    iget-object v1, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v1, Lu2/i;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lz2/r;->e:Lr2/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1, v1}, Lz2/r;->l(Landroid/database/sqlite/SQLiteDatabase;Lu2/i;)Ljava/lang/Long;

    move-result-object v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    .line 3
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v4

    new-array v6, v13, [Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, v0, Lz2/r;->d:Lz2/d;

    .line 5
    invoke-virtual {v2}, Lz2/d;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "events"

    const-string v5, "context_id = ?"

    move-object v2, p1

    .line 6
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lz2/j;

    invoke-direct {v3, v0, v11, v1}, Lz2/j;-><init>(Lz2/r;Ljava/util/List;Lu2/i;)V

    .line 7
    invoke-static {v2, v3}, Lz2/r;->r(Landroid/database/Cursor;Lz2/r$b;)Ljava/lang/Object;

    .line 8
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 10
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/h;

    invoke-virtual {v3}, Lz2/h;->b()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v13

    if-ge v2, v3, :cond_1

    const/16 v3, 0x2c

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v2, 0x29

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "event_id"

    const-string v3, "name"

    const-string v4, "value"

    .line 15
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "event_metadata"

    move-object v2, p1

    .line 17
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 18
    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 19
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_3

    .line 21
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_3
    new-instance v3, Lz2/r$c;

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lz2/r$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lz2/r$a;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 24
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v11}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 26
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/h;

    .line 28
    invoke-virtual {v1}, Lz2/h;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    invoke-virtual {v1}, Lz2/h;->a()Lu2/f;

    move-result-object v2

    invoke-virtual {v2}, Lu2/f;->i()Lu2/f$a;

    move-result-object v2

    .line 30
    invoke-virtual {v1}, Lz2/h;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/r$c;

    .line 31
    iget-object v5, v4, Lz2/r$c;->a:Ljava/lang/String;

    iget-object v4, v4, Lz2/r$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lu2/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu2/f$a;

    goto :goto_4

    .line 32
    :cond_6
    invoke-virtual {v1}, Lz2/h;->b()J

    move-result-wide v3

    invoke-virtual {v1}, Lz2/h;->c()Lu2/i;

    move-result-object v1

    invoke-virtual {v2}, Lu2/f$a;->b()Lu2/f;

    move-result-object v2

    .line 33
    new-instance v5, Lz2/b;

    invoke-direct {v5, v3, v4, v1, v2}, Lz2/b;-><init>(JLu2/i;Lu2/f;)V

    .line 34
    invoke-interface {p1, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    return-object v11

    :catchall_0
    move-exception v0

    .line 35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 36
    throw v0
.end method

.method public b(Li2/c;Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

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

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "SKU"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "orderId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "OrderId"

    .line 6
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Z

    move-result v2

    const-string v5, "isAcknowledged"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PurchaseToken"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->b:Ljava/lang/String;

    const-string v5, "Signature"

    .line 10
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "purchaseTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v2, "PurchaseTime"

    .line 12
    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "purchaseState"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    const-string v5, "PurchaseState"

    .line 14
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PackageName"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "developerPayload"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "DeveloperPayload"

    .line 17
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v5, "quantity"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Quantity"

    .line 19
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v2, p2, Lcom/android/billingclient/api/Purchase;->a:Ljava/lang/String;

    const-string v3, "OriginalJson"

    .line 21
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v2, Lf8/a;->d:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    sget-object v2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lf8/a;->a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 26
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    sget-object p1, Lf8/a;->a:Landroid/content/Context;

    sget-object p2, Lf8/a;->d:Ljava/util/Map;

    invoke-static {p2, v2}, Lf8/a;->b(Ljava/util/Map;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lf8/a;->k(Landroid/content/Context;Z)V

    .line 29
    sget-object p1, Lf8/a;->d:Ljava/util/Map;

    invoke-static {p1, v3}, Lf8/a;->b(Ljava/util/Map;Z)Z

    move-result p1

    const-string p2, "AKLP"

    .line 30
    invoke-static {p2, p1}, Lh8/q;->A(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public d(Lw5/b;)V
    .locals 3

    iget-object v0, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast v0, Lw5/a$a;

    iget-object v1, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v1, Lw5/a$a;

    sget v2, Lz4/s;->c:I

    .line 1
    invoke-interface {v0, p1}, Lw5/a$a;->d(Lw5/b;)V

    .line 2
    invoke-interface {v1, p1}, Lw5/a$a;->d(Lw5/b;)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast v0, Ly2/n;

    iget-object v1, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v1, Lu2/i;

    .line 1
    iget-object v0, v0, Ly2/n;->c:Lz2/c;

    invoke-interface {v0, v1}, Lz2/c;->O(Lu2/i;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 2

    iget-object p2, p0, Ly2/f;->b:Ljava/lang/Object;

    check-cast p2, Lcom/mglab/scm/visual/c;

    iget-object v0, p0, Ly2/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f090109

    .line 1
    invoke-virtual {p1, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const-string v1, "\n\n"

    invoke-static {p1, v1, v0}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lf8/g;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lf8/g;->F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
