.class public final Lcom/google/android/gms/internal/ads/xl1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/pm;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzazj;",
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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzazj;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xl1;->a:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xl1;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xl1;->c:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/xl1;->d:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/xl1;->e:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xl1;->a:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/xp0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xp0;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xl1;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v1, Lcom/google/android/gms/internal/ads/nr1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nr1;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xl1;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v2, Lcom/google/android/gms/internal/ads/gq0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gq0;->a()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xl1;->d:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzazj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/xl1;->e:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/pm;

    new-instance v6, Lcom/google/android/gms/internal/ads/tm;

    .line 2
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/tm;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/pm;-><init>(Lcom/google/android/gms/internal/ads/tm;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/np;->C()Lcom/google/android/gms/internal/ads/mp;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzcgz;->e:I

    .line 4
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/mp;->q(I)Lcom/google/android/gms/internal/ads/mp;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzcgz;->f:I

    .line 5
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/mp;->r(I)Lcom/google/android/gms/internal/ads/mp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->g:Z

    const/4 v6, 0x1

    if-eq v6, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/mp;->s(I)Lcom/google/android/gms/internal/ads/mp;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/np;

    new-instance v2, Lcom/google/android/gms/internal/ads/wl1;

    .line 8
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/wl1;-><init>(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/np;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/pm;->b(Lcom/google/android/gms/internal/ads/om;)V

    return-object v5
.end method
