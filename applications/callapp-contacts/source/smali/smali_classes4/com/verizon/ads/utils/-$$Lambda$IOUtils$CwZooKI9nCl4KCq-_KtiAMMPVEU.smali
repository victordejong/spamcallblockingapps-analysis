.class public final synthetic Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Lcom/verizon/ads/utils/IOUtils$DownloadListener;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$3:Lcom/verizon/ads/utils/IOUtils$DownloadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/verizon/ads/utils/-$$Lambda$IOUtils$CwZooKI9nCl4KCq-_KtiAMMPVEU;->f$3:Lcom/verizon/ads/utils/IOUtils$DownloadListener;

    invoke-static {v0, v1, v2, v3}, Lcom/verizon/ads/utils/IOUtils;->lambda$CwZooKI9nCl4KCq-_KtiAMMPVEU(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/verizon/ads/utils/IOUtils$DownloadListener;)V

    return-void
.end method
