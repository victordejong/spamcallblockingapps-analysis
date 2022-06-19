.class Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Z)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;->dismiss()V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    new-instance v2, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    invoke-direct {v2, p1, p2, v1}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;-><init>(Lcom/callapp/contacts/model/objectbox/CallRecorder;ZLcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;)V

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$2;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
