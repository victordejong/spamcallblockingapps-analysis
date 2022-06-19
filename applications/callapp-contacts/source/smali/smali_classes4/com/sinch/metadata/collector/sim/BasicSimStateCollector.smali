.class public final Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Lcom/sinch/metadata/model/sim/SimState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "Lcom/sinch/metadata/model/sim/SimState;",
        "Lcom/sinch/metadata/collector/SimsStateCollector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "getTelephonyManager",
        "()Landroid/telephony/TelephonyManager;",
        "telephonyManager$delegate",
        "Lkotlin/Lazy;",
        "collect",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final telephonyManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->context:Landroid/content/Context;

    .line 15
    new-instance p1, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector$telephonyManager$2;

    invoke-direct {p1, p0}, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector$telephonyManager$2;-><init>(Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->telephonyManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->telephonyManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method


# virtual methods
.method public final collect()Lcom/sinch/metadata/model/sim/SimState;
    .locals 2

    .line 19
    sget-object v0, Lcom/sinch/metadata/model/sim/SimState;->Companion:Lcom/sinch/metadata/model/sim/SimState$Companion;

    invoke-direct {p0}, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sinch/metadata/model/sim/SimState$Companion;->basedOn(I)Lcom/sinch/metadata/model/sim/SimState;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/sim/BasicSimStateCollector;->collect()Lcom/sinch/metadata/model/sim/SimState;

    move-result-object v0

    return-object v0
.end method
