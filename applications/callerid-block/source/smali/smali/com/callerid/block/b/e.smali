.class public Lcom/callerid/block/b/e;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/e$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/b/e;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/b/e;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/e;->e:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/e;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/e;->e:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00a2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/callerid/block/b/e$a;

    invoke-direct {p3, p0, p2}, Lcom/callerid/block/b/e$a;-><init>(Lcom/callerid/block/b/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callerid/block/b/e$a;

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/b/e;->d:Ljava/lang/String;

    const-string v1, ""

    const-string v2, " "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/b/e;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/callerid/block/b/e;->c:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/callerid/block/b/e;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/callerid/block/util/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-static {p3}, Lcom/callerid/block/b/e$a;->a(Lcom/callerid/block/b/e$a;)Landroid/widget/TextView;

    move-result-object p3

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/callerid/block/b/e$a;->a(Lcom/callerid/block/b/e$a;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/callerid/block/b/e;->c:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
