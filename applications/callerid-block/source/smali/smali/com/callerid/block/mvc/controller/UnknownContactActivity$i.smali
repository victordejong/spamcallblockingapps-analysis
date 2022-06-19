.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/data/phones/filter/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->o0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const-string v2, "contact_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->V(Lcom/callerid/block/mvc/controller/UnknownContactActivity;I)I

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    new-instance v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
