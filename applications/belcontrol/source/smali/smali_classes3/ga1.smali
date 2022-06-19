.class public Lga1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "ga1"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/io/File;Z)Z
    .locals 16

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ll81;

    if-eqz p2, :cond_0

    invoke-direct {v0}, Ll81;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v3, v3}, Ll81;->b0(Ljava/lang/Integer;ZZZ)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ll81;-><init>()V

    invoke-virtual {v0, v3, v3, v2}, Ll81;->i0(ZZZ)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_c

    :cond_1
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "MM/dd/yy HH:mm"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    :try_start_0
    new-instance v7, Lx70;

    invoke-direct {v7, v4}, Lx70;-><init>(Ljava/io/Writer;)V

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/String;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Li61;->export_header_name:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Li61;->export_header_phonenumber:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Li61;->export_header_type:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v12, Li61;->export_header_calltype:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v13, Li61;->export_header_reason:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x4

    aput-object v10, v9, v13

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v14, Li61;->export_header_when:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x5

    aput-object v10, v9, v14

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v15, Li61;->export_header_message_text:I

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x6

    aput-object v10, v9, v15

    invoke-virtual {v7, v9}, Lx70;->g([Ljava/lang/String;)V

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Li61;->export_call:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    new-instance v10, Ll81;

    invoke-direct {v10}, Ll81;-><init>()V

    invoke-virtual {v10, v0}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object v15, v10, Ll81;->m:Li91;

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Li91;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    iget-wide v14, v10, Ll81;->s:J

    invoke-virtual {v6, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v14, v10, Ll81;->o:Ljava/util/EnumSet;

    sget-object v15, Lq71$e;->c:Lq71$e;

    invoke-virtual {v14, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v10, Ll81;->o:Ljava/util/EnumSet;

    sget-object v15, Lq71$e;->d:Lq71$e;

    invoke-virtual {v14, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Li61;->export_message:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    new-array v14, v8, [Ljava/lang/String;

    if-eqz p2, :cond_5

    :goto_2
    iget-object v15, v10, Ll81;->h:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v15, v10, Ll81;->A:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_2

    :cond_6
    iget-object v15, v10, Ll81;->A:Ljava/lang/String;

    :goto_3
    aput-object v15, v14, v3

    if-eqz p2, :cond_7

    iget-object v15, v10, Ll81;->m:Li91;

    :goto_4
    invoke-virtual {v15}, Li91;->m()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_7
    iget-object v15, v10, Ll81;->z:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v15, v10, Ll81;->m:Li91;

    goto :goto_4

    :cond_8
    iget-object v15, v10, Ll81;->z:Ljava/lang/String;

    :goto_5
    aput-object v15, v14, v2

    aput-object v9, v14, v11

    iget-boolean v15, v10, Ll81;->j:Z

    if-eqz v15, :cond_9

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v8, Li61;->call_blocked:I

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_9
    iget v8, v10, Ll81;->n:I

    invoke-static {v8}, Lga1;->c(I)Ljava/lang/String;

    move-result-object v8

    :goto_6
    aput-object v8, v14, v12

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v15, v10, Ll81;->p:Ln91$a;

    invoke-virtual {v15}, Ln91$a;->a()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v14, v13

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x5

    aput-object v8, v14, v15

    iget-object v8, v10, Ll81;->l:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v1

    goto :goto_7

    :cond_a
    iget-object v8, v10, Ll81;->l:Ljava/lang/String;

    :goto_7
    const/4 v10, 0x6

    aput-object v8, v14, v10

    invoke-virtual {v7, v14}, Lx70;->g([Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v10, 0x6

    const/4 v15, 0x5

    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Lx70;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_c
    const/4 v8, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x6

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lga1;->a:Ljava/lang/String;

    invoke-static {v5, v1, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    :goto_b
    sget-object v2, Lga1;->a:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_c
    return v3
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, p2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object p1, Lga1;->a:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Li61;->call_missed:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Li61;->call_outgoing:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Li61;->call_incoming:I

    goto :goto_0
.end method
