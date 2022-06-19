.class public Lcom/kedlin/cca/ui/HelpOverlayView$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/HelpOverlayView$d;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$d$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$d$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView$d;

    iget-object v0, v0, Lcom/kedlin/cca/ui/HelpOverlayView$d;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->d(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    :try_start_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$d$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView$d;

    iget-object v0, v0, Lcom/kedlin/cca/ui/HelpOverlayView$d;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->e(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
