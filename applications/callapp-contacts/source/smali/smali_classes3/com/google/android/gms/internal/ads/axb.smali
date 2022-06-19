.class public final Lcom/google/android/gms/internal/ads/axb;
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
        "Lcom/google/android/gms/internal/ads/atb;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axb;->a:Lcom/google/android/gms/internal/ads/awm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/axb;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/axb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/axb;-><init>(Lcom/google/android/gms/internal/ads/awm;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/awm;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awm;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/atb;",
            ">;>;"
        }
    .end annotation

    .line 1017
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/awm;->e:Ljava/util/Set;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axb;->a:Lcom/google/android/gms/internal/ads/awm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/axb;->b(Lcom/google/android/gms/internal/ads/awm;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
