.class public final synthetic Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field public final synthetic f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$0:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$1:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$0:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$1:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$ContactPlusListViewHolder$q-rSN_ZvrLMpSWKgAj95bmDGQMw;->f$2:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->lambda$q-rSN_ZvrLMpSWKgAj95bmDGQMw(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Landroid/app/Activity;)V

    return-void
.end method
