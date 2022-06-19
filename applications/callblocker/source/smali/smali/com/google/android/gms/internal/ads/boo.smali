.class final Lcom/google/android/gms/internal/ads/boo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awx;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/avs;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/cgr;

.field private final e:Lcom/google/android/gms/internal/ads/act;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/act;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/yd;",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/avs;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/act;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boo;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/boo;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/boo;->c:Lcom/google/android/gms/internal/ads/crt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/boo;->e:Lcom/google/android/gms/internal/ads/act;

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/bok;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/boo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/act;)V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 12

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boo;->c:Lcom/google/android/gms/internal/ads/crt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/avs;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boo;->e:Lcom/google/android/gms/internal/ads/act;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->b(Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/ads/internal/g;

    const/4 v1, 0x0

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/boo;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ve;->m(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/cgr;->F:Z

    const/4 v8, 0x0

    move v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/g;-><init>(ZZZFIZZZ)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->b()Lcom/google/android/gms/ads/internal/overlay/n;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/avs;->j()Lcom/google/android/gms/internal/ads/awo;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/boo;->e:Lcom/google/android/gms/internal/ads/act;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    iget v6, v6, Lcom/google/android/gms/internal/ads/cgr;->H:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/boo;->b:Lcom/google/android/gms/internal/ads/yd;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/cgr;->y:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/cgu;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/boo;->d:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/cgu;->a:Ljava/lang/String;

    move-object v9, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/ads/act;ILcom/google/android/gms/internal/ads/yd;Ljava/lang/String;Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x1

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/n;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 16
    return-void
.end method
