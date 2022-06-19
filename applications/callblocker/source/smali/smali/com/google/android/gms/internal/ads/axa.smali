.class public final Lcom/google/android/gms/internal/ads/axa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;
.implements Lcom/google/android/gms/internal/ads/arg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/act;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/yd;

.field private final e:Lcom/google/android/gms/internal/ads/dwv$a$a;

.field private f:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/dwv$a$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axa;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/axa;->c:Lcom/google/android/gms/internal/ads/cgr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/axa;->d:Lcom/google/android/gms/internal/ads/yd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/axa;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->e:Lcom/google/android/gms/internal/ads/dwv$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/dwv$a$a;->c:Lcom/google/android/gms/internal/ads/dwv$a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cgr;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axa;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nv;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axa;->d:Lcom/google/android/gms/internal/ads/yd;

    iget v1, v1, Lcom/google/android/gms/internal/ads/yd;->c:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->L:Lorg/json/JSONObject;

    const-string/jumbo v2, "media_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    const/4 v5, 0x0

    .line 15
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, "javascript"

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/nv;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 22
    :cond_1
    return-void

    .line 13
    :cond_2
    const-string/jumbo v5, "javascript"

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->b:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v1, "onSdkImpression"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public final h_()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/axa;->f:Lcom/google/android/gms/dynamic/a;

    .line 24
    return-void
.end method
