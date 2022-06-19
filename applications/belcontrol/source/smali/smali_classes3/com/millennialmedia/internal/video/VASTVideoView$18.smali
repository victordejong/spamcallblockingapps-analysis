.class public Lcom/millennialmedia/internal/video/VASTVideoView$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->setKeepScreenOnUIThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field public final synthetic val$keepScreenOn:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$18;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$18;->val$keepScreenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$18;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$18;->val$keepScreenOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    return-void
.end method
