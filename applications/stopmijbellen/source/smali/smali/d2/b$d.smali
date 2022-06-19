.class public Ld2/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b;->i()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b$d;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/b$d;->a:Ld2/f1;

    invoke-virtual {v1}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    .line 3
    iget-object v1, v1, Ld2/u0;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/z0;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/z0;

    .line 7
    instance-of v2, v1, Ld2/x3;

    if-eqz v2, :cond_1

    .line 8
    move-object v2, v1

    check-cast v2, Ld2/x3;

    .line 9
    iget-boolean v3, v2, Ld2/x3;->A:Z

    if-nez v3, :cond_1

    const-string v3, "about:blank"

    .line 10
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 12
    invoke-virtual {v2}, Landroid/webkit/WebView;->removeAllViews()V

    .line 13
    iput-boolean v3, v2, Ld2/x3;->C:Z

    .line 14
    :cond_1
    iget-object v2, p0, Ld2/b$d;->a:Ld2/f1;

    invoke-interface {v1}, Ld2/z0;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ld2/f1;->h(I)Z

    goto :goto_1

    :cond_2
    return-void
.end method
