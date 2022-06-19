.class public final Lcom/google/android/gms/internal/ads/blo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/blm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/blf;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/bll;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/blf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/bll;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blo;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/blo;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/blo;->c:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/blo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/blf;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/bll;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/blo;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/blo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/blo;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blo;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/blf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/blo;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/blo;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/util/f;

    .line 9
    new-instance v3, Lcom/google/android/gms/internal/ads/blm;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/blm;-><init>(Lcom/google/android/gms/internal/ads/blf;Ljava/util/Set;Lcom/google/android/gms/common/util/f;)V

    return-object v3
.end method
