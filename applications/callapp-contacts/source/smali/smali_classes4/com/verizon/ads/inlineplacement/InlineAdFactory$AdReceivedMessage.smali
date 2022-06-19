.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdReceivedMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

.field final b:Lcom/verizon/ads/AdSession;

.field final c:Lcom/verizon/ads/ErrorInfo;

.field final d:Z


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 1117
    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    .line 1118
    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    .line 1119
    iput-boolean p4, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdReceivedMessage;->d:Z

    return-void
.end method
