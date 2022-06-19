.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->loadHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$2400(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$2500(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$2400(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 327
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;->access$2500(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;->p(Lcom/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setDefaultProfilePic()V

    return-void
.end method
