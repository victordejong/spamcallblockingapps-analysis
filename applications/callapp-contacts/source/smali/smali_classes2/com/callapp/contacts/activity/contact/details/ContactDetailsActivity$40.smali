.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 2622
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2625
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 2627
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$4700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    return-void
.end method
