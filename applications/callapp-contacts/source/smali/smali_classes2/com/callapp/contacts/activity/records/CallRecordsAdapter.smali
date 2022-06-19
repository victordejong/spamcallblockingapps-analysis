.class public Lcom/callapp/contacts/activity/records/CallRecordsAdapter;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter<",
        "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
        "Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;",
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
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;",
            "Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;-><init>(Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 34
    iput-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 2

    .line 20
    check-cast p1, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    check-cast p2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 1060
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V

    .line 1062
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->isInMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p1, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1068
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getCallAppRow()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    .line 1070
    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1082
    new-instance v1, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;-><init>(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Call recorders list"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 39
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALL_RECORDER_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 2049
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_RECORD:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2050
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2051
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_TEXT_WITH_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2053
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2055
    new-instance p2, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V

    return-object p2
.end method
