.class public Lcom/kedlin/cca/ui/CallScreenLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Vibrator;

.field public final synthetic b:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/os/Vibrator;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->a:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->C0()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->a:Landroid/os/Vibrator;

    if-eqz p2, :cond_2

    new-instance p2, Lcom/kedlin/cca/ui/CallScreenLayout$b$a;

    invoke-direct {p2, p0}, Lcom/kedlin/cca/ui/CallScreenLayout$b$a;-><init>(Lcom/kedlin/cca/ui/CallScreenLayout$b;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2
    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p2}, Lcom/kedlin/cca/ui/CallScreenLayout;->j(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p2}, Lcom/kedlin/cca/ui/CallScreenLayout;->j(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object p2, p0, Lcom/kedlin/cca/ui/CallScreenLayout$b;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aget-char p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->p0(C)V

    :goto_0
    return v0
.end method
