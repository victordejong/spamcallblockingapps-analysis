.class public Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

.field final synthetic d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

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

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->b:Landroid/content/Context;

    const p3, 0x7f0c0047

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    invoke-direct {p3, p0, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$f;)V

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    const v0, 0x7f0900d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    const v0, 0x7f0900bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->b:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->b0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    const v0, 0x7f0902d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->c:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    :goto_0
    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->c:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->c:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/EZCountryCode;

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;

    iget-object p3, p3, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$b;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
