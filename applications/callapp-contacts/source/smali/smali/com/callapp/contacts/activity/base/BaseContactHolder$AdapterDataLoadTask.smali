.class public abstract Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseContactHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AdapterDataLoadTask"
.end annotation


# instance fields
.field protected final a:Lcom/callapp/contacts/loader/api/ContactLoader;

.field public b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    .line 54
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 55
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;->getLoaderLoadFields()Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 58
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCacheKey()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
.end method

.method public a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    .line 149
    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p3

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 78
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask$2;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public doCancel()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 121
    invoke-super {p0}, Lcom/callapp/contacts/manager/task/Task;->doCancel()V

    return-void
.end method

.method public doTask()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->c:Lcom/callapp/contacts/activity/base/BaseContactHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseContactHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    :cond_0
    return-void
.end method

.method public getDeviceId()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->e:J

    return-wide v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->d:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->e:J

    return-void
.end method

.method public setPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-void
.end method
