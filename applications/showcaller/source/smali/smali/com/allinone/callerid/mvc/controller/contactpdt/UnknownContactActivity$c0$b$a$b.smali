.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/bean/EZBlackList;

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;Lcom/allinone/callerid/bean/EZBlackList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->a:Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "0"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->d0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)V

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->a:Lcom/allinone/callerid/bean/EZBlackList;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/EZBlackList;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v3, v3, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v3, v3, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v3, v3, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->O0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {v1}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v2, v2, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string v2, "1"

    .line 6
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
