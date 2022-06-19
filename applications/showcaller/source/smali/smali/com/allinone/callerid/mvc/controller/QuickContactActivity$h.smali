.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "display_name"

    const-string v5, "data1"

    const-string v6, "sort_key"

    const-string v7, "contact_id"

    const-string v8, "photo_id"

    const-string v9, "starred"

    const-string v10, "data2"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sort_key COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "data1"

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "display_name"

    .line 5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "sort_key"

    .line 6
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_b

    .line 8
    iget-object v5, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v7}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "starred"

    .line 14
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "photo_id"

    .line 15
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "contact_id"

    .line 16
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "data2"

    .line 17
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 18
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, ""

    if-eq v12, v6, :cond_5

    const/4 v14, 0x2

    if-eq v12, v14, :cond_4

    const/4 v14, 0x3

    if-eq v12, v14, :cond_3

    const/4 v14, 0x4

    if-eq v12, v14, :cond_2

    move-object v12, v13

    goto :goto_1

    .line 19
    :cond_2
    :try_start_1
    iget-object v12, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f100377

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 20
    :cond_3
    iget-object v12, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f100376

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 21
    :cond_4
    iget-object v12, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f1001e5

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 22
    :cond_5
    iget-object v12, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v12}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f1001a6

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 23
    :goto_1
    new-instance v14, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v14}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 24
    new-instance v15, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-direct {v15}, Lcom/allinone/callerid/bean/QuickContactBean;-><init>()V

    .line 25
    invoke-virtual {v14, v11}, Lcom/allinone/callerid/search/CallLogBean;->J0(I)V

    .line 26
    invoke-virtual {v14, v9}, Lcom/allinone/callerid/search/CallLogBean;->V0(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v14, v8}, Lcom/allinone/callerid/search/CallLogBean;->T0(Ljava/lang/String;)V

    .line 28
    iget-object v9, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v9, v8}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->f0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    sget-boolean v11, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v11, :cond_6

    const-string v11, "contactlist"

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    const-string v2, "sortLetters:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move/from16 v16, v2

    :goto_2
    if-nez v9, :cond_7

    .line 31
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2, v7}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->g0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 32
    :cond_7
    iput-object v9, v14, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    .line 33
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-virtual {v2, v8}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->z0(Ljava/lang/String;)Lcom/allinone/callerid/customview/SortToken;

    move-result-object v2

    iput-object v2, v14, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    if-eqz v12, :cond_8

    .line 34
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 35
    invoke-virtual {v14, v12}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v14, v12}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 37
    :cond_8
    invoke-virtual {v14, v5}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 38
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->h0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Lcom/allinone/callerid/util/n;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/allinone/callerid/util/n;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/allinone/callerid/bean/QuickContactBean;->setIsquick(Ljava/lang/Boolean;)V

    if-eqz v10, :cond_9

    .line 39
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "0"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 40
    invoke-virtual {v14, v10}, Lcom/allinone/callerid/search/CallLogBean;->I0(Ljava/lang/String;)V

    :cond_9
    if-eqz v7, :cond_a

    .line 41
    invoke-virtual {v14, v7}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v15, v14}, Lcom/allinone/callerid/bean/QuickContactBean;->setBean(Lcom/allinone/callerid/search/CallLogBean;)V

    .line 43
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move/from16 v2, v16

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 44
    :cond_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 45
    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 46
    :goto_3
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 47
    iget-object v2, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_4
    if-le v2, v1, :cond_d

    .line 48
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v4

    iget-object v5, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v5}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 49
    iget-object v4, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 50
    :cond_e
    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;

    invoke-direct {v2, v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$b;-><init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 51
    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;->d:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$a;

    invoke-direct {v2, v0}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h$a;-><init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity$h;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_6
    return-void
.end method
