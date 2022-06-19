.class Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->getInvalidateDataListener()Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
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

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/records/RecordsActivityActions;->getUnStarredRecords()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Ljava/util/List;)Ljava/util/List;

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/records/RecordsActivityActions;->getStarredRecords()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->b(Lcom/callapp/contacts/activity/records/SearchRecordsFragment;Ljava/util/List;)Ljava/util/List;

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsFragment$1;->a:Lcom/callapp/contacts/activity/records/SearchRecordsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->getCurrentFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/records/SearchRecordsFragment;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
