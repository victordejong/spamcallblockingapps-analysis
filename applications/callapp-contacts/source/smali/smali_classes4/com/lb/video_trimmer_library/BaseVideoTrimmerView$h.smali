.class final Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/media/MediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onPrepared"
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

    iput-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$h;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$h;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->a(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;Landroid/media/MediaPlayer;)V

    return-void
.end method
