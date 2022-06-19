.class final Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RemindersAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 146
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 152
    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
