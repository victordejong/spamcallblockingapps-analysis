.class Lcom/callapp/contacts/widget/SearchAnimationToolbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SearchAnimationToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$3;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 154
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$3;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->b(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    invoke-static {}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->c()V

    const/4 p1, 0x1

    return p1
.end method
