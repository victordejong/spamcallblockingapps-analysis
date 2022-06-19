.class Lcom/allinone/callerid/start/CommonSetting$g;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/CommonSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CommonSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$g;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$g;->d:Lcom/allinone/callerid/start/CommonSetting;

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/start/CommonSetting;->a0(Lcom/allinone/callerid/start/CommonSetting;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/start/CommonSetting$g;->d:Lcom/allinone/callerid/start/CommonSetting;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
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
