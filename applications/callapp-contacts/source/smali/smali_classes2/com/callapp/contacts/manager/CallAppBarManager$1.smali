.class Lcom/callapp/contacts/manager/CallAppBarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppBarManager;->a(ILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;

.field final synthetic e:Lcom/callapp/contacts/manager/CallAppBarManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppBarManager;IILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->e:Lcom/callapp/contacts/manager/CallAppBarManager;

    iput p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->a:I

    iput p3, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->b:I

    iput-object p4, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->d:Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/b;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->e:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(Lcom/callapp/contacts/manager/CallAppBarManager;)Landroidx/appcompat/view/b;

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->e:Lcom/callapp/contacts/manager/CallAppBarManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppBarManager;->b(Lcom/callapp/contacts/manager/CallAppBarManager;)Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->a()V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 3

    .line 152
    invoke-virtual {p1}, Landroidx/appcompat/view/b;->a()Landroid/view/MenuInflater;

    move-result-object v0

    .line 153
    iget v1, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->a:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->b:I

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/b;->b(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager$1;->d:Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 0

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->setActionModeBackgroundColor(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    return p1
.end method
