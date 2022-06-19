.class public final Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;
.super Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InlineActivityListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-direct {p0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;-><init>(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/mediation/CustomEventBanner;->onPause()V

    :cond_0
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineActivityListener;->this$0:Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;)Lcom/millennialmedia/mediation/CustomEventBanner;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/mediation/CustomEventBanner;->onResume()V

    :cond_0
    return-void
.end method
