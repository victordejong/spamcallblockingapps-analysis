.class public Lcom/allinone/callerid/d/a/a;
.super Landroid/widget/BaseAdapter;
.source "ContactsCallScreenAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/d/a/a$b;,
        Lcom/allinone/callerid/d/a/a$c;
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Landroid/app/Activity;

.field private h:Landroid/view/LayoutInflater;

.field i:Lcom/allinone/callerid/d/a/a$c;

.field private j:Lcom/allinone/callerid/d/a/a$b;

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/d/a/a;->e:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/a/a;->f:Landroid/content/Context;

    .line 4
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/allinone/callerid/d/a/a;->g:Landroid/app/Activity;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/a/a;->h:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    :goto_0
    const p2, 0x7f04006e

    const v0, 0x7f08008b

    .line 8
    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/d/a/a;->k:I

    const p2, 0x7f04006d

    const v0, 0x7f08008a

    .line 9
    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/d/a/a;->l:I

    const p2, 0x7f04006f

    const v0, 0x7f08008c

    .line 10
    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/d/a/a;->m:I

    const p2, 0x7f040070

    const v0, 0x7f08008d

    .line 11
    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/d/a/a;->n:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/d/a/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/d/a/a;)Lcom/allinone/callerid/d/a/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/d/a/a;->j:Lcom/allinone/callerid/d/a/a$b;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/allinone/callerid/d/a/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/a;->j:Lcom/allinone/callerid/d/a/a$b;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/allinone/callerid/d/a/a;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getSortLetters()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getSortLetters()Ljava/lang/String;

    move-result-object v2

    .line 4
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
    iget-object v0, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getSortLetters()Ljava/lang/String;

    move-result-object p1

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
    .locals 10

    const-string p3, ""

    const/16 v0, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/d/a/a;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bf

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance v1, Lcom/allinone/callerid/d/a/a$c;

    invoke-direct {v1}, Lcom/allinone/callerid/d/a/a$c;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f09041c

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->a:Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f090437

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->b:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f090453

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->c:Landroid/widget/ImageView;

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f090451

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f0904bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->e:Landroid/widget/FrameLayout;

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f0904be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f0904e8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->g:Landroid/widget/RelativeLayout;

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f0904dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->e:Landroid/widget/FrameLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    const v2, 0x7f0902c8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/allinone/callerid/d/a/a$c;->i:Landroid/widget/CheckBox;

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/d/a/a$c;

    iput-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    if-eqz v1, :cond_34

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 22
    :cond_1
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100354

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 23
    :cond_2
    iget-object v5, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v5, v5, Lcom/allinone/callerid/d/a/a$c;->c:Landroid/widget/ImageView;

    const v6, 0x7f0801b4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v5, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v5, v5, Lcom/allinone/callerid/d/a/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, " - "

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 26
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100303

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDefault_themtname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDefault_themtname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 28
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100121

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDefault_themtname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 29
    :cond_4
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/d/a/a;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100233

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_1
    iget-boolean v4, v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isselect:Z

    if-eqz v4, :cond_5

    .line 31
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->i:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 32
    :cond_5
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->i:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 33
    :goto_2
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->g:Landroid/app/Activity;

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_id()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iget-object v7, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v7, v7, Lcom/allinone/callerid/d/a/a$c;->c:Landroid/widget/ImageView;

    invoke-static {v4, v5, p3, v6, v7}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 34
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getMultiple_number()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->e:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/allinone/callerid/d/a/a$a;

    invoke-direct {v5, p0, v1, p1}, Lcom/allinone/callerid/d/a/a$a;-><init>(Lcom/allinone/callerid/d/a/a;Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v4, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v4, v4, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/16 v6, 0x61

    const/16 v7, 0x41

    .line 38
    :try_start_2
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 39
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_6

    if-le v8, v5, :cond_7

    :cond_6
    if-lt v8, v6, :cond_8

    if-gt v8, v4, :cond_8

    .line 40
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v8, v8, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 42
    :cond_8
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v8

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/util/u$a;

    iget-object v8, v8, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 43
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 44
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[0-9]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 46
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    const-string v8, "#"

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 47
    :cond_9
    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v8, v8, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 48
    :cond_a
    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v8, v8, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 49
    :cond_b
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 50
    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v8, v8, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :goto_4
    :try_start_3
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_29

    if-lez p1, :cond_29

    .line 53
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    add-int/lit8 v8, p1, -0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v8, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v8}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_f

    .line 55
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_c

    if-le v9, v5, :cond_d

    :cond_c
    if-lt v9, v6, :cond_e

    if-gt v9, v4, :cond_e

    .line 57
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 58
    :cond_e
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/util/u$a;

    iget-object v1, v1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    move-object v1, p3

    :goto_5
    if-eqz v8, :cond_13

    .line 60
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 61
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_10

    if-le v9, v5, :cond_11

    :cond_10
    if-lt v9, v6, :cond_12

    if-gt v9, v4, :cond_12

    .line 62
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 63
    :cond_12
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/allinone/callerid/util/u$a;

    iget-object v8, v8, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_13
    move-object v8, p3

    .line 65
    :goto_6
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 66
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq p1, v1, :cond_1d

    .line 69
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_17

    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_14

    if-le v2, v5, :cond_15

    :cond_14
    if-lt v2, v6, :cond_16

    if-gt v2, v4, :cond_16

    .line 73
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 74
    :cond_16
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/util/u$a;

    iget-object v1, v1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_17
    move-object v1, p3

    :goto_7
    if-eqz p1, :cond_1b

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_18

    if-le v2, v5, :cond_19

    :cond_18
    if-lt v2, v6, :cond_1a

    if-gt v2, v4, :cond_1a

    .line 78
    :cond_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    .line 79
    :cond_1a
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 81
    :cond_1b
    :goto_8
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 82
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->m:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 83
    :cond_1c
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->k:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 84
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 85
    :cond_1d
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->k:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 86
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 87
    :cond_1e
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq p1, v1, :cond_28

    .line 90
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_22

    .line 92
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_1f

    if-le v2, v5, :cond_20

    :cond_1f
    if-lt v2, v6, :cond_21

    if-gt v2, v4, :cond_21

    .line 94
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 95
    :cond_21
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/util/u$a;

    iget-object v1, v1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_22
    move-object v1, p3

    :goto_9
    if-eqz p1, :cond_26

    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_23

    if-le v2, v5, :cond_24

    :cond_23
    if-lt v2, v6, :cond_25

    if-gt v2, v4, :cond_25

    .line 99
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    .line 100
    :cond_25
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 102
    :cond_26
    :goto_a
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 103
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->n:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 104
    :cond_27
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->l:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 105
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 106
    :cond_28
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->k:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 107
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 108
    :cond_29
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 109
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget v8, p0, Lcom/allinone/callerid/d/a/a;->l:I

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 110
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_2a
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_34

    if-nez p1, :cond_34

    .line 112
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object v1, v1, Lcom/allinone/callerid/d/a/a$c;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/allinone/callerid/d/a/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2e

    .line 115
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_2b

    if-le v2, v5, :cond_2c

    :cond_2b
    if-lt v2, v6, :cond_2d

    if-gt v2, v4, :cond_2d

    .line 117
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 118
    :cond_2d
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/util/u$a;

    iget-object v1, v1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_2e
    move-object v1, p3

    :goto_b
    if-eqz p1, :cond_32

    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_2f

    if-le v2, v5, :cond_30

    :cond_2f
    if-lt v2, v6, :cond_31

    if-gt v2, v4, :cond_31

    .line 122
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    goto :goto_c

    .line 123
    :cond_31
    invoke-static {}, Lcom/allinone/callerid/util/u;->c()Lcom/allinone/callerid/util/u;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/util/u;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/util/u$a;

    iget-object p1, p1, Lcom/allinone/callerid/util/u$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 125
    :cond_32
    :goto_c
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 126
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->n:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_d

    .line 127
    :cond_33
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->f:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/allinone/callerid/d/a/a;->l:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 128
    iget-object p1, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p1, p1, Lcom/allinone/callerid/d/a/a$c;->h:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_d

    :catch_2
    move-exception p1

    .line 129
    iget-object p3, p0, Lcom/allinone/callerid/d/a/a;->i:Lcom/allinone/callerid/d/a/a$c;

    iget-object p3, p3, Lcom/allinone/callerid/d/a/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_34
    :goto_d
    return-object p2
.end method
