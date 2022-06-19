.class final Landroidx/media2/session/n$35;
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
.field final synthetic a:Landroidx/media2/common/MediaMetadata;

.field final synthetic b:Landroidx/media2/session/n;


# direct methods
.method constructor <init>(Landroidx/media2/session/n;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Landroidx/media2/session/n$35;->b:Landroidx/media2/session/n;

    iput-object p2, p0, Landroidx/media2/session/n$35;->a:Landroidx/media2/common/MediaMetadata;

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

    .line 1142
    iget-object v0, p0, Landroidx/media2/session/n$35;->a:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {p1, p2, v0}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/MediaMetadata;)V

    return-void
.end method
