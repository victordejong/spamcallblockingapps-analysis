.class Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;
.super Ljava/lang/Object;
.source "CallScreenSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d$a;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;

    iget-object v1, v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity$d;->d:Lcom/allinone/callerid/callscreen/activitys/CallScreenSettingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
