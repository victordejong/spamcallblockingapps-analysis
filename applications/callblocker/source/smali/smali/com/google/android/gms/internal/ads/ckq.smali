.class final synthetic Lcom/google/android/gms/internal/ads/ckq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ckg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ckg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckq;->a:Lcom/google/android/gms/internal/ads/ckg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckq;->a:Lcom/google/android/gms/internal/ads/ckg;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ckg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 3
    return-object v0
.end method
