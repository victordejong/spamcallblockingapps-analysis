.class public Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactPlusAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic e:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)V
    .locals 1

    .line 376
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;->e:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;->a(Lcom/callapp/contacts/loader/api/ContactLoader;)V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 379
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z

    .line 381
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    invoke-static {}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->n()Landroidx/b/e;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->n()Landroidx/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask$1;-><init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
