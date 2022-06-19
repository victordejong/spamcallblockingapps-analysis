.class final Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CallLogAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$1;)V
    .locals 0

    .line 378
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 1

    .line 381
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 382
    new-instance v0, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    .line 383
    new-instance v0, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 389
    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 390
    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 8

    .line 397
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    .line 399
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    .line 401
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v1

    if-nez v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    iput-wide v2, v1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->contactId:J

    .line 409
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->displayName:Ljava/lang/String;

    .line 414
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 416
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-static {v1}, Lcom/callapp/framework/phone/PhoneNumberUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    invoke-static {v5}, Lcom/callapp/framework/phone/PhoneNumberUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 421
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->o()Landroidx/b/e;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->p()Landroidx/b/e;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->p()Landroidx/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;JLcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
