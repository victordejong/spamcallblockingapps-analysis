.class public Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;
.super Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
.source "SourceFile"


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p3, p4}, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    .line 14
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/InterstitialAdLoader;->b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V

    return-void
.end method
