.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZCountryCode;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/p;->h(Landroid/content/Context;Lcom/allinone/callerid/model/EZCountryCode;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->M0(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->O0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->N0(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->D1()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
