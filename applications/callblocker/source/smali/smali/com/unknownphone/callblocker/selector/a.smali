.class public Lcom/unknownphone/callblocker/selector/a;
.super Landroid/widget/ArrayAdapter;
.source "SelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/selector/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    const v0, 0x7f0c0093

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/unknownphone/callblocker/selector/a;->a:Landroid/view/LayoutInflater;

    .line 26
    iput-object p3, p0, Lcom/unknownphone/callblocker/selector/a;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    if-nez p2, :cond_1

    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/selector/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v1, Lcom/unknownphone/callblocker/selector/a$a;

    invoke-direct {v1, v2}, Lcom/unknownphone/callblocker/selector/a$a;-><init>(Lcom/unknownphone/callblocker/selector/a$1;)V

    .line 39
    const v0, 0x7f0901c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v0}, Lcom/unknownphone/callblocker/selector/a$a;->a(Lcom/unknownphone/callblocker/selector/a$a;Landroidx/appcompat/widget/AppCompatTextView;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/selector/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-static {v2}, Lcom/unknownphone/callblocker/selector/a$a;->a(Lcom/unknownphone/callblocker/selector/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {v2}, Lcom/unknownphone/callblocker/selector/a$a;->a(Lcom/unknownphone/callblocker/selector/a$a;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unknownphone/callblocker/selector/a;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800b6

    .line 48
    :goto_1
    invoke-virtual {v1, v3, v3, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    :cond_0
    return-object p2

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/selector/a$a;

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 49
    goto :goto_1
.end method
