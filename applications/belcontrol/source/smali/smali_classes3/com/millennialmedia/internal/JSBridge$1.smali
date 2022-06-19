.class public Lcom/millennialmedia/internal/JSBridge$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;-><init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    instance-of p2, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result p2

    iget-object p3, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget p3, p3, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    if-eq p3, p2, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Detected change in orientation to "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput p2, p3, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {p3, p1}, Lcom/millennialmedia/internal/JSBridge;->sendPositions(Lcom/millennialmedia/internal/MMWebView;)V

    :cond_1
    return-void
.end method
