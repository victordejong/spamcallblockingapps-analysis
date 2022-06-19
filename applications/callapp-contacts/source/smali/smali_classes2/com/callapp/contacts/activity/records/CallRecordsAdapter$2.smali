.class Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->isInMultiSelectMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->a:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->c:Lcom/callapp/contacts/activity/records/CallRecordsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/CallRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$2;->b:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Z)V

    :cond_1
    return-void
.end method
