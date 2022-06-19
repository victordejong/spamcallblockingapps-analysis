.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 257
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickOverlayMoreOptions"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$300(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 260
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 261
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$700(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$600(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getMissedCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 263
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

    .line 266
    :goto_0
    new-instance p1, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->b:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$6;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v2, v1, v0}, Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager;->a(Landroid/content/Context;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/MissedCallMoreManager$OnMissedCallMoreDialogItemClickListener;Z)V

    :cond_1
    return-void
.end method
