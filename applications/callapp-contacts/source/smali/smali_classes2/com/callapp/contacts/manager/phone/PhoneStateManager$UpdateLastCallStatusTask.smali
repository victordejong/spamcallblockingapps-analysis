.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateLastCallStatusTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 2171
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;)V
    .locals 0

    .line 2171
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 8

    const/4 v0, 0x0

    .line 2175
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Z)Lcom/callapp/contacts/util/CallLogEntry;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 3229
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 3230
    :cond_0
    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    .line 3231
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_3

    .line 3235
    invoke-virtual {v1}, Lcom/callapp/contacts/util/CallLogEntry;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/util/CallLogEntry;->getNumber()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_8

    .line 3237
    invoke-virtual {v1}, Lcom/callapp/contacts/util/CallLogEntry;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    invoke-virtual {v1}, Lcom/callapp/contacts/util/CallLogEntry;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2400(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_b

    .line 2179
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2181
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2000(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;)V

    .line 2182
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)V

    .line 2185
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2186
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;)V

    .line 2201
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_a
    return-void

    .line 2205
    :cond_b
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2207
    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 2208
    new-instance v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;

    invoke-direct {v3, p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;Lcom/callapp/contacts/model/call/CallData;)V

    .line 2213
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 2218
    :cond_c
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)V

    .line 2220
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2302(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z

    return-void
.end method
