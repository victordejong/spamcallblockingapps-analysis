.class final Lcom/google/android/gms/internal/ads/bqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awx;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bee;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private final e:Lcom/google/android/gms/internal/ads/cgr;

.field private final f:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bdt;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/bee;",
            "Lcom/google/android/gms/internal/ads/chh;",
            "Lcom/google/android/gms/internal/ads/yd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bdt;",
            ">;",
            "Lcom/google/android/gms/internal/ads/act;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqt;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqt;->b:Lcom/google/android/gms/internal/ads/bee;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqt;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqt;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bqt;->f:Lcom/google/android/gms/internal/ads/crt;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bqt;->g:Lcom/google/android/gms/internal/ads/act;

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/bqu;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/ads/bqt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bee;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/act;)V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 13

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqt;->f:Lcom/google/android/gms/internal/ads/crt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/bdt;

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqt;->g:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqt;->g:Lcom/google/android/gms/internal/ads/act;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbew; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    .line 36
    :goto_0
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/act;->b(Z)V

    .line 37
    new-instance v0, Lcom/google/android/gms/ads/internal/g;

    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqt;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->m(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/cgr;->F:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/cgr;->G:Z

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/g;-><init>(ZZZFIZZZ)V

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->b()Lcom/google/android/gms/ads/internal/overlay/n;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/bdt;->j()Lcom/google/android/gms/internal/ads/awo;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget v6, v5, Lcom/google/android/gms/internal/ads/cgr;->H:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/bqt;->d:Lcom/google/android/gms/internal/ads/yd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/cgr;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bqt;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    move-object v5, v12

    move-object v9, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ILcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 43
    :goto_1
    return-void

    .line 14
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aj:Lcom/google/android/gms/internal/ads/ect;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqt;->g:Lcom/google/android/gms/internal/ads/act;

    move-object v12, v0

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqt;->b:Lcom/google/android/gms/internal/ads/bee;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqt;->c:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bee;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/bdt;->k()Lcom/google/android/gms/internal/ads/avb;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/fl;->a(Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/fk;)V

    .line 20
    new-instance v2, Lcom/google/android/gms/internal/ads/bev;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/bev;-><init>()V

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqt;->a:Landroid/content/Context;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/bev;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 23
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/bdt;->l()Lcom/google/android/gms/internal/ads/beh;

    move-result-object v3

    const/4 v4, 0x1

    .line 24
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/beh;->a(Lcom/google/android/gms/internal/ads/act;Z)V

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/bqw;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/bqw;-><init>(Lcom/google/android/gms/internal/ads/bev;Lcom/google/android/gms/internal/ads/act;)V

    .line 27
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bqv;->a(Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/aeh;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aeh;)V

    .line 29
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzbew; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v0

    .line 30
    goto/16 :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
