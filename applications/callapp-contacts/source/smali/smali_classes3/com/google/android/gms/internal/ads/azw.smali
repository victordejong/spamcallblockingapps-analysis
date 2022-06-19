.class public final Lcom/google/android/gms/internal/ads/azw;
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
        "Lcom/google/android/gms/internal/ads/aro;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azj;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/aqm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/azj;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/azj;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/aqm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/azj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/azw;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/azj;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/azw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/azj;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/aqm;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/azw;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/azw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/azw;-><init>(Lcom/google/android/gms/internal/ads/azj;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azw;->a:Lcom/google/android/gms/internal/ads/azj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/azw;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/aqm;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/azj;->a(Lcom/google/android/gms/internal/ads/aqm;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
