.class public Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

.field private d:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;",
            "Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 37
    iput-object p3, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    return-object p0
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x1

    .line 90
    invoke-static {p3, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 91
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getCallAppRow()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->REGULAR:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return v0
.end method

.method public static synthetic lambda$QZy841U4qunkqqwXCLxv6oFNBo8(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 2

    .line 29
    check-cast p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 1074
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getViewType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    check-cast p1, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    .line 1083
    check-cast p2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 1085
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V

    .line 1087
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getCallAppRow()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    .line 1089
    new-instance v1, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;-><init>(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1095
    new-instance p1, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;-><init>(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 1077
    :cond_1
    check-cast p2, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    .line 1078
    check-cast p1, Lcom/callapp/contacts/activity/base/HeaderViewHolder;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/HeaderSectionData;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/HeaderViewHolder;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Call recorders list"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 42
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALL_RECORDER_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 2055
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060088

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    .line 2056
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0307

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2057
    new-instance v0, Lcom/callapp/contacts/activity/base/HeaderViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/base/HeaderViewHolder;-><init>(Landroid/view/View;I)V

    return-object v0

    :cond_0
    const/16 v0, 0xf

    if-ne p2, v0, :cond_1

    .line 2060
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_RECORD:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2061
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2062
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_TEXT_WITH_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2064
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2066
    new-instance p2, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
