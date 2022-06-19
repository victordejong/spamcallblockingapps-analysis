.class final Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 774
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Reporting startup -- requesting upload"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->UPLOADING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void
.end method
