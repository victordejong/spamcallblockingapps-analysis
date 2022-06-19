.class final Landroidx/media2/session/n$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;I)V
    .locals 0

    .line 1171
    iput-object p1, p0, Landroidx/media2/session/n$38;->b:Landroidx/media2/session/n;

    iput p2, p0, Landroidx/media2/session/n$38;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    iget v2, p0, Landroidx/media2/session/n$38;->a:I

    iget-object v0, p0, Landroidx/media2/session/n$38;->b:Landroidx/media2/session/n;

    invoke-virtual {v0}, Landroidx/media2/session/n;->n()I

    move-result v3

    iget-object v0, p0, Landroidx/media2/session/n$38;->b:Landroidx/media2/session/n;

    .line 1175
    invoke-virtual {v0}, Landroidx/media2/session/n;->o()I

    move-result v4

    iget-object v0, p0, Landroidx/media2/session/n$38;->b:Landroidx/media2/session/n;

    invoke-virtual {v0}, Landroidx/media2/session/n;->p()I

    move-result v5

    move-object v0, p1

    move v1, p2

    .line 1174
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/MediaSession$a;->a(IIIII)V

    return-void
.end method
