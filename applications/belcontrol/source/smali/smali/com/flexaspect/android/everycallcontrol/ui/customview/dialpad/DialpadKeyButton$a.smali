.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->a(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->b(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
