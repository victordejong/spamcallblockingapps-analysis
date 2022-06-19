.class final Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$1;
.super Lcom/verizon/ads/Job;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/verizon/ads/Job;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final run()V
    .locals 0

    .line 500
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a()V

    return-void
.end method
