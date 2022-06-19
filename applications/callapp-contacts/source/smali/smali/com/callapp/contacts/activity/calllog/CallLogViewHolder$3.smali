.class Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Z)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;->b:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;->b:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;->b:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v1

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$3;->a:Z

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;Z)V

    :cond_0
    return-void
.end method
