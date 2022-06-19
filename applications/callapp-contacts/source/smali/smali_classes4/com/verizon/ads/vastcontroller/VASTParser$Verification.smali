.class public Lcom/verizon/ads/vastcontroller/VASTParser$Verification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Verification"
.end annotation


# instance fields
.field public javaScriptResource:Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;

.field public trackingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final vendor:Ljava/lang/String;

.field public verificationParameters:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->vendor:Ljava/lang/String;

    return-void
.end method
