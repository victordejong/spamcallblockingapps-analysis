.class public final Lcom/google/android/gms/internal/ads/arg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/aqz$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aqz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/arg;->a:Lcom/google/android/gms/internal/ads/aqz;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/arg;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/arg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/arg;-><init>(Lcom/google/android/gms/internal/ads/aqz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/arg;->a:Lcom/google/android/gms/internal/ads/aqz;

    .line 1008
    new-instance v1, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aqz;->a:Landroid/content/Context;

    .line 2002
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 1009
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aqz;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 2004
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 1010
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/aqz;->d:Ljava/lang/String;

    .line 2008
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->d:Ljava/lang/String;

    .line 1011
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aqz;->c:Landroid/os/Bundle;

    .line 3006
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/aqz$a;->c:Landroid/os/Bundle;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqz$a;

    return-object v0
.end method
