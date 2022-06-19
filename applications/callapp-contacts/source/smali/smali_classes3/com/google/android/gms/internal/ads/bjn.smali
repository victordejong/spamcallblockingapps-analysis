.class public final Lcom/google/android/gms/internal/ads/bjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/ehk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/eht$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/eht$a$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjn;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bjn;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bjn;->c:Lcom/google/android/gms/internal/ads/dsv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bjn;->d:Lcom/google/android/gms/internal/ads/dsv;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bjn;->e:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)Lcom/google/android/gms/internal/ads/bjn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/eht$a$a;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bjn;"
        }
    .end annotation

    .line 8
    new-instance v6, Lcom/google/android/gms/internal/ads/bjn;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bjn;-><init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjn;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bjn;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bjn;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bjn;->d:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/eht$a$a;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bjn;->e:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    new-instance v5, Lcom/google/android/gms/internal/ads/ehk;

    new-instance v6, Lcom/google/android/gms/internal/ads/ehq;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/ehq;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/ehk;-><init>(Lcom/google/android/gms/internal/ads/ehq;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$z;->a()Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzeka:I

    .line 14
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/eht$z$a;->a(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/eht$z$a;->b(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v0

    .line 16
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzekc:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/eht$z$a;->c(I)Lcom/google/android/gms/internal/ads/eht$z$a;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$z;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/bjo;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/bjo;-><init>(Lcom/google/android/gms/internal/ads/eht$a$a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/eht$z;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/ehk;->a(Lcom/google/android/gms/internal/ads/ehj;)V

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ehk;

    return-object v0
.end method
