.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity$m;->b(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity$m;Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m$a;->b:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
