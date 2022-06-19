.class public Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter<",
        "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
        "Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListAdapter;-><init>(Ljava/util/List;)V

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->d:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->isInMultiSelectMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->a(ZLjava/util/List;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 7

    const/4 v0, 0x1

    .line 70
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->isInMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->b(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->notifyDataSetChanged()V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5082
    iget-object v2, p2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->c:Lcom/callapp/framework/phone/Phone;

    iget-wide v3, p2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->contactId:J

    iget-object v5, p2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->normalNumbers:Ljava/util/List;

    new-instance v6, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;

    invoke-direct {v6, p0, v1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter$1;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/Context;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    return-void
.end method

.method public static synthetic lambda$ScDe18R2KX-e4xF6tnIgKZb6EEc(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->b(Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    return-void
.end method

.method public static synthetic lambda$Z3HDtiu-YyDLAO_UZLQEBdk1c34(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->a(Landroid/view/View;Lcom/callapp/contacts/activity/calllog/SingleCallLogData;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 6

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;

    move-object v1, p2

    check-cast v1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    .line 2068
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    new-instance v3, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$ScDe18R2KX-e4xF6tnIgKZb6EEc;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$ScDe18R2KX-e4xF6tnIgKZb6EEc;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;)V

    new-instance v4, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$Z3HDtiu-YyDLAO_UZLQEBdk1c34;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/-$$Lambda$ContactCallLogAdapter$Z3HDtiu-YyDLAO_UZLQEBdk1c34;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;)V

    .line 2078
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->isInMultiSelectMode()Z

    move-result v5

    .line 2068
    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/SingleCallLogData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Lcom/callapp/contacts/activity/interfaces/OnListItemInteractionsListener;Z)V

    return-void
.end method

.method public getAllCallLogIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->getItemCount()I

    move-result v0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    iget v3, v3, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->e:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :catch_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12028c

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public getSelectedRowsCallLogIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->getCheckedRows()Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    .line 128
    iget v2, v2, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 1

    .line 3059
    new-instance p2, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;

    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_TEXT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3084
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3060
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_LOG:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4079
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3061
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5074
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 3063
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->d:Ljava/lang/String;

    return-void
.end method
