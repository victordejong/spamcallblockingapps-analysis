.class final Landroidx/media2/exoplayer/external/upstream/Loader$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/Loader$e;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$f;->a:Landroidx/media2/exoplayer/external/upstream/Loader$e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 511
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$f;->a:Landroidx/media2/exoplayer/external/upstream/Loader$e;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/Loader$e;->f()V

    return-void
.end method
