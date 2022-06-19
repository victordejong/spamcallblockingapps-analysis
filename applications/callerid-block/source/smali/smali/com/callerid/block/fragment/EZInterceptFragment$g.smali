.class Lcom/callerid/block/fragment/EZInterceptFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->j2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "photo_id"

    const-string v1, "data1"

    const-string v2, "contact_id"

    const-string v3, "display_name"

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v5}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v7, v11

    const-string v8, "sort_key"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x2

    aput-object v2, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v0, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "sort_key"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v11, v6, :cond_2

    invoke-interface {v5, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v10, Lcom/callerid/block/bean/EZSimpleContact;

    invoke-direct {v10}, Lcom/callerid/block/bean/EZSimpleContact;-><init>()V

    invoke-virtual {v10, v9}, Lcom/callerid/block/bean/EZSimpleContact;->setId(I)V

    invoke-virtual {v10, v6}, Lcom/callerid/block/bean/EZSimpleContact;->setNumber(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    const-string v6, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v10, v8}, Lcom/callerid/block/bean/EZSimpleContact;->setPhoto_id(Ljava/lang/String;)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v10, v7}, Lcom/callerid/block/bean/EZSimpleContact;->setName(Ljava/lang/String;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$g;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;

    invoke-direct {v1, p0, v4}, Lcom/callerid/block/fragment/EZInterceptFragment$g$a;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$g;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
