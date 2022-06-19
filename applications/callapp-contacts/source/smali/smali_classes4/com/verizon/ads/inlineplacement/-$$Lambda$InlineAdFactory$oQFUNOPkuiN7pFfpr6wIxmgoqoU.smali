.class public final synthetic Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;


# instance fields
.field public final synthetic f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

.field public final synthetic f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

.field public final synthetic f$2:Lcom/verizon/ads/AdSession;


# direct methods
.method public synthetic constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$2:Lcom/verizon/ads/AdSession;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/verizon/ads/ErrorInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$0:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$1:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/-$$Lambda$InlineAdFactory$oQFUNOPkuiN7pFfpr6wIxmgoqoU;->f$2:Lcom/verizon/ads/AdSession;

    invoke-static {v0, v1, v2, p1}, Lcom/verizon/ads/inlineplacement/InlineAdFactory;->lambda$oQFUNOPkuiN7pFfpr6wIxmgoqoU(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
