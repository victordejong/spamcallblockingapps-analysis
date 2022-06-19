.class final Landroidx/media2/player/c$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroidx/media2/common/SessionPlayer$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;I)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/media2/player/c$17;->b:Landroidx/media2/player/c;

    iput p2, p0, Landroidx/media2/player/c$17;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Landroidx/media2/player/c$17;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget v1, p0, Landroidx/media2/player/c$17;->a:I

    .line 2374
    iget-object v0, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    invoke-virtual {v0, v1}, Landroidx/media2/player/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    return-object v0
.end method
