.class public final Lcom/google/android/gms/internal/ads/rf0;
.super Lcom/google/android/gms/internal/ads/mg0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final b:Lcom/google/android/gms/common/util/e;

.field private final c:Lcom/google/android/gms/internal/ads/rf0;

.field private final d:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/ads/internal/util/q1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/lg0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/if0;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/common/util/e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/lf0;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/nf0;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/rg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/ads/internal/util/q1;Lcom/google/android/gms/internal/ads/lg0;Lcom/google/android/gms/internal/ads/qf0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mg0;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/rf0;->c:Lcom/google/android/gms/internal/ads/rf0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rf0;->b:Lcom/google/android/gms/common/util/e;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf0;->d:Lcom/google/android/gms/internal/ads/pj3;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rf0;->e:Lcom/google/android/gms/internal/ads/pj3;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rf0;->f:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p5, Lcom/google/android/gms/internal/ads/kf0;

    .line 4
    invoke-direct {p5, p1, p3, p4}, Lcom/google/android/gms/internal/ads/kf0;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rf0;->g:Lcom/google/android/gms/internal/ads/pj3;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dj3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cj3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rf0;->h:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p5, Lcom/google/android/gms/internal/ads/mf0;

    .line 7
    invoke-direct {p5, p2, p3, p4}, Lcom/google/android/gms/internal/ads/mf0;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 8
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rf0;->i:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p4, Lcom/google/android/gms/internal/ads/of0;

    .line 9
    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/of0;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rf0;->j:Lcom/google/android/gms/internal/ads/pj3;

    new-instance p2, Lcom/google/android/gms/internal/ads/sg0;

    .line 10
    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/sg0;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aj3;->a(Lcom/google/android/gms/internal/ads/pj3;)Lcom/google/android/gms/internal/ads/pj3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rf0;->k:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/if0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf0;->g:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/if0;

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/nf0;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/nf0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rf0;->b:Lcom/google/android/gms/common/util/e;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rf0;->i:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/lf0;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nf0;-><init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/lf0;)V

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/rg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rf0;->k:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/rg0;

    return-object v0
.end method
