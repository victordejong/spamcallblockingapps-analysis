.class final synthetic Lcom/google/android/gms/internal/ads/aoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoq;->a:Lcom/google/android/gms/internal/ads/bot;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoq;->a:Lcom/google/android/gms/internal/ads/bot;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bot;->a(Lcom/google/android/gms/internal/ads/zzauj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
