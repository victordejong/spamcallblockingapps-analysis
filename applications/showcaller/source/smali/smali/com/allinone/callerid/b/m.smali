.class public Lcom/allinone/callerid/b/m;
.super Landroid/widget/BaseAdapter;
.source "EZFavListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/m$c;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/m;->d:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/m;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/m;->d:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    new-instance v1, Lcom/allinone/callerid/b/m$c;

    invoke-direct {v1}, Lcom/allinone/callerid/b/m$c;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/b/m;->d:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090436

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v1, Lcom/allinone/callerid/b/m$c;->a:Landroid/widget/TextView;

    const p3, 0x7f09041b

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f090453

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v1, Lcom/allinone/callerid/b/m$c;->b:Landroid/widget/ImageView;

    const p3, 0x7f0904bf

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, v1, Lcom/allinone/callerid/b/m$c;->d:Landroid/widget/FrameLayout;

    const p3, 0x7f0900bd

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v1, Lcom/allinone/callerid/b/m$c;->e:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 11
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/allinone/callerid/b/m$c;

    .line 14
    :goto_1
    iget-object p3, p0, Lcom/allinone/callerid/b/m;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 15
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, ""

    if-eqz p3, :cond_2

    :try_start_3
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    .line 16
    :cond_1
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 18
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 19
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_3
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :goto_3
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 23
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0801b4

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 25
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/m;->d:Landroid/app/Activity;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/allinone/callerid/b/m$c;->b:Landroid/widget/ImageView;

    invoke-static {p3, v3, v2, v0, v4}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_4

    .line 27
    :cond_5
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    :goto_4
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/allinone/callerid/b/m$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/m$a;-><init>(Lcom/allinone/callerid/b/m;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object p3, v1, Lcom/allinone/callerid/b/m$c;->d:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/m$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/m$b;-><init>(Lcom/allinone/callerid/b/m;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object p2
.end method
