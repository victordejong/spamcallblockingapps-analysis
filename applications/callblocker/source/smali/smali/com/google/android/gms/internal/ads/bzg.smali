.class final synthetic Lcom/google/android/gms/internal/ads/bzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqr;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bzg;->a:Lcom/google/android/gms/internal/ads/bzh;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bzg;->a:Lcom/google/android/gms/internal/ads/bzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bzh;->b()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
