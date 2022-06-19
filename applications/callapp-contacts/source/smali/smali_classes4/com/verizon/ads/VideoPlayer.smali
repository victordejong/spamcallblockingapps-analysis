.class public interface abstract Lcom/verizon/ads/VideoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;
    }
.end annotation


# static fields
.field public static final COMPLETED:I = 0x6

.field public static final ERROR:I = 0x7

.field public static final IDLE:I = 0x0

.field public static final LOADED:I = 0x2

.field public static final LOADING:I = 0x1

.field public static final PAUSED:I = 0x5

.field public static final PLAYING:I = 0x4

.field public static final READY:I = 0x3


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getState()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getVolume()F
.end method

.method public abstract load(Landroid/net/Uri;)V
.end method

.method public abstract load(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract registerListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
.end method

.method public abstract releaseAudioFocus()V
.end method

.method public abstract replay()V
.end method

.method public abstract restoreInstanceState(Landroid/view/AbsSavedState;)V
.end method

.method public abstract saveInstanceState(Landroid/os/Parcelable;)Landroid/view/AbsSavedState;
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAudioFocus()V
.end method

.method public abstract setProgressInterval(I)V
.end method

.method public abstract setSurfaceView(Landroid/view/SurfaceView;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract unload()V
.end method

.method public abstract unregisterListener(Lcom/verizon/ads/VideoPlayer$VideoPlayerListener;)V
.end method
