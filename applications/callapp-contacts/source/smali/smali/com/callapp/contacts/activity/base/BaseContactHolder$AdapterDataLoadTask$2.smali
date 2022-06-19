.class Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getDeviceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseContactHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 101
    :cond_0
    new-instance v0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-static {v2}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;)V

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 105
    invoke-static {}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->m()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v3

    .line 1354
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 1449
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    const/16 v4, 0x12c

    .line 1491
    iput v4, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    .line 2371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 107
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->s:Z

    .line 108
    invoke-static {}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->m()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
