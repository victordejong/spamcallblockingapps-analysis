.class public final Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lb/video_trimmer_library/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$4",
        "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;",
        "onCreate",
        "",
        "rangeSeekBarView",
        "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;",
        "index",
        "",
        "value",
        "",
        "onSeek",
        "onSeekStart",
        "onSeekStop",
        "video_trimmer_library_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$g;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V
    .locals 1

    const-string v0, "rangeSeekBarView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;IF)V
    .locals 1

    const-string v0, "rangeSeekBarView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$g;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {p1, p2, p3}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->a(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;IF)V

    return-void
.end method

.method public final b(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V
    .locals 1

    const-string v0, "rangeSeekBarView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V
    .locals 1

    const-string v0, "rangeSeekBarView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$g;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->e(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V

    return-void
.end method
