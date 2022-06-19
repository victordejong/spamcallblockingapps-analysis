.class Lcom/callapp/contacts/activity/base/BaseContactHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/framework/phone/Phone;

.field final synthetic d:J

.field final synthetic e:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field final synthetic f:Lcom/callapp/contacts/activity/base/BaseContactHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->c:Lcom/callapp/framework/phone/Phone;

    iput-wide p5, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->d:J

    iput-object p7, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->e:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object v1, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder;)Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->cancel()V

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->b:Ljava/lang/String;

    .line 1355
    iget-object v0, v0, Lcom/callapp/contacts/manager/cache/CacheManager;->c:Landroidx/b/e;

    invoke-virtual {v0, v1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v0

    .line 2354
    iput-object v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 2449
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 3371
    iput-boolean v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    const/16 v0, 0x12c

    .line 3491
    iput v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    .line 179
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder;)Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->setPhone(Lcom/callapp/framework/phone/Phone;)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder;)Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    move-result-object v0

    iget-wide v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->setDeviceId(J)V

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder;)Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->setCacheKey(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->f:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->e:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/base/ScrollEvents;->isScrolling()Z

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$1;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->a(ZLcom/callapp/framework/phone/Phone;)V

    return-void
.end method
