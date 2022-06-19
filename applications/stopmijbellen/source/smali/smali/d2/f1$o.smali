.class public Ld2/f1$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->h(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/f1;Ld2/x3;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/f1$o;->a:Ld2/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f1$o;->a:Ld2/x3;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Ld2/x3;->A:Z

    if-eqz v1, :cond_0

    const-string v1, "about:blank"

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ld2/f1$o;->a:Ld2/x3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 5
    iget-object v0, p0, Ld2/f1$o;->a:Ld2/x3;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 6
    iget-object v0, p0, Ld2/f1$o;->a:Ld2/x3;

    .line 7
    iput-boolean v1, v0, Ld2/x3;->C:Z

    .line 8
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method
