.class public Lff1$a;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lff1;->i(Landroid/view/View;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lff1;


# direct methods
.method public constructor <init>(Lff1;)V
    .locals 0

    iput-object p1, p0, Lff1$a;->a:Lff1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lff1$a;->a:Lff1;

    invoke-static {p1}, Lff1;->a(Lff1;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lff1$a;->a:Lff1;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lff1;->b(Lff1;Z)Z

    iget-object p1, p0, Lff1$a;->a:Lff1;

    new-instance p2, Lqf1;

    invoke-static {p1}, Lff1;->c(Lff1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object v0, p0, Lff1$a;->a:Lff1;

    invoke-static {v0}, Lff1;->d(Lff1;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v0, p0, Lff1$a;->a:Lff1;

    iget-object v4, v0, Lff1;->e:Lre1;

    iget-object v5, v0, Lff1;->f:Lmf1;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lqf1;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLre1;Lmf1;)V

    iput-object p2, p1, Lff1;->g:Lpf1;

    iget-object p1, p0, Lff1$a;->a:Lff1;

    iget-object p1, p1, Lff1;->g:Lpf1;

    invoke-interface {p1}, Lpf1;->a()Z

    iget-object p1, p0, Lff1$a;->a:Lff1;

    invoke-virtual {p1}, Lff1;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Luf1;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
