.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendToDestinationMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

.field final b:Lcom/verizon/ads/ErrorInfo;

.field final c:Lcom/verizon/ads/AdSession;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    .line 1134
    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    .line 1135
    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/AdSession;

    return-void
.end method
