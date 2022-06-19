.class Lcom/allinone/callerid/dialog/m$b;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/i/a/g/f;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$b;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$b;->e:Lcom/allinone/callerid/i/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/EZSimpleContact;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$b;->e:Lcom/allinone/callerid/i/a/g/f;

    invoke-interface {p2, p1}, Lcom/allinone/callerid/i/a/g/f;->a(Lcom/allinone/callerid/bean/EZSimpleContact;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/dialog/m;->d()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/dialog/m;->d()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
