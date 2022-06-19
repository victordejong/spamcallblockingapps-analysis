.class Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader$2;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;->a(Lcom/callapp/contacts/util/ads/loaders/MultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    :cond_0
    return-void
.end method
