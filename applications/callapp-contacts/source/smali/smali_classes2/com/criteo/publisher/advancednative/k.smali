.class public final Lcom/criteo/publisher/advancednative/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

.field private final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeLoader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeLoaderRef"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/k;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    iput-object p2, p0, Lcom/criteo/publisher/advancednative/k;->c:Ljava/lang/ref/Reference;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p1

    const-string p2, "LoggerFactory.getLogger(javaClass)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/k;->a:Lcom/criteo/publisher/logging/g;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->a:Lcom/criteo/publisher/logging/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/k;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/m;->e(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdClicked()V

    return-void
.end method

.method public synthetic onAdClosed()V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener$-CC;->$default$onAdClosed(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public final onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->a:Lcom/criteo/publisher/logging/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/k;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/m;->c(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 40
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->a:Lcom/criteo/publisher/logging/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/k;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/m;->d(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdImpression()V

    return-void
.end method

.method public synthetic onAdLeftApplication()V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener$-CC;->$default$onAdLeftApplication(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public final onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 2

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->a:Lcom/criteo/publisher/logging/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/k;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v1}, Lcom/criteo/publisher/advancednative/m;->b(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)Lcom/criteo/publisher/logging/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 35
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/k;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method
