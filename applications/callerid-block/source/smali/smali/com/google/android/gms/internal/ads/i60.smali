.class public final Lcom/google/android/gms/internal/ads/i60;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/la0;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/sl1;

.field private final d:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final e:Lcom/google/android/gms/ads/internal/util/a1;

.field private final f:Lcom/google/android/gms/internal/ads/lt0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/ads/internal/util/a1;Lcom/google/android/gms/internal/ads/lt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i60;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i60;->c:Lcom/google/android/gms/internal/ads/sl1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i60;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i60;->e:Lcom/google/android/gms/ads/internal/util/a1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i60;->f:Lcom/google/android/gms/internal/ads/lt0;

    return-void
.end method


# virtual methods
.method public final I(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 4

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->X1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i60;->e:Lcom/google/android/gms/ads/internal/util/a1;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/a1;->p()Lcom/google/android/gms/internal/ads/vn;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->l()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i60;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i60;->d:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i60;->c:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/e;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/vn;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/i60;->f:Lcom/google/android/gms/internal/ads/lt0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lt0;->c()V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/ml1;)V
    .locals 0

    return-void
.end method
