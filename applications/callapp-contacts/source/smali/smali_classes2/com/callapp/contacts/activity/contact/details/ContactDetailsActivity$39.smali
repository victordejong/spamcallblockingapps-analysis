.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 2580
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 9

    .line 2583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2584
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v3, "cdInterstitialMinCallTimeInSec"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 2585
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->a:Lcom/callapp/contacts/model/call/CallData;

    .line 2586
    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2587
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-string v1, "showing interstitial"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2589
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
