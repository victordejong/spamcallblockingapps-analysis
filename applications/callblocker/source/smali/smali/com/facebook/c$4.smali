.class Lcom/facebook/c$4;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c;->b(Lcom/facebook/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a;

.field final synthetic b:Lcom/facebook/a$a;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/facebook/c$a;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Ljava/util/Set;

.field final synthetic h:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;Lcom/facebook/a;Lcom/facebook/a$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/c$a;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/facebook/c$4;->h:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    iput-object p3, p0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    iput-object p4, p0, Lcom/facebook/c$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iput-object p6, p0, Lcom/facebook/c$4;->e:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/c$4;->f:Ljava/util/Set;

    iput-object p8, p0, Lcom/facebook/c$4;->g:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/m;)V
    .locals 20

    .prologue
    .line 331
    const/4 v14, 0x0

    .line 333
    :try_start_0
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/c;->b()Lcom/facebook/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/c;->b()Lcom/facebook/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a;->m()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 335
    invoke-virtual {v3}, Lcom/facebook/a;->m()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 336
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v2, :cond_1

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "No current access token to refresh"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/a$a;->a(Lcom/facebook/FacebookException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->h:Lcom/facebook/c;

    invoke-static {v2}, Lcom/facebook/c;->a(Lcom/facebook/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v2, :cond_2

    if-eqz v14, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    invoke-interface {v2, v14}, Lcom/facebook/a$a;->a(Lcom/facebook/a;)V

    .line 379
    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v2, v2, Lcom/facebook/c$a;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget v2, v2, Lcom/facebook/c$a;->b:I

    if-nez v2, :cond_5

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v2, :cond_4

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    new-instance v3, Lcom/facebook/FacebookException;

    const-string/jumbo v4, "Failed to refresh access token"

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/facebook/a$a;->a(Lcom/facebook/FacebookException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->h:Lcom/facebook/c;

    invoke-static {v2}, Lcom/facebook/c;->a(Lcom/facebook/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v2, :cond_2

    if-eqz v14, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    invoke-interface {v2, v14}, Lcom/facebook/a$a;->a(Lcom/facebook/a;)V

    goto :goto_0

    .line 351
    :cond_5
    :try_start_2
    new-instance v2, Lcom/facebook/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v3, v3, Lcom/facebook/c$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v3, v3, Lcom/facebook/c$a;->a:Ljava/lang/String;

    .line 353
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 354
    invoke-virtual {v4}, Lcom/facebook/a;->l()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 355
    invoke-virtual {v5}, Lcom/facebook/a;->m()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/c$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/c$4;->e:Ljava/util/Set;

    .line 357
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/c$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/c$4;->f:Ljava/util/Set;

    .line 359
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/c$4;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 360
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/c$4;->g:Ljava/util/Set;

    .line 361
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 362
    invoke-virtual {v9}, Lcom/facebook/a;->j()Lcom/facebook/d;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget v10, v10, Lcom/facebook/c$a;->b:I

    if-eqz v10, :cond_a

    new-instance v10, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget v11, v11, Lcom/facebook/c$a;->b:I

    int-to-long v12, v11

    const-wide/16 v16, 0x3e8

    mul-long v12, v12, v16

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 365
    :goto_5
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v12, v12, Lcom/facebook/c$a;->c:Ljava/lang/Long;

    if-eqz v12, :cond_b

    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v13, v13, Lcom/facebook/c$a;->c:Ljava/lang/Long;

    .line 368
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 369
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/c$4;->d:Lcom/facebook/c$a;

    iget-object v13, v13, Lcom/facebook/c$a;->d:Ljava/lang/String;

    invoke-direct/range {v2 .. v13}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :try_start_3
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/c;->a(Lcom/facebook/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->h:Lcom/facebook/c;

    invoke-static {v3}, Lcom/facebook/c;->a(Lcom/facebook/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    invoke-interface {v3, v2}, Lcom/facebook/a$a;->a(Lcom/facebook/a;)V

    goto/16 :goto_0

    .line 351
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 353
    invoke-virtual {v3}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 356
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 357
    invoke-virtual {v6}, Lcom/facebook/a;->g()Ljava/util/Set;

    move-result-object v6

    goto/16 :goto_2

    .line 358
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 359
    invoke-virtual {v7}, Lcom/facebook/a;->h()Ljava/util/Set;

    move-result-object v7

    goto/16 :goto_3

    .line 360
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 361
    invoke-virtual {v8}, Lcom/facebook/a;->i()Ljava/util/Set;

    move-result-object v8

    goto/16 :goto_4

    .line 362
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 365
    invoke-virtual {v10}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v10

    goto :goto_5

    .line 368
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/c$4;->a:Lcom/facebook/a;

    .line 369
    invoke-virtual {v12}, Lcom/facebook/a;->f()Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    goto :goto_6

    .line 374
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v4, v14

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->h:Lcom/facebook/c;

    invoke-static {v2}, Lcom/facebook/c;->a(Lcom/facebook/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/c$4;->b:Lcom/facebook/a$a;

    invoke-interface {v2, v4}, Lcom/facebook/a$a;->a(Lcom/facebook/a;)V

    .line 378
    :cond_c
    throw v3

    .line 374
    :catchall_1
    move-exception v3

    move-object v4, v2

    goto :goto_7
.end method
