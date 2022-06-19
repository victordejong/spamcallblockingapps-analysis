.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 191
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object p1

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    new-instance p1, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-static {v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;->b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a(Landroid/content/Context;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;Z)V

    .line 199
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p1

    const/4 v0, 0x3

    const-string v1, "ClickMoreOptions"

    if-ne p1, v0, :cond_1

    .line 200
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "MissCall"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$2;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result p1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_2

    .line 202
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "NoAnswer"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
