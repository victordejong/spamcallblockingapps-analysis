.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/r03<",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/yn2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/ads/nonagon/signalgeneration/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/d21;",
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
            "Lcom/google/android/gms/internal/ads/yn2;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/ads/nonagon/signalgeneration/g;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/d21;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->c:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->a:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yn2;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/h;->a()Lcom/google/android/gms/ads/nonagon/signalgeneration/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v2, Lcom/google/android/gms/internal/ads/e21;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e21;->a()Lcom/google/android/gms/internal/ads/d21;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfem;->w:Lcom/google/android/gms/internal/ads/zzfem;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/d21;->b()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/rn2;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qn2;->c(Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->P3:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/qn2;->h(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/qn2;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qn2;->i()Lcom/google/android/gms/internal/ads/en2;

    move-result-object v0

    return-object v0
.end method
