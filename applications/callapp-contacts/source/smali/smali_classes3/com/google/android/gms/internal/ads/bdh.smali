.class public final Lcom/google/android/gms/internal/ads/bdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Landroid/view/View;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdh;->a:Lcom/google/android/gms/internal/ads/bde;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bde;)Lcom/google/android/gms/internal/ads/bdh;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bdh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bdh;-><init>(Lcom/google/android/gms/internal/ads/bde;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
