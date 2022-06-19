.class public Lcom/allinone/callerid/b/h;
.super Landroid/widget/BaseAdapter;
.source "ContactFavAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/h$b;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private f:Landroid/app/Activity;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/LayoutInflater;

.field i:Lcom/allinone/callerid/b/h$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/h;->f:Landroid/app/Activity;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/b/h;->h:Landroid/view/LayoutInflater;

    const v0, 0x7f0402b7

    const v1, 0x7f0801dd

    .line 5
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/h;->d:I

    const v0, 0x7f0402bb

    const v1, 0x7f0801d7

    .line 6
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/h;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

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
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/h;->h:Landroid/view/LayoutInflater;

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/h$b;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/h$b;-><init>(Lcom/allinone/callerid/b/h$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    const v0, 0x7f09041c

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/h$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    const v0, 0x7f090437

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/h$b;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    const v0, 0x7f090453

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/allinone/callerid/b/h$b;->c:Landroid/widget/ImageView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    const v0, 0x7f0900bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/allinone/callerid/b/h$b;->d:Landroid/widget/ImageView;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/h$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    .line 11
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 12
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    :cond_1
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->f:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f100354

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/h$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/b/h$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/b/h$a;-><init>(Lcom/allinone/callerid/b/h;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p3

    const-string v1, "1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/b/h;->e:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/h$b;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/allinone/callerid/b/h;->d:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f0801b4

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_4

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/h;->f:Landroid/app/Activity;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object v2, v2, Lcom/allinone/callerid/b/h$b;->c:Landroid/widget/ImageView;

    invoke-static {p3, v0, p1, v1, v2}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/b/h;->i:Lcom/allinone/callerid/b/h$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/h$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-object p2
.end method
