.class Landroidx/appcompat/widget/AppCompatSpinner$c$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner$c;-><init>(Landroidx/appcompat/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatSpinner;

.field final synthetic b:Landroidx/appcompat/widget/AppCompatSpinner$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner$c;Landroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->a:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 968
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 969
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v0, v0, Landroidx/appcompat/widget/AppCompatSpinner$c;->b:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatSpinner$c;->a:Landroid/widget/ListAdapter;

    .line 971
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 973
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$c$1;->b:Landroidx/appcompat/widget/AppCompatSpinner$c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner$c;->d()V

    .line 974
    return-void
.end method
