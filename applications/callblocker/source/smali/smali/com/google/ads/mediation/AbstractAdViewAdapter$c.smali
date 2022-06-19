.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$c;
.super Lcom/google/android/gms/ads/b;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/a/a;
.implements Lcom/google/android/gms/internal/ads/dxs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

.field private final b:Lcom/google/android/gms/ads/mediation/h;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/h;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/h;->a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 6
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/h;->a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    .line 8
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/ads/mediation/h;->a(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/h;->b(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 10
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/h;->c(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 12
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/h;->d(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 14
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->b:Lcom/google/android/gms/ads/mediation/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/h;->e(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 16
    return-void
.end method
