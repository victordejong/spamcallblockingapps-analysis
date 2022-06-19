.class Lcom/allinone/callerid/mvc/controller/MainActivity$j0;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j0"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x65d0b6a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x27601ab5

    if-eq v0, v1, :cond_1

    const v1, 0x6feeb731

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.allinone.callerid.CLOSE_AD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "com.allinone.callerid.IDENTIFY_NUMBER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "com.allinone.callerid.SET_SHORTCUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_1

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    goto :goto_1

    .line 4
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->T0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    goto :goto_1

    .line 5
    :cond_6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->m0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/customview/AVLoadingIndicatorView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/customview/AVLoadingIndicatorView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$j0;->a:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->y0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method
