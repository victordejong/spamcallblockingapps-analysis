.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/search/EZSearchResult;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Y(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->Y(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->a0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->R(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v2, v2, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$e;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
