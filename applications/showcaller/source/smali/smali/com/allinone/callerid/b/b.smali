.class public Lcom/allinone/callerid/b/b;
.super Landroid/widget/BaseAdapter;
.source "AddFromContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/b$c;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/EZSimpleContact;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;

.field private g:Landroid/widget/ListView;

.field h:Lcom/allinone/callerid/b/b$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/EZSimpleContact;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/b;->d:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/b;->e:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/b/b;->f:Landroid/view/LayoutInflater;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/b/b;->g:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/b;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/b;->g:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b;->e:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/b;->f:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0067

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/b$c;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/allinone/callerid/b/b$c;-><init>(Lcom/allinone/callerid/b/b$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    const v0, 0x7f09041c

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b$c;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    const v0, 0x7f090437

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b$c;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    const v0, 0x7f090453

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b$c;->c:Landroid/widget/ImageView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/b$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/b$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    const v0, 0x7f0904bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/allinone/callerid/b/b$c;->d:Landroid/widget/FrameLayout;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/b$c;->d:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/b$c;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/b$a;-><init>(Lcom/allinone/callerid/b/b;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/b$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    .line 13
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/b;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/bean/EZSimpleContact;

    .line 14
    invoke-virtual {p3}, Lcom/allinone/callerid/bean/EZSimpleContact;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/b/b;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100354

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/b$c;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/b$c;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/bean/EZSimpleContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object v0, v0, Lcom/allinone/callerid/b/b$c;->d:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/allinone/callerid/b/b$b;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/b/b$b;-><init>(Lcom/allinone/callerid/b/b;I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/b/b;->d:Landroid/app/Activity;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/allinone/callerid/bean/EZSimpleContact;->getId()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    const v0, 0x7f0801b4

    iget-object v2, p0, Lcom/allinone/callerid/b/b;->h:Lcom/allinone/callerid/b/b$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/b$c;->c:Landroid/widget/ImageView;

    invoke-static {p1, p3, v1, v0, v2}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method
