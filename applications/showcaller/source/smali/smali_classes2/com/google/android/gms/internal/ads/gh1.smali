.class public final Lcom/google/android/gms/internal/ads/gh1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/fh1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/s03;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/th1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/yh1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/s03;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/th1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/yh1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gh1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gh1;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gh1;->c:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/fh1;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gh1;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v1, Lcom/google/android/gms/internal/ads/uh1;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uh1;->a()Lcom/google/android/gms/internal/ads/th1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gh1;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v2, Lcom/google/android/gms/internal/ads/zh1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zh1;->a()Lcom/google/android/gms/internal/ads/yh1;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/fh1;

    .line 4
    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/fh1;-><init>(Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/th1;Lcom/google/android/gms/internal/ads/yh1;)V

    return-object v3
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/gh1;->a()Lcom/google/android/gms/internal/ads/fh1;

    move-result-object v0

    return-object v0
.end method
