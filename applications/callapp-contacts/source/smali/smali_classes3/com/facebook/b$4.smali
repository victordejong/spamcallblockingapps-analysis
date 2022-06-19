.class final Lcom/facebook/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/b;->b(Lcom/facebook/AccessToken$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/facebook/AccessToken$b;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/facebook/b$a;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Ljava/util/Set;

.field final synthetic h:Lcom/facebook/b;


# direct methods
.method constructor <init>(Lcom/facebook/b;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$b;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/b$a;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/facebook/b$4;->h:Lcom/facebook/b;

    iput-object p2, p0, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$b;

    iput-object p4, p0, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iput-object p6, p0, Lcom/facebook/b$4;->e:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/b$4;->f:Ljava/util/Set;

    iput-object p8, p0, Lcom/facebook/b$4;->g:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 315
    :try_start_0
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    .line 1095
    iget-object v0, v0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_a

    .line 316
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    .line 2095
    iget-object v0, v0, Lcom/facebook/b;->b:Lcom/facebook/AccessToken;

    .line 316
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_0

    goto/16 :goto_7

    .line 323
    :cond_0
    iget-object v0, v1, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v0, v0, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v0, v0, Lcom/facebook/b$a;->b:I

    if-nez v0, :cond_2

    .line 326
    iget-object v0, v1, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$b;

    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v3, "Failed to refresh access token"

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/facebook/b$4;->h:Lcom/facebook/b;

    invoke-static {v0}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 332
    :cond_2
    :try_start_1
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v3, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v3, v3, Lcom/facebook/b$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v3, v3, Lcom/facebook/b$a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 336
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 337
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 338
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v1, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 339
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/facebook/b$4;->e:Ljava/util/Set;

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    :goto_2
    move-object v7, v3

    iget-object v3, v1, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 340
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/facebook/b$4;->f:Ljava/util/Set;

    goto :goto_3

    :cond_5
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 342
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v3

    :goto_3
    move-object v8, v3

    iget-object v3, v1, Lcom/facebook/b$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 343
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/facebook/b$4;->g:Ljava/util/Set;

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 345
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getExpiredPermissions()Ljava/util/Set;

    move-result-object v3

    :goto_4
    move-object v9, v3

    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 346
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/c;

    move-result-object v10

    iget-object v3, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v3, v3, Lcom/facebook/b$a;->b:I

    const-wide/16 v11, 0x3e8

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/Date;

    iget-object v13, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget v13, v13, Lcom/facebook/b$a;->b:I

    int-to-long v13, v13

    mul-long v13, v13, v11

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    goto :goto_5

    :cond_7
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 349
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v3

    :goto_5
    move-object v13, v3

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    iget-object v3, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v3, v3, Lcom/facebook/b$a;->c:Ljava/lang/Long;

    if-eqz v3, :cond_8

    new-instance v3, Ljava/util/Date;

    iget-object v15, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v15, v15, Lcom/facebook/b$a;->c:Ljava/lang/Long;

    .line 352
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    mul-long v11, v11, v15

    invoke-direct {v3, v11, v12}, Ljava/util/Date;-><init>(J)V

    goto :goto_6

    :cond_8
    iget-object v3, v1, Lcom/facebook/b$4;->a:Lcom/facebook/AccessToken;

    .line 353
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v3

    :goto_6
    move-object v15, v3

    iget-object v3, v1, Lcom/facebook/b$4;->d:Lcom/facebook/b$a;

    iget-object v12, v3, Lcom/facebook/b$a;->d:Ljava/lang/String;

    move-object v3, v0

    move-object v11, v13

    move-object/from16 v16, v12

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v3

    const/4 v4, 0x1

    .line 2110
    invoke-virtual {v3, v0, v4}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    iget-object v0, v1, Lcom/facebook/b$4;->h:Lcom/facebook/b;

    invoke-static {v0}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    iget-object v0, v1, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$b;

    if-eqz v0, :cond_9

    :cond_9
    return-void

    .line 317
    :cond_a
    :goto_7
    :try_start_2
    iget-object v0, v1, Lcom/facebook/b$4;->b:Lcom/facebook/AccessToken$b;

    if-eqz v0, :cond_1

    .line 318
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v3, "No current access token to refresh"

    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 357
    iget-object v3, v1, Lcom/facebook/b$4;->h:Lcom/facebook/b;

    invoke-static {v3}, Lcom/facebook/b;->a(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    throw v0
.end method
