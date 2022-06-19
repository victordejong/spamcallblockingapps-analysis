.class public final synthetic Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;->f$1:Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/verizon/ads/utils/-$$Lambda$HttpUtils$-kAqPm-sBqlo-mqoTXkCW6K-vQQ;->f$1:Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;

    invoke-static {v0, v1}, Lcom/verizon/ads/utils/HttpUtils;->lambda$-kAqPm-sBqlo-mqoTXkCW6K-vQQ(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestListener;)V

    return-void
.end method
