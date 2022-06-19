.class public interface abstract Landroidx/media2/exoplayer/external/audio/AudioSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$a;
    }
.end annotation


# virtual methods
.method public abstract a(Z)J
.end method

.method public abstract a()V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(III[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract a(Landroidx/media2/exoplayer/external/ad;)V
.end method

.method public abstract a(Landroidx/media2/exoplayer/external/audio/AudioSink$a;)V
.end method

.method public abstract a(Landroidx/media2/exoplayer/external/audio/c;)V
.end method

.method public abstract a(Landroidx/media2/exoplayer/external/audio/p;)V
.end method

.method public abstract a(II)Z
.end method

.method public abstract a(Ljava/nio/ByteBuffer;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Landroidx/media2/exoplayer/external/ad;
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method
