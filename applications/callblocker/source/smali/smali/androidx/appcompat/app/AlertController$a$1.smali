.class Landroidx/appcompat/app/AlertController$a$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$a;->b(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field final synthetic b:Landroidx/appcompat/app/AlertController$a;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$a;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a$1;->b:Landroidx/appcompat/app/AlertController$a;

    iput-object p6, p0, Landroidx/appcompat/app/AlertController$a$1;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 998
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 999
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$1;->b:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->F:[Z

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$1;->b:Landroidx/appcompat/app/AlertController$a;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$a;->F:[Z

    aget-boolean v1, v1, p1

    .line 1001
    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$1;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1005
    :cond_0
    return-object v0
.end method
