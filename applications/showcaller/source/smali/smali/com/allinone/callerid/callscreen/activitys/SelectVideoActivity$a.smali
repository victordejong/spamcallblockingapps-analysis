.class Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;
.super Ljava/lang/Object;
.source "SelectVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->d:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->d:Ljava/util/ArrayList;

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "title"

    .line 6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    .line 8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 9
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "artist"

    .line 10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "_display_name"

    .line 12
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 13
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "mime_type"

    .line 14
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "_data"

    .line 16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 17
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "duration"

    .line 18
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 19
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    const-string v4, "_size"

    .line 20
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 21
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    new-instance v4, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {v4}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;-><init>()V

    .line 23
    invoke-virtual {v4, v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setData_id(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4, v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v4, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdiy(Z)V

    .line 27
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 28
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;->e:Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
