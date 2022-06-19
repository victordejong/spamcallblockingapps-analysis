.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Map;Ljava/io/File;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    new-instance v11, Ljava/io/File;

    move-object/from16 v12, p1

    invoke-direct {v11, v12, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;

    if-eqz v2, :cond_0

    .line 105
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;->a:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;->a:Ljava/util/List;

    .line 110
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;

    .line 113
    iget-object v14, v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;->a:Ljava/lang/String;

    .line 114
    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    iget v15, v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;->b:I

    .line 120
    iget-object v10, v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$a;->c:Ljava/util/List;

    .line 121
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v9, "--pending-delete"

    if-eq v15, v4, :cond_6

    const/4 v4, 0x2

    if-eq v15, v4, :cond_4

    const/4 v4, 0x3

    if-eq v15, v4, :cond_3

    :cond_2
    :goto_1
    move-object/from16 p0, v1

    move-object/from16 v21, v2

    move-object/from16 v17, v11

    goto/16 :goto_6

    .line 158
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    new-instance v10, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v11, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v4, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 161
    new-instance v8, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;

    const-wide/16 v16, 0x0

    move-object v4, v8

    move-object v5, v3

    move-object v6, v14

    move v7, v15

    move-object v14, v8

    move-wide/from16 v8, v16

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/io/File;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v10, :cond_2

    .line 144
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 145
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 148
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const/4 v5, 0x0

    .line 149
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v7, v5, v17

    if-lez v7, :cond_5

    .line 150
    new-instance v7, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 152
    new-instance v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v4, v6

    move-object v5, v3

    move-object/from16 p0, v1

    move-object v1, v6

    move-object v6, v14

    move-object/from16 v19, v7

    move v7, v15

    move-object/from16 v21, v2

    move-object/from16 v20, v8

    move-object v2, v9

    move-wide/from16 v8, v17

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v19

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 p0, v1

    move-object/from16 v21, v2

    move-object/from16 v20, v8

    move-object v2, v9

    move-object/from16 v17, v11

    move-object v11, v10

    :goto_3
    move-object/from16 v1, p0

    move-object v9, v2

    move-object v10, v11

    move-object/from16 v11, v17

    move-object/from16 v8, v20

    move-object/from16 v2, v21

    goto :goto_2

    :cond_6
    move-object/from16 p0, v1

    move-object/from16 v21, v2

    move-object/from16 v20, v8

    move-object v2, v9

    move-object/from16 v17, v11

    move-object v11, v10

    if-eqz v11, :cond_8

    .line 128
    invoke-static/range {v20 .. v20}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 129
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 133
    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 134
    new-instance v10, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, v20

    invoke-direct {v10, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 136
    new-instance v9, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v4, v9

    move-object v5, v3

    move-object v6, v14

    move v7, v15

    move-object/from16 v20, v1

    move-object/from16 v16, v8

    move-object v1, v9

    move-wide/from16 v8, v18

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 v16, v20

    move-object/from16 v20, v1

    :goto_5
    move-object/from16 v1, v20

    move-object/from16 v20, v16

    goto :goto_4

    :cond_8
    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v11, v17

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->b(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel$b;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Ljava/util/Map;Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;

    invoke-direct {p2, p0, v0, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V
    .locals 10

    .line 175
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j()J

    move-result-wide v2

    .line 179
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k()Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;-><init>()V

    .line 186
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->common:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    .line 187
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/gecko/server/packages/stats"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 197
    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    .line 200
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "upload failed"

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v0, "clean-channel"

    .line 204
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;

    move-result-object p0

    .line 209
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 212
    new-instance p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->b:Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "status"

    .line 213
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "upload failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_1
    new-instance p2, Landroid/accounts/NetworkErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net work get failed, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", url:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz p1, :cond_3

    .line 70
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;

    .line 75
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->e:Ljava/io/File;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 77
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    move-result v3

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 81
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->b(Ljava/lang/String;)V

    .line 83
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;

    move-result-object v8

    iget-object v9, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->a:Ljava/lang/String;

    iget-object v10, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->b:Ljava/lang/String;

    iget v11, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->c:I

    const/16 v12, 0xc8

    iget-wide v13, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->d:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    sub-long v17, v6, v4

    const/16 v19, 0x1

    .line 84
    invoke-virtual/range {v8 .. v19}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;JI)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;

    move-result-object v20

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->a:Ljava/lang/String;

    iget-object v8, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->b:Ljava/lang/String;

    iget v9, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->c:I

    const/16 v24, 0xc9

    iget-wide v10, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a$a;->d:J

    const/16 v27, 0x259

    sub-long v29, v6, v4

    const/16 v31, 0x1

    const-string v28, "delete failed"

    move-object/from16 v21, v3

    move-object/from16 v22, v8

    move/from16 v23, v9

    move-wide/from16 v25, v10

    .line 88
    invoke-virtual/range {v20 .. v31}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;JI)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
