.class public Lcom/google/android/gms/internal/ads/cre;
.super Lcom/google/android/gms/internal/ads/crf;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/crf",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/crt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/crf;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/crt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cre;->a:Lcom/google/android/gms/internal/ads/crt;

    .line 3
    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crf;->c()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/crf;->c()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lcom/google/android/gms/internal/ads/crt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cre;->a:Lcom/google/android/gms/internal/ads/crt;

    return-object v0
.end method
