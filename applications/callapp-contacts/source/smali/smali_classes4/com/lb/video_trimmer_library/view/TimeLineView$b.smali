.class final Lcom/lb/video_trimmer_library/view/TimeLineView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/view/TimeLineView;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lb/video_trimmer_library/view/TimeLineView;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lb/video_trimmer_library/view/TimeLineView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    iput-object p2, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->b(Lcom/lb/video_trimmer_library/view/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->b(Lcom/lb/video_trimmer_library/view/TimeLineView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->b:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-virtual {v0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->invalidate()V

    return-void
.end method
