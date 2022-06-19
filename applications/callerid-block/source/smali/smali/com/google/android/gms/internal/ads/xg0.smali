.class public final Lcom/google/android/gms/internal/ads/xg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/wg0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/em;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wm;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/oh2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zzuq;",
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
            "Lcom/google/android/gms/internal/ads/em;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/wm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Landroid/view/View;",
            ">;",
            "Lcom/google/android/gms/internal/ads/oh2<",
            "Lcom/google/android/gms/internal/ads/zzuq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xg0;->a:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xg0;->b:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xg0;->c:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xg0;->d:Lcom/google/android/gms/internal/ads/oh2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/oh2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg0;->a:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/zf0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zf0;->a()Lcom/google/android/gms/internal/ads/em;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg0;->b:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/wm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wm1;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg0;->c:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/wm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg0;->d:Lcom/google/android/gms/internal/ads/oh2;

    check-cast v0, Lcom/google/android/gms/internal/ads/rf0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rf0;->a()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xg0;->e:Lcom/google/android/gms/internal/ads/oh2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/oh2;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzuq;

    new-instance v0, Lcom/google/android/gms/internal/ads/wg0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wg0;-><init>(Lcom/google/android/gms/internal/ads/em;Landroid/content/Context;Lcom/google/android/gms/internal/ads/wm;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzuq;)V

    return-object v0
.end method
