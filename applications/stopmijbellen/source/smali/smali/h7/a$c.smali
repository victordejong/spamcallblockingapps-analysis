.class public final Lh7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    sget-object v0, Lh7/a;->g:Lh7/a;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lh7/a;->b:I

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 4
    iput-wide v2, v0, Lh7/a;->f:J

    .line 5
    iget-object v2, v0, Lh7/a;->d:Lh7/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lc7/a;->c:Lc7/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 7
    invoke-virtual {v3}, Lc7/a;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La7/i;

    invoke-virtual {v5}, La7/i;->N()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5}, La7/i;->O()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    iget-object v7, v5, La7/i;->h:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->hasWindowFocus()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "noWindowFocus"

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v9, v6

    :goto_1
    if-eqz v9, :cond_4

    invoke-static {v9}, Le7/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v8, v10

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v10, v9, Landroid/view/View;

    if-eqz v10, :cond_3

    check-cast v9, Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v9, v4

    goto :goto_1

    :cond_4
    iget-object v9, v2, Lh7/c;->d:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-object v8, v4

    :goto_2
    if-nez v8, :cond_7

    .line 10
    iget-object v8, v2, Lh7/c;->e:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v2, Lh7/c;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v6, v5, La7/i;->c:Ljava/util/List;

    .line 12
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc7/b;

    .line 13
    iget-object v8, v7, Lc7/b;->a:Lf7/a;

    .line 14
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v9, v2, Lh7/c;->b:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh7/c$a;

    if-eqz v9, :cond_6

    .line 15
    iget-object v7, v5, La7/i;->h:Ljava/lang/String;

    .line 16
    iget-object v8, v9, Lh7/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_6
    iget-object v9, v2, Lh7/c;->b:Ljava/util/HashMap;

    new-instance v10, Lh7/c$a;

    .line 18
    iget-object v11, v5, La7/i;->h:Ljava/lang/String;

    .line 19
    invoke-direct {v10, v7, v11}, Lh7/c$a;-><init>(Lc7/b;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_7
    iget-object v5, v2, Lh7/c;->f:Ljava/util/HashSet;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lh7/c;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Lh7/c;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    iget-object v5, v2, Lh7/c;->f:Ljava/util/HashSet;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lh7/c;->g:Ljava/util/HashMap;

    const-string v6, "noAdView"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 21
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 22
    iget-object v5, v0, Lh7/a;->c:Landroidx/appcompat/widget/l;

    .line 23
    iget-object v5, v5, Landroidx/appcompat/widget/l;->c:Ljava/lang/Object;

    check-cast v5, Ld7/b;

    .line 24
    iget-object v6, v0, Lh7/a;->d:Lh7/c;

    .line 25
    iget-object v6, v6, Lh7/c;->f:Ljava/util/HashSet;

    .line 26
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, v0, Lh7/a;->d:Lh7/c;

    .line 27
    iget-object v6, v6, Lh7/c;->f:Ljava/util/HashSet;

    .line 28
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ld7/b;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v8, v0, Lh7/a;->d:Lh7/c;

    .line 29
    iget-object v8, v8, Lh7/c;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 30
    iget-object v9, v0, Lh7/a;->c:Landroidx/appcompat/widget/l;

    .line 31
    iget-object v9, v9, Landroidx/appcompat/widget/l;->b:Ljava/lang/Object;

    check-cast v9, Ld7/c;

    .line 32
    iget-object v10, v0, Lh7/a;->d:Lh7/c;

    .line 33
    iget-object v10, v10, Lh7/c;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 34
    invoke-virtual {v9, v8}, Ld7/c;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    sget-object v9, Le7/a;->a:Landroid/view/WindowManager;

    :try_start_0
    const-string v9, "adSessionId"

    .line 35
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 36
    :catch_0
    sget v9, Lb0/a;->q:I

    :goto_5
    :try_start_1
    const-string v9, "notVisibleReason"

    .line 37
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 38
    :catch_1
    sget v9, Lb0/a;->q:I

    .line 39
    :goto_6
    invoke-static {v11, v8}, Le7/a;->e(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 40
    :cond_a
    invoke-static {v11}, Le7/a;->c(Lorg/json/JSONObject;)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lh7/a;->e:Lh7/d;

    .line 41
    iget-object v7, v9, Lh7/d;->b:Li7/c;

    new-instance v14, Li7/e;

    move-object v8, v14

    move-wide v12, v2

    invoke-direct/range {v8 .. v13}, Li7/e;-><init>(Li7/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v7, v14}, Li7/c;->b(Li7/b;)V

    goto :goto_4

    .line 42
    :cond_b
    iget-object v6, v0, Lh7/a;->d:Lh7/c;

    .line 43
    iget-object v6, v6, Lh7/c;->e:Ljava/util/HashSet;

    .line 44
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v5, v4}, Ld7/b;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v11

    const/4 v6, 0x1

    .line 45
    invoke-virtual {v5, v4, v11, v0, v6}, Ld7/b;->a(Landroid/view/View;Lorg/json/JSONObject;Ld7/a$a;Z)V

    .line 46
    invoke-static {v11}, Le7/a;->c(Lorg/json/JSONObject;)V

    iget-object v9, v0, Lh7/a;->e:Lh7/d;

    iget-object v4, v0, Lh7/a;->d:Lh7/c;

    .line 47
    iget-object v10, v4, Lh7/c;->e:Ljava/util/HashSet;

    .line 48
    iget-object v4, v9, Lh7/d;->b:Li7/c;

    new-instance v5, Li7/f;

    move-object v8, v5

    move-wide v12, v2

    invoke-direct/range {v8 .. v13}, Li7/f;-><init>(Li7/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v4, v5}, Li7/c;->b(Li7/b;)V

    goto :goto_7

    .line 49
    :cond_c
    iget-object v2, v0, Lh7/a;->e:Lh7/d;

    .line 50
    iget-object v3, v2, Lh7/d;->b:Li7/c;

    new-instance v4, Li7/d;

    invoke-direct {v4, v2}, Li7/d;-><init>(Li7/b$b;)V

    invoke-virtual {v3, v4}, Li7/c;->b(Li7/b;)V

    .line 51
    :goto_7
    iget-object v2, v0, Lh7/a;->d:Lh7/c;

    .line 52
    iget-object v3, v2, Lh7/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v2, Lh7/c;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v2, Lh7/c;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, v2, Lh7/c;->d:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v2, Lh7/c;->e:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v2, Lh7/c;->f:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v2, Lh7/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iput-boolean v1, v2, Lh7/c;->h:Z

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 54
    iget-wide v3, v0, Lh7/a;->f:J

    sub-long/2addr v1, v3

    .line 55
    iget-object v3, v0, Lh7/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    iget-object v3, v0, Lh7/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh7/a$b;

    iget v5, v0, Lh7/a;->b:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lh7/a$b;->onTreeProcessed(IJ)V

    instance-of v5, v4, Lh7/a$a;

    if-eqz v5, :cond_d

    check-cast v4, Lh7/a$a;

    iget v5, v0, Lh7/a;->b:I

    invoke-interface {v4, v5, v1, v2}, Lh7/a$a;->onTreeProcessedNano(IJ)V

    goto :goto_8

    :cond_e
    return-void
.end method
