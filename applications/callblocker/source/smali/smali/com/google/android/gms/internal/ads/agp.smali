.class final Lcom/google/android/gms/internal/ads/agp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cdl;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cev",
            "<",
            "Lcom/google/android/gms/internal/ads/ajy;",
            "Lcom/google/android/gms/internal/ads/ake;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cdn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/ccy;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cdf;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic g:Lcom/google/android/gms/internal/ads/agf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/agf;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dhw;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dht;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dhw;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dht;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->a:Lcom/google/android/gms/internal/ads/dig;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/agf;->M(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/agf;->N(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/ads/cez;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/cez;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    .line 7
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/agp;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agf;->M(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/cdu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cdu;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dhu;->a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agp;->a:Lcom/google/android/gms/internal/ads/dig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agf;->y(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agf;->t(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/agp;->c:Lcom/google/android/gms/internal/ads/dig;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/agp;->d:Lcom/google/android/gms/internal/ads/dig;

    invoke-static {}, Lcom/google/android/gms/internal/ads/chi;->b()Lcom/google/android/gms/internal/ads/chi;

    move-result-object v6

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cdg;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cdg;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhu;->a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->e:Lcom/google/android/gms/internal/ads/dig;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agf;->t(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/agp;->a:Lcom/google/android/gms/internal/ads/dig;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/agp;->b:Lcom/google/android/gms/internal/ads/dig;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/agp;->e:Lcom/google/android/gms/internal/ads/dig;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/agp;->d:Lcom/google/android/gms/internal/ads/dig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->g:Lcom/google/android/gms/internal/ads/agf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/agf;->q(Lcom/google/android/gms/internal/ads/agf;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v6

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/cdm;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/cdm;-><init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhu;->a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/dig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->f:Lcom/google/android/gms/internal/ads/dig;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/agf;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/agp;-><init>(Lcom/google/android/gms/internal/ads/agf;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cdf;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agp;->f:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cdf;

    return-object v0
.end method
