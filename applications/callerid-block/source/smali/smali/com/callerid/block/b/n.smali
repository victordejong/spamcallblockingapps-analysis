.class public Lcom/callerid/block/b/n;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/n$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/n;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/b/n;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/b/n;->d:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/n;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/n;->d:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/n;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/n;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6570\u636e\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callerid/block/b/n;->c:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "testlang"

    invoke-static {v0, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/n;->b:Landroid/content/Context;

    const p3, 0x7f0c00c1

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/b/n$b;

    invoke-direct {p3, p0, v0}, Lcom/callerid/block/b/n$b;-><init>(Lcom/callerid/block/b/n;Lcom/callerid/block/b/n$a;)V

    const v0, 0x7f090407

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/b/n$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/callerid/block/b/n$b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/b/n$b;

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/b/n;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p3, Lcom/callerid/block/b/n$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/callerid/block/b/n$b;->b:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object p3, p3, Lcom/callerid/block/b/n$b;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/b/n$a;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/b/n$a;-><init>(Lcom/callerid/block/b/n;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
