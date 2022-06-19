.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;JLcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->c(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsData;->setLoadedName(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->d(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f070200

    const v3, 0x7f060088

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 206
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v4, 0x1

    .line 1449
    iput-boolean v4, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 208
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 2371
    iput-boolean v4, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 205
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBorder(II)V

    :cond_1
    return-void
.end method
