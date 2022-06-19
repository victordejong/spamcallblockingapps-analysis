.class public Lcom/callapp/contacts/activity/records/SearchRecordsFragment;
.super Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

.field private d:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->c:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->d:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->d:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)",
            "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    new-instance v1, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;-><init>(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Ljava/lang/CharSequence;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Ljava/lang/CharSequence;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHeaderText()I
    .locals 1

    const v0, 0x7f1206ee

    return v0
.end method

.method public getEmptySearchResultText()I
    .locals 1

    const v0, 0x7f120159

    return v0
.end method

.method public getEmptyViewBoldTitle()I
    .locals 1

    const v0, 0x7f120146

    return v0
.end method

.method public getEmptyViewImage()I
    .locals 1

    const v0, 0x7f080347

    return v0
.end method

.method public getEmptyViewTitle()I
    .locals 1

    const v0, 0x7f120145

    return v0
.end method

.method public getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
    .locals 1

    .line 35
    new-instance v0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;-><init>(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)V

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->onAttach(Landroid/content/Context;)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->c:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    .line 53
    invoke-interface {p1}, Lcom/callapp/contacts/activity/records/RecordsActivityActions;->getUnStarredRecords()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->c:Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/records/RecordsActivityActions;->getStarredRecords()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Parent activity must implement RecordsActivityActions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->d:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/callapp/contacts/activity/fragments/SearchBarFilterFragment;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->d:Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->pausePlayer()V

    :cond_0
    return-void
.end method
