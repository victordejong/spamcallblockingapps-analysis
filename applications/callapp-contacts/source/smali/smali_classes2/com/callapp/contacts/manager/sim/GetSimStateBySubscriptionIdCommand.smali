.class Lcom/callapp/contacts/manager/sim/GetSimStateBySubscriptionIdCommand;
.super Lcom/callapp/contacts/manager/sim/GetSimStateCommand;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/sim/GetSimStateCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/telephony/SubscriptionInfo;)I
    .locals 0

    .line 16
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    return p1
.end method
