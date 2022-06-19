.class public Lcom/millennialmedia/internal/video/LightboxView$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->setScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public final synthetic val$screenOn:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->val$screenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->val$screenOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->val$screenOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method
