.class final Lcom/google/android/gms/internal/ads/amz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/crh;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/amt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amt;Lcom/google/android/gms/internal/ads/crh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amz;->b:Lcom/google/android/gms/internal/ads/amt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amz;->a:Lcom/google/android/gms/internal/ads/crh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/amh;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amz;->b:Lcom/google/android/gms/internal/ads/amt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amt;->a(Lcom/google/android/gms/internal/ads/amt;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amz;->a:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amz;->b:Lcom/google/android/gms/internal/ads/amt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amt;->a(Lcom/google/android/gms/internal/ads/amt;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amz;->a:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/crh;->a(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method
