.class Lcom/callapp/contacts/widget/SearchAnimationToolbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


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

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$2;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchAnimationToolbar$2;->a:Lcom/callapp/contacts/widget/SearchAnimationToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SearchAnimationToolbar;->a(Lcom/callapp/contacts/widget/SearchAnimationToolbar;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
