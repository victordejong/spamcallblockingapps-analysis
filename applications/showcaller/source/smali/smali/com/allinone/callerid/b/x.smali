.class public Lcom/allinone/callerid/b/x;
.super Landroid/widget/BaseAdapter;
.source "StartChooseLangAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/x$b;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field f:Lcom/allinone/callerid/b/x$b;

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/x;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/x;->e:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/b/x;->g:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/x;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/x;->g:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/x;->e:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/x;->e:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/x;->d:Landroid/content/Context;

    const p3, 0x7f0c013c

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/x$b;

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/x$b;-><init>(Lcom/allinone/callerid/b/x$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    const v0, 0x7f0906b3

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/x$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/x$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    const v0, 0x7f09022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/allinone/callerid/b/x$b;->b:Landroid/widget/FrameLayout;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/x$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    .line 8
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->e:[Ljava/lang/String;

    aget-object p3, p3, p1

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/x$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/x$b;->b:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/x;->f:Lcom/allinone/callerid/b/x$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/x$b;->b:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/x$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/x$a;-><init>(Lcom/allinone/callerid/b/x;I)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
