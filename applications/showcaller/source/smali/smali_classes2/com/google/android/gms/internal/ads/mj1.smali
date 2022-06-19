.class public final Lcom/google/android/gms/internal/ads/mj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/w21;

.field private final b:Lcom/google/android/gms/internal/ads/g41;

.field private final c:Lcom/google/android/gms/internal/ads/t41;

.field private final d:Lcom/google/android/gms/internal/ads/f51;

.field private final e:Lcom/google/android/gms/internal/ads/y71;

.field private final f:Lcom/google/android/gms/internal/ads/ej2;

.field private final g:Lcom/google/android/gms/internal/ads/jj2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/w21;Lcom/google/android/gms/internal/ads/g41;Lcom/google/android/gms/internal/ads/t41;Lcom/google/android/gms/internal/ads/f51;Lcom/google/android/gms/internal/ads/y71;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mj1;->a:Lcom/google/android/gms/internal/ads/w21;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mj1;->b:Lcom/google/android/gms/internal/ads/g41;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mj1;->c:Lcom/google/android/gms/internal/ads/t41;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mj1;->d:Lcom/google/android/gms/internal/ads/f51;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mj1;->e:Lcom/google/android/gms/internal/ads/y71;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/mj1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/mj1;->g:Lcom/google/android/gms/internal/ads/jj2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/qj1;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qj1;->a(Lcom/google/android/gms/internal/ads/qj1;)Lcom/google/android/gms/internal/ads/kj1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mj1;->a:Lcom/google/android/gms/internal/ads/w21;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mj1;->c:Lcom/google/android/gms/internal/ads/t41;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/mj1;->d:Lcom/google/android/gms/internal/ads/f51;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/mj1;->e:Lcom/google/android/gms/internal/ads/y71;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/mj1;->b:Lcom/google/android/gms/internal/ads/g41;

    .line 2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/lj1;->a(Lcom/google/android/gms/internal/ads/g41;)Lcom/google/android/gms/ads/internal/overlay/u;

    move-result-object v5

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/kj1;->b(Lcom/google/android/gms/internal/ads/kj1;Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mj1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mj1;->g:Lcom/google/android/gms/internal/ads/jj2;

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qj1;->h(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V

    return-void
.end method
