.class public final synthetic Ly2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Ll7/f;
.implements Lm7/i;
.implements Ll7/b;
.implements Ld9/c;
.implements Lcom/github/clans/fab/FloatingActionMenu$c;
.implements Landroidx/activity/result/b;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly2/p;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lk7/j;)V
    .locals 2

    iget-object v0, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, p2, v1}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/FragmentPreferences;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/activity/result/a;

    sget v3, Lcom/mglab/scm/visual/FragmentPreferences;->f:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v3, v2, Landroidx/activity/result/a;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    .line 2
    iget-object v2, v2, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 3
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "wl"

    const-string v4, "bl"

    const-string v5, "preset"

    const-string v6, "settings"

    const-string v7, "scm_export"

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "w"

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 6
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 7
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11

    .line 8
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v14

    :try_start_1
    const-string v15, "UTF-8"

    .line 9
    invoke-interface {v14, v13, v15}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    .line 10
    :try_start_2
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v9, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :try_start_3
    const-string v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 11
    invoke-interface {v14, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    .line 12
    :try_start_4
    invoke-interface {v14, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    :try_start_5
    const-string v15, "version"

    const-string v10, "4"

    .line 13
    invoke-interface {v14, v9, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    .line 14
    :try_start_6
    invoke-interface {v14, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :try_start_7
    const-string v10, "apponoff"

    .line 15
    invoke-static {v3}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    const-string v16, "1"

    const-string v17, "0"

    if-eqz v15, :cond_0

    move-object/from16 v15, v16

    goto :goto_0

    :cond_0
    move-object/from16 v15, v17

    :goto_0
    :try_start_8
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    :try_start_9
    const-string v10, "blockmethod"

    .line 16
    invoke-static {v3}, Lf8/h;->F(Landroid/content/Context;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :try_start_a
    const-string v10, "showsim"

    .line 17
    invoke-static {v3}, Lf8/h;->T(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v15, v16

    goto :goto_1

    :cond_1
    move-object/from16 v15, v17

    :goto_1
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    const-string v10, "secondcall"

    .line 18
    invoke-static {v3}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v15, v16

    goto :goto_2

    :cond_2
    move-object/from16 v15, v17

    :goto_2
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :try_start_c
    const-string v10, "clearbutton"

    .line 19
    invoke-static {v3}, Lf8/h;->M(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v15, v16

    goto :goto_3

    :cond_3
    move-object/from16 v15, v17

    :goto_3
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :try_start_d
    const-string v10, "altcontacts"

    .line 20
    invoke-static {v3}, Lf8/h;->W(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v15, v16

    goto :goto_4

    :cond_4
    move-object/from16 v15, v17

    :goto_4
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :try_start_e
    const-string v10, "usepresets"

    .line 21
    invoke-static {v3}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v15, v16

    goto :goto_5

    :cond_5
    move-object/from16 v15, v17

    :goto_5
    invoke-interface {v14, v9, v10, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 22
    :try_start_f
    invoke-interface {v14, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :try_start_10
    new-array v6, v11, [Lx8/a;

    .line 23
    new-instance v10, Lw8/o;

    invoke-direct {v10, v6}, Lw8/o;-><init>([Lx8/a;)V

    .line 24
    const-class v6, Lh8/u;

    .line 25
    new-instance v15, Lw8/g;

    invoke-direct {v15, v10, v6}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 26
    sget-object v6, Lh8/v;->i:Lx8/b;

    const/4 v10, 0x1

    invoke-virtual {v15, v6, v10}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v6

    invoke-virtual {v6}, Lw8/r;->l()Ljava/util/List;

    move-result-object v6

    .line 27
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    const-string v15, "name"

    if-eqz v10, :cond_1b

    :try_start_11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lh8/u;

    .line 28
    invoke-interface {v14, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "priority"

    .line 29
    iget v9, v10, Lh8/u;->e:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    invoke-interface {v14, v1, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 30
    iget-object v9, v10, Lh8/u;->c:Ljava/lang/String;

    invoke-interface {v14, v1, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "active"

    .line 31
    iget-boolean v9, v10, Lh8/u;->d:Z

    if-eqz v9, :cond_6

    move-object/from16 v11, v16

    goto :goto_7

    :cond_6
    move-object/from16 v11, v17

    :goto_7
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useSim1"

    .line 32
    iget-boolean v9, v10, Lh8/u;->f:Z

    if-eqz v9, :cond_7

    move-object/from16 v11, v16

    goto :goto_8

    :cond_7
    move-object/from16 v11, v17

    :goto_8
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useSim2"

    .line 33
    iget-boolean v9, v10, Lh8/u;->g:Z

    if-eqz v9, :cond_8

    move-object/from16 v11, v16

    goto :goto_9

    :cond_8
    move-object/from16 v11, v17

    :goto_9
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useDB"

    .line 34
    iget-boolean v9, v10, Lh8/u;->h:Z

    if-eqz v9, :cond_9

    move-object/from16 v11, v16

    goto :goto_a

    :cond_9
    move-object/from16 v11, v17

    :goto_a
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useBL"

    .line 35
    iget-boolean v9, v10, Lh8/u;->i:Z

    if-eqz v9, :cond_a

    move-object/from16 v11, v16

    goto :goto_b

    :cond_a
    move-object/from16 v11, v17

    :goto_b
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useWL"

    .line 36
    iget-boolean v9, v10, Lh8/u;->j:Z

    if-eqz v9, :cond_b

    move-object/from16 v11, v16

    goto :goto_c

    :cond_b
    move-object/from16 v11, v17

    :goto_c
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useContacts"

    .line 37
    iget-boolean v9, v10, Lh8/u;->k:Z

    if-eqz v9, :cond_c

    move-object/from16 v11, v16

    goto :goto_d

    :cond_c
    move-object/from16 v11, v17

    :goto_d
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blockAllExceptContacts"

    .line 38
    iget-boolean v9, v10, Lh8/u;->l:Z

    if-eqz v9, :cond_d

    move-object/from16 v11, v16

    goto :goto_e

    :cond_d
    move-object/from16 v11, v17

    :goto_e
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blockAllExceptWL"

    .line 39
    iget-boolean v9, v10, Lh8/u;->m:Z

    if-eqz v9, :cond_e

    move-object/from16 v11, v16

    goto :goto_f

    :cond_e
    move-object/from16 v11, v17

    :goto_f
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blockHidden"

    .line 40
    iget-boolean v9, v10, Lh8/u;->n:Z

    if-eqz v9, :cond_f

    move-object/from16 v11, v16

    goto :goto_10

    :cond_f
    move-object/from16 v11, v17

    :goto_10
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "blockForeign"

    .line 41
    iget-boolean v9, v10, Lh8/u;->o:Z

    if-eqz v9, :cond_10

    move-object/from16 v11, v16

    goto :goto_11

    :cond_10
    move-object/from16 v11, v17

    :goto_11
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "deleteBlocked"

    .line 42
    iget-boolean v9, v10, Lh8/u;->p:Z

    if-eqz v9, :cond_11

    move-object/from16 v11, v16

    goto :goto_12

    :cond_11
    move-object/from16 v11, v17

    :goto_12
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "showNotifications"

    .line 43
    iget-boolean v9, v10, Lh8/u;->q:Z

    if-eqz v9, :cond_12

    move-object/from16 v11, v16

    goto :goto_13

    :cond_12
    move-object/from16 v11, v17

    :goto_13
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "useCalendar"

    .line 44
    iget-boolean v9, v10, Lh8/u;->r:Z

    if-eqz v9, :cond_13

    move-object/from16 v11, v16

    goto :goto_14

    :cond_13
    move-object/from16 v11, v17

    :goto_14
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "time1"

    .line 45
    iget-object v11, v10, Lh8/u;->z:Ljava/lang/String;

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "time2"

    .line 46
    iget-object v11, v10, Lh8/u;->A:Ljava/lang/String;

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day1"

    .line 47
    iget-boolean v9, v10, Lh8/u;->s:Z

    if-eqz v9, :cond_14

    move-object/from16 v11, v16

    goto :goto_15

    :cond_14
    move-object/from16 v11, v17

    :goto_15
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day2"

    .line 48
    iget-boolean v9, v10, Lh8/u;->t:Z

    if-eqz v9, :cond_15

    move-object/from16 v11, v16

    goto :goto_16

    :cond_15
    move-object/from16 v11, v17

    :goto_16
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day3"

    .line 49
    iget-boolean v9, v10, Lh8/u;->u:Z

    if-eqz v9, :cond_16

    move-object/from16 v11, v16

    goto :goto_17

    :cond_16
    move-object/from16 v11, v17

    :goto_17
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day4"

    .line 50
    iget-boolean v9, v10, Lh8/u;->v:Z

    if-eqz v9, :cond_17

    move-object/from16 v11, v16

    goto :goto_18

    :cond_17
    move-object/from16 v11, v17

    :goto_18
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day5"

    .line 51
    iget-boolean v9, v10, Lh8/u;->w:Z

    if-eqz v9, :cond_18

    move-object/from16 v11, v16

    goto :goto_19

    :cond_18
    move-object/from16 v11, v17

    :goto_19
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day6"

    .line 52
    iget-boolean v9, v10, Lh8/u;->x:Z

    if-eqz v9, :cond_19

    move-object/from16 v11, v16

    goto :goto_1a

    :cond_19
    move-object/from16 v11, v17

    :goto_1a
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "day7"

    .line 53
    iget-boolean v9, v10, Lh8/u;->y:Z

    if-eqz v9, :cond_1a

    move-object/from16 v10, v16

    goto :goto_1b

    :cond_1a
    move-object/from16 v10, v17

    :goto_1b
    const/4 v9, 0x0

    invoke-interface {v14, v9, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    invoke-interface {v14, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    move-object/from16 v1, p0

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_1b
    const/4 v1, 0x0

    :try_start_12
    new-array v5, v1, [Lx8/a;

    .line 55
    new-instance v1, Lw8/o;

    invoke-direct {v1, v5}, Lw8/o;-><init>([Lx8/a;)V

    .line 56
    const-class v5, Lh8/c;

    .line 57
    new-instance v6, Lw8/g;

    invoke-direct {v6, v1, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 58
    invoke-virtual {v6}, Lw8/e;->l()Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    const-string v6, "category"

    const-string v9, "number"

    if-eqz v5, :cond_1d

    :try_start_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh8/c;

    const/4 v10, 0x0

    .line 60
    invoke-interface {v14, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v11, v5, Lh8/c;->c:Ljava/lang/String;

    invoke-interface {v14, v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v9, v5, Lh8/c;->d:Ljava/lang/String;

    if-nez v9, :cond_1c

    move-object v9, v8

    :cond_1c
    invoke-interface {v14, v10, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget v5, v5, Lh8/c;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v10, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-interface {v14, v10, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_1c

    :cond_1d
    const/4 v1, 0x0

    :try_start_14
    new-array v4, v1, [Lx8/a;

    .line 65
    new-instance v1, Lw8/o;

    invoke-direct {v1, v4}, Lw8/o;-><init>([Lx8/a;)V

    .line 66
    const-class v4, Lh8/w;

    .line 67
    new-instance v5, Lw8/g;

    invoke-direct {v5, v1, v4}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 68
    invoke-virtual {v5}, Lw8/e;->l()Ljava/util/List;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/w;

    const/4 v5, 0x0

    .line 70
    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v10, v4, Lh8/w;->c:Ljava/lang/String;

    invoke-interface {v14, v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget-object v10, v4, Lh8/w;->d:Ljava/lang/String;

    if-nez v10, :cond_1e

    move-object v10, v8

    :cond_1e
    invoke-interface {v14, v5, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget v4, v4, Lh8/w;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d

    :cond_1f
    const/4 v1, 0x0

    .line 75
    invoke-interface {v14, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 77
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 78
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 79
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V

    const v0, 0x7f1100f4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_1f

    :catch_0
    move-exception v0

    const/16 v10, 0x2710

    goto :goto_1e

    :catch_1
    move-exception v0

    const/16 v10, 0x1f4

    goto :goto_1e

    :catch_2
    move-exception v0

    const/16 v10, 0x64

    goto :goto_1e

    :catch_3
    move-exception v0

    const/16 v10, 0xd

    goto :goto_1e

    :catch_4
    move-exception v0

    const/16 v10, 0xc

    goto :goto_1e

    :catch_5
    move-exception v0

    const/16 v10, 0xb

    goto :goto_1e

    :catch_6
    move-exception v0

    const/16 v10, 0xa

    goto :goto_1e

    :catch_7
    move-exception v0

    const/16 v10, 0x9

    goto :goto_1e

    :catch_8
    move-exception v0

    const/16 v10, 0x8

    goto :goto_1e

    :catch_9
    move-exception v0

    const/4 v10, 0x7

    goto :goto_1e

    :catch_a
    move-exception v0

    const/4 v10, 0x6

    goto :goto_1e

    :catch_b
    move-exception v0

    const/4 v10, 0x5

    goto :goto_1e

    :catch_c
    move-exception v0

    const/4 v10, 0x4

    goto :goto_1e

    :catch_d
    move-exception v0

    const/4 v10, 0x3

    goto :goto_1e

    :catch_e
    move-exception v0

    const/4 v10, 0x2

    goto :goto_1e

    :catch_f
    move-exception v0

    const/4 v10, 0x1

    goto :goto_1e

    :catch_10
    move-exception v0

    const/4 v10, 0x0

    .line 81
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2131820787 errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nerrorString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exception"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "export_settings"

    .line 86
    invoke-static {v3, v4, v1}, Lf8/g;->z(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "clipboard"

    .line 87
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nerrorCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1f

    :catch_11
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f1100f6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    :cond_20
    :goto_1f
    return-void
.end method

.method public c(Lc9/f;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 1
    const-class v2, Lh8/i;

    .line 2
    invoke-static {v1}, Lf8/h;->j(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v8, v11

    const/4 v6, 0x0

    const-string v7, "data1 NOT NULL AND contact_last_updated_timestamp > ? "

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 5
    invoke-static {v1}, Lf8/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 6
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const-string v7, "contact_id"

    if-eqz v6, :cond_4

    const-string v6, "data1"

    .line 7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lh8/q;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "_id"

    .line 10
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "display_name"

    .line 11
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "display_name_alt"

    .line 12
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v12, "photo_thumb_uri"

    .line 13
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-array v12, v11, [Lx8/a;

    .line 14
    new-instance v13, Lw8/o;

    invoke-direct {v13, v12}, Lw8/o;-><init>([Lx8/a;)V

    .line 15
    new-instance v12, Lw8/g;

    invoke-direct {v12, v13, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v13, v10, [Lw8/n;

    .line 16
    sget-object v10, Lh8/j;->g:Lx8/b;

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    aput-object v0, v13, v11

    .line 18
    new-instance v0, Lw8/r;

    invoke-direct {v0, v12, v13}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 19
    sget-object v13, Lh8/j;->h:Lx8/b;

    .line 20
    invoke-virtual {v13, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v12

    .line 21
    iget-object v11, v0, Lw8/r;->d:Lw8/l;

    move-object/from16 v18, v5

    const-string v5, "AND"

    .line 22
    invoke-virtual {v11, v5, v12}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 23
    invoke-virtual {v0}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_1

    .line 26
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 27
    new-instance v11, Lw8/g;

    invoke-direct {v11, v0, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v12, [Lw8/n;

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v0, v12

    .line 29
    new-instance v10, Lw8/r;

    invoke-direct {v10, v11, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 30
    invoke-virtual {v13, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    .line 31
    iget-object v11, v10, Lw8/r;->d:Lw8/l;

    .line 32
    invoke-virtual {v11, v5, v0}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 33
    invoke-virtual {v10}, Lw8/d;->d()V

    .line 34
    :cond_1
    new-instance v0, Lh8/i;

    invoke-direct {v0}, Lh8/i;-><init>()V

    .line 35
    iput v8, v0, Lh8/i;->i:I

    .line 36
    iput v7, v0, Lh8/i;->c:I

    .line 37
    iput-object v6, v0, Lh8/i;->d:Ljava/lang/String;

    .line 38
    iput-object v9, v0, Lh8/i;->e:Ljava/lang/String;

    .line 39
    iput-object v15, v0, Lh8/i;->f:Ljava/lang/String;

    .line 40
    iput-object v14, v0, Lh8/i;->h:Ljava/lang/String;

    const/4 v5, 0x1

    .line 41
    iput v5, v0, Lh8/i;->g:I

    .line 42
    invoke-virtual {v0}, Lb9/a;->a()Z

    goto/16 :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 43
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lh8/i;

    move-object v0, v13

    move-object v13, v6

    move-object v8, v14

    move-object v14, v9

    move-object v11, v15

    move-object/from16 v16, v8

    move/from16 v17, v7

    invoke-static/range {v12 .. v17}, Lh8/q;->j(Lh8/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 44
    new-instance v12, Lw8/q;

    invoke-direct {v12, v2}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v13, 0x6

    new-array v13, v13, [Lw8/n;

    .line 45
    invoke-virtual {v0, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Lh8/j;->i:Lx8/b;

    .line 46
    invoke-virtual {v14, v9}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v13, v14

    const/4 v9, 0x2

    sget-object v15, Lh8/j;->j:Lx8/b;

    .line 47
    invoke-virtual {v15, v11}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v11

    aput-object v11, v13, v9

    const/4 v9, 0x3

    sget-object v11, Lh8/j;->l:Lx8/b;

    .line 48
    invoke-virtual {v11, v8}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v8

    aput-object v8, v13, v9

    const/4 v8, 0x4

    sget-object v9, Lh8/j;->k:Lx8/b;

    .line 49
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v9

    aput-object v9, v13, v8

    const/4 v8, 0x5

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v9

    aput-object v9, v13, v8

    .line 51
    invoke-virtual {v12, v13}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v8

    new-array v9, v14, [Lw8/n;

    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    .line 53
    new-instance v7, Lw8/r;

    invoke-direct {v7, v8, v9}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 54
    invoke-virtual {v0, v6}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v0

    .line 55
    iget-object v6, v7, Lw8/r;->d:Lw8/l;

    .line 56
    invoke-virtual {v6, v5, v0}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    .line 57
    invoke-virtual {v7}, Lw8/d;->d()V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v5, v18

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 58
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v3, v12, v0

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v11, "contact_deleted_timestamp > ?"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 62
    new-instance v3, Lw8/f;

    invoke-direct {v3}, Lw8/f;-><init>()V

    .line 63
    new-instance v4, Lw8/g;

    invoke-direct {v4, v3, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v5, v3, [Lw8/n;

    .line 64
    sget-object v6, Lh8/j;->g:Lx8/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 65
    new-instance v1, Lw8/r;

    invoke-direct {v1, v4, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 66
    invoke-virtual {v1}, Lw8/d;->d()V

    goto :goto_2

    .line 67
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/FragmentBlackList;

    sget-object v1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, v0, Lcom/mglab/scm/visual/FragmentBlackList;->c:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v0, v0, Lcom/mglab/scm/visual/FragmentBlackList;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Ly2/r;

    .line 1
    iget-object v1, v0, Ly2/r;->b:Lz2/c;

    invoke-interface {v1}, Lz2/c;->y()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu2/i;

    .line 2
    iget-object v3, v0, Ly2/r;->c:Ly2/t;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Ly2/t;->a(Lu2/i;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Lk7/k;

    invoke-virtual {v0}, Lk7/k;->c()V

    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 3

    iget-object p1, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentStat;

    sget-object p2, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psctd"

    invoke-static {p2, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "psct"

    .line 3
    invoke-static {p2, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "psbtd"

    .line 4
    invoke-static {p2, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "psbt"

    .line 5
    invoke-static {p2, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object p2, p1, Lcom/mglab/scm/visual/FragmentStat;->tv_blocked:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p1, Lcom/mglab/scm/visual/FragmentStat;->tv_checked:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->g(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->h(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public then(Ljava/lang/Object;)Lm7/c;
    .locals 2

    iget-object v0, p0, Ly2/p;->a:Ljava/lang/Object;

    check-cast v0, Lm7/h;

    .line 1
    new-instance v1, Lm7/g;

    invoke-interface {v0, p1}, Lm7/h;->then(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lm7/g;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
