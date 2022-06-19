.class public Lcom/callerid/block/h/a/d/d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/callerid/block/search/CallLogBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callerid/block/h/a/d/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/h/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/h/a/d/d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/h/a/d/d;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/callerid/block/h/a/d/d;->d:Lcom/callerid/block/h/a/d/a;

    return-void
.end method

.method private b(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_d

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-static {}, Lcom/callerid/block/util/t0;->m()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v7, Ljava/util/Date;

    const-string v9, "date"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    const-string v9, "number"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "type"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "_id"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v14, 0x15

    const-string v15, ""

    if-lt v13, v14, :cond_0

    :try_start_1
    const-string v5, "photo_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "formatted_number"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v15

    const/4 v5, 0x0

    :goto_1
    const-string v14, "numbertype"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/callerid/block/h/a/d/d;->a:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v2, v1, Lcom/callerid/block/h/a/d/d;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v1, Lcom/callerid/block/h/a/d/d;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    iget-object v8, v1, Lcom/callerid/block/h/a/d/d;->a:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/callerid/block/h/a/d/d;->b:Ljava/util/HashMap;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "numberlabel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v14, :cond_2

    if-nez v1, :cond_2

    move-object v1, v15

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v14, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    const/16 v8, 0x15

    if-lt v13, v8, :cond_3

    const-string v8, "lookup_uri"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    invoke-static {v9}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-instance v13, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v13}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v13, v12}, Lcom/callerid/block/search/CallLogBean;->i0(I)V

    invoke-virtual {v13, v4}, Lcom/callerid/block/search/CallLogBean;->F0(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lcom/callerid/block/search/CallLogBean;->X(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v13, Lcom/callerid/block/search/CallLogBean;->d:Z

    invoke-virtual {v13, v10}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    if-eqz v10, :cond_7

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/callerid/block/search/CallLogBean;->a0(Z)V

    if-eqz v5, :cond_7

    const-string v4, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v13, v2}, Lcom/callerid/block/search/CallLogBean;->d0(Z)V

    :cond_7
    invoke-virtual {v13, v8}, Lcom/callerid/block/search/CallLogBean;->j0(Landroid/net/Uri;)V

    invoke-virtual {v13, v1}, Lcom/callerid/block/search/CallLogBean;->n0(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    invoke-static {v7}, Lcom/callerid/block/util/e;->g(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/callerid/block/search/CallLogBean;->I0(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/callerid/block/util/e;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/callerid/block/search/CallLogBean;->b0(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Lcom/callerid/block/search/CallLogBean;->V(Ljava/util/Date;)V

    invoke-static {v7}, Lcom/callerid/block/util/e;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/callerid/block/search/CallLogBean;->g0(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/callerid/block/search/CallLogBean;->E0(J)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/callerid/block/util/n0;->i0()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/callerid/block/d/e;->a()Lcom/callerid/block/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callerid/block/d/e;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_9

    const-string v2, "wbb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u67e5\u8be2whatsAppBean:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v5, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_b

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/bean/WhatsAppBean;

    new-instance v4, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v4}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getLastcalltime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/callerid/block/search/CallLogBean;->E0(J)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getLastcalltime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/callerid/block/util/e;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->b0(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getLastcalltime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/callerid/block/util/e;->g(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->I0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->X(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/WhatsAppBean;->getType()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_a

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/callerid/block/search/CallLogBean;->G0(I)V

    :goto_7
    invoke-virtual {v4, v2}, Lcom/callerid/block/search/CallLogBean;->J0(Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    invoke-static {v3}, Lcom/callerid/block/util/u0;->b(Ljava/util/List;)V

    :cond_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_d
    if-eqz v0, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_9
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 p1, 0xa

    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v3, "date"

    aput-object v3, v2, p1

    const/4 p1, 0x1

    const-string v3, "number"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    const-string v3, "type"

    aput-object v3, v2, p1

    const/4 p1, 0x3

    const-string v3, "name"

    aput-object v3, v2, p1

    const/4 p1, 0x4

    const-string v3, "_id"

    aput-object v3, v2, p1

    const/4 p1, 0x5

    const-string v3, "numbertype"

    aput-object v3, v2, p1

    const/4 p1, 0x6

    const-string v3, "lookup_uri"

    aput-object v3, v2, p1

    const/4 p1, 0x7

    const-string v3, "photo_id"

    aput-object v3, v2, p1

    const/16 p1, 0x8

    const-string v3, "numberlabel"

    aput-object v3, v2, p1

    const/16 p1, 0x9

    const-string v3, "formatted_number"

    aput-object v3, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/callerid/block/h/a/d/d;->b(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/d/d;->c:Ljava/util/ArrayList;

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "\u53bb\u91cd\uff0c\u683c\u5f0f\u5316\u901a\u8bdd\u8bb0\u5f55\u6570\u636e"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/h/a/d/d;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected c(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/d/d;->d:Lcom/callerid/block/h/a/d/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/h/a/d/d;->b:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1}, Lcom/callerid/block/h/a/d/a;->a(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/d;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/d/d;->c(Ljava/util/ArrayList;)V

    return-void
.end method
