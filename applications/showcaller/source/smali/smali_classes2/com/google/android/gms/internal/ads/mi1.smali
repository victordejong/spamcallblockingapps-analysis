.class public final Lcom/google/android/gms/internal/ads/mi1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xj2;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/bl1;

.field private final d:Lcom/google/android/gms/internal/ads/wj1;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/rn1;

.field private final g:Lcom/google/android/gms/internal/ads/jo2;

.field private final h:Lcom/google/android/gms/internal/ads/bp2;

.field private final i:Lcom/google/android/gms/internal/ads/dw1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xj2;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/bl1;Landroid/content/Context;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/wj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/bl1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mi1;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/mi1;->f:Lcom/google/android/gms/internal/ads/rn1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/mi1;->g:Lcom/google/android/gms/internal/ads/jo2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/mi1;->h:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/mi1;->i:Lcom/google/android/gms/internal/ads/dw1;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/mi1;->d:Lcom/google/android/gms/internal/ads/wj1;

    return-void
.end method

.method private final h(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mi1;->i(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->l:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->m:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/videoMeta"

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/lm0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/lm0;-><init>()V

    const-string v1, "/precache"

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->p:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/delayPageLoaded"

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->n:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/instrument"

    .line 6
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->g:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/log"

    .line 7
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/m20;->b(Lcom/google/android/gms/internal/ads/qa1;)Lcom/google/android/gms/internal/ads/n20;

    move-result-object v0

    const-string v1, "/click"

    .line 8
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->b:Lcom/google/android/gms/internal/ads/zzbrx;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jp0;->u0(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/z20;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/z20;-><init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/la0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jp0;->u0(Z)V

    .line 12
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->a()Lcom/google/android/gms/internal/ads/lg0;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lg0;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/t20;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/t20;-><init>(Landroid/content/Context;)V

    const-string v1, "/logScionEvent"

    .line 14
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_1
    return-void
.end method

.method private static final i(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->h:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/videoClicked"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jp0;->k0(Z)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->k2:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->s:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/getNativeAdViewSignals"

    .line 6
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->t:Lcom/google/android/gms/internal/ads/n20;

    const-string v1, "/getNativeClickMeta"

    .line 7
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ci1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ci1;-><init>(Lcom/google/android/gms/internal/ads/mi1;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ai1;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ai1;-><init>(Lcom/google/android/gms/internal/ads/mi1;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/r03;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ej2;",
            "Lcom/google/android/gms/internal/ads/jj2;",
            "Lcom/google/android/gms/internal/ads/zzbdl;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/wn0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/ads/bi1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bi1;-><init>(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->b:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v8, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/bl1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->l0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/mi1;->h(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/di1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/di1;-><init>(Lcom/google/android/gms/internal/ads/ui0;)V

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/jp0;->V(Lcom/google/android/gms/internal/ads/ip0;)V

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->j2:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/wn0;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/mi1;->c:Lcom/google/android/gms/internal/ads/bl1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bl1;->b(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/xj2;->b:Lcom/google/android/gms/internal/ads/zzbrx;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mi1;->h(Lcom/google/android/gms/internal/ads/wn0;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->e()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v3

    .line 4
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/wn0;->I0(Lcom/google/android/gms/internal/ads/mp0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->d:Lcom/google/android/gms/internal/ads/wj1;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wj1;->b()Lcom/google/android/gms/internal/ads/tj1;

    move-result-object v10

    move-object v6, v10

    move-object v8, v10

    move-object/from16 v21, v10

    move-object v9, v10

    move-object v7, v10

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v5

    new-instance v3, Lcom/google/android/gms/ads/internal/b;

    move-object v13, v3

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/mi1;->e:Landroid/content/Context;

    invoke-direct {v3, v11, v4, v4}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/zzcax;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->i:Lcom/google/android/gms/internal/ads/dw1;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->h:Lcom/google/android/gms/internal/ads/bp2;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->f:Lcom/google/android/gms/internal/ads/rn1;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/mi1;->g:Lcom/google/android/gms/internal/ads/jo2;

    move-object/from16 v19, v3

    const/16 v20, 0x0

    .line 8
    invoke-interface/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/jp0;->q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/mi1;->i(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 10
    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/ei1;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ei1;-><init>(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;)V

    .line 11
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 12
    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/wn0;->b1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;Z)V
    .locals 1

    if-eqz p3, :cond_1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ro0;->F6(Lcom/google/android/gms/internal/ads/zzbis;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ui0;->h()V

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 p3, 0x1

    const-string v0, "Html video Web View failed to load."

    .line 4
    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final synthetic f(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/wn0;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ui0;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ui0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xj2;->b:Lcom/google/android/gms/internal/ads/zzbrx;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->e()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    .line 2
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/wn0;->I0(Lcom/google/android/gms/internal/ads/mp0;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/mp0;->d()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v1

    .line 4
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/wn0;->I0(Lcom/google/android/gms/internal/ads/mp0;)V

    .line 5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/fi1;-><init>(Lcom/google/android/gms/internal/ads/mi1;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;)V

    .line 6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    .line 7
    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/g50;->E0(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic g(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ui0;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/mi1;->a:Lcom/google/android/gms/internal/ads/xj2;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/xj2;->a:Lcom/google/android/gms/internal/ads/zzbis;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ro0;->F6(Lcom/google/android/gms/internal/ads/zzbis;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ui0;->h()V

    return-void
.end method
