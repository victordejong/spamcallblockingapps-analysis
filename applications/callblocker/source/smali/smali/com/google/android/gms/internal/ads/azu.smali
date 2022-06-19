.class final synthetic Lcom/google/android/gms/internal/ads/azu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azv;

.field private final b:Lcom/google/android/gms/internal/ads/bam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/azv;Lcom/google/android/gms/internal/ads/bam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azu;->a:Lcom/google/android/gms/internal/ads/azv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azu;->b:Lcom/google/android/gms/internal/ads/bam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azu;->a:Lcom/google/android/gms/internal/ads/azv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azu;->b:Lcom/google/android/gms/internal/ads/bam;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/azv;->c(Lcom/google/android/gms/internal/ads/bam;)V

    return-void
.end method
