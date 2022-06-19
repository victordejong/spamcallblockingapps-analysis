.class Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 174
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->a:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method
