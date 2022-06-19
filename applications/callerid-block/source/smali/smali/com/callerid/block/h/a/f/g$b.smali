.class Lcom/callerid/block/h/a/f/g$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private a:Lcom/callerid/block/h/a/f/h;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callerid/block/h/a/f/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/h/a/f/g$b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/h/a/f/g$b;->a:Lcom/callerid/block/h/a/f/h;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "starred = 1 "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "contact_id="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, ":"

    const-string v9, ""

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v11, "data1"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "data2"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "account_type"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v12, "account_name"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "display_name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "photo_uri"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    :goto_2
    if-eqz v11, :cond_4

    const/4 v15, 0x2

    if-eq v11, v15, :cond_3

    goto :goto_3

    :cond_3
    iget-object v9, v1, Lcom/callerid/block/h/a/f/g$b;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f100117

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-boolean v11, Lcom/callerid/block/util/w;->a:Z

    if-eqz v11, :cond_5

    const-string v11, "favourite"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numbers:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    array-length v2, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v10, "1"

    if-ne v2, v5, :cond_6

    :try_start_4
    new-instance v2, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v2}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v2, v14}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    long-to-int v4, v6

    invoke-virtual {v2, v4}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    invoke-virtual {v2, v9}, Lcom/callerid/block/search/CallLogBean;->n0(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/callerid/block/search/CallLogBean;->R(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/callerid/block/search/CallLogBean;->S(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/callerid/block/search/CallLogBean;->a0(Z)V

    invoke-virtual {v2, v0}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    array-length v2, v8

    if-le v2, v5, :cond_7

    new-instance v2, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v2}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v2, v14}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    aget-object v4, v8, v4

    invoke-virtual {v2, v4}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    long-to-int v4, v6

    invoke-virtual {v2, v4}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    invoke-virtual {v2, v9}, Lcom/callerid/block/search/CallLogBean;->n0(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/callerid/block/search/CallLogBean;->R(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/callerid/block/search/CallLogBean;->S(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/callerid/block/search/CallLogBean;->a0(Z)V

    invoke-virtual {v2, v0}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    :goto_6
    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :goto_7
    if-le v0, v4, :cond_a

    iget-object v2, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    iget-object v0, v1, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/callerid/block/h/a/f/g$b$a;

    invoke-direct {v2, v1}, Lcom/callerid/block/h/a/f/g$b$a;-><init>(Lcom/callerid/block/h/a/f/g$b;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    const-string v0, "999"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :cond_d
    return-object v2
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "999"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/h/a/f/g$b;->a:Lcom/callerid/block/h/a/f/h;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/g$b;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/callerid/block/h/a/f/h;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/g$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/g$b;->b(Ljava/lang/String;)V

    return-void
.end method
