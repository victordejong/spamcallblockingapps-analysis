.class public final Lcom/google/android/gms/internal/ads/amg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/ayi<",
        "Lcom/google/android/gms/internal/ads/atb;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/alx;

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/anh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/alx;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/alx;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/anh;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/amg;->a:Lcom/google/android/gms/internal/ads/alx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/amg;->b:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/anh;)Lcom/google/android/gms/internal/ads/ayi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/anh;",
            ")",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/atb;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ayi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ayi;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/ayi;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/amg;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/anh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/amg;->a(Lcom/google/android/gms/internal/ads/anh;)Lcom/google/android/gms/internal/ads/ayi;

    move-result-object v0

    return-object v0
.end method
