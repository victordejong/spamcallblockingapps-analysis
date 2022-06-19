.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateStorePersonalCoverIfNeeded(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 2889
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2892
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->hasPersonalCover:Z

    if-nez v0, :cond_1

    .line 2893
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dB:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2894
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHasPersonalStoreItemTypeCover(Z)V

    .line 2895
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {v0, v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 3376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 4359
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    .line 2895
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_1

    .line 2897
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHasPersonalStoreItemTypeCover(Z)V

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2902
    const-class v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 2904
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 2907
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    return-void
.end method
