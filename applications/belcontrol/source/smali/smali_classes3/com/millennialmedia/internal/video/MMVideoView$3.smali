.class public Lcom/millennialmedia/internal/video/MMVideoView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/MMVideoView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$3;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$3;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1300(Lcom/millennialmedia/internal/video/MMVideoView;)V

    return-void
.end method
