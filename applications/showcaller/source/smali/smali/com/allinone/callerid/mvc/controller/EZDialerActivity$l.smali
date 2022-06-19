.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

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
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p2}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->G()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result p2

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x16

    if-lt p2, p3, :cond_1

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$l;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100229

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method
