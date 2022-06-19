.class final Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BirthdaysAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 1

    .line 163
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

.method final a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final doTask()V
    .locals 10

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1182
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v4

    .line 1183
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1184
    iget-object v0, v4, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1185
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget-object v2, v4, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1187
    iget-object v2, v4, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    .line 1188
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1190
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1191
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1192
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1193
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v3

    .line 1197
    :goto_0
    invoke-virtual {v0, v8}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1199
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/String;)V

    return-void

    .line 1201
    :cond_1
    iget-object v2, v4, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->displayName:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 1202
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->b(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 1203
    :goto_2
    new-instance v2, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-direct {v2, v8, v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Integer;)V

    .line 1204
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/String;Lcom/callapp/contacts/manager/cache/CacheManager$PhotoUrlCache;)V

    if-nez v7, :cond_4

    if-eqz v9, :cond_5

    .line 1206
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;

    move-object v2, v1

    move-object v3, p0

    move v5, v7

    move v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void

    .line 173
    :cond_6
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->doTask()V

    return-void
.end method
