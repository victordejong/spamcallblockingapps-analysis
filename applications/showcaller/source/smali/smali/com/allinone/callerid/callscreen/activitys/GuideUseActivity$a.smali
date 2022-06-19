.class Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;
.super Ljava/lang/Object;
.source "GuideUseActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5f53\u524d\u9875\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "scollpage"

    invoke-static {p2, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 3

    const v0, 0x7f100348

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->X(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->X(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->X(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity$a;->d:Lcom/allinone/callerid/callscreen/activitys/GuideUseActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
