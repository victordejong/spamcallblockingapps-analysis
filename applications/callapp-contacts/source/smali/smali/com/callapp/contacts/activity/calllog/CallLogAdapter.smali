.class public Lcom/callapp/contacts/activity/calllog/CallLogAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/b;
.implements Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;",
        "La/a/a/a/a/b<",
        "Lcom/callapp/contacts/activity/base/SectionViewHolder;",
        ">;",
        "Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;"
    }
.end annotation


# instance fields
.field c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

.field private final d:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

.field private final e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field private f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private i:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

.field private j:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/base/ScrollEvents;ZLcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Z",
            "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;",
            "Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;",
            "Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;",
            "Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p5}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;)V

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->g:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->h:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 66
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->f:Z

    .line 67
    iput-object p6, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->d:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

    .line 68
    iput-object p7, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 69
    iput-object p8, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->j:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V
    .locals 2

    .line 7164
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7165
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 7167
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 7168
    invoke-virtual {p3, p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setChecked(Z)V

    .line 7169
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->d:Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;

    invoke-interface {p0}, Lcom/callapp/contacts/activity/interfaces/OnSelectChangeListener;->b()V

    return-void

    .line 7172
    :cond_0
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 7174
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result p0

    sget p2, Lcom/callapp/contacts/model/DataChangedInfo;->POSITION_ALL:I

    invoke-static {p0, p2, v1}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p0

    .line 7177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v0, "call log"

    invoke-static {p1, p3, v0, p0, p2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 7179
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->da:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 7180
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    sget-object p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    .line 6191
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d016e

    const/4 v2, 0x0

    .line 6192
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6193
    new-instance v0, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/SectionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final synthetic a(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 47
    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    .line 5198
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object p2

    .line 5199
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSectionId()I

    move-result v0

    .line 5200
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5201
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    .line 5202
    invoke-virtual {p2}, Lcom/callapp/contacts/model/SectionData;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 5203
    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 6079
    iget-object p2, p2, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b:Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5204
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getColor$255f288()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    .line 47
    check-cast p2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    if-eqz p2, :cond_3

    .line 1112
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/16 p2, 0x15

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 1121
    :cond_0
    check-cast p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->j:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    .line 2137
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V

    goto :goto_0

    .line 1118
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 2133
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void

    .line 1114
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->h:Lcom/callapp/contacts/activity/base/ScrollEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 1142
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getView()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    .line 1144
    new-instance v1, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$2;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->e:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->i:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->j:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V

    :cond_0
    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Contact List"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 215
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALL_LOG_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getSectionId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object p1

    return-object p1
.end method

.method public getItemAt(I)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
    .locals 16

    move/from16 v0, p1

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$3;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-string v6, ""

    const-string v10, ""

    move-object v2, v0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$3;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V

    .line 232
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 235
    new-instance v0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$4;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v7, ""

    const-string v11, ""

    move-object v3, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$4;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogAdapter;ILjava/util/Date;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;IILjava/lang/String;Lcom/callapp/contacts/manager/sim/SimManager$SimId;IJ)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->setSectionId(I)V

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    move-object/from16 v1, p0

    .line 244
    invoke-super {v1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x15

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x5

    return p1

    .line 104
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x0

    const v2, 0x7f0d00a7

    if-eq p2, v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3089
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3090
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d027b

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3091
    new-instance p2, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->i:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    return-object p2

    .line 3084
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 3085
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3086
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {v0, p1, p2, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    return-object v0

    .line 3077
    :cond_2
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_LOG:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3078
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3079
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3081
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 3082
    new-instance p2, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method

.method public setMultiSelectMode(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogAdapter;->f:Z

    return-void
.end method
