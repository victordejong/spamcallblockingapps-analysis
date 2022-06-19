.class Lcom/allinone/callerid/start/GuideActivity$c;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/GuideActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/start/GuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/GuideActivity;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    iput-object p2, p0, Lcom/allinone/callerid/start/GuideActivity$c;->d:[Ljava/lang/String;

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
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->d:[Ljava/lang/String;

    aget-object p1, p1, p3

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p2, p1}, Lcom/allinone/callerid/start/GuideActivity;->Z(Lcom/allinone/callerid/start/GuideActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    sput-boolean p2, Lcom/allinone/callerid/util/h1;->a:Z

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    iput-object p1, p2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p2, p1}, Lcom/allinone/callerid/start/GuideActivity;->a0(Lcom/allinone/callerid/start/GuideActivity;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/GuideActivity;->b0(Lcom/allinone/callerid/start/GuideActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/GuideActivity;->b0(Lcom/allinone/callerid/start/GuideActivity;)Landroidx/appcompat/app/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/allinone/callerid/start/GuideActivity$c;->e:Lcom/allinone/callerid/start/GuideActivity;

    const-class p4, Lcom/allinone/callerid/start/GuideActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
