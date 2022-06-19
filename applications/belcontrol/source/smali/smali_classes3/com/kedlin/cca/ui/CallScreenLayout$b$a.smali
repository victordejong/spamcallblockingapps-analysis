.class public Lcom/kedlin/cca/ui/CallScreenLayout$b$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout$b;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/CallScreenLayout$b;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b$a;->a:Lcom/kedlin/cca/ui/CallScreenLayout$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b$a;->a:Lcom/kedlin/cca/ui/CallScreenLayout$b;

    iget-object v0, v0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->a:Landroid/os/Vibrator;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
