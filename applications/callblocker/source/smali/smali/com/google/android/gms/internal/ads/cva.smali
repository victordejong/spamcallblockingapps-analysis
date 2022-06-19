.class final Lcom/google/android/gms/internal/ads/cva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cth",
        "<",
        "Lcom/google/android/gms/internal/ads/cst;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/internal/ads/cst;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/cst;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ctf;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cvd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/cvd;-><init>(Lcom/google/android/gms/internal/ads/ctf;)V

    .line 5
    return-object v0
.end method
