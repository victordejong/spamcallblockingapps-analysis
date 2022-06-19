.class public Lcom/allinone/callerid/b/b0/b;
.super Landroid/widget/BaseAdapter;
.source "EZSearchResultAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/b0/b$b;
    }
.end annotation


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/allinone/callerid/b/b0/b$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/b0/b;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

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
    .locals 11

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/b0/b$b;

    invoke-direct {p2}, Lcom/allinone/callerid/b/b0/b$b;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    const p3, 0x7f0c012f

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f09079a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->e:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f09077a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->c:Landroid/widget/TextView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904bf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->h:Landroid/widget/FrameLayout;

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    const v0, 0x7f0904b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/b0/b$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    .line 19
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/EZSearchResult;

    .line 21
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getKeyword()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getComplaint_times()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_1

    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const-string v8, "0"

    :cond_2
    if-eqz p3, :cond_3

    .line 31
    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 32
    iget-object v3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/b0/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 33
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 34
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 35
    :cond_4
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p3, " \u2022 "

    if-eqz v1, :cond_5

    .line 36
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 37
    iget-object v3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 39
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 40
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 41
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_7
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p3, 0x0

    if-eqz v5, :cond_8

    .line 43
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 44
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 46
    :cond_8
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz v6, :cond_9

    .line 47
    :try_start_0
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 48
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 50
    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subtype"

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v2, v2, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_a

    .line 54
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 55
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 57
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isContact()Z

    move-result v1

    const v2, 0x7f0801b4

    if-eqz v1, :cond_b

    .line 59
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getRaw_contact_id()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    invoke-static {p3, v0, v9, v2, v1}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto/16 :goto_7

    .line 62
    :cond_b
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0801b5

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 63
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100069

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0801b5

    goto :goto_6

    .line 66
    :cond_c
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_6
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 69
    iget-object p3, p0, Lcom/allinone/callerid/b/b0/b;->d:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/b0/b$b;->g:Landroid/widget/ImageView;

    invoke-static {p3, v0, v2, v1}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 70
    :cond_d
    :goto_7
    new-instance p3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p3}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isContact()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 74
    :cond_e
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->f1(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getComplaint_times()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->G0(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getComment_tags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->o0(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->r0(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isContact()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/allinone/callerid/search/CallLogBean;->p0(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/allinone/callerid/search/CallLogBean;->z0(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/allinone/callerid/b/b0/b;->f:Lcom/allinone/callerid/b/b0/b$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/b0/b$b;->h:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/allinone/callerid/b/b0/b$a;

    invoke-direct {v0, p0, p3}, Lcom/allinone/callerid/b/b0/b$a;-><init>(Lcom/allinone/callerid/b/b0/b;Lcom/allinone/callerid/search/CallLogBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
