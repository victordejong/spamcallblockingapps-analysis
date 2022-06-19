.class public Lcom/callapp/contacts/util/model/PriorityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J
    .locals 4

    .line 19
    instance-of v0, p1, Lcom/callapp/common/model/PriorityInterface;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/callapp/common/model/PriorityInterface;

    invoke-interface {p1}, Lcom/callapp/common/model/PriorityInterface;->getPriority()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/DataSource;->priority:J

    :cond_1
    return-wide v0
.end method
