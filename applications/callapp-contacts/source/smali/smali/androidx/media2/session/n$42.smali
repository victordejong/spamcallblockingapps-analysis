.class final Landroidx/media2/session/n$42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n;->a(Landroidx/media2/session/MediaController$PlaybackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaController$PlaybackInfo;

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;Landroidx/media2/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Landroidx/media2/session/n$42;->b:Landroidx/media2/session/n;

    iput-object p2, p0, Landroidx/media2/session/n$42;->a:Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    iget-object v0, p0, Landroidx/media2/session/n$42;->a:Landroidx/media2/session/MediaController$PlaybackInfo;

    invoke-virtual {p1, p2, v0}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/session/MediaController$PlaybackInfo;)V

    return-void
.end method
