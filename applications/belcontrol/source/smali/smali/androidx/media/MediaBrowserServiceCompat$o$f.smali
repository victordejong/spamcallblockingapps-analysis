.class public Landroidx/media/MediaBrowserServiceCompat$o$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$o;->e(Landroidx/media/MediaBrowserServiceCompat$p;Ljava/lang/String;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media/MediaBrowserServiceCompat$p;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Landroidx/media/MediaBrowserServiceCompat$o;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$o;Landroidx/media/MediaBrowserServiceCompat$p;ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->a:Landroidx/media/MediaBrowserServiceCompat$p;

    iput p3, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->b:I

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->c:Ljava/lang/String;

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->d:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->a:Landroidx/media/MediaBrowserServiceCompat$p;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$p;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$o;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lb4;

    invoke-virtual {v1, v0}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$o;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media/MediaBrowserServiceCompat$f;

    iget v4, v3, Landroidx/media/MediaBrowserServiceCompat$f;->c:I

    iget v5, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->b:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->d:I

    if-gtz v4, :cond_2

    :cond_1
    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iget-object v6, v4, Landroidx/media/MediaBrowserServiceCompat$o;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v7, v3, Landroidx/media/MediaBrowserServiceCompat$f;->a:Ljava/lang/String;

    iget v8, v3, Landroidx/media/MediaBrowserServiceCompat$f;->b:I

    iget v9, v3, Landroidx/media/MediaBrowserServiceCompat$f;->c:I

    iget-object v10, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->f:Landroid/os/Bundle;

    iget-object v11, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->a:Landroidx/media/MediaBrowserServiceCompat$p;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$p;)V

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iget-object v4, v1, Landroidx/media/MediaBrowserServiceCompat$o;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v5, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->c:Ljava/lang/String;

    iget v6, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->d:I

    iget v7, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->b:I

    iget-object v8, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->f:Landroid/os/Bundle;

    iget-object v9, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->a:Landroidx/media/MediaBrowserServiceCompat$p;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/media/MediaBrowserServiceCompat$f;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$p;)V

    :cond_4
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$o$f;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$o;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Lb4;

    invoke-virtual {v1, v0, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
