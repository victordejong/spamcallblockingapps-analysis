.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;)V
    .locals 0

    .line 2589
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2592
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2593
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 2594
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "cdInterstitialShowAnalytics"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2595
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Ad"

    const-string v2, "InterstitialShowCalled"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39$1;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const v1, 0x7f010026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
