.class final synthetic Lcom/google/android/gms/internal/ads/cld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cki;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cki;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/cki;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cld;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cld;->a:Lcom/google/android/gms/internal/ads/cki;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cld;->b:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/clg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cki;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ckw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cki;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/clg;->a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    return-void
.end method
