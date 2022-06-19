.class Lcom/callapp/contacts/widget/CallAppToolbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$2;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$2;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Lcom/callapp/contacts/widget/CallAppToolbar;F)F

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$2;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Z)V

    return-void
.end method
