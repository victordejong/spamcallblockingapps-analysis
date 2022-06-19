.class public Lcom/allinone/callerid/main/LogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/main/LogActivity$j;,
        Lcom/allinone/callerid/main/LogActivity$i;,
        Lcom/allinone/callerid/main/LogActivity$f;,
        Lcom/allinone/callerid/main/LogActivity$h;,
        Lcom/allinone/callerid/main/LogActivity$g;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/ScrollView;

.field private O:Lcom/allinone/callerid/customview/ExpandTextView;

.field private P:Lcom/allinone/callerid/customview/ExpandTextView;

.field private Q:Lcom/allinone/callerid/customview/ExpandTextView;

.field private R:Lcom/allinone/callerid/customview/ExpandTextView;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field Z:Ljava/lang/String;

.field a0:Ljava/lang/String;

.field private b0:I

.field private c0:I

.field private d0:Landroid/os/Handler;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "android"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->U:Ljava/lang/String;

    const-string v0, "86"

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->V:Ljava/lang/String;

    const-string v0, "13021125524"

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->W:Ljava/lang/String;

    const-string v0, "001"

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->X:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/allinone/callerid/main/LogActivity$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/main/LogActivity$c;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->d0:Landroid/os/Handler;

    return-void
.end method

.method private B0()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "https://app.show-caller.com/api/v1/sertim.php"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device"

    .line 2
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->U:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    .line 3
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    .line 4
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private C0()V
    .locals 3

    const v0, 0x7f090725

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f09072a

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f09072b

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/ExpandTextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->O:Lcom/allinone/callerid/customview/ExpandTextView;

    const v0, 0x7f09072c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f09072d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/ExpandTextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->P:Lcom/allinone/callerid/customview/ExpandTextView;

    const v0, 0x7f09072e

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f09072f

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f090730

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f090731

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/ExpandTextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->Q:Lcom/allinone/callerid/customview/ExpandTextView;

    const v0, 0x7f090732

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f090733

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f090734

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090735

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/ExpandTextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->R:Lcom/allinone/callerid/customview/ExpandTextView;

    const v0, 0x7f090736

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f090737

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f090738

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f090739

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f09073a

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->H:Landroid/widget/TextView;

    const v0, 0x7f090726

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f090727

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f090728

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->K:Landroid/widget/TextView;

    const v0, 0x7f090729

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->L:Landroid/widget/TextView;

    const v0, 0x7f09065b

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->M:Landroid/widget/TextView;

    const v0, 0x7f090520

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->N:Landroid/widget/ScrollView;

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->P:Lcom/allinone/callerid/customview/ExpandTextView;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/ExpandTextView;->setAnimationDuration(I)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->P:Lcom/allinone/callerid/customview/ExpandTextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/customview/ExpandTextView;->setMinVisibleLines(I)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->R:Lcom/allinone/callerid/customview/ExpandTextView;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/ExpandTextView;->setAnimationDuration(I)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->R:Lcom/allinone/callerid/customview/ExpandTextView;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/customview/ExpandTextView;->setMinVisibleLines(I)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity;->R:Lcom/allinone/callerid/customview/ExpandTextView;

    new-instance v1, Lcom/allinone/callerid/main/LogActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/main/LogActivity$b;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/ExpandTextView;->setOnReadMoreListener(Lcom/allinone/callerid/customview/c;)V

    return-void
.end method

.method private E0()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    const-string v1, "https://app.show-caller.com/api/v1/sea.php"

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "tel_number"

    .line 2
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->W:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "device"

    .line 3
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->U:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "uid"

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    .line 5
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "default_cc"

    .line 6
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->V:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cc"

    .line 7
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->Y:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "stamp"

    .line 8
    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cid"

    .line 9
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_contacts"

    .line 10
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v1, v2}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private F0()Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "18813032887"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "10086"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "13653310377"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "10010"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/allinone/callerid/util/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "tel_number_list"

    .line 11
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->U:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 13
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 14
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "default_cc"

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->V:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    .line 16
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->V:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 17
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://app.show-caller.com/api/v1/sealis.php"

    .line 18
    invoke-static {v0, v2}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private G0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/main/LogActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/main/LogActivity$d;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic V(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->N:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic W(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->E:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->F:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->I:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->J:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->K:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->L:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/main/LogActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/main/LogActivity;->b0:I

    return p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/main/LogActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/main/LogActivity;->b0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/allinone/callerid/main/LogActivity;->b0:I

    return v0
.end method

.method static synthetic f0(Lcom/allinone/callerid/main/LogActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/main/LogActivity;->c0:I

    return p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/main/LogActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/main/LogActivity;->c0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/allinone/callerid/main/LogActivity;->c0:I

    return v0
.end method

.method static synthetic h0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->B0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/main/LogActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->d0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->F0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->E0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->y0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->O:Lcom/allinone/callerid/customview/ExpandTextView;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->P:Lcom/allinone/callerid/customview/ExpandTextView;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->y:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/main/LogActivity;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic w0(Lcom/allinone/callerid/main/LogActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/main/LogActivity;->z0(Ljava/lang/String;)V

    return-void
.end method

.method private y0()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "last_update_time"

    const-string v3, "0"

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cc"

    const-string v3, "91"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    const-string v3, "android"

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "package"

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_version"

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uid"

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stamp"

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "country"

    const-string v3, "in"

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    .line 10
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "city"

    .line 11
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "checkupdate"

    if-eqz v0, :cond_0

    .line 13
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "https://app.show-caller.com/proc/v1/offpaccheupd.php"

    .line 14
    invoke-static {v0, v1}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enlode_result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private z0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/main/LogActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/main/LogActivity$e;-><init>(Lcom/allinone/callerid/main/LogActivity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tel_number"

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/main/LogActivity;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/main/LogActivity;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "default_cc"

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/main/LogActivity;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/main/LogActivity;->X:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://app.show-caller.com/api/v1/gecc.php"

    .line 8
    invoke-static {v1, v0}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0041

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->C0()V

    .line 4
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->T(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->T:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->Z:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->Y:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->W:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->a0:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity;->N:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/main/LogActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/main/LogActivity$a;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/main/LogActivity;->G0()V

    return-void
.end method

.method public x0()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cn"

    const-string v2, "86"

    .line 1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "app_version"

    .line 2
    iget-object v5, p0, Lcom/allinone/callerid/main/LogActivity;->Z:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uid"

    .line 3
    iget-object v5, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "country"

    .line 4
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    .line 5
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "language"

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_update_time"

    const-string v2, "0"

    .line 7
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stamp"

    .line 8
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v4, p0, Lcom/allinone/callerid/main/LogActivity;->S:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "wbb"

    if-eqz v1, :cond_0

    .line 10
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "https://app.show-caller.com/proc/v1/parcheupd.php"

    .line 11
    invoke-static {v1, v3}, Lcom/allinone/callerid/j/a;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enlode_result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method
