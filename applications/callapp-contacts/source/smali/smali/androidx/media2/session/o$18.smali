.class final Landroidx/media2/session/o$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;)V
    .locals 0

    .line 242
    iput-object p1, p0, Landroidx/media2/session/o$18;->a:Landroidx/media2/session/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/media2/session/o$18;->a:Landroidx/media2/session/o;

    new-instance v1, Landroidx/media2/session/o$18$1;

    invoke-direct {v1, p0}, Landroidx/media2/session/o$18$1;-><init>(Landroidx/media2/session/o$18;)V

    const/4 v2, 0x0

    const/16 v3, 0x2713

    invoke-virtual {v0, p1, v2, v3, v1}, Landroidx/media2/session/o;->a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method
