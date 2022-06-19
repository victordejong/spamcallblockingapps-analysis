.class final Lcom/google/android/gms/internal/ads/vr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jh2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private final b:Lcom/google/android/gms/internal/ads/vr0;

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzbdl;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/a42;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/hi2;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/gh2;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/i42;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/vr0;->b:Lcom/google/android/gms/internal/ads/vr0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vr0;->c:Lcom/google/android/gms/internal/ads/pj3;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vr0;->d:Lcom/google/android/gms/internal/ads/pj3;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vr0;->e:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->H(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p5

    new-instance v0, Lcom/google/android/gms/internal/ads/b42;

    .line 4
    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/ads/b42;-><init>(Lcom/google/android/gms/internal/ads/pj3;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vr0;->f:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->u0(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ii2;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ii2;-><init>(Lcom/google/android/gms/internal/ads/pj3;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/vr0;->g:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->I(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->V(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zj2;->a()Lcom/google/android/gms/internal/ads/zj2;

    move-result-object v6

    new-instance p1, Lcom/google/android/gms/internal/ads/hh2;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p5

    move-object v5, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/hh2;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/vr0;->h:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p1, Lcom/google/android/gms/internal/ads/j42;

    move-object v0, p1

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    move-object v6, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/j42;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vr0;->i:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/i42;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vr0;->i:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/i42;

    return-object v0
.end method
