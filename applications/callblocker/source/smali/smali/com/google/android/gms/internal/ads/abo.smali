.class public final Lcom/google/android/gms/internal/ads/abo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/acb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/aad;ILjava/lang/String;Lcom/google/android/gms/internal/ads/aae;)Lcom/google/android/gms/internal/ads/abt;
    .locals 2

    .prologue
    .line 2
    if-lez p2, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/abb;->c()I

    move-result v0

    .line 4
    iget v1, p4, Lcom/google/android/gms/internal/ads/aae;->g:I

    if-ge v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/acj;

    invoke-direct {v0, p1, p4}, Lcom/google/android/gms/internal/ads/acj;-><init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/aae;)V

    .line 9
    :goto_0
    return-object v0

    .line 6
    :cond_0
    iget v1, p4, Lcom/google/android/gms/internal/ads/aae;->b:I

    if-ge v0, v1, :cond_1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/acf;

    invoke-direct {v0, p1, p4}, Lcom/google/android/gms/internal/ads/acf;-><init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/aae;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/acd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/acd;-><init>(Lcom/google/android/gms/internal/ads/aad;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/ace;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ace;-><init>(Lcom/google/android/gms/internal/ads/aad;)V

    goto :goto_0
.end method
