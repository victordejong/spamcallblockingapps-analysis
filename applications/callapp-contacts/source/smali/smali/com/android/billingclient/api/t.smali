.class final Lcom/android/billingclient/api/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/v;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    invoke-static {v0}, Lcom/android/billingclient/api/v;->a(Lcom/android/billingclient/api/v;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    invoke-static {v1}, Lcom/android/billingclient/api/v;->c(Lcom/android/billingclient/api/v;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1
    monitor-exit v0

    goto/16 :goto_10

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 1000
    iget-object v3, v3, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x3

    :goto_0
    if-lt v5, v0, :cond_2

    :try_start_2
    iget-object v7, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v7, v7, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 2000
    iget-object v7, v7, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    const-string v8, "subs"

    .line 4
    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/f/d;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catch_0
    move v0, v6

    goto/16 :goto_e

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v7, v7, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 3000
    :goto_2
    iput-boolean v8, v7, Lcom/android/billingclient/api/d;->f:Z

    .line 5
    iget-object v7, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v7, v7, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    if-lt v5, v0, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 4000
    :goto_3
    iput-boolean v8, v7, Lcom/android/billingclient/api/d;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v5, v0, :cond_5

    const-string v5, "BillingClient"

    .line 7
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    :cond_5
    const/16 v5, 0x10

    :goto_4
    if-lt v5, v0, :cond_7

    iget-object v7, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v7, v7, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 5000
    iget-object v7, v7, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    const-string v8, "inapp"

    .line 8
    invoke-interface {v7, v5, v3, v8}, Lcom/google/android/gms/internal/f/d;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 6000
    iput v5, v3, Lcom/android/billingclient/api/d;->g:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 9
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 7000
    iget v5, v3, Lcom/android/billingclient/api/d;->g:I

    if-lt v5, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 8000
    :goto_6
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->o:Z

    .line 10
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 9000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 10000
    :goto_7
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->n:Z

    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 11000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 12000
    :goto_8
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->m:Z

    .line 12
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 13000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    .line 14000
    :goto_9
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->l:Z

    .line 13
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 15000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    .line 16000
    :goto_a
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->k:Z

    .line 14
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 17000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    .line 18000
    :goto_b
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->j:Z

    .line 15
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 19000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    .line 20000
    :goto_c
    iput-boolean v4, v3, Lcom/android/billingclient/api/d;->i:Z

    .line 16
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 21000
    iget v4, v3, Lcom/android/billingclient/api/d;->g:I

    const/4 v5, 0x6

    if-lt v4, v5, :cond_f

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    .line 22000
    :goto_d
    iput-boolean v9, v3, Lcom/android/billingclient/api/d;->h:Z

    .line 17
    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 23000
    iget v3, v3, Lcom/android/billingclient/api/d;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ge v3, v0, :cond_10

    const-string v0, "BillingClient"

    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 18
    :try_start_4
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-nez v6, :cond_11

    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v0, v0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    const/4 v3, 0x2

    .line 24000
    iput v3, v0, Lcom/android/billingclient/api/d;->a:I

    goto :goto_f

    .line 26
    :cond_11
    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v0, v0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 25000
    iput v1, v0, Lcom/android/billingclient/api/d;->a:I

    .line 20
    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v0, v0, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 26000
    iput-object v2, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_f

    :catch_1
    :goto_e
    const-string v3, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    .line 22
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v3, v3, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 27000
    iput v1, v3, Lcom/android/billingclient/api/d;->a:I

    .line 23
    iget-object v1, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    iget-object v1, v1, Lcom/android/billingclient/api/v;->d:Lcom/android/billingclient/api/d;

    .line 28000
    iput-object v2, v1, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    move v6, v0

    :goto_f
    if-nez v6, :cond_12

    .line 19
    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    .line 25
    sget-object v1, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/v;->a(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V

    goto :goto_10

    :cond_12
    iget-object v0, p0, Lcom/android/billingclient/api/t;->a:Lcom/android/billingclient/api/v;

    .line 26
    sget-object v1, Lcom/android/billingclient/api/y;->a:Lcom/android/billingclient/api/g;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/v;->a(Lcom/android/billingclient/api/v;Lcom/android/billingclient/api/g;)V

    :goto_10
    return-object v2

    :catchall_0
    move-exception v1

    .line 2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
