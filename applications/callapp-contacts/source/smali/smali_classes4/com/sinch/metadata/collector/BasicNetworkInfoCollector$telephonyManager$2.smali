.class final Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/telephony/TelephonyManager;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/telephony/TelephonyManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;


# direct methods
.method constructor <init>(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;->this$0:Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;->this$0:Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;

    invoke-static {v0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;->access$getContext$p(Lcom/sinch/metadata/collector/BasicNetworkInfoCollector;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/BasicNetworkInfoCollector$telephonyManager$2;->invoke()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method
