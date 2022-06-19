.class public final Lru$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lru;


# direct methods
.method public constructor <init>(Lru;Landroid/media/MediaCodec;)V
    .locals 0

    iput-object p1, p0, Lru$c;->a:Lru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lru;Landroid/media/MediaCodec;Lru$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lru$c;-><init>(Lru;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    iget-object p1, p0, Lru$c;->a:Lru;

    iget-object p4, p1, Lru;->V0:Lru$c;

    if-eq p0, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lru;->X0(J)V

    return-void
.end method
