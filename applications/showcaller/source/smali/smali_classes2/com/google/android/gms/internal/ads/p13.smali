.class final Lcom/google/android/gms/internal/ads/p13;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/mf3;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/mf3;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/u13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/u13<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u13;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/u13<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p13;->a:Lcom/google/android/gms/internal/ads/u13;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgex;",
            ")TKeyProtoT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p13;->a:Lcom/google/android/gms/internal/ads/u13;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/u13;->c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p13;->a:Lcom/google/android/gms/internal/ads/u13;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/u13;->b(Lcom/google/android/gms/internal/ads/mf3;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/p13;->a:Lcom/google/android/gms/internal/ads/u13;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/u13;->d(Lcom/google/android/gms/internal/ads/mf3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
