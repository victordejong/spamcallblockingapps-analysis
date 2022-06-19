.class public final Lcom/google/android/gms/internal/ads/alo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/alp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/alp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/alo;->a:Lcom/google/android/gms/internal/ads/alp;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/alp;)Lcom/google/android/gms/internal/ads/alo;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/alo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/alo;-><init>(Lcom/google/android/gms/internal/ads/alp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alo;->a:Lcom/google/android/gms/internal/ads/alp;

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/alp;->a:Landroid/view/ViewGroup;

    return-object v0
.end method
