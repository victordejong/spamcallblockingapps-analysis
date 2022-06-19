.class public final Lcom/google/android/gms/internal/ads/ecj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/bzv;

.field public final c:Lcom/google/android/gms/internal/ads/zzae;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ecj;->d:Z

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ecj;->a:Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecj;->c:Lcom/google/android/gms/internal/ads/zzae;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bzv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/bzv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ecj;->d:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ecj;->a:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ecj;->b:Lcom/google/android/gms/internal/ads/bzv;

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ecj;->c:Lcom/google/android/gms/internal/ads/zzae;

    .line 8
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/ecj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ecj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ecj;-><init>(Lcom/google/android/gms/internal/ads/zzae;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bzv;)Lcom/google/android/gms/internal/ads/ecj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/bzv;",
            ")",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ecj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ecj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bzv;)V

    return-object v0
.end method
