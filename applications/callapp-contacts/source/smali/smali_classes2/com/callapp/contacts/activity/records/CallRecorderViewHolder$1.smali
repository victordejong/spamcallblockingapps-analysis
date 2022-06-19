.class Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic b:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;->b:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 128
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 129
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Call recorders list"

    const-string v2, "start call record dialog"

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;->b:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;->b:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-interface {p1, v1, v0}, Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Z)V

    :cond_0
    return-void
.end method
