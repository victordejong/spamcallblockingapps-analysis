.class Lcom/allinone/callerid/i/a/r/a$d;
.super Landroid/os/AsyncTask;
.source "ContanFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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
.field private a:Lcom/allinone/callerid/i/a/r/c;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/allinone/callerid/i/a/r/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Lcom/allinone/callerid/i/a/r/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/i/a/r/a$d;->a:Lcom/allinone/callerid/i/a/r/c;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    .line 4
    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/allinone/callerid/i/a/r/a$d;->c:Ljava/util/ArrayList;

    .line 5
    check-cast p3, Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "data2"

    const-string v0, "number"

    const-string v3, ""

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    const-string v5, "android.permission.READ_CALL_LOG"

    invoke-static {v4, v5}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date DESC"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_d

    .line 5
    iget-object v5, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 6
    iget-object v5, v1, Lcom/allinone/callerid/i/a/r/a$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 9
    invoke-interface {v11, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 11
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object v7, v1, Lcom/allinone/callerid/i/a/r/a$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v7, v1, Lcom/allinone/callerid/i/a/r/a$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v7, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 16
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 18
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    :goto_2
    const/4 v13, 0x0

    .line 19
    :goto_3
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v13, v0, :cond_b

    .line 20
    :try_start_1
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 21
    invoke-static {}, Lcom/allinone/callerid/util/b1;->h()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "number=?"

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    iget-object v5, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v9, v12

    const-string v10, "date DESC"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 22
    new-instance v6, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v6}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 23
    iget-object v7, v1, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 24
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/search/CallLogBean;->q0(I)V

    .line 25
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v7

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/allinone/callerid/util/h1;->Y(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 26
    invoke-virtual {v6, v0}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v7

    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 28
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 29
    invoke-virtual {v6, v7}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v7

    .line 31
    invoke-virtual {v6}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-static {v7, v8}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 33
    invoke-virtual {v6, v7}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 35
    sget-object v15, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "contact_id=?"

    new-array v8, v0, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v12

    const/16 v19, 0x0

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 36
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 37
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 38
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 39
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v0, :cond_6

    const/4 v0, 0x2

    if-eq v8, v0, :cond_5

    const/4 v0, 0x3

    if-eq v8, v0, :cond_4

    const/4 v0, 0x4

    if-eq v8, v0, :cond_3

    goto :goto_4

    .line 41
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f100377

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    goto :goto_4

    .line 42
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f100376

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1001e5

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    goto :goto_4

    .line 44
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1001a6

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 45
    :cond_7
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_8
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v5, :cond_a

    .line 47
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 49
    :cond_b
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v0, :cond_c

    .line 50
    :try_start_3
    iget-object v0, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/allinone/callerid/i/a/r/a$d$a;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/i/a/r/a$d$a;-><init>(Lcom/allinone/callerid/i/a/r/a$d;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 51
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :goto_6
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "favourite"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fav_contact:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const-string v0, "2222"

    return-object v0

    :cond_d
    if-eqz v11, :cond_e

    .line 55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v0, "3333"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "2222"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/r/a$d;->a:Lcom/allinone/callerid/i/a/r/c;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/r/a$d;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/r/a$d;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/r/a$d;->d:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1, v2}, Lcom/allinone/callerid/i/a/r/c;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/r/a$d;->a:Lcom/allinone/callerid/i/a/r/c;

    invoke-interface {p1}, Lcom/allinone/callerid/i/a/r/c;->b()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/r/a$d;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/r/a$d;->b(Ljava/lang/String;)V

    return-void
.end method
