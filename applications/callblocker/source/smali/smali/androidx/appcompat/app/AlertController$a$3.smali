.class Landroidx/appcompat/app/AlertController$a$3;
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
.field final synthetic a:Landroidx/appcompat/app/AlertController;

.field final synthetic b:Landroidx/appcompat/app/AlertController$a;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$a;Landroidx/appcompat/app/AlertController;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$a$3;->b:Landroidx/appcompat/app/AlertController$a;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$a$3;->a:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1068
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$3;->b:Landroidx/appcompat/app/AlertController$a;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController$a$3;->a:Landroidx/appcompat/app/AlertController;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->a:Landroidx/appcompat/app/g;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1069
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$3;->b:Landroidx/appcompat/app/AlertController$a;

    iget-boolean v0, v0, Landroidx/appcompat/app/AlertController$a;->H:Z

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$a$3;->a:Landroidx/appcompat/app/AlertController;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->a:Landroidx/appcompat/app/g;

    invoke-virtual {v0}, Landroidx/appcompat/app/g;->dismiss()V

    .line 1072
    :cond_0
    return-void
.end method
