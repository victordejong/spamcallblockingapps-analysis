.class final Landroidx/media2/session/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media2/session/a;


# direct methods
.method constructor <init>(Landroidx/media2/session/a;Landroidx/media2/session/MediaSession$b;)V
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/media2/session/a$1;->b:Landroidx/media2/session/a;

    iput-object p2, p0, Landroidx/media2/session/a$1;->a:Landroidx/media2/session/MediaSession$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/media2/session/a$1;->b:Landroidx/media2/session/a;

    iget-object v0, v0, Landroidx/media2/session/a;->b:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/a$1;->b:Landroidx/media2/session/a;

    iget-object v0, v0, Landroidx/media2/session/a;->b:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v0, p0, Landroidx/media2/session/a$1;->b:Landroidx/media2/session/a;

    iget-object v0, v0, Landroidx/media2/session/a;->b:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    return-void
.end method
