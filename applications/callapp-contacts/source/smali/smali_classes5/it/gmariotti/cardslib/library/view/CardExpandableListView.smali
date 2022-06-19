.class public Lit/gmariotti/cardslib/library/view/CardExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = "CardExpandableListView"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/a/f;

.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 50
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    const/4 p1, 0x0

    .line 63
    invoke-direct {p0, p2, p1}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    .line 68
    invoke-direct {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->b(Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->setDividerHeight(I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 100
    sget v0, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    .line 102
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_list_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 34
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 125
    instance-of v0, p1, Lit/gmariotti/cardslib/library/a/f;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 128
    :cond_0
    sget-object v0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->a:Ljava/lang/String;

    const-string v1, "You are using a generic adapter. Pay attention: your adapter has to call cardArrayAdapter#getView method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/a/f;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->c:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/f;->a(I)V

    .line 144
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/f;->a(Lit/gmariotti/cardslib/library/view/CardExpandableListView;)V

    .line 145
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardExpandableListView;->b:Lit/gmariotti/cardslib/library/a/f;

    return-void
.end method
