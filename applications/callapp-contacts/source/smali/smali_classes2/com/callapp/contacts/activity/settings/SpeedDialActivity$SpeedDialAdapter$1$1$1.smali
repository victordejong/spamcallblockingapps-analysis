.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1;->this$2:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialViewHolder;->d:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$1$1$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v2

    .line 1354
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 196
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    return-void
.end method
