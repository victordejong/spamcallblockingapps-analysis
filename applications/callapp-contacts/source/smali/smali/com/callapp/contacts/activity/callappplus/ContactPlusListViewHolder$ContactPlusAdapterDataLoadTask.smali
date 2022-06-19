.class final Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ContactPlusAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic e:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)V
    .locals 1

    .line 322
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->e:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 325
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    .line 327
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-static {}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->n()Landroidx/b/e;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->n()Landroidx/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
