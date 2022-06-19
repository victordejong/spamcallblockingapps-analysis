.class public final enum Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastXmlManagerAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/VastXmlManagerAggregator$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

.field public static final enum PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

.field public static final synthetic a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    new-instance v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const-string v3, "PORTRAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    .locals 1

    const-class v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->a:[Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/VastXmlManagerAggregator$a;

    return-object v0
.end method
