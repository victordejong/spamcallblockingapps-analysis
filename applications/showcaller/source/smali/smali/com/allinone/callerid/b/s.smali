.class public Lcom/allinone/callerid/b/s;
.super Landroid/widget/BaseAdapter;
.source "QuickContactsSortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/s$c;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/QuickContactBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Landroid/view/LayoutInflater;

.field private i:Landroid/widget/ListView;

.field j:Lcom/allinone/callerid/b/s$c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/QuickContactBean;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/s;->g:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/allinone/callerid/b/s;->i:Landroid/widget/ListView;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    iput-object p3, p0, Lcom/allinone/callerid/b/s;->h:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    :goto_0
    const p2, 0x7f0402b7

    const p3, 0x7f0801dd

    .line 7
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/s;->d:I

    const p2, 0x7f0402bb

    const p3, 0x7f0801d7

    .line 8
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/s;->e:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/s;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/s;->i:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/QuickContactBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/allinone/callerid/b/s;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    iget-object v2, v2, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    .line 3
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/search/CallLogBean;->t:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/s;->h:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0073

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/s$c;

    invoke-direct {p3}, Lcom/allinone/callerid/b/s$c;-><init>()V

    iput-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f09041c

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f090437

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f090453

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->c:Landroid/widget/ImageView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f0904bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->e:Landroid/widget/FrameLayout;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f0900bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->d:Landroid/widget/ImageView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    const v2, 0x7f090451

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->e:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/s$c;

    iput-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    .line 14
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/bean/QuickContactBean;

    .line 15
    invoke-virtual {p3}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 16
    invoke-virtual {p3, v2}, Lcom/allinone/callerid/bean/QuickContactBean;->setBean(Lcom/allinone/callerid/search/CallLogBean;)V

    .line 17
    :try_start_0
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/allinone/callerid/b/s;->g:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100354

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_2
    iget-object v4, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v4, v4, Lcom/allinone/callerid/b/s$c;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v3, v3, Lcom/allinone/callerid/b/s$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v3, v3, Lcom/allinone/callerid/b/s$c;->e:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/allinone/callerid/b/s$a;

    invoke-direct {v4, p0, p1}, Lcom/allinone/callerid/b/s$a;-><init>(Lcom/allinone/callerid/b/s;I)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v3, v3, Lcom/allinone/callerid/b/s$c;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/allinone/callerid/b/s$b;

    invoke-direct {v4, p0, p1}, Lcom/allinone/callerid/b/s$b;-><init>(Lcom/allinone/callerid/b/s;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p3}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 25
    invoke-virtual {p3}, Lcom/allinone/callerid/bean/QuickContactBean;->getIsquick()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->d:Landroid/widget/ImageView;

    iget v3, p0, Lcom/allinone/callerid/b/s;->e:I

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 27
    :cond_3
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->d:Landroid/widget/ImageView;

    iget v3, p0, Lcom/allinone/callerid/b/s;->d:I

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    const v3, 0x7f0801b4

    if-eqz p3, :cond_5

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->u()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_5

    .line 29
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->g:Landroid/app/Activity;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v6, v6, Lcom/allinone/callerid/b/s$c;->c:Landroid/widget/ImageView;

    invoke-static {p3, v4, v5, v3, v6}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 31
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/16 p3, 0x7a

    const/16 v3, 0x5a

    const/16 v4, 0x61

    const/16 v5, 0x41

    const/16 v6, 0x8

    .line 32
    :try_start_1
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 33
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_6

    if-le v7, v3, :cond_7

    :cond_6
    if-lt v7, v4, :cond_8

    if-gt v7, p3, :cond_8

    .line 34
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v7, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 36
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v7

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/allinone/callerid/util/u$a;

    iget-object v7, v7, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 37
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 38
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[0-9]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 40
    iget-object v2, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    const-string v7, "#"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 41
    :cond_9
    iget-object v7, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 42
    :cond_a
    iget-object v7, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 43
    :cond_b
    iget-object v2, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v2, v2, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 44
    iget-object v7, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object v7, v7, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    const/4 v7, 0x1

    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_15

    if-lez p1, :cond_15

    .line 47
    iget-object v2, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v2

    .line 48
    iget-object v7, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/QuickContactBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/QuickContactBean;->getBean()Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_f

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_c

    if-le v7, v3, :cond_d

    :cond_c
    if-lt v7, v4, :cond_e

    if-gt v7, p3, :cond_e

    .line 51
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 52
    :cond_e
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/util/u$a;

    iget-object v2, v2, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_f
    move-object v2, v0

    :goto_4
    if-eqz p1, :cond_13

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_10

    if-le v7, v3, :cond_11

    :cond_10
    if-lt v7, v4, :cond_12

    if-gt v7, p3, :cond_12

    .line 56
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 57
    :cond_12
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_13
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 60
    iget-object p1, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 61
    :cond_14
    iget-object p1, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 62
    :cond_15
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->f:Ljava/util/List;

    if-eqz p3, :cond_16

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v7, :cond_16

    if-nez p1, :cond_16

    .line 63
    iget-object p1, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    .line 64
    iget-object p3, p0, Lcom/allinone/callerid/b/s;->j:Lcom/allinone/callerid/b/s$c;

    iget-object p3, p3, Lcom/allinone/callerid/b/s$c;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_6
    return-object p2
.end method
