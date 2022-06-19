.class final Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/media/MediaPlayer;",
        "kotlin.jvm.PlatformType",
        "what",
        "",
        "extra",
        "onError"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;


# direct methods
.method constructor <init>(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V
    .locals 0

    iput-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$e;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$e;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Lcom/lb/video_trimmer_library/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$e;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Lcom/lb/video_trimmer_library/a/c;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/lb/video_trimmer_library/a/c;->a()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
