.class public final Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/metadata/collector/MetadataCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sinch/metadata/collector/MetadataCollector<",
        "Ljava/lang/String;",
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0002H\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;",
        "Lcom/sinch/metadata/collector/MetadataCollector;",
        "",
        "Lcom/sinch/metadata/collector/BatteryLevelCollector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "batteryManager",
        "Landroid/os/BatteryManager;",
        "getBatteryManager",
        "()Landroid/os/BatteryManager;",
        "batteryManager$delegate",
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
.field private final batteryManager$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->context:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector$batteryManager$2;

    invoke-direct {p1, p0}, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector$batteryManager$2;-><init>(Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->batteryManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;)Landroid/content/Context;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getBatteryManager()Landroid/os/BatteryManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->batteryManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic collect()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->collect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final collect()Ljava/lang/String;
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/sinch/metadata/collector/BasicBatteryLevelCollector;->getBatteryManager()Landroid/os/BatteryManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
