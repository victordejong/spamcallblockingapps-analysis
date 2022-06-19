.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;
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

.field final synthetic b:Lcom/callapp/contacts/model/DataChangedInfo;

.field final synthetic c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;Lcom/callapp/contacts/model/DataChangedInfo;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->b:Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const-string v1, "ClickCard"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 213
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "MissCall"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_1

    .line 215
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "NoAnswer"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$3;->b:Lcom/callapp/contacts/model/DataChangedInfo;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->MISSED_CALL_NOT_ANSWERED:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "missed call"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
