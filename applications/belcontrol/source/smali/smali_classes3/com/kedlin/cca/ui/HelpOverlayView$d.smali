.class public Lcom/kedlin/cca/ui/HelpOverlayView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/HelpOverlayView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$d;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$d;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->f(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kedlin/cca/ui/HelpOverlayView$d$a;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/ui/HelpOverlayView$d$a;-><init>(Lcom/kedlin/cca/ui/HelpOverlayView$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
