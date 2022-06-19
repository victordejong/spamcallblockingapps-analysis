.class Landroidx/appcompat/app/AlertController$a$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$a;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field final synthetic b:Landroidx/appcompat/app/AlertController;

.field final synthetic c:Landroidx/appcompat/app/AlertController$a;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a$4;->c:Landroidx/appcompat/app/AlertController$a;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$a$4;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController$a$4;->b:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$4;->c:Landroidx/appcompat/app/AlertController$a;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$a;->F:[Z

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$4;->c:Landroidx/appcompat/app/AlertController$a;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$a;->F:[Z

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$4;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1081
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$4;->c:Landroidx/appcompat/app/AlertController$a;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$a;->J:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$4;->b:Landroidx/appcompat/app/AlertController;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->a:Landroidx/appcompat/app/g;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$a$4;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1082
    invoke-virtual {v2, p3}, Landroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1081
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1083
    return-void
.end method
