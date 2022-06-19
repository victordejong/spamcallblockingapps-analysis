.class Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->loadHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1200(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1200(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 190
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$4;->a:Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;->access$1000(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard;)Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;->i(Lcom/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setDefaultProfilePic()V

    return-void
.end method
