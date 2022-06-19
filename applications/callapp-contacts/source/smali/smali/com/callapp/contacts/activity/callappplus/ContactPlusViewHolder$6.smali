.class Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;ILcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    iput p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->b()V

    const/4 v0, 0x1

    .line 274
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 276
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    .line 277
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->a:I

    .line 276
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$6;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SEARCH:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "search"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 281
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus"

    const-string v1, "ClickProfileCard"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
