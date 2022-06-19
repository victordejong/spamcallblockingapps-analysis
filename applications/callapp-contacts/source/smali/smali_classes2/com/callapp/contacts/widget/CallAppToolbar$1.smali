.class Lcom/callapp/contacts/widget/CallAppToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CallAppToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CallAppToolbar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$1;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$1;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Lcom/callapp/contacts/widget/CallAppToolbar;F)F

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$1;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->c(Z)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
