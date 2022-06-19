.class final synthetic Lcom/google/android/gms/internal/ads/bcf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bca;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bca;

    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bca;->a(Lcom/google/android/gms/internal/ads/act;Ljava/util/Map;)V

    return-void
.end method
