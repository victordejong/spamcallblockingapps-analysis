.class public Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->access$100(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    return-void
.end method
