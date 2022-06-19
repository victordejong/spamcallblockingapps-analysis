.class public Ld2/x3$j;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;Ld2/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 2
    iget-object v0, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 3
    iget v0, v0, Ld2/x3;->l:I

    const-string v1, "id"

    .line 4
    invoke-static {p1, v1, v0}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v0, "url"

    .line 5
    invoke-static {p1, v0, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 7
    iget-object v0, p2, Ld2/x3;->L:Ld2/j0;

    const-string v2, "WebView.on_load"

    const-string v3, "ad_session_id"

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ld2/t0;

    .line 9
    iget p2, p2, Ld2/x3;->u:I

    .line 10
    invoke-direct {v0, v2, p2, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p2, Ld2/x3;->e:Ljava/lang/String;

    .line 12
    invoke-static {p1, v3, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 14
    iget-object p2, p2, Ld2/x3;->L:Ld2/j0;

    .line 15
    iget p2, p2, Ld2/j0;->j:I

    const-string v0, "container_id"

    .line 16
    invoke-static {p1, v0, p2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 17
    new-instance p2, Ld2/t0;

    iget-object v0, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 18
    iget-object v0, v0, Ld2/x3;->L:Ld2/j0;

    .line 19
    iget v0, v0, Ld2/j0;->k:I

    .line 20
    invoke-direct {p2, v2, v0, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p2}, Ld2/t0;->b()V

    .line 21
    :goto_0
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 22
    iget-boolean p2, p1, Ld2/x3;->y:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 23
    iget-boolean p2, p1, Ld2/x3;->z:Z

    if-eqz p2, :cond_b

    .line 24
    :cond_1
    iget-boolean p2, p1, Ld2/x3;->B:Z

    if-nez p2, :cond_b

    .line 25
    iget p2, p1, Ld2/x3;->v:I

    if-lez p2, :cond_2

    move p1, p2

    goto :goto_1

    .line 26
    :cond_2
    iget p1, p1, Ld2/x3;->u:I

    :goto_1
    if-lez p2, :cond_3

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result p2

    .line 28
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 29
    iget-object v2, v2, Ld2/x3;->J:Ld2/f4;

    .line 30
    invoke-static {}, Ld2/i3;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld2/i3;->x(Ljava/lang/String;)I

    move-result v4

    const-string v5, "app_orientation"

    invoke-static {v2, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 31
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 32
    iget-object v4, v2, Ld2/x3;->J:Ld2/f4;

    .line 33
    invoke-static {v2}, Ld2/i3;->b(Landroid/view/View;)I

    move-result v2

    const-string v5, "x"

    invoke-static {v4, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 34
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 35
    iget-object v4, v2, Ld2/x3;->J:Ld2/f4;

    .line 36
    invoke-static {v2}, Ld2/i3;->n(Landroid/view/View;)I

    move-result v2

    const-string v5, "y"

    invoke-static {v4, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 37
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 38
    iget-object v4, v2, Ld2/x3;->J:Ld2/f4;

    .line 39
    iget v2, v2, Ld2/x3;->q:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    const-string v5, "width"

    .line 40
    invoke-static {v4, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 41
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 42
    iget-object v4, v2, Ld2/x3;->J:Ld2/f4;

    .line 43
    iget v2, v2, Ld2/x3;->s:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int p2, v2

    const-string v2, "height"

    .line 44
    invoke-static {v4, v2, p2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 45
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 46
    iget-object v2, p2, Ld2/x3;->J:Ld2/f4;

    .line 47
    iget-object p2, p2, Ld2/x3;->e:Ljava/lang/String;

    .line 48
    invoke-static {v2, v3, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    :cond_3
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 50
    iget p2, p2, Ld2/x3;->u:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_a

    .line 51
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    invoke-virtual {p2}, Ld2/f1;->l()Ld2/k0;

    move-result-object p2

    .line 52
    new-instance v4, Ld2/d4;

    invoke-direct {v4}, Ld2/d4;-><init>()V

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object p2, p2, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld2/q;

    .line 57
    iget v7, v6, Ld2/q;->l:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_6

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_4

    .line 58
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld2/q;

    .line 60
    new-instance v6, Ld2/f4;

    invoke-direct {v6}, Ld2/f4;-><init>()V

    .line 61
    iget-object v7, v5, Ld2/q;->g:Ljava/lang/String;

    .line 62
    invoke-static {v6, v3, v7}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    iget-object v7, v5, Ld2/q;->h:Ljava/lang/String;

    if-nez v7, :cond_8

    const-string v7, ""

    :cond_8
    const-string v8, "ad_id"

    .line 64
    invoke-static {v6, v8, v7}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    iget-object v7, v5, Ld2/q;->i:Ljava/lang/String;

    const-string v8, "zone_id"

    .line 66
    invoke-static {v6, v8, v7}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    iget-object v5, v5, Ld2/q;->k:Ljava/lang/String;

    const-string v7, "ad_request_id"

    .line 68
    invoke-static {v6, v7, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    invoke-virtual {v4, v6}, Ld2/d4;->a(Ld2/f4;)Ld2/d4;

    goto :goto_5

    .line 70
    :cond_9
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 71
    iget-object p2, p2, Ld2/x3;->J:Ld2/f4;

    const-string v3, "ads_to_restore"

    .line 72
    invoke-static {p2, v3, v4}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 73
    :cond_a
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v3

    .line 74
    iput-object v3, p2, Ld2/x3;->k:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ld2/f4;

    .line 75
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    aput-object v3, p2, v2

    .line 76
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 77
    iget-object v2, v2, Ld2/x3;->J:Ld2/f4;

    aput-object v2, p2, v0

    .line 78
    invoke-static {p2}, Ld2/e4;->e([Ld2/f4;)Ld2/f4;

    move-result-object p2

    .line 79
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 80
    iget-object v2, v2, Ld2/x3;->k:Ljava/lang/String;

    const-string v3, "message_key"

    .line 81
    invoke-static {p2, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    const-string v3, "ADC3_init("

    const-string v4, ","

    invoke-static {v3, p1, v4}, Landroid/support/v4/media/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ld2/x3;->r(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 84
    iput-boolean v0, p1, Ld2/x3;->B:Z

    .line 85
    :cond_b
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 86
    iget-boolean p2, p1, Ld2/x3;->z:Z

    if-eqz p2, :cond_d

    .line 87
    iget p2, p1, Ld2/x3;->u:I

    if-ne p2, v0, :cond_c

    .line 88
    iget p1, p1, Ld2/x3;->v:I

    if-lez p1, :cond_d

    .line 89
    :cond_c
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    const-string p2, "success"

    .line 90
    invoke-static {p1, p2, v0}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 91
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 92
    iget p2, p2, Ld2/x3;->u:I

    .line 93
    invoke-static {p1, v1, p2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 94
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 95
    iget-object p2, p2, Ld2/x3;->M:Ld2/t0;

    .line 96
    invoke-virtual {p2, p1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :cond_d
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p1, Ld2/x3;->B:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    invoke-static {p1, p2, p3, p4}, Ld2/x3;->k(Ld2/x3;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 4
    new-instance p2, Ld2/f4;

    invoke-direct {p2}, Ld2/f4;-><init>()V

    const-string v0, "An error occurred while rendering the ad. Ad closing."

    .line 5
    invoke-static {p1, p2, v0}, Ld2/x3;->l(Ld2/x3;Ld2/f4;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 2
    iget-boolean v0, p1, Ld2/x3;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ld2/x3;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Ld2/i3;->g(Landroid/content/Intent;)Z

    .line 5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->c()Ld2/e3;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 7
    iget-object v1, v1, Ld2/x3;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 10
    iget-object v1, v1, Ld2/x3;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-string v1, "url"

    .line 13
    invoke-static {v0, v1, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    iget-object p2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 15
    iget-object p2, p2, Ld2/x3;->e:Ljava/lang/String;

    const-string v1, "ad_session_id"

    .line 16
    invoke-static {v0, v1, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    new-instance p2, Ld2/t0;

    iget-object v1, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 18
    iget-object v1, v1, Ld2/x3;->L:Ld2/j0;

    .line 19
    iget v1, v1, Ld2/j0;->k:I

    const-string v2, "WebView.redirect_detected"

    .line 20
    invoke-direct {p2, v2, v1, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p2}, Ld2/t0;->b()V

    goto :goto_0

    .line 21
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading called with null url, with ad id: "

    .line 22
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ld2/x3$j;->a:Ld2/x3;

    .line 23
    invoke-virtual {v2}, Ld2/x3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {v1, v1, p2, p1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return p1

    :cond_2
    return v1
.end method
