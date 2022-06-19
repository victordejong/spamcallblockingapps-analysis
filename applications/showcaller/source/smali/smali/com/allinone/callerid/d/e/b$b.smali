.class Lcom/allinone/callerid/d/e/b$b;
.super Landroid/os/AsyncTask;
.source "ContactsCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/b;
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
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/allinone/callerid/d/e/b$a;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/allinone/callerid/d/e/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/d/e/b$b;->b:Lcom/allinone/callerid/d/e/b$a;

    .line 3
    iput-boolean p1, p0, Lcom/allinone/callerid/d/e/b$b;->c:Z

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/d/e/b$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string p1, " "

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-static {v2, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "display_name"

    const-string v6, "data1"

    const-string v7, "sort_key"

    const-string v8, "contact_id"

    const-string v9, "photo_id"

    const-string v10, "starred"

    const-string v11, "data2"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "sort_key COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/d/b/e;->f()Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    const-string v4, "data1"

    .line 7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "display_name"

    .line 8
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "sort_key"

    .line 9
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 10
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_e

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    .line 12
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 13
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 16
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "photo_id"

    .line 17
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 18
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v12, "contact_id"

    .line 19
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 20
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 21
    new-instance v13, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-direct {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;-><init>()V

    .line 22
    invoke-virtual {v13, v12}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setContacts_id(I)V

    .line 23
    invoke-virtual {v13, v11}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setSortKey(Ljava/lang/String;)V

    .line 24
    invoke-static {v11}, Lcom/allinone/callerid/d/f/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    .line 25
    invoke-static {v10}, Lcom/allinone/callerid/d/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 26
    :cond_4
    invoke-virtual {v13, v12}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setSortLetters(Ljava/lang/String;)V

    .line 27
    invoke-static {v11}, Lcom/allinone/callerid/d/f/a;->f(Ljava/lang/String;)Lcom/allinone/callerid/customview/SortToken;

    move-result-object v11

    iput-object v11, v13, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    .line 28
    invoke-virtual {v7, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setNumber(Ljava/lang/String;)V

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setMultiple_number(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v13, v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setDefault_themtname(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v7

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/allinone/callerid/d/b/c;->g(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 32
    invoke-virtual {v7}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDataId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setDataId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v7}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setThemtname(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v7}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setPath(Ljava/lang/String;)V

    .line 35
    :cond_5
    iget-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->d:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 36
    iget-boolean v11, p0, Lcom/allinone/callerid/d/e/b$b;->c:Z

    if-eqz v11, :cond_a

    .line 37
    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDefault_themtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->d:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 38
    :cond_6
    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 39
    iget-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->d:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 40
    invoke-virtual {v13, v8}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    goto :goto_3

    .line 41
    :cond_7
    invoke-virtual {v13, v9}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    goto :goto_3

    .line 42
    :cond_8
    invoke-virtual {v13, v9}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    goto :goto_3

    .line 43
    :cond_9
    invoke-virtual {v13, v8}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    goto :goto_3

    .line 44
    :cond_a
    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->d:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDefault_themtname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_2

    .line 45
    :cond_b
    invoke-virtual {v13, v8}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    goto :goto_3

    .line 46
    :cond_c
    :goto_2
    invoke-virtual {v13, v9}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    :cond_d
    :goto_3
    if-eqz v10, :cond_2

    .line 47
    invoke-virtual {v13, v10}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setName(Ljava/lang/String;)V

    .line 48
    iget-object v7, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 49
    :cond_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    iget-object p1, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_11

    .line 51
    :goto_4
    iget-object p1, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v8, p1, :cond_11

    .line 52
    iget-object p1, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 53
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_id()I

    move-result v0

    .line 54
    iget-object v2, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    :goto_5
    if-le v2, v8, :cond_10

    .line 55
    iget-object v3, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 56
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_id()I

    move-result v4

    if-ne v0, v4, :cond_f

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getMultiple_number()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getMultiple_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setMultiple_number(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_11
    const-string p1, "777"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_12
    :goto_6
    return-object v1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    return-object v1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/e/b$b;->b:Lcom/allinone/callerid/d/e/b$a;

    iget-object v0, p0, Lcom/allinone/callerid/d/e/b$b;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/d/e/b$a;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/e/b$b;->b:Lcom/allinone/callerid/d/e/b$a;

    invoke-interface {p1}, Lcom/allinone/callerid/d/e/b$a;->b()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/b$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/b$b;->b(Ljava/lang/String;)V

    return-void
.end method
