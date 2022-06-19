.class Lcom/allinone/callerid/dialog/n$a;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/n;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/dialog/n;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "custom_share_total_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p1}, Lcom/allinone/callerid/dialog/n;->a(Lcom/allinone/callerid/dialog/n;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/ShareAppInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ShareAppInfo;->getAppPkgName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "com.facebook.orca"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string p4, "com.facebook.katana"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :sswitch_2
    const-string p4, "com.twitter.android"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :sswitch_3
    const-string p4, "com.android.mms"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :sswitch_4
    const-string p4, "com.google.android.apps.messaging"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :sswitch_5
    const-string p4, "com.whatsapp"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    :cond_0
    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    const-string p1, "sms_share_click"

    if-eq p2, v0, :cond_2

    if-eq p2, p5, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "facebook_messenger_share_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "whatsapp_share_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "twitter_share_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "facebook_share_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance p2, Landroid/content/ComponentName;

    iget-object p4, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p4}, Lcom/allinone/callerid/dialog/n;->a(Lcom/allinone/callerid/dialog/n;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/allinone/callerid/bean/ShareAppInfo;

    invoke-virtual {p4}, Lcom/allinone/callerid/bean/ShareAppInfo;->getAppPkgName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p5}, Lcom/allinone/callerid/dialog/n;->a(Lcom/allinone/callerid/dialog/n;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/bean/ShareAppInfo;

    invoke-virtual {p3}, Lcom/allinone/callerid/bean/ShareAppInfo;->getAppLauncherClassName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p2}, Lcom/allinone/callerid/dialog/n;->b(Lcom/allinone/callerid/dialog/n;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_b

    const/16 p3, 0x18

    const-string p4, "android.intent.extra.STREAM"

    if-eq p2, v3, :cond_9

    if-eq p2, v2, :cond_7

    goto/16 :goto_2

    :cond_7
    :try_start_2
    const-string p2, "audio/*"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_8

    .line 14
    iget-object p2, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->c(Lcom/allinone/callerid/dialog/n;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/n;->d(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, p5}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 15
    :cond_8
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->d(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    const-string p2, "image/*"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p3, :cond_a

    .line 18
    iget-object p2, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->c(Lcom/allinone/callerid/dialog/n;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {v0}, Lcom/allinone/callerid/dialog/n;->d(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, p5}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 19
    :cond_a
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->d(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_b
    const-string p2, "text/plain"

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string p2, "android.intent.extra.SUBJECT"

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->e(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p3}, Lcom/allinone/callerid/dialog/n;->f(Lcom/allinone/callerid/dialog/n;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    iget-object p2, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-static {p2}, Lcom/allinone/callerid/dialog/n;->c(Lcom/allinone/callerid/dialog/n;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/dialog/n$a;->d:Lcom/allinone/callerid/dialog/n;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c4004a1 -> :sswitch_5
        -0x553d8071 -> :sswitch_4
        -0x29760a19 -> :sswitch_3
        0xa20b87 -> :sswitch_2
        0x2a9664f1 -> :sswitch_1
        0x36211dfc -> :sswitch_0
    .end sparse-switch
.end method
