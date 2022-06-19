.class public final Lcom/google/android/gms/internal/ads/bae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/azj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bae;->a:Lcom/google/android/gms/internal/ads/azj;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/azj;)Lcom/google/android/gms/internal/ads/bae;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bae;-><init>(Lcom/google/android/gms/internal/ads/azj;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bae;->a:Lcom/google/android/gms/internal/ads/azj;

    .line 1008
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/azj;->b:Lcom/google/android/gms/internal/ads/adt;

    return-object v0
.end method
