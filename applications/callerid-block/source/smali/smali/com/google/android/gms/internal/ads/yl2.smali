.class public final Lcom/google/android/gms/internal/ads/yl2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/zl2;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zl2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yl2;->b:Lcom/google/android/gms/internal/ads/zl2;

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/yl2;)Lcom/google/android/gms/internal/ads/zl2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yl2;->b:Lcom/google/android/gms/internal/ads/zl2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rm2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/sl2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/sl2;-><init>(Lcom/google/android/gms/internal/ads/yl2;Lcom/google/android/gms/internal/ads/rm2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/tl2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/tl2;-><init>(Lcom/google/android/gms/internal/ads/yl2;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzit;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/ul2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ul2;-><init>(Lcom/google/android/gms/internal/ads/yl2;Lcom/google/android/gms/internal/ads/zzit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(IJJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/vl2;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/vl2;-><init>(Lcom/google/android/gms/internal/ads/yl2;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/rm2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/wl2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/wl2;-><init>(Lcom/google/android/gms/internal/ads/yl2;Lcom/google/android/gms/internal/ads/rm2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yl2;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/xl2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/xl2;-><init>(Lcom/google/android/gms/internal/ads/yl2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
