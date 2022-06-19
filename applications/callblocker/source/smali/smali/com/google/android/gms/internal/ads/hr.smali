.class public final Lcom/google/android/gms/internal/ads/hr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hk;
.implements Lcom/google/android/gms/internal/ads/hp;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/ads/internal/a;)V
    .locals 13

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->b:Landroid/content/Context;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->d()Lcom/google/android/gms/internal/ads/adb;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/aei;->a()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwi;->a()Lcom/google/android/gms/internal/ads/dwi;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    move-object/from16 v5, p3

    move-object v6, p2

    .line 7
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/adb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/hr;)Lcom/google/android/gms/internal/ads/act;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    :goto_0
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->destroy()V

    .line 31
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/hs;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hw;->a(Lcom/google/android/gms/internal/ads/hs;)Lcom/google/android/gms/internal/ads/aeh;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aeh;)V

    .line 28
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/hv;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/hv;-><init>(Lcom/google/android/gms/internal/ads/hr;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hr;->a(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    new-instance v1, Lcom/google/android/gms/internal/ads/ib;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/ib;-><init>(Lcom/google/android/gms/internal/ads/hr;Lcom/google/android/gms/internal/ads/fa;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 24
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->a(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/hz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/hz;-><init>(Lcom/google/android/gms/internal/ads/hr;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hr;->a(Ljava/lang/Runnable;)V

    .line 20
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/fa",
            "<-",
            "Lcom/google/android/gms/internal/ads/jc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    new-instance v1, Lcom/google/android/gms/internal/ads/ht;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ht;-><init>(Lcom/google/android/gms/internal/ads/fa;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/n;)V

    .line 26
    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/hj;->b(Lcom/google/android/gms/internal/ads/hk;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->B()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/jb;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/jd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/jd;-><init>(Lcom/google/android/gms/internal/ads/jc;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/hy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/hy;-><init>(Lcom/google/android/gms/internal/ads/hr;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hr;->a(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/hu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/hu;-><init>(Lcom/google/android/gms/internal/ads/hr;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hr;->a(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method final synthetic e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->d(Ljava/lang/String;)V

    return-void
.end method
