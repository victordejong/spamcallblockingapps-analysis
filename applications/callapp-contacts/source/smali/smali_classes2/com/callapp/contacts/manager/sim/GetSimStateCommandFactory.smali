.class Lcom/callapp/contacts/manager/sim/GetSimStateCommandFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/telephony/SubscriptionManager;)Lcom/callapp/contacts/manager/sim/GetSimStateCommand;
    .locals 9

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 13
    new-instance p0, Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "getSimStateForSlotIndex"

    const-string v2, "getSimStateForSlotIdx"

    const-string v3, "getSimStateForSubscriber"

    .line 16
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 18
    aget-object v6, v3, v5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 19
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-static {p0, v6, v7}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 26
    new-instance p0, Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIndexCommand;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIndexCommand;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 28
    :cond_3
    new-instance p0, Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIdCommand;

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIdCommand;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
