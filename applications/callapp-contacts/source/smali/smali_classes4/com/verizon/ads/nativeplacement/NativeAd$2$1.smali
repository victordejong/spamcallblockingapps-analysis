.class Lcom/verizon/ads/nativeplacement/NativeAd$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeplacement/NativeAd$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeplacement/NativeAd$2;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd$2;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$2$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$2;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd$2;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {v0}, Lcom/verizon/ads/nativeplacement/NativeAd;->d(Lcom/verizon/ads/nativeplacement/NativeAd;)V

    return-void
.end method
