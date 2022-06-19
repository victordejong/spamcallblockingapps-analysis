.class Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;
.super Ljava/lang/Object;
.source "ReportContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/w/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->h0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const v0, 0x7f1002a3

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {v4}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Z(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity$a;->a:Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;->Y(Lcom/allinone/callerid/mvc/controller/report/ReportContactActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method
