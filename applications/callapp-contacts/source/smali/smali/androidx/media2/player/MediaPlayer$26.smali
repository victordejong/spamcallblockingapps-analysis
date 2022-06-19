.class final Landroidx/media2/player/MediaPlayer$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/AudioAttributesCompat;

.field final synthetic b:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media/AudioAttributesCompat;)V
    .locals 0

    .line 3226
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$26;->b:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$26;->a:Landroidx/media/AudioAttributesCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 3229
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$26;->b:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$26;->a:Landroidx/media/AudioAttributesCompat;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/common/SessionPlayer$a;->onAudioAttributesChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media/AudioAttributesCompat;)V

    return-void
.end method
