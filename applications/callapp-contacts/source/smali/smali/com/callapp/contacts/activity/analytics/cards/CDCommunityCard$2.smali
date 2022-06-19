.class Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->loadHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2200(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->v(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$2200(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0601ec

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 1371
    iput-boolean v1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 203
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->v(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setDefaultProfilePic()V

    .line 209
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->w(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 2371
    iput-boolean v1, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 211
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;->access$000(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;->w(Lcom/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setDefaultProfilePic()V

    return-void
.end method
