.class final synthetic Lcom/google/android/gms/internal/ads/cid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dar;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cid;->a:Lcom/google/android/gms/internal/ads/cie;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cid;->a:Lcom/google/android/gms/internal/ads/cie;

    .line 1022
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cie;->a:Lcom/google/android/gms/internal/ads/xz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xz;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
