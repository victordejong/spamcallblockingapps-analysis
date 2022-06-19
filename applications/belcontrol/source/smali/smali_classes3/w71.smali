.class public Lw71;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw71$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "w71"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lx61$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lk61;->l()Lx61;

    move-result-object v0

    iget-object v0, v0, Lx61;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "com.flexaspect.android.everycallcontrol.backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lw71$a;

    invoke-direct {v1}, Lw71$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static c()Z
    .locals 31

    invoke-static {}, Lw71;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "com.flexaspect.android.everycallcontrol.backup"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Lx81;

    invoke-direct {v4}, Lx81;-><init>()V

    invoke-virtual {v4}, Lv71;->m()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    if-nez v4, :cond_1

    goto/16 :goto_d

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Li61;->backup_csv_header_3_0:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lx81;

    invoke-direct {v7}, Lx81;-><init>()V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    const-string v9, "\"\r\n"

    const-string v10, "\",\""

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v2, 0xb

    const-string v12, "\\\""

    const-string v20, ""

    const-string v13, "\""

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    const/16 v22, 0x0

    :cond_2
    invoke-virtual {v7, v4}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v14, v7, Lx81;->l:Lq71$g;

    sget-object v15, Lq71$g;->c:Lq71$g;

    if-ne v14, v15, :cond_3

    add-int/lit8 v8, v8, 0x1

    sget v14, Li61;->permission_blocked:I

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_3
    move-object/from16 v14, v20

    :goto_0
    iget-object v15, v7, Lx81;->l:Lq71$g;

    sget-object v11, Lq71$g;->b:Lq71$g;

    if-ne v15, v11, :cond_4

    add-int/lit8 v22, v22, 0x1

    sget v11, Li61;->permission_allowed:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_4
    new-array v11, v2, [Ljava/lang/String;

    sget-object v15, Lw71$c;->a:Lw71$c;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v6

    iget-object v15, v7, Lx81;->f:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v15, v20

    goto :goto_1

    :cond_5
    iget-object v15, v7, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    :goto_1
    aput-object v15, v11, v3

    invoke-virtual {v7}, Lx81;->L()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x2

    aput-object v15, v11, v24

    iget-object v15, v7, Lx81;->g:Li91;

    invoke-virtual {v15}, Li91;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v17

    iget-object v15, v7, Lx81;->g:Li91;

    invoke-virtual {v15}, Li91;->b()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v16

    const/4 v15, 0x5

    aput-object v14, v11, v15

    iget-object v14, v7, Lx81;->h:Li91$b;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v11, v15

    iget-object v14, v7, Lx81;->j:Ljava/util/EnumSet;

    invoke-static {v14}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v11, v15

    iget-object v14, v7, Lx81;->k:Lq71$a;

    invoke-virtual {v14}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v11, v15

    iget-object v14, v7, Lx81;->l:Lq71$g;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v11, v15

    const-string v14, "0"

    const/16 v15, 0xa

    aput-object v14, v11, v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    const/16 v22, 0x0

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    new-instance v4, Lq81;

    invoke-direct {v4}, Lq81;-><init>()V

    const/4 v7, 0x2

    new-array v11, v7, [Lq71$g;

    sget-object v14, Lq71$g;->c:Lq71$g;

    aput-object v14, v11, v6

    sget-object v14, Lq71$g;->b:Lq71$g;

    aput-object v14, v11, v3

    move/from16 v14, v22

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v7, :cond_c

    aget-object v26, v11, v15

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v30}, Lq81;->R(Lq71$g;Ljava/lang/String;[Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v22

    if-eqz v22, :cond_b

    :goto_4
    invoke-virtual {v4, v7}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    iget-object v3, v4, Lq81;->k:Lq71$g;

    sget-object v6, Lq71$g;->c:Lq71$g;

    if-ne v3, v6, :cond_7

    add-int/lit8 v8, v8, 0x1

    sget v3, Li61;->permission_blocked:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object/from16 v3, v20

    :goto_5
    iget-object v6, v4, Lq81;->k:Lq71$g;

    sget-object v2, Lq71$g;->b:Lq71$g;

    if-ne v6, v2, :cond_8

    add-int/lit8 v14, v14, 0x1

    sget v2, Li61;->permission_allowed:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    const/16 v2, 0xb

    new-array v6, v2, [Ljava/lang/String;

    sget-object v26, Lw71$c;->b:Lw71$c;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->ordinal()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    const/16 v25, 0x0

    aput-object v26, v6, v25

    iget-object v2, v4, Lq81;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v2, v20

    goto :goto_6

    :cond_9
    iget-object v2, v4, Lq81;->f:Ljava/lang/String;

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const/16 v22, 0x1

    aput-object v2, v6, v22

    sget v2, Li61;->all_numbers:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v24, 0x2

    aput-object v27, v6, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v17

    sget v2, Li61;->not_applicable:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    const/4 v2, 0x5

    aput-object v3, v6, v2

    const-string v3, "-1"

    const/16 v23, 0x6

    aput-object v3, v6, v23

    iget-object v3, v4, Lq81;->h:Ljava/util/EnumSet;

    invoke-static {v3}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x7

    aput-object v3, v6, v21

    iget-object v3, v4, Lq81;->j:Lq71$a;

    invoke-virtual {v3}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x8

    aput-object v3, v6, v19

    iget-object v3, v4, Lq81;->k:Lq71$g;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x9

    aput-object v3, v6, v18

    iget-wide v2, v4, Lq81;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v6, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :cond_a
    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v3, 0xa

    const/16 v18, 0x9

    const/16 v19, 0x8

    const/16 v21, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x2

    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    goto/16 :goto_3

    :cond_c
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v3, v4}, Ll81;->b0(Ljava/lang/Integer;ZZZ)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    :cond_d
    invoke-virtual {v0, v6}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx71;->a(Ll81;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_e
    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_8
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ll81;->h0(ZZ)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_f
    invoke-virtual {v0, v7}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget v6, v0, Ll81;->v:I

    if-lez v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly71;->a(Ll81;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    invoke-virtual {v0}, Ll81;->k0()Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_11
    iget-boolean v9, v0, Ll81;->j:Z

    if-nez v9, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v0, v6}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lz71;->a(Ll81;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_13
    :goto_a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_14
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "yyMMddkkmmss"

    invoke-static {v7, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa1;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".csv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_b
    sget-object v1, Lw71;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    const/4 v3, 0x0

    :goto_c
    if-eqz v1, :cond_15

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_15
    return v3

    :cond_16
    :goto_d
    const/4 v1, 0x0

    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p0}, Lk61;->A(Ljava/lang/String;)V

    sget-object p0, Lr71$a;->u0:Lr71$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object p0, Lr71$a;->v0:Lr71$a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr71$a;->n(Ljava/lang/Long;)V

    sget-object p0, Lr71$a;->w0:Lr71$a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    sget-object p0, Lw71;->a:Ljava/lang/String;

    const-string v0, "Unable to restore data from the given device"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v3

    sget v4, Li61;->backup_csv_header_2_0:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lw71;->f(Ljava/io/BufferedReader;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v3

    sget v4, Li61;->backup_csv_header_3_0:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Lw71;->g(Ljava/io/BufferedReader;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lw71;->h(Ljava/io/BufferedReader;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    sget-object v3, Lw71;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static f(Ljava/io/BufferedReader;)Ljava/lang/Boolean;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2}, Lv71;->f()Z

    new-instance v2, Lq81;

    invoke-direct {v2}, Lq81;-><init>()V

    invoke-virtual {v2}, Lq81;->M()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\",\""

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x9

    :try_start_1
    aget-object v5, v3, v4

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    if-eqz v5, :cond_2

    new-instance v4, Lx81;

    invoke-direct {v4}, Lx81;-><init>()V

    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v5

    iput-object v5, v4, Lx81;->j:Ljava/util/EnumSet;

    invoke-static {}, Li91$b;->values()[Li91$b;

    move-result-object v5

    const/4 v8, 0x5

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v5, v5, v8

    iput-object v5, v4, Lx81;->h:Li91$b;

    sget-object v8, Li91$b;->g:Li91$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "\""

    const-string v12, "\\\""

    if-ne v5, v8, :cond_0

    :try_start_2
    new-instance v5, Li91;

    aget-object v8, v3, v10

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v9

    aget-object v10, v3, v0

    invoke-direct {v5, v8, v9, v10}, Li91;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v5, v4, Lx81;->g:Li91;

    goto :goto_2

    :cond_0
    new-instance v5, Li91;

    aget-object v8, v3, v10

    invoke-virtual {v8, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v9

    invoke-direct {v5, v8, v9}, Li91;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v3, v1

    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_3
    iput-object v5, v4, Lx81;->f:Ljava/lang/String;

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v5

    iput-object v5, v4, Lx81;->k:Lq71$a;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v5

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v5, v3

    iput-object v3, v4, Lx81;->l:Lq71$g;

    invoke-virtual {v4}, Lx81;->z()Z

    goto/16 :goto_0

    :cond_2
    new-instance v5, Lq81;

    invoke-direct {v5}, Lq81;-><init>()V

    aget-object v9, v3, v4

    invoke-virtual {v5, v9}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v9, v5, Lq81;->d:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_3

    sget-object v5, Lw71;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") not found"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v5, Lq81;->h:Ljava/util/EnumSet;

    aget-object v4, v3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v4

    iput-object v4, v5, Lq81;->j:Lq71$a;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v4

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v4, v3

    iput-object v3, v5, Lq81;->k:Lq71$g;

    invoke-virtual {v5}, Lq81;->z()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    sget-object v4, Lw71;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lw71;->a:Ljava/lang/String;

    const-string v3, "Unable to read"

    invoke-static {v2, v3, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_4
    if-eqz p0, :cond_5

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/BufferedReader;)Ljava/lang/Boolean;
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    invoke-virtual {v1}, Lv71;->f()Z

    new-instance v1, Lq81;

    invoke-direct {v1}, Lq81;-><init>()V

    invoke-virtual {v1}, Lq81;->M()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\",\""

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v2, Lw71;->a:Ljava/lang/String;

    const-string v3, "Marker is absent"

    invoke-static {v2, v3}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lw71$c;->values()[Lw71$c;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v6, Lw71$b;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eq v5, v1, :cond_6

    if-eq v5, v9, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v10, :cond_2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ly71;->b([Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lz71;->b([Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lx71;->b([Ljava/lang/String;)Z

    move-result v3

    :goto_2
    and-int/2addr v2, v3

    goto :goto_0

    :cond_4
    new-instance v5, Lq81;

    invoke-direct {v5}, Lq81;-><init>()V

    const/16 v9, 0xa

    aget-object v10, v4, v9

    invoke-virtual {v5, v10}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v10, v5, Lq81;->d:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_5

    sget-object v5, Lw71;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v9

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") not found"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v8

    iput-object v8, v5, Lq81;->h:Ljava/util/EnumSet;

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v7

    iput-object v7, v5, Lq81;->j:Lq71$a;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v7

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v7, v4

    iput-object v4, v5, Lq81;->k:Lq71$g;

    invoke-virtual {v5}, Lq81;->z()Z

    move-result v3

    goto :goto_2

    :cond_6
    new-instance v5, Lx81;

    invoke-direct {v5}, Lx81;-><init>()V

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lq71$e;->c(Ljava/lang/Integer;)Ljava/util/EnumSet;

    move-result-object v8

    iput-object v8, v5, Lx81;->j:Ljava/util/EnumSet;

    invoke-static {}, Li91$b;->values()[Li91$b;

    move-result-object v8

    const/4 v12, 0x6

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v8, v8, v12

    iput-object v8, v5, Lx81;->h:Li91$b;

    sget-object v12, Li91$b;->g:Li91$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "\""

    const-string v14, "\\\""

    if-ne v8, v12, :cond_7

    :try_start_2
    new-instance v8, Li91;

    aget-object v11, v4, v11

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aget-object v10, v4, v10

    aget-object v9, v4, v9

    invoke-direct {v8, v11, v10, v9}, Li91;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iput-object v8, v5, Lx81;->g:Li91;

    goto :goto_4

    :cond_7
    new-instance v8, Li91;

    aget-object v9, v4, v11

    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v4, v10

    invoke-direct {v8, v9, v10}, Li91;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    aget-object v8, v4, v1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    aget-object v8, v4, v1

    invoke-virtual {v8, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    iput-object v8, v5, Lx81;->f:Ljava/lang/String;

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lq71$a;->h(Ljava/lang/Integer;)Lq71$a;

    move-result-object v7

    iput-object v7, v5, Lx81;->k:Lq71$a;

    invoke-static {}, Lq71$g;->values()[Lq71$g;

    move-result-object v7

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v7, v4

    iput-object v4, v5, Lx81;->l:Lq71$g;

    invoke-virtual {v5}, Lx81;->z()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v4, Lw71;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_6

    :catch_1
    move-exception v1

    sget-object v2, Lw71;->a:Ljava/lang/String;

    const-string v3, "Unable to read"

    invoke-static {v2, v3, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-eqz p0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/BufferedReader;)Ljava/lang/Boolean;
    .locals 17

    const-string v0, ":"

    const-string v1, "\""

    const-string v2, "\\\""

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Lx81;

    invoke-direct {v7}, Lx81;-><init>()V

    invoke-virtual {v7}, Lv71;->f()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\",\""

    invoke-static {v8, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v10, v8, v9

    invoke-static {v10, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v11, v10, v9

    invoke-virtual {v11, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    array-length v12, v10

    const/4 v13, 0x3

    const/4 v14, 0x3

    :goto_1
    if-ge v14, v12, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v10, v14

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    const-string v12, "tel:"

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[^\\d\\?]+"

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lx81;

    invoke-direct {v14}, Lx81;-><init>()V

    const-class v15, Lq71$e;

    invoke-static {v15}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v15

    aget-object v16, v10, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_1

    sget-object v4, Lq71$e;->d:Lq71$e;

    sget-object v15, Lq71$e;->c:Lq71$e;

    invoke-static {v4, v15}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v15

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    sget-object v4, Lq71$e;->b:Lq71$e;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v15

    :cond_2
    iput-object v15, v14, Lx81;->j:Ljava/util/EnumSet;

    aget-object v4, v8, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_3

    sget-object v9, Lq71$g;->b:Lq71$g;

    iput-object v9, v14, Lx81;->l:Lq71$g;

    :cond_3
    if-ne v4, v6, :cond_4

    sget-object v4, Lq71$g;->c:Lq71$g;

    iput-object v4, v14, Lx81;->l:Lq71$g;

    :cond_4
    const-string v4, "\\D"

    const-string v9, "5"

    invoke-virtual {v12, v4, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v4

    iput-object v4, v14, Lx81;->g:Li91;

    const-string v4, "AREA_CODE"

    aget-object v9, v10, v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "5555555"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v4

    iput-object v4, v14, Lx81;->g:Li91;

    sget-object v4, Li91$b;->d:Li91$b;

    iput-object v4, v14, Lx81;->h:Li91$b;

    const/4 v7, 0x0

    :cond_5
    const-string v4, "WILD_CARD"

    aget-object v9, v10, v5

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Li91$b;->g:Li91$b;

    iput-object v4, v14, Lx81;->h:Li91$b;

    iget-object v4, v14, Lx81;->g:Li91;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Li91;->w(Ljava/lang/String;)V

    :cond_6
    aget-object v4, v8, v13

    const-string v9, "null"

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v13

    aget-object v4, v8, v13

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    aget-object v4, v8, v13

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    iput-object v4, v14, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v14}, Lx81;->z()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move v6, v7

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    sget-object v1, Lw71;->a:Ljava/lang/String;

    const-string v2, "Unable to read"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v6

    :goto_4
    if-eqz p0, :cond_9

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    :cond_9
    :goto_5
    if-nez v7, :cond_a

    if-eqz v5, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
