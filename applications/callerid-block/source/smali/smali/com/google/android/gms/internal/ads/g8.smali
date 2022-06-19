.class public final Lcom/google/android/gms/internal/ads/g8;
.super Lcom/google/android/gms/internal/ads/p7;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/formats/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/p7;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g8;->b:Lcom/google/android/gms/ads/formats/e$a;

    return-void
.end method


# virtual methods
.method public final C5(Lcom/google/android/gms/internal/ads/y7;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g8;->b:Lcom/google/android/gms/ads/formats/e$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/z7;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/z7;-><init>(Lcom/google/android/gms/internal/ads/y7;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/e$a;->d(Lcom/google/android/gms/ads/formats/e;)V

    return-void
.end method
