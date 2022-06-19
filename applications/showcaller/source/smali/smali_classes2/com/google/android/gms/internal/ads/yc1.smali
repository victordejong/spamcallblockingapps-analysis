.class public final Lcom/google/android/gms/internal/ads/yc1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/xc1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/me1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fz1<",
            "Lcom/google/android/gms/internal/ads/me1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/az0<",
            "Lcom/google/android/gms/internal/ads/xw0;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/cf1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/ez0;",
            ">;>;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/qw1<",
            "Lcom/google/android/gms/internal/ads/me1;",
            ">;>;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fz1<",
            "Lcom/google/android/gms/internal/ads/me1;",
            ">;>;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/az0<",
            "Lcom/google/android/gms/internal/ads/xw0;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/cf1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yc1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yc1;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yc1;->c:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yc1;->d:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/yc1;->e:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yc1;->a:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/gj3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gj3;->d()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yc1;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/gj3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gj3;->d()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yc1;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/gj3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gj3;->d()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yc1;->d:Lcom/google/android/gms/internal/ads/pj3;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yc1;->e:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/cd1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cd1;->a()Lcom/google/android/gms/internal/ads/cf1;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/xc1;

    move-object v1, v0

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/xc1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/cf1;)V

    return-object v0
.end method
