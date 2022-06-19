.class public final synthetic Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$j;


# instance fields
.field public final synthetic f$0:Landroidx/media2/player/MediaPlayer$34;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/media2/common/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Landroidx/media2/player/MediaPlayer$34;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$0:Landroidx/media2/player/MediaPlayer$34;

    iput-object p2, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$2:Landroidx/media2/common/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final callCallback(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$0:Landroidx/media2/player/MediaPlayer$34;

    iget-object v1, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;->f$2:Landroidx/media2/common/MediaMetadata;

    invoke-static {v0, v1, v2, p1}, Landroidx/media2/player/MediaPlayer$34;->lambda$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg(Landroidx/media2/player/MediaPlayer$34;Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method
