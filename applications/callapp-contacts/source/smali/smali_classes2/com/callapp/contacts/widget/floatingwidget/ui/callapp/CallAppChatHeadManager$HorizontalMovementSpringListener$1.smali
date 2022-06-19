.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;)I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;I)I

    return-void
.end method
