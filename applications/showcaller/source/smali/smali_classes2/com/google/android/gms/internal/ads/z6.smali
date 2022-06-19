.class public final Lcom/google/android/gms/internal/ads/z6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/w6;

.field private final c:Lcom/google/android/gms/internal/ads/z8;

.field private d:Lcom/google/android/gms/internal/ads/fn3;

.field private final e:Lcom/google/android/gms/internal/ads/xk3;

.field private f:Lcom/google/android/gms/internal/ads/w4;

.field private final g:Lcom/google/android/gms/internal/ads/on3;

.field private final h:Lcom/google/android/gms/internal/ads/rz0;

.field private final i:Landroid/os/Looper;

.field private final j:Lcom/google/android/gms/internal/ads/h83;

.field private final k:Lcom/google/android/gms/internal/ads/x6;

.field private l:Z

.field private final m:Lcom/google/android/gms/internal/ads/z2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w6;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/qq3;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/qq3;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zm3;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zm3;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zj3;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zj3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/br3;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/a3;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/a3;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/wn3;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/wn3;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/rz0;

    sget-object v7, Lcom/google/android/gms/internal/ads/z8;->a:Lcom/google/android/gms/internal/ads/z8;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/rz0;-><init>(Lcom/google/android/gms/internal/ads/z8;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->a:Landroid/content/Context;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->b:Lcom/google/android/gms/internal/ads/w6;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/fn3;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/z6;->e:Lcom/google/android/gms/internal/ads/xk3;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/z6;->f:Lcom/google/android/gms/internal/ads/w4;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/z6;->g:Lcom/google/android/gms/internal/ads/on3;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/z6;->h:Lcom/google/android/gms/internal/ads/rz0;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/wa;->P()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->i:Landroid/os/Looper;

    sget-object v1, Lcom/google/android/gms/internal/ads/h83;->a:Lcom/google/android/gms/internal/ads/h83;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->j:Lcom/google/android/gms/internal/ads/h83;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/x6;->e:Lcom/google/android/gms/internal/ads/x6;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->k:Lcom/google/android/gms/internal/ads/x6;

    const-wide/16 v1, 0x14

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v14

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/x2;->b(J)J

    move-result-wide v16

    new-instance v1, Lcom/google/android/gms/internal/ads/z2;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const v18, 0x3f7fbe77    # 0.999f

    const/16 v19, 0x0

    move-object v8, v1

    .line 8
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/z2;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/y2;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/z6;->m:Lcom/google/android/gms/internal/ads/z2;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/z6;->c:Lcom/google/android/gms/internal/ads/z8;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/z6;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/w6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Lcom/google/android/gms/internal/ads/w6;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/z8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->c:Lcom/google/android/gms/internal/ads/z8;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/fn3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/fn3;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/xk3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->e:Lcom/google/android/gms/internal/ads/xk3;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/w4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->f:Lcom/google/android/gms/internal/ads/w4;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/on3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->g:Lcom/google/android/gms/internal/ads/on3;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/rz0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->h:Lcom/google/android/gms/internal/ads/rz0;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/z6;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->i:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/h83;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->j:Lcom/google/android/gms/internal/ads/h83;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/x6;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->k:Lcom/google/android/gms/internal/ads/x6;

    return-object p0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/ads/z6;)Lcom/google/android/gms/internal/ads/z2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->m:Lcom/google/android/gms/internal/ads/z2;

    return-object p0
.end method


# virtual methods
.method public final l(Lcom/google/android/gms/internal/ads/fn3;)Lcom/google/android/gms/internal/ads/z6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/z6;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/fn3;

    return-object p0
.end method

.method public final m(Lcom/google/android/gms/internal/ads/w4;)Lcom/google/android/gms/internal/ads/z6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/z6;->l:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->f:Lcom/google/android/gms/internal/ads/w4;

    return-object p0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/d7;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/z6;->l:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/z6;->l:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/d7;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/d7;-><init>(Lcom/google/android/gms/internal/ads/z6;)V

    return-object v0
.end method
