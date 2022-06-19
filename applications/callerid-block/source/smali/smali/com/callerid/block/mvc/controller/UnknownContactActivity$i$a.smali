.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;

    iget-object v3, v3, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->U(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$i;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
