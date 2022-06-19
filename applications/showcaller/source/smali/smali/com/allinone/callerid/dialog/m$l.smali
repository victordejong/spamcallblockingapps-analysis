.class Lcom/allinone/callerid/dialog/m$l;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->i(Landroid/app/Activity;Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/allinone/callerid/i/a/b;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$l;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$l;->e:Lcom/allinone/callerid/i/a/b;

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
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$l;->d:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/model/EZCountryCode;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/dialog/m$l;->e:Lcom/allinone/callerid/i/a/b;

    invoke-interface {p2, p1}, Lcom/allinone/callerid/i/a/b;->a(Lcom/allinone/callerid/model/EZCountryCode;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/dialog/m;->c()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/dialog/m;->c()Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
