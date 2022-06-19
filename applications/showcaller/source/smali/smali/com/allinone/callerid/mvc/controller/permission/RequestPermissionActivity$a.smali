.class Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a;
.super Ljava/lang/Object;
.source "RequestPermissionActivity.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5f00\u542f\u4e86\u6743\u9650"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->m2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;->W(Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;Z)Z

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permission_request_ziqi_show"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/allinone/callerid/util/g0;

    invoke-direct {v0}, Lcom/allinone/callerid/util/g0;-><init>()V

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/g0;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/RequestPermissionActivity;)V

    :goto_0
    return-void
.end method
