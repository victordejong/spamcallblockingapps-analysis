.class Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;JLcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    iput-wide p2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p5, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    iget-wide v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->a:J

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    iget-object v0, v0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    invoke-static {v2}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask$1;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;

    iget-object v3, v3, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    invoke-static {v3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->b(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;)Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;)V

    :cond_0
    return-void
.end method
