.class public Lcom/jirbo/adcolony/AdColonyAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field public final synthetic d:Lcom/jirbo/adcolony/AdColonyAdapter;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyAdapter;Ld2/h;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->d:Lcom/jirbo/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->a:Ld2/h;

    iput-object p3, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->c:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->a:Ld2/h;

    .line 2
    iget v2, v2, Ld2/h;->a:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->a:Ld2/h;

    .line 4
    iget v3, v3, Ld2/h;->b:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Requesting banner with ad size: %dx%d"

    .line 6
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->d:Lcom/jirbo/adcolony/AdColonyAdapter;

    .line 9
    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyAdapter;->e:Lj7/b;

    .line 10
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->a:Ld2/h;

    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ld2/b;->j(Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/ads/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->c:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyAdapter$b;->d:Lcom/jirbo/adcolony/AdColonyAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method
