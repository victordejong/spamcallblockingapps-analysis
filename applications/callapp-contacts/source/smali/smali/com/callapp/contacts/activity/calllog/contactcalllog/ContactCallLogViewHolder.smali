.class public Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;
.super Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;
.source "SourceFile"


# instance fields
.field private v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private final w:Landroid/widget/TextView;

.field private final x:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field private final y:Landroid/widget/ImageView;

.field private final z:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0a0766

    .line 35
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->w:Landroid/widget/TextView;

    const v1, 0x7f0601cc

    .line 36
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0224

    .line 37
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppCheckBox;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->x:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const v0, 0x7f0a081a

    .line 38
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->y:Landroid/widget/ImageView;

    const v0, 0x7f0a0431

    .line 39
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->z:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)V
    .locals 4

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Long pressed on calling from contact call log"

    const-string v3, "Long Click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0, p2, p1}, Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;->onListItemInteracted(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)Z
    .locals 0

    .line 69
    invoke-interface {p0, p2, p1}, Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;->onListItemInteracted(Landroid/view/View;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$SVtSIMuXEcKxOu2MrmnJTvGNvX8(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->a(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$p8wKhphYQvDn9jH2MUD5WWhOffM(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->b(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            ">;",
            "Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener<",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 46
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->z:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    iget v0, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->g:I

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->getCallHistoryIcon(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setEventIcon(II)V

    .line 48
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getDuration()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->setDurationText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p2, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->d:Ljava/util/Date;

    invoke-static {p2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->displayName:Ljava/lang/String;

    .line 52
    iget-object p2, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->displayName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p2, p1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 55
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p2

    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq p2, v0, :cond_0

    .line 56
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->y:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->y:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->b(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->y:Landroid/widget/ImageView;

    const v0, 0x7f0601cc

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->y:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->x:Lcom/callapp/contacts/widget/CallAppCheckBox;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setVisibility(I)V

    if-eqz p5, :cond_2

    .line 65
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->x:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->isChecked()Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    .line 68
    :cond_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance p5, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;

    invoke-direct {p5, p4, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM;-><init>(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    invoke-virtual {p2, p5}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance p4, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$SVtSIMuXEcKxOu2MrmnJTvGNvX8;

    invoke-direct {p4, p3, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogViewHolder$SVtSIMuXEcKxOu2MrmnJTvGNvX8;-><init>(Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    invoke-virtual {p2, p4}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDurationText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
