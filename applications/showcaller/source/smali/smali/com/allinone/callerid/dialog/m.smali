.class public Lcom/allinone/callerid/dialog/m;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field private static a:Landroidx/appcompat/app/a;

.field private static b:Landroidx/appcompat/app/a;

.field private static c:Landroidx/appcompat/app/a;


# direct methods
.method static synthetic a()Landroidx/appcompat/app/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/dialog/m;->a:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/allinone/callerid/dialog/m;->f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Landroidx/appcompat/app/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/dialog/m;->c:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method static synthetic d()Landroidx/appcompat/app/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/dialog/m;->b:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/l/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;",
            "Lcom/allinone/callerid/i/a/l/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090146

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f09079a

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090144

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090145

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 12
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 14
    new-instance v2, Lcom/allinone/callerid/b/a0/a;

    invoke-direct {v2, p0, v1}, Lcom/allinone/callerid/b/a0/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 15
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p0

    .line 20
    new-instance v1, Lcom/allinone/callerid/dialog/m$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/dialog/m$d;-><init>(Landroidx/appcompat/app/a;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v1, Lcom/allinone/callerid/dialog/m$e;

    invoke-direct {v1, v2, p2, p0}, Lcom/allinone/callerid/dialog/m$e;-><init>(Lcom/allinone/callerid/b/a0/a;Lcom/allinone/callerid/i/a/l/c;Landroidx/appcompat/app/a;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p0, Lcom/allinone/callerid/dialog/m$f;

    invoke-direct {p0, p1, v2}, Lcom/allinone/callerid/dialog/m$f;-><init>(Ljava/util/ArrayList;Lcom/allinone/callerid/b/a0/a;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/model/EZCountryCode;

    .line 4
    iget-object v3, v2, Lcom/allinone/callerid/model/EZCountryCode;->country_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, v2, Lcom/allinone/callerid/model/EZCountryCode;->country_code:Ljava/lang/String;

    const-string v5, "+"

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 7
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, p0

    .line 8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 12
    new-instance p0, Lcom/allinone/callerid/dialog/m$a;

    invoke-direct {p0}, Lcom/allinone/callerid/dialog/m$a;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-object v0
.end method

.method public static g(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/b;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09037a

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v3, 0x7f0906e3

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    new-instance v4, Lcom/allinone/callerid/b/a;

    invoke-direct {v4, p0, v0, v2}, Lcom/allinone/callerid/b/a;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    .line 6
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v8

    double-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v5, Lcom/allinone/callerid/dialog/m$i;

    invoke-direct {v5, v0, p1}, Lcom/allinone/callerid/dialog/m$i;-><init>(Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/g/b;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    new-instance p1, Landroidx/appcompat/app/a$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f100056

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/dialog/m;->a:Landroidx/appcompat/app/a;

    .line 16
    new-instance p0, Lcom/allinone/callerid/dialog/m$j;

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/allinone/callerid/dialog/m$j;-><init>(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/allinone/callerid/b/a;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static h(Landroid/app/Activity;Lcom/allinone/callerid/i/a/g/f;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090379

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v3, 0x7f0906e4

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    new-instance v4, Lcom/allinone/callerid/b/b;

    invoke-direct {v4, p0, v0, v2}, Lcom/allinone/callerid/b/b;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V

    .line 6
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double v6, v6, v8

    double-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v5, Lcom/allinone/callerid/dialog/m$b;

    invoke-direct {v5, v0, p1}, Lcom/allinone/callerid/dialog/m$b;-><init>(Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/g/f;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    new-instance p1, Landroidx/appcompat/app/a$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f100054

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/dialog/m;->b:Landroidx/appcompat/app/a;

    .line 16
    new-instance p0, Lcom/allinone/callerid/dialog/m$c;

    invoke-direct {p0, v0, v4, v3, v2}, Lcom/allinone/callerid/dialog/m$c;-><init>(Ljava/util/ArrayList;Lcom/allinone/callerid/b/b;Landroid/widget/TextView;Landroid/widget/ListView;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static i(Landroid/app/Activity;Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;",
            "Lcom/allinone/callerid/i/a/b;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900c0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v2, 0x7f090194

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/BaseEditText;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v4, Lcom/allinone/callerid/b/k;

    invoke-direct {v4, p0, v3, v1}, Lcom/allinone/callerid/b/k;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    .line 6
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    new-instance v5, Lcom/allinone/callerid/dialog/m$k;

    invoke-direct {v5, p1, v4}, Lcom/allinone/callerid/dialog/m$k;-><init>(Ljava/util/List;Lcom/allinone/callerid/b/k;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double v4, v4, v6

    double-to-int v2, v4

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance p1, Lcom/allinone/callerid/dialog/m$l;

    invoke-direct {p1, v3, p2}, Lcom/allinone/callerid/dialog/m$l;-><init>(Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    new-instance p1, Landroidx/appcompat/app/a$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p0

    sput-object p0, Lcom/allinone/callerid/dialog/m;->c:Landroidx/appcompat/app/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static j(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100010

    .line 3
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->p(I)Landroidx/appcompat/app/a$a;

    move-result-object v1

    const v2, 0x7f1002b0

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/a$a;->g(I)Landroidx/appcompat/app/a$a;

    move-result-object v1

    const v2, 0x7f10005f

    new-instance v3, Lcom/allinone/callerid/dialog/m$h;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/dialog/m$h;-><init>(Landroid/app/Activity;)V

    .line 5
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/a$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    const v1, 0x7f100009

    new-instance v2, Lcom/allinone/callerid/dialog/m$g;

    invoke-direct {v2}, Lcom/allinone/callerid/dialog/m$g;-><init>()V

    .line 6
    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/app/a$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/app/a$a;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
