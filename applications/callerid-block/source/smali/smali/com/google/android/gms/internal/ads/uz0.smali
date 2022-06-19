.class public final Lcom/google/android/gms/internal/ads/uz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vh;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vh;

.field private final b:Lcom/google/android/gms/internal/ads/vh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vh;Lcom/google/android/gms/internal/ads/vh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz0;->a:Lcom/google/android/gms/internal/ads/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uz0;->b:Lcom/google/android/gms/internal/ads/vh;

    return-void
.end method

.method private final a()Lcom/google/android/gms/internal/ads/vh;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->Y2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz0;->a:Lcom/google/android/gms/internal/ads/vh;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz0;->b:Lcom/google/android/gms/internal/ads/vh;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vh;->A0(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method

.method public final B0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/vh;->B0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final C0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/vh;->C0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final D0(Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vh;->D0(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final E0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/vh;->E0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1
.end method

.method public final F0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vh;->F0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    return-void
.end method

.method public final G0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/vh;->G0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vh;->H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    return-void
.end method

.method public final M(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vh;->M(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method

.method public final N(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uz0;->a()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vh;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
