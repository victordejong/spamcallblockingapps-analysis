.class public final Lcom/google/android/gms/internal/ads/jn0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/q70;

.field private final b:Lcom/google/android/gms/internal/ads/y80;

.field private final c:Lcom/google/android/gms/internal/ads/l90;

.field private final d:Lcom/google/android/gms/internal/ads/x90;

.field private final e:Lcom/google/android/gms/internal/ads/fc0;

.field private final f:Lcom/google/android/gms/internal/ads/al1;

.field private final g:Lcom/google/android/gms/internal/ads/dl1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q70;Lcom/google/android/gms/internal/ads/y80;Lcom/google/android/gms/internal/ads/l90;Lcom/google/android/gms/internal/ads/x90;Lcom/google/android/gms/internal/ads/fc0;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jn0;->a:Lcom/google/android/gms/internal/ads/q70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jn0;->b:Lcom/google/android/gms/internal/ads/y80;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jn0;->c:Lcom/google/android/gms/internal/ads/l90;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jn0;->d:Lcom/google/android/gms/internal/ads/x90;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jn0;->e:Lcom/google/android/gms/internal/ads/fc0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/jn0;->f:Lcom/google/android/gms/internal/ads/al1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/jn0;->g:Lcom/google/android/gms/internal/ads/dl1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/mn0;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mn0;->k(Lcom/google/android/gms/internal/ads/mn0;)Lcom/google/android/gms/internal/ads/hn0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jn0;->a:Lcom/google/android/gms/internal/ads/q70;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jn0;->c:Lcom/google/android/gms/internal/ads/l90;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jn0;->d:Lcom/google/android/gms/internal/ads/x90;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jn0;->e:Lcom/google/android/gms/internal/ads/fc0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jn0;->b:Lcom/google/android/gms/internal/ads/y80;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/in0;->a(Lcom/google/android/gms/internal/ads/y80;)Lcom/google/android/gms/ads/internal/overlay/w;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hn0;->a(Lcom/google/android/gms/internal/ads/hn0;Lcom/google/android/gms/internal/ads/hz2;Lcom/google/android/gms/internal/ads/i8;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ads/k8;Lcom/google/android/gms/ads/internal/overlay/w;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jn0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jn0;->g:Lcom/google/android/gms/internal/ads/dl1;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/mn0;->g(Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)V

    return-void
.end method
