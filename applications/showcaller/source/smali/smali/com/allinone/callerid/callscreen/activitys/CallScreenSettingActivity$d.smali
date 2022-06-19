.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;
.super Ljava/lang/Thread;
.source "CallScreenSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/video-cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->l(Ljava/io/File;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
