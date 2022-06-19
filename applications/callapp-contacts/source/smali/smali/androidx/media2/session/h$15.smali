.class final Landroidx/media2/session/h$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/media2/common/MediaMetadata;

.field final synthetic c:Landroidx/media2/session/h;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    .line 980
    iput-object p1, p0, Landroidx/media2/session/h$15;->c:Landroidx/media2/session/h;

    iput-object p2, p0, Landroidx/media2/session/h$15;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/h$15;->b:Landroidx/media2/common/MediaMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media2/session/MediaController$a;)V
    .locals 2

    .line 983
    iget-object v0, p0, Landroidx/media2/session/h$15;->c:Landroidx/media2/session/h;

    iget-object v0, v0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/h$15;->a:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/session/h$15;->b:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$a;->a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method
