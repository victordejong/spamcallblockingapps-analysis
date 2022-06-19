.class public Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;
.super Lcom/callapp/contacts/manager/sim/GetSimStateCommand;
.source "SourceFile"


# instance fields
.field private b:Lcom/callapp/contacts/manager/phone/PhoneManager;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/GetSimStateCommand;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;->b:Lcom/callapp/contacts/manager/phone/PhoneManager;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/telephony/SubscriptionInfo;)I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;->a:Ljava/lang/String;

    const-string v1, "getSimStateForSlotIndex"

    const-string v2, "getSimStateForSlotIdx"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    return p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    return p1
.end method

.method public final a(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    if-eqz p2, :cond_0

    .line 27
    iget-object p1, p0, Lcom/callapp/contacts/manager/sim/GetSimStateByTelephonyManagerCommand;->b:Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getSimStateForSubscriptionId(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x6

    return p1
.end method
