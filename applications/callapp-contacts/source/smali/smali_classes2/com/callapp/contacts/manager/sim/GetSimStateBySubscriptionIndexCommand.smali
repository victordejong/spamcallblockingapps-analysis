.class public Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIndexCommand;
.super Lcom/callapp/contacts/manager/sim/GetSimStateCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/GetSimStateCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    .line 17
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic a(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/manager/sim/GetSimStateCommand;->a(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method
