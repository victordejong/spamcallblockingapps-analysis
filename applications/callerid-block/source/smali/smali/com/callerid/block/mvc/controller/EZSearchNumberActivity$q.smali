.class public Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;
    }
.end annotation


# instance fields
.field b:Landroid/app/Activity;

.field final synthetic c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->b:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c00b8

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;

    invoke-direct {p3, p0, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$f;)V

    const v0, 0x7f090456

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->a:Landroid/widget/TextView;

    const v0, 0x7f09008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->b:Landroid/widget/FrameLayout;

    const v0, 0x7f0901e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->g0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/SearchHis;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SearchHis;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$b;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;Lcom/callerid/block/bean/SearchHis;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method
