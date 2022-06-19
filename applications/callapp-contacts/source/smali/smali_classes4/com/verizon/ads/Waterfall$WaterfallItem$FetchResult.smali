.class public final Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/Waterfall$WaterfallItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FetchResult"
.end annotation


# instance fields
.field public final adContent:Lcom/verizon/ads/AdContent;

.field public final errorInfo:Lcom/verizon/ads/ErrorInfo;


# direct methods
.method public constructor <init>(Lcom/verizon/ads/AdContent;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->errorInfo:Lcom/verizon/ads/ErrorInfo;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->adContent:Lcom/verizon/ads/AdContent;

    .line 58
    iput-object p1, p0, Lcom/verizon/ads/Waterfall$WaterfallItem$FetchResult;->errorInfo:Lcom/verizon/ads/ErrorInfo;

    return-void
.end method
