.class final Landroidx/media2/widget/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/o;


# direct methods
.method constructor <init>(Landroidx/media2/widget/o;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/media2/widget/o$1;->a:Landroidx/media2/widget/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 p1, 0x4

    const/4 v4, 0x0

    if-eq v0, p1, :cond_0

    return v4

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/o$1;->a:Landroidx/media2/widget/o;

    .line 2297
    iget-boolean v5, v0, Landroidx/media2/widget/o;->f:Z

    if-eqz v5, :cond_6

    .line 2298
    iget-boolean v5, v0, Landroidx/media2/widget/o;->g:Z

    if-nez v5, :cond_7

    .line 2304
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    iget-object v5, v0, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    .line 2305
    iget-object v5, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    .line 3073
    iget-object v5, v5, Landroidx/media2/widget/p;->e:Landroid/media/MediaFormat;

    const-string v6, "is-forced-subtitle"

    .line 2306
    invoke-static {v5, v6, v4}, Landroidx/media2/widget/o$c;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 2310
    :cond_2
    iget-object v5, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    .line 3603
    invoke-virtual {v5}, Landroidx/media2/widget/p;->a()Landroidx/media2/widget/p$c;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    :goto_1
    if-ne v3, p1, :cond_5

    .line 4395
    iget-object p1, v0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/widget/o;->a(Landroid/os/Message;)V

    goto :goto_3

    .line 2309
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroidx/media2/widget/o;->d()V

    .line 2314
    :cond_5
    :goto_3
    iput-boolean v4, v0, Landroidx/media2/widget/o;->g:Z

    .line 2320
    :cond_6
    invoke-virtual {v0}, Landroidx/media2/widget/o;->b()Landroidx/media2/widget/p;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2322
    invoke-virtual {v0, p1}, Landroidx/media2/widget/o;->a(Landroidx/media2/widget/p;)Z

    .line 2323
    iput-boolean v4, v0, Landroidx/media2/widget/o;->f:Z

    .line 2324
    iget-boolean p1, v0, Landroidx/media2/widget/o;->g:Z

    if-nez p1, :cond_7

    .line 2325
    invoke-virtual {v0}, Landroidx/media2/widget/o;->d()V

    .line 2326
    iput-boolean v4, v0, Landroidx/media2/widget/o;->g:Z

    :cond_7
    return v1

    .line 73
    :cond_8
    iget-object v0, p0, Landroidx/media2/widget/o$1;->a:Landroidx/media2/widget/o;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/widget/p;

    .line 2179
    iput-boolean v1, v0, Landroidx/media2/widget/o;->f:Z

    .line 2180
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eq v2, p1, :cond_c

    .line 2184
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v2, :cond_9

    .line 2185
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    invoke-virtual {v2}, Landroidx/media2/widget/p;->c()V

    .line 2186
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media2/widget/p;->a(Landroidx/media2/widget/h;)V

    .line 2189
    :cond_9
    iput-object p1, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    .line 2190
    iget-object v2, v0, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    if-eqz v2, :cond_a

    .line 2191
    iget-object v2, v0, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    invoke-virtual {v0}, Landroidx/media2/widget/o;->a()Landroidx/media2/widget/p$c;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/media2/widget/o$a;->a(Landroidx/media2/widget/p$c;)V

    .line 2194
    :cond_a
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v2, :cond_b

    .line 2195
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    iget-object v3, v0, Landroidx/media2/widget/o;->a:Landroidx/media2/widget/h;

    invoke-virtual {v2, v3}, Landroidx/media2/widget/p;->a(Landroidx/media2/widget/h;)V

    .line 2196
    iget-object v2, v0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    invoke-virtual {v2}, Landroidx/media2/widget/p;->b()V

    .line 2199
    :cond_b
    iget-object v2, v0, Landroidx/media2/widget/o;->i:Landroidx/media2/widget/o$b;

    if-eqz v2, :cond_c

    .line 2200
    iget-object v0, v0, Landroidx/media2/widget/o;->i:Landroidx/media2/widget/o$b;

    invoke-interface {v0, p1}, Landroidx/media2/widget/o$b;->a(Landroidx/media2/widget/p;)V

    :cond_c
    return v1

    .line 70
    :cond_d
    iget-object p1, p0, Landroidx/media2/widget/o$1;->a:Landroidx/media2/widget/o;

    .line 1400
    iput-boolean v1, p1, Landroidx/media2/widget/o;->g:Z

    .line 1401
    iget-object v0, p1, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v0, :cond_e

    .line 1402
    iget-object p1, p1, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    invoke-virtual {p1}, Landroidx/media2/widget/p;->c()V

    :cond_e
    return v1

    .line 67
    :cond_f
    iget-object p1, p0, Landroidx/media2/widget/o$1;->a:Landroidx/media2/widget/o;

    .line 1383
    iput-boolean v1, p1, Landroidx/media2/widget/o;->g:Z

    .line 1384
    iget-object v0, p1, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-eqz v0, :cond_10

    .line 1385
    iget-object p1, p1, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    invoke-virtual {p1}, Landroidx/media2/widget/p;->b()V

    :cond_10
    return v1
.end method
