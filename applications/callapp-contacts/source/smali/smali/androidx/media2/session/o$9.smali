.class final Landroidx/media2/session/o$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;I)V
    .locals 0

    .line 403
    iput-object p1, p0, Landroidx/media2/session/o$9;->b:Landroidx/media2/session/o;

    iput p2, p0, Landroidx/media2/session/o$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object p1, p0, Landroidx/media2/session/o$9;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    iget v0, p0, Landroidx/media2/session/o$9;->a:I

    invoke-interface {p1, v0}, Landroidx/media2/session/MediaSession$c;->e(I)Lcom/google/common/util/concurrent/a;

    return-void
.end method
