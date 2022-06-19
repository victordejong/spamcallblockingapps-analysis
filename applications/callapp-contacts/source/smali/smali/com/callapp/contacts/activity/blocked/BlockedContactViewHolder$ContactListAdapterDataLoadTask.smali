.class final Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContactListAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$1;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->b:Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 122
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    .line 124
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->setDeviceId(J)V

    .line 126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return v0
.end method
