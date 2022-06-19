.class Lcom/callapp/contacts/widget/CallAppToolbar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$3;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

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

    .line 164
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$3;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Lcom/callapp/contacts/widget/CallAppToolbar;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 165
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$3;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Lcom/callapp/contacts/widget/CallAppToolbar;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Lcom/callapp/contacts/widget/CallAppToolbar;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
