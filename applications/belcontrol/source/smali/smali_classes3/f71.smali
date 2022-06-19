.class public Lf71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu61;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf71$c;,
        Lf71$b;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf71;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 31

    move-object/from16 v1, p0

    const-string v2, "PROTO_TO_SERVER"

    invoke-static {v1, v2}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj91;->B(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lf71;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lr71$a;->w0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v11, v6, v8

    if-nez v11, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lr71$a;->n(Ljava/lang/Long;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    sget-object v7, Lr71$a;->u0:Lr71$a;

    invoke-virtual {v7}, Lr71$a;->g()J

    move-result-wide v11

    cmp-long v13, v11, v8

    if-nez v13, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Lr71$a;->n(Ljava/lang/Long;)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    sget-object v12, Lr71$a;->v0:Lr71$a;

    invoke-virtual {v12}, Lr71$a;->g()J

    move-result-wide v13

    cmp-long v15, v13, v8

    if-nez v15, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lr71$a;->n(Ljava/lang/Long;)V

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v14

    cmp-long v16, v14, v4

    if-lez v16, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v14}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_3
    invoke-virtual {v7}, Lr71$a;->g()J

    move-result-wide v14

    cmp-long v0, v14, v4

    if-lez v0, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_4
    invoke-virtual {v12}, Lr71$a;->g()J

    move-result-wide v14

    cmp-long v0, v14, v4

    if-lez v0, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    :cond_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "items"

    const-string v14, "modified"

    if-nez v6, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-class v15, Lr71$a;

    invoke-static {v15}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v15

    sget-object v16, Lr71$a;->f:Lr71$a;

    invoke-static/range {v16 .. v16}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr71$a;

    invoke-virtual {v15}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lr71$a;->g1:Lr71$a;

    invoke-virtual {v9}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v15}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v8

    const-string v10, "BLOCKING_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v15}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v8

    const-string v10, "GENERAL_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    :goto_4
    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_6
    :try_start_0
    invoke-virtual {v15}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lr71$a;->G:Lr71$a;

    invoke-virtual {v10}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lr71$a;->p()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lda1;->f([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lr71$a;->p()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v3

    :try_start_1
    const-string v3, ","

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_8
    move-object/from16 v19, v3

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lr71$a;->p()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_0
    move-object/from16 v19, v3

    :catchall_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save setting "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lf71;->a:Z

    :goto_5
    move-object/from16 v3, v19

    goto/16 :goto_4

    :cond_9
    :try_start_2
    const-string v3, "__DND__"

    invoke-static {}, Lu71;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lda1;->f([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    const-string v3, "Unable to save DnD"

    invoke-static {v1, v3}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    :try_start_3
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lr71$a;->w0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->g()J

    move-result-wide v8

    sget-object v3, Lr71$a;->Z0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->g()J

    move-result-wide v19

    sub-long v8, v8, v19

    const-wide/16 v17, 0x0

    cmp-long v3, v8, v17

    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "settings"

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_3
    const/4 v3, 0x0

    iput-boolean v3, v1, Lf71;->a:Z

    :cond_b
    :goto_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "content"

    const-string v8, "handling_method"

    const-string v9, "permission"

    const-string v15, "name"

    const-string v10, "kind"

    move-object/from16 v20, v2

    const-string v2, "identifier"

    move-object/from16 v21, v7

    const-string v7, "Unable to make JSON"

    move-object/from16 v22, v12

    const/4 v12, 0x0

    if-nez v11, :cond_12

    move/from16 v29, v11

    new-instance v11, Lf71$b;

    invoke-direct {v11, v1, v12}, Lf71$b;-><init>(Lf71;Lf71$a;)V

    sget-object v0, Lq71$g;->c:Lq71$g;

    sget-object v12, Lq71$g;->b:Lq71$g;

    invoke-static {v0, v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lq71$g;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v11

    move-object/from16 v30, v12

    invoke-virtual/range {v23 .. v28}, Lq81;->R(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_a
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v12}, Lq81;->Q(Landroid/database/Cursor;)Lq81;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v24, v12

    move/from16 v23, v13

    :try_start_5
    iget-wide v12, v11, Lq81;->d:J

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v12, Lq71$h;->d:Lq71$h;

    invoke-virtual {v12}, Lq71$h;->a()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lq81;->f:Ljava/lang/String;

    const/16 v13, 0xff

    invoke-static {v12, v13}, Lka1;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lq81;->k:Lq71$g;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v0, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v12, v11, Lq81;->j:Lq71$a;

    invoke-virtual {v12}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lq81;->h:Ljava/util/EnumSet;

    invoke-static {v12}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "data"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v25, v6

    const/4 v13, 0x0

    :try_start_6
    invoke-virtual {v11, v13}, Lq81;->e0(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v12, v11, Lq81;->m:J

    sget-object v6, Lr71$a;->Z0:Lr71$a;

    invoke-virtual {v6}, Lr71$a;->g()J

    move-result-wide v26

    sub-long v12, v12, v26

    const-wide/16 v17, 0x0

    cmp-long v6, v12, v17

    if-lez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v0, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v12, v11, Lq81;->m:J

    cmp-long v6, v12, v4

    if-lez v6, :cond_d

    iput-wide v4, v11, Lq81;->m:J

    invoke-virtual {v11}, Lq81;->z()Z

    :cond_d
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v24, v12

    move/from16 v23, v13

    :goto_c
    invoke-static {v1, v7, v0}, Lj91;->H(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    iput-boolean v6, v1, Lf71;->a:Z

    :goto_d
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v6, v25

    goto/16 :goto_a

    :cond_f
    move-object/from16 v25, v6

    move-object/from16 v24, v12

    move/from16 v23, v13

    :goto_e
    if-eqz v24, :cond_10

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_10
    move/from16 v13, v23

    move-object/from16 v6, v25

    move-object/from16 v12, v30

    goto/16 :goto_9

    :cond_11
    move-object/from16 v25, v6

    goto :goto_f

    :cond_12
    move-object/from16 v25, v6

    move/from16 v29, v11

    :goto_f
    move/from16 v23, v13

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-nez v23, :cond_1a

    new-instance v11, Lf71$c;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12}, Lf71$c;-><init>(Lf71;Lf71$a;)V

    invoke-virtual {v11}, Lv71;->m()Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_10
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v12}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v13, v11, Lx81;->g:Li91;

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Li91;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v13, :cond_13

    goto/16 :goto_14

    :cond_13
    move-object/from16 v24, v12

    :try_start_8
    iget-wide v12, v11, Lx81;->d:J

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v12, Lq71$h;->c:Lq71$h;

    invoke-virtual {v12}, Lq71$h;->a()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lx81;->f:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    iget-object v12, v11, Lx81;->f:Ljava/lang/String;

    const/16 v13, 0xff

    invoke-static {v12, v13}, Lka1;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_11

    :cond_14
    const/16 v13, 0xff

    :goto_11
    const-string v12, "address"

    invoke-virtual {v11}, Lx81;->L()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "address_type"

    iget-object v13, v11, Lx81;->h:Li91$b;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "intl_address"

    iget-object v13, v11, Lx81;->g:Li91;

    invoke-virtual {v13}, Li91;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "country"

    iget-object v13, v11, Lx81;->g:Li91;

    invoke-virtual {v13}, Li91;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lx81;->l:Lq71$g;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v0, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v12, v11, Lx81;->k:Lq71$a;

    invoke-virtual {v12}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v12, v11, Lx81;->j:Ljava/util/EnumSet;

    invoke-static {v12}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    move-object/from16 v13, v25

    :try_start_9
    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    move-object v12, v8

    move-object/from16 v25, v9

    :try_start_a
    iget-wide v8, v11, Lx81;->m:J

    sget-object v26, Lr71$a;->Z0:Lr71$a;

    invoke-virtual/range {v26 .. v26}, Lr71$a;->g()J

    move-result-wide v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    sub-long v8, v8, v26

    const-wide/16 v17, 0x0

    cmp-long v26, v8, v17

    if-lez v26, :cond_15

    const/4 v8, 0x1

    goto :goto_12

    :cond_15
    const/4 v8, 0x0

    :goto_12
    :try_start_b
    invoke-virtual {v0, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v8, v11, Lx81;->m:J

    cmp-long v26, v8, v4

    if-lez v26, :cond_16

    iput-wide v4, v11, Lx81;->m:J

    invoke-virtual {v11}, Lx81;->z()Z

    :cond_16
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_17

    :catchall_7
    move-exception v0

    goto :goto_16

    :catchall_8
    move-exception v0

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object v12, v8

    move-object/from16 v25, v9

    :goto_13
    const-wide/16 v17, 0x0

    goto :goto_16

    :catchall_a
    move-exception v0

    move-object v12, v8

    move-object/from16 v13, v25

    const-wide/16 v17, 0x0

    goto :goto_15

    :cond_17
    :goto_14
    move-object/from16 v24, v12

    move-object/from16 v13, v25

    const-wide/16 v17, 0x0

    move-object v12, v8

    move-object/from16 v25, v9

    goto :goto_17

    :catchall_b
    move-exception v0

    move-object/from16 v24, v12

    move-object/from16 v13, v25

    const-wide/16 v17, 0x0

    move-object v12, v8

    :goto_15
    move-object/from16 v25, v9

    :goto_16
    invoke-static {v1, v7, v0}, Lj91;->H(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v8, 0x0

    iput-boolean v8, v1, Lf71;->a:Z

    :goto_17
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_18

    :cond_18
    move-object v8, v12

    move-object/from16 v12, v24

    move-object/from16 v9, v25

    move-object/from16 v25, v13

    goto/16 :goto_10

    :cond_19
    move-object/from16 v24, v12

    :goto_18
    if-eqz v24, :cond_1a

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1a
    if-nez v23, :cond_1b

    if-nez v29, :cond_1b

    move-object/from16 v2, v22

    :try_start_c
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rules"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    move-object/from16 v2, v21

    :try_start_d
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_19

    :catchall_c
    move-object/from16 v2, v21

    :catchall_d
    const/4 v3, 0x0

    iput-boolean v3, v1, Lf71;->a:Z

    goto :goto_19

    :cond_1b
    move-object/from16 v2, v21

    :goto_19
    move-object/from16 v3, v20

    invoke-static {v1, v3}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lf71;->a:Z

    invoke-static {v0, v3}, Lj91;->D(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "-1"

    const-string v3, "call_types"

    const-string v4, "kind"

    const-string v5, "PROTO_FROM_SERVER"

    invoke-static {v1, v5}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lj91;->B(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server JSON: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_11

    const/4 v9, 0x1

    iput-boolean v9, v1, Lf71;->a:Z

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v10

    const-string v0, "services"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lq71$f;->d()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v0, 0x7

    :cond_0
    sget-object v11, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v11}, Lr71$a;->a()Z

    move-result v12

    sget-object v13, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v13}, Lr71$a;->a()Z

    move-result v14

    and-int/lit8 v15, v0, 0x1

    if-ne v15, v9, :cond_1

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v11, v15}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v15, Lr71$a;->N0:Lr71$a;

    and-int/lit8 v6, v0, 0x2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v15, v6}, Lr71$a;->k(Ljava/lang/Boolean;)V

    const/4 v6, 0x4

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    if-nez v12, :cond_4

    invoke-virtual {v11}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lr71$a;->h:Lr71$a;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_4
    if-eqz v14, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lr71$a;->t1:Lr71$a;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_5
    :try_start_1
    const-string v0, "expiration_date"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lr71;->I(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    const-string v0, "signed_date"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lr71;->J(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :try_start_3
    sget-object v0, Lr71$a;->c1:Lr71$a;

    const-string v6, "credits"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lr71$a;->m(Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :try_start_4
    const-string v0, "status"

    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lr71;->K(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :try_start_5
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lr71$a;->V0:Lr71$a;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr71$a;->o(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    const-string v3, "Unable to parse call_types"

    invoke-static {v1, v3, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    invoke-static {}, Lr71$a;->d()Ljava/lang/String;

    move-result-object v3

    :try_start_6
    const-string v0, "settings"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const-string v9, "__DND__"

    if-lez v0, :cond_10

    :try_start_7
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    sget-object v12, Lr71$a;->f:Lr71$a;

    invoke-virtual {v12}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    sget-object v12, Lr71$a;->G:Lr71$a;

    invoke-virtual {v12}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_9
    const-string v12, "GENERAL_BLOCK_INCOMING_CALLS"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v12, v0

    sget-object v0, Lr71$a;->g1:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    const-string v14, ";"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lr71$a;->o(Ljava/lang/String;)V

    invoke-static {}, Lr71;->k()V

    goto :goto_4

    :cond_b
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-static {v12}, Lr71$a;->valueOf(Ljava/lang/String;)Lr71$a;

    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-virtual {v12}, Lr71$a;->j()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Ljava/lang/Boolean;

    if-ne v13, v14, :cond_c

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_c
    const-class v14, Ljava/lang/Integer;

    if-ne v13, v14, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr71$a;->m(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_d
    const-class v14, Ljava/lang/Float;

    if-ne v13, v14, :cond_e

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr71$a;->l(Ljava/lang/Float;)V

    goto/16 :goto_4

    :cond_e
    const-class v14, Ljava/lang/Long;

    if-ne v13, v14, :cond_f

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v12, v0}, Lr71$a;->o(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cant find "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " preference "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v13}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_10
    sget-object v0, Lr71$a;->E:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-static {v7}, Lb91;->k(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lda1;->b([B)[B

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lu71;->l(Ljava/lang/String;)V

    sget-object v0, Lr71$a;->G:Lr71$a;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v0}, Lr71$a;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lda1;->b([B)[B

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v9}, Lr71$a;->o(Ljava/lang/String;)V

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    invoke-virtual {v0}, Lr71$b;->g()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    const-string v6, "Unable to parse settings"

    invoke-static {v1, v6, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v7, v1, Lf71;->a:Z

    :cond_12
    :goto_5
    sget-object v0, Lr71$a;->N0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lr71$a;->k:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_13
    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v0

    invoke-static {v0}, Lp71;->f(Lq71$a;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lq71$a;->g:Lq71$a;

    invoke-static {v0}, Lp71;->f(Lq71$a;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_6

    :cond_14
    sget-object v0, Lq71$a;->f:Lq71$a;

    :goto_6
    invoke-static {v0}, Lq71$a;->e(Lq71$a;)V

    const/4 v0, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    :goto_7
    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object v6

    invoke-static {v6}, Lp71;->f(Lq71$a;)Z

    move-result v6

    if-nez v6, :cond_17

    sget-object v0, Lq71$a;->g:Lq71$a;

    invoke-static {v0}, Lp71;->f(Lq71$a;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_8

    :cond_16
    sget-object v0, Lq71$a;->f:Lq71$a;

    :goto_8
    invoke-static {v0}, Lq71$a;->f(Lq71$a;)V

    const/4 v6, 0x1

    goto :goto_9

    :cond_17
    move v6, v0

    :goto_9
    const-string v0, "flags"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v9, -0x1

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_1d

    sget-object v13, Lr71$a;->m1:Lr71$a;

    const-string v14, "ctl"

    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lr71$a;->m(Ljava/lang/Integer;)V

    sget-object v13, Lr71$a;->n1:Lr71$a;

    const-string v14, "rqs"

    invoke-virtual {v0, v14, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object v13, Lr71$a;->o1:Lr71$a;

    const-string v14, "tad"

    invoke-virtual {v0, v14, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    const/4 v14, 0x1

    goto :goto_a

    :cond_18
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v13, Lr71$a;->p1:Lr71$a;

    const-string v14, "tncch"

    invoke-virtual {v0, v14, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v15, :cond_19

    const/4 v15, 0x1

    goto :goto_b

    :cond_19
    const/4 v15, 0x0

    :goto_b
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v13, Lr71$a;->q1:Lr71$a;

    const-wide/16 v14, 0x78

    const-string v9, "icdp"

    invoke-virtual {v0, v9, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v9}, Lr71$a;->n(Ljava/lang/Long;)V

    const-wide/16 v13, -0x1

    const-string v9, "app"

    invoke-virtual {v0, v9, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v13, Lr71$a;->r1:Lr71$a;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v18, v14, v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    if-lez v18, :cond_1a

    mul-long v14, v14, v16

    :cond_1a
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v9}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object v9, Lr71$a;->v1:Lr71$a;

    const-string v13, "cbu"

    const-string v14, "https://cb.callcontrol.com/"

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lr71$a;->o(Ljava/lang/String;)V

    sget-object v9, Lr71$a;->w1:Lr71$a;

    const-wide/32 v13, 0x36ee80

    const-string v15, "cbi"

    invoke-virtual {v0, v15, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object v9, Lr71$a;->x1:Lr71$a;

    const-string v13, "cbp"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lr71$a;->m(Ljava/lang/Integer;)V

    sget-object v9, Lr71$a;->J0:Lr71$a;

    const-string v13, "ugc"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1b

    const/4 v13, 0x1

    goto :goto_c

    :cond_1b
    const/4 v13, 0x0

    :goto_c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v13}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object v9, Lr71$a;->K0:Lr71$a;

    const-string v13, "urb"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v15, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v15, 0x0

    :goto_d
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_1d
    invoke-static {}, Lr71$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.kedlin.cca.action.SETTINGS_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfa1;->g(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1e
    :try_start_a
    const-string v0, "rules"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2a

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    :goto_e
    if-ge v7, v3, :cond_2a

    :try_start_b
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_1f

    :catchall_7
    :goto_f
    move-object/from16 v21, v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v22, v4

    move-object/from16 v19, v5

    move/from16 p1, v6

    move-wide/from16 v16, v11

    goto/16 :goto_12

    :cond_1f
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v13, Lq71$h;->b:Lq71$h;

    invoke-virtual {v13}, Lq71$h;->a()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v9, v13, :cond_20

    goto :goto_f

    :cond_20
    invoke-virtual {v8, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v13, Lq71$h;->c:Lq71$h;

    invoke-virtual {v13}, Lq71$h;->a()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const-string v14, "permission"

    const-string v15, "content"

    const-string v11, "handling_method"

    const-string v12, "removed"

    move-object/from16 v18, v2

    const-string v2, "name"

    if-ne v9, v13, :cond_24

    :try_start_c
    new-instance v9, Lf71$c;

    const/4 v13, 0x0

    invoke-direct {v9, v1, v13}, Lf71$c;-><init>(Lf71;Lf71$a;)V

    const-string v13, "intl_address"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v13

    invoke-virtual {v9, v13}, Lx81;->P(Li91;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move-object/from16 v19, v5

    move/from16 p1, v6

    :try_start_d
    iget-wide v5, v9, Lx81;->d:J

    const-wide/16 v16, 0x0

    cmp-long v20, v5, v16

    if-lez v20, :cond_21

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v9}, Lx81;->d()Z

    goto/16 :goto_10

    :cond_21
    iput-object v13, v9, Lx81;->g:Li91;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v5

    iput-object v5, v9, Lx81;->k:Lq71$a;

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v5

    iput-object v5, v9, Lx81;->j:Ljava/util/EnumSet;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v5

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v9, Lx81;->l:Lq71$g;

    invoke-static {}, Li91$b;->values()[Li91$b;

    move-result-object v5

    const-string v6, "address_type"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v9, Lx81;->h:Li91$b;

    sget-object v6, Li91$b;->g:Li91$b;

    if-ne v5, v6, :cond_22

    iget-object v5, v9, Lx81;->g:Li91;

    const-string v6, "address"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Li91;->w(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    :cond_22
    :try_start_e
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lx81;->f:Ljava/lang/String;

    :cond_23
    invoke-virtual {v9}, Lx81;->z()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_10

    :catchall_8
    :try_start_f
    const-string v2, "cant add rule "

    invoke-static {v1, v2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :catchall_9
    move-object/from16 v19, v5

    move/from16 p1, v6

    goto :goto_10

    :cond_24
    move-object/from16 v19, v5

    move/from16 p1, v6

    const/4 v5, -0x1

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v9, Lq71$h;->d:Lq71$h;

    invoke-virtual {v9}, Lq71$h;->a()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v6, v9, :cond_25

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_26

    :catchall_a
    :cond_25
    :goto_10
    move-object/from16 v21, v0

    move/from16 v20, v3

    :catchall_b
    :goto_11
    move-object/from16 v22, v4

    :catchall_c
    const-wide/16 v16, 0x0

    goto/16 :goto_12

    :cond_26
    const-string v9, "identifier"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    move-object v13, v6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v9, Lf71$b;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    move/from16 v20, v3

    const/4 v3, 0x0

    :try_start_10
    invoke-direct {v9, v1, v3}, Lf71$b;-><init>(Lf71;Lf71$a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    move-object/from16 v21, v0

    :try_start_11
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lf71$b;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object/from16 v22, v4

    :try_start_12
    iget-wide v3, v9, Lq81;->d:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    const-wide/16 v16, 0x0

    cmp-long v0, v3, v16

    if-lez v0, :cond_27

    :try_start_13
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lq71$g;->a:Lq71$g;

    iput-object v0, v9, Lq81;->k:Lq71$g;

    invoke-virtual {v9}, Lq81;->z()Z

    goto :goto_12

    :cond_27
    iget-wide v3, v9, Lq81;->d:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_28

    iput-wide v5, v9, Lq81;->d:J

    invoke-virtual {v9}, Lq81;->V()La81;

    move-result-object v0

    invoke-virtual {v9, v0}, Lq81;->o0(La81;)Lq81;

    :cond_28
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lq81;->f:Ljava/lang/String;

    :cond_29
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v0

    iput-object v0, v9, Lq81;->j:Lq71$a;

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v9, Lq81;->h:Ljava/util/EnumSet;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v0

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v9, Lq81;->k:Lq71$g;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    :try_start_14
    invoke-virtual {v9}, Lq81;->z()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_12

    :catchall_d
    :try_start_15
    const-string v0, "cant add android contact"

    invoke-static {v1, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    goto :goto_12

    :catchall_e
    move-object/from16 v21, v0

    goto/16 :goto_11

    :catchall_f
    :goto_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p1

    move-wide/from16 v11, v16

    move-object/from16 v2, v18

    move-object/from16 v5, v19

    move/from16 v3, v20

    move-object/from16 v0, v21

    move-object/from16 v4, v22

    goto/16 :goto_e

    :cond_2a
    move-object/from16 v19, v5

    move/from16 p1, v6

    goto :goto_13

    :catchall_10
    move-exception v0

    move-object/from16 v19, v5

    move/from16 p1, v6

    const-string v2, "Unable to parse rules"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v7, v1, Lf71;->a:Z

    :goto_13
    new-instance v0, Lf71$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf71$b;-><init>(Lf71;Lf71$a;)V

    invoke-virtual {v0}, Lq81;->P()Z

    move-result v0

    or-int v0, p1, v0

    new-instance v3, Lf71$c;

    invoke-direct {v3, v1, v2}, Lf71$c;-><init>(Lf71;Lf71$a;)V

    invoke-virtual {v3}, Lx81;->H()Z

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_2b

    invoke-static {}, Lo71;->d()V

    const-string v0, "Block mode restrictions applied!"

    invoke-static {v1, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2b
    sget-object v0, Lr71$a;->w0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->g()J

    move-result-wide v3

    invoke-static {v1, v2}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object v0, Lr71$a;->v:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_2d

    if-eq v10, v0, :cond_2c

    move-object v3, v2

    check-cast v3, Lfa1$b;

    invoke-interface {v3, v0}, Lfa1$b;->a(Z)V

    :cond_2c
    sget-object v0, Lr71$a;->j:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_2d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2d

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_2d
    sget-object v0, Lr71$a;->J0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lr71$a;->K0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lr71$a;->g:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    sget-object v0, Lr71$a;->h:Lr71$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_2f
    move-object/from16 v2, v19

    invoke-static {v1, v2}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lf71;->a:Z

    invoke-static {v0, v2}, Lj91;->D(Ljava/lang/String;Z)V

    return-void

    :catchall_11
    move-exception v0

    move-object v2, v5

    const-string v3, "Unable to parse server response"

    invoke-static {v1, v3, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v7, v1, Lf71;->a:Z

    invoke-static {v1, v2}, Lj91$b;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, v1, Lf71;->a:Z

    invoke-static {v0, v2}, Lj91;->D(Ljava/lang/String;Z)V

    sget-object v0, Lm91$c;->d:Lm91$c;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void
.end method
