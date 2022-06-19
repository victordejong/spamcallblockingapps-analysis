.class Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;
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

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getDeviceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->r:Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/base/BaseContactHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$OnDataLoadListener;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    :cond_1
    return-void
.end method
