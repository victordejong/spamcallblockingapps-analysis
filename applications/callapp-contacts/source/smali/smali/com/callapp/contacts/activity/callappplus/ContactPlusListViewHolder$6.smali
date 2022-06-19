.class Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;ILcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    iput p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->b()V

    const/4 v0, 0x1

    .line 256
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 258
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;

    .line 259
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->a:I

    .line 258
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$6;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "callAppPlus"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
