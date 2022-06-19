.class public Lcarbon/widget/AutoCompleteLayout;
.super Lcarbon/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/AutoCompleteLayout$a;
    }
.end annotation


# instance fields
.field public S:Lcarbon/widget/AutoCompleteEditText;

.field public T:Lcarbon/widget/RecyclerView;

.field public U:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "Lcarbon/widget/AutoCompleteEditText$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lld0;

    const-class v0, Lcarbon/widget/AutoCompleteEditText$c;

    sget-object v1, Lmf0;->a:Lmf0;

    invoke-direct {p1, v0, v1}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lp80;->AutoCompleteLayout:[I

    sget v1, Lh80;->carbon_autoCompleteLayoutStyle:I

    sget v2, Lp80;->AutoCompleteLayout_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lld0;

    const-class p2, Lcarbon/widget/AutoCompleteEditText$c;

    sget-object v0, Lmf0;->a:Lmf0;

    invoke-direct {p1, p2, v0}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteLayout;->s()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    sget-object v0, Lp80;->AutoCompleteLayout:[I

    sget v1, Lh80;->carbon_autoCompleteLayoutStyle:I

    sget v2, Lp80;->AutoCompleteLayout_carbon_theme:I

    invoke-static {p1, p2, v0, v1, v2}, Ld80;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lld0;

    const-class p2, Lcarbon/widget/AutoCompleteEditText$c;

    sget-object p3, Lmf0;->a:Lmf0;

    invoke-direct {p1, p2, p3}, Lld0;-><init>(Ljava/lang/Class;Lkd0;)V

    iput-object p1, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    invoke-virtual {p0}, Lcarbon/widget/AutoCompleteLayout;->s()V

    return-void
.end method

.method private synthetic t(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lid0;->f(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lid0;->f(Ljava/util/List;)V

    return-void
.end method

.method private synthetic v(Landroid/view/View;Lcarbon/widget/AutoCompleteEditText$c;I)V
    .locals 0

    iget-object p1, p0, Lcarbon/widget/AutoCompleteLayout;->S:Lcarbon/widget/AutoCompleteEditText;

    iget-object p2, p2, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcarbon/widget/AutoCompleteEditText;->X(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final s()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lm80;->carbon_autocompletelayout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Ll80;->carbon_autoCompleteSearch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/AutoCompleteEditText;

    iput-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->S:Lcarbon/widget/AutoCompleteEditText;

    sget v0, Ll80;->carbon_autoCompleteResults:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcarbon/widget/RecyclerView;

    iput-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->T:Lcarbon/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lh80;->carbon_dividerColor:I

    invoke-static {v1, v2}, Ld80;->g(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lj80;->carbon_1dip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcarbon/widget/AutoCompleteLayout;->T:Lcarbon/widget/RecyclerView;

    new-instance v3, Lhd0;

    invoke-direct {v3, v0, v1}, Lhd0;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->T:Lcarbon/widget/RecyclerView;

    iget-object v1, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->S:Lcarbon/widget/AutoCompleteEditText;

    new-instance v1, Lpe0;

    invoke-direct {v1, p0}, Lpe0;-><init>(Lcarbon/widget/AutoCompleteLayout;)V

    invoke-virtual {v0, v1}, Lcarbon/widget/AutoCompleteEditText;->setOnFilterListener(Lcarbon/widget/AutoCompleteEditText$d;)V

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->U:Lld0;

    new-instance v1, Loe0;

    invoke-direct {v1, p0}, Loe0;-><init>(Lcarbon/widget/AutoCompleteLayout;)V

    invoke-virtual {v0, v1}, Lid0;->g(Lcarbon/widget/RecyclerView$d;)V

    return-void
.end method

.method public setDataProvider(Lcarbon/widget/AutoCompleteEditText$b;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout;->S:Lcarbon/widget/AutoCompleteEditText;

    invoke-virtual {v0, p1}, Lcarbon/widget/AutoCompleteEditText;->setDataProvider(Lcarbon/widget/AutoCompleteEditText$b;)V

    return-void
.end method

.method public synthetic u(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/AutoCompleteLayout;->t(Ljava/util/List;)V

    return-void
.end method

.method public synthetic w(Landroid/view/View;Lcarbon/widget/AutoCompleteEditText$c;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/AutoCompleteLayout;->v(Landroid/view/View;Lcarbon/widget/AutoCompleteEditText$c;I)V

    return-void
.end method
