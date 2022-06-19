.class final Landroidx/media2/player/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/b;


# direct methods
.method constructor <init>(Landroidx/media2/common/b;)V
    .locals 0

    .line 47
    iput-object p1, p0, Landroidx/media2/player/b$1;->a:Landroidx/media2/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 2

    .line 50
    new-instance v0, Landroidx/media2/player/b;

    iget-object v1, p0, Landroidx/media2/player/b$1;->a:Landroidx/media2/common/b;

    invoke-direct {v0, v1}, Landroidx/media2/player/b;-><init>(Landroidx/media2/common/b;)V

    return-object v0
.end method
