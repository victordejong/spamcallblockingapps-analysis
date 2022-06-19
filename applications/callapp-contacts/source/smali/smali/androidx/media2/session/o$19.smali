.class final Landroidx/media2/session/o$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;J)V
    .locals 0

    .line 261
    iput-object p1, p0, Landroidx/media2/session/o$19;->b:Landroidx/media2/session/o;

    iput-wide p2, p0, Landroidx/media2/session/o$19;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object p1, p0, Landroidx/media2/session/o$19;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    iget-wide v0, p0, Landroidx/media2/session/o$19;->a:J

    invoke-interface {p1, v0, v1}, Landroidx/media2/session/MediaSession$c;->a(J)Lcom/google/common/util/concurrent/a;

    return-void
.end method
