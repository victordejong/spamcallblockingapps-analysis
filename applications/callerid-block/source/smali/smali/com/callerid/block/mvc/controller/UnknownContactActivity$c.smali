.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;->x0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    const v0, 0x7f0901aa

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->R(Lcom/callerid/block/mvc/controller/UnknownContactActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->Q(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$c;->a:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->S(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    :cond_0
    return-void
.end method
