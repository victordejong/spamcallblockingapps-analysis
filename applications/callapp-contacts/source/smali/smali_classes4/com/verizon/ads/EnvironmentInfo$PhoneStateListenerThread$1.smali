.class Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;


# direct methods
.method constructor <init>(Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread$1;->a:Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 974
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    invoke-static {p1}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a(I)I

    return-void

    .line 977
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    invoke-static {p1}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a(I)I

    return-void
.end method
