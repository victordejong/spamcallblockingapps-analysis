.class public final Lcom/google/android/gms/internal/ads/fa;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field public final b:Lcom/google/android/gms/internal/ads/eap;

.field public final c:Lcom/google/android/gms/internal/ads/zzap;

.field public d:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fa;->d:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->a:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->b:Lcom/google/android/gms/internal/ads/eap;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa;->c:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/eap;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fa;->d:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa;->a:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fa;->b:Lcom/google/android/gms/internal/ads/eap;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fa;->c:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eap;)Lcom/google/android/gms/internal/ads/fa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/eap;",
            ")",
            "Lcom/google/android/gms/internal/ads/fa<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fa;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eap;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fa;->c:Lcom/google/android/gms/internal/ads/zzap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
