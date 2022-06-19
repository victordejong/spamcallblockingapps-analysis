.class final Lcom/mopub/mobileads/MoPubConversionTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/network/TrackingRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mopub/mobileads/MoPubConversionTracker;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubConversionTracker;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->b:Lcom/mopub/mobileads/MoPubConversionTracker;

    iput-boolean p2, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-boolean p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->b:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubConversionTracker;->c(Lcom/mopub/mobileads/MoPubConversionTracker;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->b:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 98
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->b(Lcom/mopub/mobileads/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker$1;->b:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 99
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->a(Lcom/mopub/mobileads/MoPubConversionTracker;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
