.class public final Lcom/google/android/gms/internal/ads/vy0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/uy0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/x60;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ny0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/jy0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/ads/internal/util/a1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;Lcom/google/android/gms/internal/ads/oh2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/x60;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/ny0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/jy0;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/ads/internal/util/a1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vy0;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vy0;->b:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vy0;->c:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vy0;->d:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vy0;->e:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/uy0;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy0;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/wm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm1;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy0;->b:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/y60;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/y60;->a()Lcom/google/android/gms/internal/ads/x60;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy0;->c:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/ny0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy0;->d:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/ky0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ky0;->a()Lcom/google/android/gms/internal/ads/jy0;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy0;->e:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/vm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vm1;->a()Lcom/google/android/gms/ads/internal/util/a1;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/ads/uy0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/uy0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/x60;Lcom/google/android/gms/internal/ads/ny0;Lcom/google/android/gms/internal/ads/jy0;Lcom/google/android/gms/ads/internal/util/a1;)V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vy0;->a()Lcom/google/android/gms/internal/ads/uy0;

    move-result-object v0

    return-object v0
.end method
