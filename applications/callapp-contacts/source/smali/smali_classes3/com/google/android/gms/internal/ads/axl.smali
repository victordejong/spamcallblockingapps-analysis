.class public final Lcom/google/android/gms/internal/ads/axl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/bvx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awm;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bvz;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bso;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awm;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bvz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bso;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axl;->a:Lcom/google/android/gms/internal/ads/awm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axl;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axl;->c:Lcom/google/android/gms/internal/ads/dsv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axl;->d:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/axl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/awm;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/common/util/f;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bvz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/bso;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/axl;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/axl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/axl;-><init>(Lcom/google/android/gms/internal/ads/awm;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axl;->a:Lcom/google/android/gms/internal/ads/awm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axl;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/util/f;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axl;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/bvz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/axl;->d:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bso;

    .line 1032
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/awm;->o:Lcom/google/android/gms/internal/ads/bvx;

    if-nez v4, :cond_0

    .line 1033
    new-instance v4, Lcom/google/android/gms/internal/ads/bvx;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bvx;-><init>(Lcom/google/android/gms/common/util/f;Lcom/google/android/gms/internal/ads/bvz;Lcom/google/android/gms/internal/ads/bso;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/awm;->o:Lcom/google/android/gms/internal/ads/bvx;

    .line 1034
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/awm;->o:Lcom/google/android/gms/internal/ads/bvx;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bvx;

    return-object v0
.end method
