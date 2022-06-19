.class final synthetic Lcom/google/android/gms/internal/ads/cij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cik;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cij;->a:Lcom/google/android/gms/internal/ads/cik;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cij;->a:Lcom/google/android/gms/internal/ads/cik;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/cih;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cik;->a:Lcom/google/android/gms/internal/ads/egv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/egv;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cih;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
