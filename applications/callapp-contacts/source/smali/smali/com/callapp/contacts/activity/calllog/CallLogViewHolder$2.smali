.class Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->c:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    .line 257
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->c:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 260
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 261
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method
