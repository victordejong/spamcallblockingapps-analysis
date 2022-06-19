.class Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b;->e:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android-dir/mms-sms"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m$b;->e:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity$m;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
