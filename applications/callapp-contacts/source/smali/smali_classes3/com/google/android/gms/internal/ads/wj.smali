.class public final Lcom/google/android/gms/internal/ads/wj;
.super Lcom/google/android/gms/internal/ads/xe;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wf;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/wh;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/xf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xe;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dsl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dsl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dsl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->c:Lcom/google/android/gms/internal/ads/dsv;

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wj;->a:Lcom/google/android/gms/internal/ads/dsv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/wj;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/wc;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/wc;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->b:Lcom/google/android/gms/internal/ads/dsv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wj;->c:Lcom/google/android/gms/internal/ads/dsv;

    .line 10
    new-instance p3, Lcom/google/android/gms/internal/ads/we;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/we;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->e:Lcom/google/android/gms/internal/ads/dsv;

    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/wg;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/wg;-><init>(Lcom/google/android/gms/internal/ads/dsv;)V

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wj;->f:Lcom/google/android/gms/internal/ads/dsv;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 16
    new-instance p3, Lcom/google/android/gms/internal/ads/xj;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/xj;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    .line 17
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dsj;->a(Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/dsv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj;->g:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;Lcom/google/android/gms/internal/ads/wi;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/wj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzf;Lcom/google/android/gms/internal/ads/wo;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/wd;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj;->d:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wd;

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/wh;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/wh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wj;->e:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wh;-><init>(Lcom/google/android/gms/internal/ads/wf;)V

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/xf;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj;->g:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xf;

    return-object v0
.end method
