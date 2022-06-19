.class public Lf8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static b:Lcom/android/billingclient/api/a;

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf8/a;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf8/a;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Lf8/a$a;

    invoke-direct {v0}, Lf8/a$a;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf8/a;->e:Ljava/util/List;

    .line 4
    new-instance v0, Lf8/a$b;

    invoke-direct {v0}, Lf8/a$b;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf8/a;->f:Ljava/util/List;

    .line 5
    new-instance v0, Lf8/a$c;

    invoke-direct {v0}, Lf8/a$c;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf8/a;->g:Ljava/util/List;

    .line 6
    new-instance v0, Lf8/a$d;

    invoke-direct {v0}, Lf8/a$d;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf8/a;->h:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_4

    .line 1
    new-instance v0, Li2/a;

    invoke-direct {v0}, Li2/a;-><init>()V

    .line 2
    iput-object p1, v0, Li2/a;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Ls2/b;

    invoke-direct {p1, p0}, Ls2/b;-><init>(Ljava/lang/Object;)V

    move-object v7, p0

    check-cast v7, Lcom/android/billingclient/api/b;

    .line 4
    invoke-virtual {v7}, Lcom/android/billingclient/api/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    sget-object p1, Li2/n;->l:Li2/c;

    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->b()V

    .line 7
    invoke-static {}, Lf8/a;->g()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Li2/a;->a:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p1, Li2/n;->i:Li2/c;

    .line 12
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->b()V

    .line 13
    invoke-static {}, Lf8/a;->g()V

    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->k:Z

    if-nez v1, :cond_2

    .line 15
    sget-object p1, Li2/n;->b:Li2/c;

    .line 16
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->b()V

    .line 17
    invoke-static {}, Lf8/a;->g()V

    goto :goto_0

    .line 18
    :cond_2
    new-instance v2, Li2/t;

    invoke-direct {v2, v7, v0, p1}, Li2/t;-><init>(Lcom/android/billingclient/api/b;Li2/a;Ls2/b;)V

    new-instance v5, Li2/r;

    invoke-direct {v5, p1}, Li2/r;-><init>(Ls2/b;)V

    const-wide/16 v3, 0x7530

    .line 19
    invoke-virtual {v7}, Lcom/android/billingclient/api/b;->f()Landroid/os/Handler;

    move-result-object v6

    move-object v1, v7

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 21
    invoke-virtual {v7}, Lcom/android/billingclient/api/b;->h()Li2/c;

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->b()V

    .line 23
    invoke-static {}, Lf8/a;->g()V

    :cond_3
    :goto_0
    return-void

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Purchase token must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/util/Map;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v3, "SKU"

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    sget-object v5, Lf8/a;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "SKU_"

    const-string v7, "PurchaseState"

    const-string v8, "isAcknowledged"

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    sget-object v5, Lf8/a;->a:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    :cond_4
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 10
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    sget-object v5, Lf8/a;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 12
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    sget-object v5, Lf8/a;->a:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    :cond_7
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 17
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 18
    :cond_8
    sget-object v1, Lf8/a;->e:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkGooglePurchase unknown SKU: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "GBilling"

    invoke-static {v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v3, Lf8/a;->a:Landroid/content/Context;

    const-string v4, "unknown SKU"

    invoke-static {v3, v4, v1}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_a
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_2

    return v2

    :cond_b
    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lf8/a;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lf8/a;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static d(Landroid/os/Bundle;)Ls6/k;
    .locals 5

    .line 1
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    const-string v1, "PurchaseToken"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 4
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "token"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SKU"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v2

    .line 7
    iget-object v3, v0, Ls6/k;->a:Lt6/e;

    const-string v4, "sku"

    invoke-virtual {v3, v4, v2}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PackageName"

    .line 8
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v2

    .line 10
    iget-object v3, v0, Ls6/k;->a:Lt6/e;

    const-string v4, "packagename"

    invoke-virtual {v3, v4, v2}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lf8/a;->c(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object p0

    .line 13
    iget-object v1, v0, Ls6/k;->a:Lt6/e;

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static e(Lcom/android/billingclient/api/Purchase;)Ls6/k;
    .locals 5

    .line 1
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 4
    iget-object v2, v0, Ls6/k;->a:Lt6/e;

    const-string v3, "token"

    invoke-virtual {v2, v3, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 7
    iget-object v3, v0, Ls6/k;->a:Lt6/e;

    const-string v4, "sku"

    invoke-virtual {v3, v4, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v1

    .line 10
    iget-object v3, v0, Ls6/k;->a:Lt6/e;

    const-string v4, "packagename"

    invoke-virtual {v3, v4, v1}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lf8/a;->c(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object p0

    .line 13
    iget-object v1, v0, Ls6/k;->a:Lt6/e;

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static f()Ls6/h;
    .locals 4

    .line 1
    new-instance v0, Ls6/h;

    invoke-direct {v0}, Ls6/h;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Lf8/a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3
    invoke-static {v2}, Lf8/a;->d(Landroid/os/Bundle;)Ls6/k;

    move-result-object v2

    .line 4
    iget-object v3, v0, Ls6/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static g()V
    .locals 9

    .line 1
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()V

    .line 3
    :cond_0
    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    sget-object v1, Ls2/c;->f:Ls2/c;

    if-eqz v0, :cond_9

    .line 4
    new-instance v2, Lcom/android/billingclient/api/b;

    const/4 v3, 0x1

    .line 5
    invoke-direct {v2, v3, v0, v1}, Lcom/android/billingclient/api/b;-><init>(ZLandroid/content/Context;Ls2/c;)V

    .line 6
    sput-object v2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    .line 7
    invoke-virtual {v2}, Lcom/android/billingclient/api/a;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    new-instance v1, Lf8/a$e;

    invoke-direct {v1}, Lf8/a$e;-><init>()V

    check-cast v0, Lcom/android/billingclient/api/b;

    .line 9
    invoke-virtual {v0}, Lcom/android/billingclient/api/b;->c()Z

    move-result v2

    const-string v4, "BillingClient"

    if-eqz v2, :cond_1

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 10
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Li2/n;->k:Li2/c;

    invoke-virtual {v1, v0}, Lf8/a$e;->a(Li2/c;)V

    goto/16 :goto_1

    :cond_1
    iget v2, v0, Lcom/android/billingclient/api/b;->a:I

    if-ne v2, v3, :cond_2

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 12
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Li2/n;->d:Li2/c;

    invoke-virtual {v1, v0}, Lf8/a$e;->a(Li2/c;)V

    goto/16 :goto_1

    :cond_2
    iget v2, v0, Lcom/android/billingclient/api/b;->a:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 14
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Li2/n;->l:Li2/c;

    invoke-virtual {v1, v0}, Lf8/a$e;->a(Li2/c;)V

    goto/16 :goto_1

    :cond_3
    iput v3, v0, Lcom/android/billingclient/api/b;->a:I

    iget-object v2, v0, Lcom/android/billingclient/api/b;->d:Landroidx/appcompat/widget/z;

    .line 16
    iget-object v5, v2, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v5, Li2/q;

    iget-object v2, v2, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 17
    iget-boolean v7, v5, Li2/q;->b:Z

    if-nez v7, :cond_4

    iget-object v7, v5, Li2/q;->c:Landroidx/appcompat/widget/z;

    .line 18
    iget-object v7, v7, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v7, Li2/q;

    .line 19
    invoke-virtual {v2, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, v5, Li2/q;->b:Z

    :cond_4
    const-string v2, "Starting in-app billing setup."

    .line 20
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Li2/m;

    invoke-direct {v2, v0, v1}, Li2/m;-><init>(Lcom/android/billingclient/api/b;Li2/b;)V

    iput-object v2, v0, Lcom/android/billingclient/api/b;->g:Li2/m;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.InAppBillingService.BIND"

    .line 21
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.vending"

    .line 22
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 23
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 24
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 25
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 26
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_7

    .line 27
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 28
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    new-instance v5, Landroid/content/ComponentName;

    .line 30
    invoke-direct {v5, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    .line 31
    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    const-string v5, "playBillingLibraryVersion"

    .line 33
    invoke-virtual {v6, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/billingclient/api/b;->g:Li2/m;

    .line 34
    invoke-virtual {v2, v6, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Service was bonded successfully."

    .line 35
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "Connection to Billing service is blocked."

    .line 36
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "The device doesn\'t have valid Play Store."

    .line 37
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_7
    :goto_0
    iput v7, v0, Lcom/android/billingclient/api/b;->a:I

    const-string v0, "Billing service unavailable on device."

    .line 39
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Li2/n;->c:Li2/c;

    invoke-virtual {v1, v0}, Lf8/a$e;->a(Li2/c;)V

    :cond_8
    :goto_1
    return-void

    .line 41
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static i()V
    .locals 5

    .line 1
    sget-object v0, Lf8/a;->b:Lcom/android/billingclient/api/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    sget-object v1, Lf8/a;->d:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5
    sget-object v1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    new-instance v3, Ly2/m;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v2, v4}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v4, "inapp"

    invoke-virtual {v1, v4, v3}, Lcom/android/billingclient/api/a;->d(Ljava/lang/String;Li2/g;)V

    .line 6
    sget-object v1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    new-instance v3, Ly2/f;

    invoke-direct {v3, v2, v0}, Ly2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "subs"

    invoke-virtual {v1, v0, v3}, Lcom/android/billingclient/api/a;->d(Ljava/lang/String;Li2/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Lt4/d;->g:Lt4/d;

    const/16 v1, 0x10

    .line 2
    invoke-static {v1}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lf8/h;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {}, Lf8/a;->f()Ls6/h;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "hggjh"

    invoke-static {v2, v6, v4}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v4

    invoke-virtual {v4}, Ls6/i;->toString()Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v4

    const-string v6, "purchase_upload.php"

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    check-cast v4, Lw7/p;

    invoke-virtual {v4, v3}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lz7/a;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "deviceid"

    .line 10
    invoke-interface {v4, v3, p0}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p0

    const-string v3, "data"

    .line 11
    invoke-interface {p0, v3, v1}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p0

    const-string v1, "gzip"

    const-string v3, "1"

    .line 12
    invoke-interface {p0, v1, v3}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    move-result-object p0

    .line 13
    invoke-static {}, Lf8/a;->f()Ls6/h;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 14
    invoke-interface {p0, v1}, Lz7/a;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz7/b;

    .line 15
    invoke-interface {p0}, Lz7/b;->d()Lc8/a;

    move-result-object p0

    .line 16
    check-cast p0, Lm7/g;

    invoke-virtual {p0, v0}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "AKP"

    .line 1
    invoke-static {v0}, Lh8/q;->m(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 2
    invoke-static {v0, p1}, Lh8/q;->A(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "psetaslfn"

    .line 3
    invoke-static {p0, v0, p1}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lh8/q;->k(Landroid/content/Context;Z)V

    .line 5
    :goto_0
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p0

    new-instance p1, Lk8/s;

    invoke-direct {p1}, Lk8/s;-><init>()V

    invoke-virtual {p0, p1}, Lba/b;->g(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
