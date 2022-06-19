.class public final Lcom/google/android/gms/internal/ads/agd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/zzbar;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agd;->a:Lcom/google/android/gms/internal/ads/afp;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/afp;)Lcom/google/android/gms/internal/ads/zzbar;
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/afp;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbar;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agd;->a:Lcom/google/android/gms/internal/ads/afp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agd;->a(Lcom/google/android/gms/internal/ads/afp;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v0

    return-object v0
.end method
