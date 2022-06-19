.class public final Lcom/google/android/gms/internal/ads/cmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/cmh<",
        "Lcom/google/android/gms/internal/ads/bhx;",
        "Lcom/google/android/gms/internal/ads/bhu;",
        ">;>;"
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
            "Lcom/google/android/gms/internal/ads/cqs;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dsv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/crn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;Lcom/google/android/gms/internal/ads/dsv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/cqs;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dsv<",
            "Lcom/google/android/gms/internal/ads/crn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmq;->a:Lcom/google/android/gms/internal/ads/dsv;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmq;->b:Lcom/google/android/gms/internal/ads/dsv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cmq;->c:Lcom/google/android/gms/internal/ads/dsv;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmq;->a:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmq;->b:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cqs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cmq;->c:Lcom/google/android/gms/internal/ads/dsv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dsv;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/crn;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->dS:Lcom/google/android/gms/internal/ads/af;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/clj;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/clj;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/crf;->zzhrd:Lcom/google/android/gms/internal/ads/crf;

    new-instance v5, Lcom/google/android/gms/internal/ads/clo;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/clo;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/crn;->a(Lcom/google/android/gms/internal/ads/crf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/cru;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/clk;

    new-instance v2, Lcom/google/android/gms/internal/ads/cmc;

    new-instance v3, Lcom/google/android/gms/internal/ads/cly;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/cly;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/cmc;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/clt;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/crm;->a:Lcom/google/android/gms/internal/ads/cqz;

    sget-object v5, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/clt;-><init>(Lcom/google/android/gms/internal/ads/cqz;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/crm;->b:Lcom/google/android/gms/internal/ads/crr;

    sget-object v4, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/clk;-><init>(Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/crr;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cly;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/cly;-><init>()V

    .line 17
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cmh;

    return-object v0
.end method
