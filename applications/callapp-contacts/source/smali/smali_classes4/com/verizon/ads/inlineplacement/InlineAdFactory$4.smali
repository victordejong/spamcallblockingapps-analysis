.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;->b(Lcom/verizon/ads/ErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

.field final synthetic b:Lcom/verizon/ads/ErrorInfo;

.field final synthetic c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    iput-object p3, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->a:Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;

    iget-object v1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->c:Lcom/verizon/ads/inlineplacement/InlineAdFactory;

    iget-object v2, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$4;->b:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;->onError(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/ErrorInfo;)V

    return-void
.end method
