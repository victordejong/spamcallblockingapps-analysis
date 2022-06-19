.class final Lcom/google/android/gms/internal/ads/csu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/deg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/csw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csw",
            "<TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/csw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/csw",
            "<TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/csu;->a:Lcom/google/android/gms/internal/ads/csw;

    .line 3
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbi;",
            ")TKeyProtoT;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csu;->a:Lcom/google/android/gms/internal/ads/csw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/csw;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csu;->a:Lcom/google/android/gms/internal/ads/csw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/csw;->a(Lcom/google/android/gms/internal/ads/deg;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/csu;->a:Lcom/google/android/gms/internal/ads/csw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/csw;->b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deg;

    .line 7
    return-object v0
.end method
