.class public final Lcom/google/android/gms/internal/ads/axg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/ayi<",
        "Lcom/google/android/gms/internal/ads/eeg;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/awm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axg;->a:Lcom/google/android/gms/internal/ads/awm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/axg;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/axg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/axg;-><init>(Lcom/google/android/gms/internal/ads/awm;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
