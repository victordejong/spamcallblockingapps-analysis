.class public Lcom/unknownphone/callblocker/selector/SelectorActivity;
.super Landroid/app/Activity;
.source "SelectorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f09010b

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 38
    const v1, 0x7f0901d4

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    const v2, 0x7f0900dc

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    const v3, 0x7f09004d

    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 44
    const-string/jumbo v4, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p0, v4, v5}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 46
    const-string/jumbo v4, "language_code"

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 49
    const-string/jumbo v7, "region_code"

    .line 50
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/selector/SelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "selector_type"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    const-string/jumbo v9, "selector_type_region"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 56
    const v8, 0x7f10023f

    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 57
    const v1, 0x7f10021c

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v8

    .line 62
    array-length v9, v8

    move v1, v5

    :goto_0
    if-ge v1, v9, :cond_0

    aget-object v5, v8, v1

    .line 63
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lcom/unknownphone/callblocker/selector/SelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/selector/SelectorActivity$1;-><init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    new-instance v1, Lcom/unknownphone/callblocker/selector/a;

    invoke-static {v7}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4}, Lcom/unknownphone/callblocker/selector/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    new-instance v1, Lcom/unknownphone/callblocker/selector/SelectorActivity$2;

    invoke-direct {v1, p0, v2, v6}, Lcom/unknownphone/callblocker/selector/SelectorActivity$2;-><init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;Ljava/util/List;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_1
    :goto_1
    new-instance v0, Lcom/unknownphone/callblocker/selector/SelectorActivity$4;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/selector/SelectorActivity$4;-><init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void

    .line 86
    :cond_2
    const-string/jumbo v5, "selector_type_language"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    const v5, 0x7f100221

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 89
    const v1, 0x7f10021d

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 92
    invoke-static {}, Lcom/unknownphone/callblocker/custom/b;->a()Ljava/util/List;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/unknownphone/callblocker/selector/a;

    invoke-direct {v2, p0, v1, v4}, Lcom/unknownphone/callblocker/selector/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    new-instance v2, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;

    invoke-direct {v2, p0, v1, v6}, Lcom/unknownphone/callblocker/selector/SelectorActivity$3;-><init>(Lcom/unknownphone/callblocker/selector/SelectorActivity;Ljava/util/List;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method
