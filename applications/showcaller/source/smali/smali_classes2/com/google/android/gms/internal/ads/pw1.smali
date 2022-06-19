.class public final Lcom/google/android/gms/internal/ads/pw1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gb0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gb0;

.field private final b:Lcom/google/android/gms/internal/ads/gb0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gb0;Lcom/google/android/gms/internal/ads/gb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pw1;->a:Lcom/google/android/gms/internal/ads/gb0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pw1;->b:Lcom/google/android/gms/internal/ads/gb0;

    return-void
.end method

.method private final f()Lcom/google/android/gms/internal/ads/gb0;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->w3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw1;->a:Lcom/google/android/gms/internal/ads/gb0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pw1;->b:Lcom/google/android/gms/internal/ads/gb0;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gb0;->M(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method

.method public final U(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gb0;->U(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gb0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    const-string v3, ""

    const-string v4, "javascript"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/gb0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

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

    .line 2
    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/gb0;->c(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gb0;->d(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gb0;->e(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pw1;->f()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gb0;->zzf(Lcom/google/android/gms/dynamic/a;)V

    return-void
.end method
