.class public Lcom/kedlin/cca/ui/RedeemCodeEditText$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/RedeemCodeEditText;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/RedeemCodeEditText;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/RedeemCodeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RedeemCodeEditText$a;->a:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/kedlin/cca/ui/RedeemCodeEditText$a;->a:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iget-object p1, p1, Lcom/kedlin/cca/ui/RedeemCodeEditText;->a:Lcom/kedlin/cca/ui/RedeemCodeEditText$b;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/kedlin/cca/ui/RedeemCodeEditText$a;->a:Lcom/kedlin/cca/ui/RedeemCodeEditText;

    iget-object p1, p1, Lcom/kedlin/cca/ui/RedeemCodeEditText;->a:Lcom/kedlin/cca/ui/RedeemCodeEditText$b;

    invoke-interface {p1}, Lcom/kedlin/cca/ui/RedeemCodeEditText$b;->a()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
