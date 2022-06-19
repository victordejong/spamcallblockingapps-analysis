.class final synthetic Lcom/google/android/gms/internal/ads/chr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/chp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/chr;->a:Lcom/google/android/gms/internal/ads/chp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/chr;->a:Lcom/google/android/gms/internal/ads/chp;

    .line 1022
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/chp;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1023
    new-instance v0, Lcom/google/android/gms/internal/ads/chm;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/chm;-><init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Ljava/lang/String;)V

    return-object v0
.end method
