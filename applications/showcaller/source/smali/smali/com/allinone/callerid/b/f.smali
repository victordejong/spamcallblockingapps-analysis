.class public Lcom/allinone/callerid/b/f;
.super Landroid/widget/BaseAdapter;
.source "ChildAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/f$a;
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/f;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/f;->e:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/b/f;->f:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/f;->g:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/f;->e:[Ljava/lang/String;

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

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/f;->g:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0108

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/f$a;

    invoke-direct {p3, p2}, Lcom/allinone/callerid/b/f$a;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/f$a;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/b/f;->f:Ljava/lang/String;

    const-string v1, ""

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/b/f;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/allinone/callerid/b/f;->e:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/b/f;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/util/b0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    .line 7
    invoke-static {p3}, Lcom/allinone/callerid/b/f$a;->a(Lcom/allinone/callerid/b/f$a;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p3}, Lcom/allinone/callerid/b/f$a;->a(Lcom/allinone/callerid/b/f$a;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/allinone/callerid/b/f;->e:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method
