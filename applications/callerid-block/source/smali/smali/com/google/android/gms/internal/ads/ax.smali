.class public final Lcom/google/android/gms/internal/ads/ax;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/iv;

.field private b:Lcom/google/android/gms/internal/ads/ux;

.field private c:Lcom/google/android/gms/internal/ads/up1;

.field private d:Lcom/google/android/gms/internal/ads/dy;

.field private e:Lcom/google/android/gms/internal/ads/om1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/iv;)Lcom/google/android/gms/internal/ads/ax;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/iv;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ux;)Lcom/google/android/gms/internal/ads/ax;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ax;->b:Lcom/google/android/gms/internal/ads/ux;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/fv;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/iv;

    const-class v1, Lcom/google/android/gms/internal/ads/iv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->b:Lcom/google/android/gms/internal/ads/ux;

    const-class v1, Lcom/google/android/gms/internal/ads/ux;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->c:Lcom/google/android/gms/internal/ads/up1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/up1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/up1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->c:Lcom/google/android/gms/internal/ads/up1;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->d:Lcom/google/android/gms/internal/ads/dy;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/dy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->d:Lcom/google/android/gms/internal/ads/dy;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->e:Lcom/google/android/gms/internal/ads/om1;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/om1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/om1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ax;->e:Lcom/google/android/gms/internal/ads/om1;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/sx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ax;->a:Lcom/google/android/gms/internal/ads/iv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ax;->b:Lcom/google/android/gms/internal/ads/ux;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ax;->c:Lcom/google/android/gms/internal/ads/up1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ax;->d:Lcom/google/android/gms/internal/ads/dy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ax;->e:Lcom/google/android/gms/internal/ads/om1;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/sx;-><init>(Lcom/google/android/gms/internal/ads/iv;Lcom/google/android/gms/internal/ads/ux;Lcom/google/android/gms/internal/ads/up1;Lcom/google/android/gms/internal/ads/dy;Lcom/google/android/gms/internal/ads/om1;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method
