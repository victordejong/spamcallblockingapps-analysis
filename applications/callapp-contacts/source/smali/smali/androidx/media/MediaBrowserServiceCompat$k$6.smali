.class final Landroidx/media/MediaBrowserServiceCompat$k$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$l;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroidx/media/MediaBrowserServiceCompat$k;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    iput p3, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->b:I

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->c:Ljava/lang/String;

    iput p5, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->d:I

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1096
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$l;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1102
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media/MediaBrowserServiceCompat$b;

    .line 1106
    iget v4, v2, Landroidx/media/MediaBrowserServiceCompat$b;->c:I

    iget v5, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->b:I

    if-ne v4, v5, :cond_0

    .line 1108
    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->d:I

    if-gtz v4, :cond_2

    .line 1111
    :cond_1
    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$b;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v6, v4, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v7, v2, Landroidx/media/MediaBrowserServiceCompat$b;->a:Ljava/lang/String;

    iget v8, v2, Landroidx/media/MediaBrowserServiceCompat$b;->b:I

    iget v9, v2, Landroidx/media/MediaBrowserServiceCompat$b;->c:I

    iget-object v10, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->e:Landroid/os/Bundle;

    iget-object v11, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroidx/media/MediaBrowserServiceCompat$b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$l;)V

    .line 1115
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-nez v3, :cond_4

    .line 1120
    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$b;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v5, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v6, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->c:Ljava/lang/String;

    iget v7, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->d:I

    iget v8, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->b:I

    iget-object v9, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->e:Landroid/os/Bundle;

    iget-object v10, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Landroidx/media/MediaBrowserServiceCompat$b;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$l;)V

    .line 1122
    :cond_4
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$6;->f:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v1, v0, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1124
    :try_start_0
    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "MBServiceCompat"

    const-string v1, "IBinder is already dead."

    .line 1126
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
