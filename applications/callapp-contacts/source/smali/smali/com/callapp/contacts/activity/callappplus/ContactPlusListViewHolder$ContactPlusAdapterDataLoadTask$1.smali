.class Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->getDeviceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask;->e:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Z)V

    :cond_0
    return-void
.end method
