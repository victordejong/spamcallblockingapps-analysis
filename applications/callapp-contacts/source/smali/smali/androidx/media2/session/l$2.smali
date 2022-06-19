.class final Landroidx/media2/session/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/l;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroidx/media2/session/l;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Landroidx/media2/session/l$2;->c:Landroidx/media2/session/l;

    iput-object p2, p0, Landroidx/media2/session/l$2;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/l$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 161
    iget-object v0, p0, Landroidx/media2/session/l$2;->c:Landroidx/media2/session/l;

    .line 1087
    iget-object v0, v0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 161
    iget-object v1, p0, Landroidx/media2/session/l$2;->a:Landroidx/media2/session/MediaSession$b;

    const v2, 0xc352

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/l$2;->c:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$2;->c:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    return-void
.end method
