.class Lcom/allinone/callerid/i/a/r/a$c;
.super Landroid/os/AsyncTask;
.source "ContanFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/r/a;
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

.field private b:Lcom/allinone/callerid/i/a/r/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/r/a$c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/r/a$c;->b:Lcom/allinone/callerid/i/a/r/g;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name"

    const-string v4, "data1"

    const-string v5, "sort_key"

    const-string v6, "contact_id"

    const-string v7, "photo_id"

    const-string v8, "starred"

    const-string v9, "data2"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "sort_key COLLATE LOCALIZED ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v1, "data1"

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "display_name"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sort_key"

    .line 7
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 8
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_a

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/allinone/callerid/i/a/r/a;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 11
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 12
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "starred"

    .line 16
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 17
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "photo_id"

    .line 18
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 19
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "contact_id"

    .line 20
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 21
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "data2"

    .line 22
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 23
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v12, ""

    if-eq v11, v5, :cond_6

    const/4 v13, 0x2

    if-eq v11, v13, :cond_5

    const/4 v13, 0x3

    if-eq v11, v13, :cond_4

    const/4 v13, 0x4

    if-eq v11, v13, :cond_3

    move-object v11, v12

    goto :goto_1

    .line 24
    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/allinone/callerid/i/a/r/a$c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100377

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 25
    :cond_4
    iget-object v11, p0, Lcom/allinone/callerid/i/a/r/a$c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f100376

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 26
    :cond_5
    iget-object v11, p0, Lcom/allinone/callerid/i/a/r/a$c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f1001e5

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 27
    :cond_6
    iget-object v11, p0, Lcom/allinone/callerid/i/a/r/a$c;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f1001a6

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 28
    :goto_1
    new-instance v13, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v13}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 29
    invoke-virtual {v13, v10}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    .line 30
    invoke-virtual {v13, v8}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v13, v7}, Lcom/allinone/callerid/search/CallLogBean;->T0(Ljava/lang/String;)V

    .line 32
    invoke-static {v7}, Lcom/allinone/callerid/i/a/r/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 33
    invoke-static {v6}, Lcom/allinone/callerid/i/a/r/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 34
    :cond_7
    iput-object v8, v13, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    .line 35
    invoke-static {v7}, Lcom/allinone/callerid/i/a/r/a;->e(Ljava/lang/String;)Lcom/allinone/callerid/customview/SortToken;

    move-result-object v7

    iput-object v7, v13, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    if-eqz v11, :cond_8

    .line 36
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 37
    invoke-virtual {v13, v11}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v13, v11}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 39
    :cond_8
    invoke-virtual {v13, v4}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 40
    invoke-static {v4}, Lcom/allinone/callerid/util/p0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/allinone/callerid/search/CallLogBean;->B0(Ljava/lang/String;)V

    if-eqz v9, :cond_9

    .line 42
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "0"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 43
    invoke-virtual {v13, v9}, Lcom/allinone/callerid/search/CallLogBean;->I0(Ljava/lang/String;)V

    :cond_9
    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v13, v6}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 46
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :try_start_2
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 48
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 49
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v1, :cond_d

    .line 50
    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v2

    .line 51
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_3
    if-le v3, v0, :cond_d

    .line 52
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v4, :cond_c

    .line 53
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v6

    if-ne v2, v6, :cond_c

    .line 54
    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->l()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 57
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 58
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/allinone/callerid/search/CallLogBean;->B0(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 60
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    const-string p1, "777"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_f
    :goto_5
    return-object p1

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/r/a$c;->b:Lcom/allinone/callerid/i/a/r/g;

    invoke-static {}, Lcom/allinone/callerid/i/a/r/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/r/g;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/r/a$c;->b:Lcom/allinone/callerid/i/a/r/g;

    invoke-interface {p1}, Lcom/allinone/callerid/i/a/r/g;->b()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/r/a$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/r/a$c;->b(Ljava/lang/String;)V

    return-void
.end method
