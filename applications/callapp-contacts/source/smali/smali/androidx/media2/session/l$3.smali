.class final Landroidx/media2/session/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/l;->a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$i;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroidx/media2/session/l;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iput-object p2, p0, Landroidx/media2/session/l$3;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p4, p0, Landroidx/media2/session/l$3;->c:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media2/session/l$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 193
    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    .line 1087
    iget-object v0, v0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 193
    iget-object v1, p0, Landroidx/media2/session/l$3;->a:Landroidx/media2/session/MediaSession$b;

    const v2, 0xc353

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/l$3;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 203
    iget-object v2, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v2, v2, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v2}, Landroidx/media2/session/MediaLibraryService$a$b;->F()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 205
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/l$3;->c:Landroid/os/Bundle;

    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 206
    iget-object v2, p0, Landroidx/media2/session/l$3;->c:Landroid/os/Bundle;

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v0, :cond_2

    if-lez v2, :cond_2

    .line 209
    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 210
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->F()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/session/l$3;->c:Landroid/os/Bundle;

    .line 209
    invoke-static {v0, v2}, Landroidx/media2/session/s;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 211
    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 212
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->c()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->a()I

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    iget-object v0, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    .line 1211
    iget-object v0, v0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    .line 219
    invoke-static {v0}, Landroidx/media2/session/s;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroidx/media2/session/s;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 233
    :cond_2
    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$3;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 234
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->c()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->a()I

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    iget-object v0, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void

    .line 241
    :cond_3
    iget-object v1, p0, Landroidx/media2/session/l$3;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    .line 2211
    iget-object v0, v0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    .line 242
    invoke-static {v0}, Landroidx/media2/session/s;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroidx/media2/session/s;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void
.end method
