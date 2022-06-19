.class public final Lcom/google/android/gms/internal/ads/lk1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/qw1<",
        "Lcom/google/android/gms/internal/ads/fk1;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/s12<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/ny1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/s12<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/xj2;",
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
            "Lcom/google/android/gms/internal/ads/s12<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/ny1;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/s12<",
            "Lcom/google/android/gms/internal/ads/fk1;",
            "Lcom/google/android/gms/internal/ads/ok2;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/xj2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lk1;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lk1;->c:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lk1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lk1;->b:Lcom/google/android/gms/internal/ads/pj3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lk1;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v2, Lcom/google/android/gms/internal/ads/o21;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/o21;->a()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    iget v2, v2, Lcom/google/android/gms/internal/ads/nj2;->a:I

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/ads/t12;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t12;->a()Lcom/google/android/gms/internal/ads/s12;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/t12;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t12;->a()Lcom/google/android/gms/internal/ads/s12;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method
