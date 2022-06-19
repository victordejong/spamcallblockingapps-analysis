.class final Lcom/google/android/gms/internal/ads/dfq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dft;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfq;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfq;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(I)B

    move-result v0

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfq;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    return v0
.end method
