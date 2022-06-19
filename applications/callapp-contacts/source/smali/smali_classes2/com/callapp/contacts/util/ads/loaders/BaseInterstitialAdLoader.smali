.class public abstract Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field protected final c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Z)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->a:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->b:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 19
    iput-boolean p3, p0, Lcom/callapp/contacts/util/ads/loaders/BaseInterstitialAdLoader;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    return-void
.end method
