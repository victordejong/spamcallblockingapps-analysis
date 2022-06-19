.class final Landroidx/fragment/app/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Landroidx/lifecycle/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 143
    iput-object p1, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 143
    check-cast p1, Landroidx/lifecycle/p;

    if-eqz p1, :cond_2

    .line 1147
    iget-object p1, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    invoke-static {p1}, Landroidx/fragment/app/c;->c(Landroidx/fragment/app/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1148
    iget-object p1, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->requireView()Landroid/view/View;

    move-result-object p1

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1153
    iget-object v0, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    invoke-static {v0}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 1154
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DialogFragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " setting the content view on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    .line 1156
    invoke-static {v1}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/c;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1158
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c$4;->a:Landroidx/fragment/app/c;

    invoke-static {v0}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 1150
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
