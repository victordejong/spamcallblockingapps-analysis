.class public final synthetic Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

.field public final synthetic f$1:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

.field public final synthetic f$2:Lcom/callapp/contacts/model/objectbox/CallRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$0:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$1:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$2:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$0:Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$1:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/records/-$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8;->f$2:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;->lambda$QZy841U4qunkqqwXCLxv6oFNBo8(Lcom/callapp/contacts/activity/records/SearchRecordsAdapter;Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
