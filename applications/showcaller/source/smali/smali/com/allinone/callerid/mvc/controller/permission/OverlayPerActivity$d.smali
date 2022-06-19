.class Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;
.super Ljava/lang/Object;
.source "OverlayPerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->Y(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;->Z(Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "over_per_dialig_skip"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
