.class public final synthetic Lcom/facebook/internal/m;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/facebook/internal/l$b;->values()[Lcom/facebook/internal/l$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/internal/m;->a:[I

    sget-object v1, Lcom/facebook/internal/l$b;->Core:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->AppEvents:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->CodelessEvents:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->RestrictiveDataFiltering:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->Instrument:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->CrashReport:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->CrashShield:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->ThreadCheck:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->ErrorReport:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->AAM:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->PrivacyProtection:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->SuggestedEvents:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->IntelligentIntegrity:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->ModelRequest:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->EventDeactivation:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->OnDeviceEventProcessing:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->IapLogging:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->IapLoggingLib2:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->Monitoring:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->Login:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->Share:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1

    sget-object v1, Lcom/facebook/internal/l$b;->Places:Lcom/facebook/internal/l$b;

    invoke-virtual {v1}, Lcom/facebook/internal/l$b;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1

    return-void
.end method
