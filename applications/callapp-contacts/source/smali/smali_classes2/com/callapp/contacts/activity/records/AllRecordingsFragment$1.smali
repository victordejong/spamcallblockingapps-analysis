.class Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->refreshData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->a(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/records/RecordsActivityActions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/records/RecordsActivityActions;->getAllRecords()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;-><init>(Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
