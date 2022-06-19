.class Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic b:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;->b:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;->b:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;->b:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->a(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Z)V

    :cond_0
    return-void
.end method
