.class Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$2;
.super Lcom/verizon/ads/events/EventReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$2;->b:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;

    invoke-direct {p0}, Lcom/verizon/ads/events/EventReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent$645b3fe5(Ljava/lang/Object;)V
    .locals 1

    .line 145
    instance-of v0, p1, Lcom/verizon/ads/support/ImpressionEvent;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/verizon/ads/support/ImpressionEvent;

    .line 148
    invoke-static {p1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/support/ImpressionEvent;)V

    return-void

    .line 151
    :cond_0
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Unable to process unknown impression event type"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void
.end method
