.class final Lcom/google/android/gms/internal/ads/ir0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pf2;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/fs0;

.field private final e:Lcom/google/android/gms/internal/ads/ir0;

.field private final f:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzbdl;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/a42;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/e42;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/mf2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/ir0;->e:Lcom/google/android/gms/internal/ads/ir0;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ir0;->d:Lcom/google/android/gms/internal/ads/fs0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ir0;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ir0;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ir0;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ir0;->f:Lcom/google/android/gms/internal/ads/pj3;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/ir0;->g:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->H(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/b42;

    .line 3
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/b42;-><init>(Lcom/google/android/gms/internal/ads/pj3;)V

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/ir0;->h:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g42;->a()Lcom/google/android/gms/internal/ads/g42;

    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/ir0;->i:Lcom/google/android/gms/internal/ads/pj3;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->I(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fs0;->V(Lcom/google/android/gms/internal/ads/fs0;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zj2;->a()Lcom/google/android/gms/internal/ads/zj2;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/nf2;

    move-object v0, p1

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/nf2;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ir0;->j:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/f32;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/f32;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ir0;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ir0;->b:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ir0;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir0;->j:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/mf2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ir0;->h:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/a42;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/f32;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mf2;Lcom/google/android/gms/internal/ads/a42;)V

    return-object v6
.end method
