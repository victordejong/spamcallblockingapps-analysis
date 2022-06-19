.class Lcom/callerid/block/h/a/f/g$c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/callerid/block/h/a/f/m;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callerid/block/h/a/f/m;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/h/a/f/g$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/h/a/f/g$c;->b:Lcom/callerid/block/h/a/f/m;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    const-string v0, "account_name"

    const-string v1, "account_type"

    const-string v2, "data2"

    const-string v3, "starred"

    const-string v4, "photo_id"

    const-string v5, "contact_id"

    const-string v6, "sort_key"

    const-string v7, "data1"

    const-string v8, "display_name"

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v10

    invoke-static {v10}, Lcom/callerid/block/util/x0/a;->c(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/16 v10, 0x9

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v13, v10

    const/16 v17, 0x1

    aput-object v7, v13, v17

    const/4 v15, 0x2

    aput-object v6, v13, v15

    const/4 v14, 0x3

    aput-object v5, v13, v14

    const/4 v14, 0x4

    aput-object v4, v13, v14

    const/4 v14, 0x5

    aput-object v3, v13, v14

    const/4 v14, 0x6

    aput-object v2, v13, v14

    const/4 v14, 0x7

    aput-object v1, v13, v14

    const/16 v14, 0x8

    aput-object v0, v13, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v18, "sort_key COLLATE LOCALIZED ASC"

    const/4 v10, 0x2

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Lcom/callerid/block/h/a/f/g;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object/from16 v21, v3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v2

    const-string v2, ""

    move-object/from16 v23, v4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/callerid/block/h/a/f/g$c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v3, 0x7f100117

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v12}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v5

    new-instance v5, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v5}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v5, v0}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    invoke-virtual {v5, v15}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/callerid/block/search/CallLogBean;->y0(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/callerid/block/h/a/f/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v13}, Lcom/callerid/block/h/a/f/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v5, v0}, Lcom/callerid/block/search/CallLogBean;->z0(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/callerid/block/h/a/f/g;->e(Ljava/lang/String;)Lcom/callerid/block/util/SortToken;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/callerid/block/search/CallLogBean;->A0(Lcom/callerid/block/util/SortToken;)V

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5, v3}, Lcom/callerid/block/search/CallLogBean;->n0(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5, v1}, Lcom/callerid/block/search/CallLogBean;->R(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/callerid/block/search/CallLogBean;->S(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/callerid/block/search/CallLogBean;->k0(Ljava/lang/String;)V

    if-eqz v9, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5, v9}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v5, v13}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v1, v19

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v10, 0x0

    :goto_2
    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_b

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v1

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-le v2, v10, :cond_a

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v4

    if-ne v1, v4, :cond_9

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v3

    :goto_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/search/CallLogBean;->k0(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    const-string v0, "777"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :cond_c
    :goto_6
    const/4 v1, 0x0

    return-object v1

    :catch_1
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/h/a/f/g$c;->b:Lcom/callerid/block/h/a/f/m;

    invoke-static {}, Lcom/callerid/block/h/a/f/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callerid/block/h/a/f/m;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/h/a/f/g$c;->b:Lcom/callerid/block/h/a/f/m;

    invoke-interface {p1}, Lcom/callerid/block/h/a/f/m;->a()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/g$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/g$c;->b(Ljava/lang/String;)V

    return-void
.end method
