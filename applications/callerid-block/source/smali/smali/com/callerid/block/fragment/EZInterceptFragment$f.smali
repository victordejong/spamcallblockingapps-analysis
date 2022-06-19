.class Lcom/callerid/block/fragment/EZInterceptFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;->k2()V
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

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$f;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, ""

    const-string v1, "photo_id"

    const-string v2, "name"

    const-string v3, "type"

    const-string v4, "number"

    :try_start_0
    iget-object v5, p0, Lcom/callerid/block/fragment/EZInterceptFragment$f;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v5}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.READ_CALL_LOG"

    invoke-static {v5, v6}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/callerid/block/fragment/EZInterceptFragment$f;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v7}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v9, v13

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v1, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v13, v8, :cond_2

    invoke-interface {v7, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/callerid/block/search/CallLogBean;

    invoke-direct {v10}, Lcom/callerid/block/search/CallLogBean;-><init>()V

    invoke-virtual {v10, v8}, Lcom/callerid/block/search/CallLogBean;->m0(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    if-eqz v11, :cond_1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v10, v11}, Lcom/callerid/block/search/CallLogBean;->q0(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/callerid/block/fragment/EZInterceptFragment$f;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v9}, Lcom/callerid/block/fragment/EZInterceptFragment;->G1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/callerid/block/util/t0;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v8}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    :cond_1
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/fragment/EZInterceptFragment$f;->b:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZInterceptFragment;->Z1(Lcom/callerid/block/fragment/EZInterceptFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/EZInterceptFragment$f$a;

    invoke-direct {v1, p0, v5}, Lcom/callerid/block/fragment/EZInterceptFragment$f$a;-><init>(Lcom/callerid/block/fragment/EZInterceptFragment$f;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
