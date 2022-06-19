.class public final Lcom/google/android/gms/internal/ads/bdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bcr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bde;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bde;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdk;->a:Lcom/google/android/gms/internal/ads/bde;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bde;)Lcom/google/android/gms/internal/ads/bdk;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bdk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bdk;-><init>(Lcom/google/android/gms/internal/ads/bde;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/bde;)Lcom/google/android/gms/internal/ads/bcr;
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/bde;->a:Lcom/google/android/gms/internal/ads/bcr;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/bcr;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdk;->a:Lcom/google/android/gms/internal/ads/bde;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bdk;->b(Lcom/google/android/gms/internal/ads/bde;)Lcom/google/android/gms/internal/ads/bcr;

    move-result-object v0

    return-object v0
.end method
