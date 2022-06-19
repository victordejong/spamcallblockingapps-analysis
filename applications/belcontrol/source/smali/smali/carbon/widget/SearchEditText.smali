.class public Lcarbon/widget/SearchEditText;
.super Lcarbon/widget/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/SearchEditText$b;,
        Lcarbon/widget/SearchEditText$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcarbon/widget/EditText;"
    }
.end annotation


# instance fields
.field public A0:Landroid/text/TextWatcher;

.field public B0:Lcarbon/widget/SearchEditText$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcarbon/widget/SearchEditText$c<",
            "TType;>;"
        }
    .end annotation
.end field

.field public C0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TType;>;"
        }
    .end annotation
.end field

.field public y0:Lcarbon/widget/SearchEditText$b;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lh80;->carbon_searchEditTextStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->P()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lh80;->carbon_searchEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->P()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    sget p3, Lh80;->carbon_searchEditTextStyle:I

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->P()V

    return-void
.end method

.method public static synthetic K(Lcarbon/widget/SearchEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic L(Lcarbon/widget/SearchEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic M(Lcarbon/widget/SearchEditText;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->S()V

    return-void
.end method


# virtual methods
.method public N(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcarbon/widget/SearchEditText;->B0:Lcarbon/widget/SearchEditText$c;

    invoke-interface {v1}, Lcarbon/widget/SearchEditText$c;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcarbon/widget/SearchEditText;->B0:Lcarbon/widget/SearchEditText$c;

    invoke-interface {v1, v0}, Lcarbon/widget/SearchEditText$c;->a(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcarbon/widget/SearchEditText;->Q(Ljava/lang/String;I[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final O(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/SearchEditText;->y0:Lcarbon/widget/SearchEditText$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcarbon/widget/SearchEditText$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 1

    new-instance v0, Lcarbon/widget/SearchEditText$a;

    invoke-direct {v0, p0}, Lcarbon/widget/SearchEditText$a;-><init>(Lcarbon/widget/SearchEditText;)V

    iput-object v0, p0, Lcarbon/widget/SearchEditText;->A0:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final Q(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 4

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    iget-object p1, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    iget-object p3, p0, Lcarbon/widget/SearchEditText;->B0:Lcarbon/widget/SearchEditText$c;

    invoke-interface {p3, p2}, Lcarbon/widget/SearchEditText$c;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcarbon/widget/SearchEditText;->R(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/SearchEditText;->B0:Lcarbon/widget/SearchEditText$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcarbon/widget/SearchEditText;->O(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcarbon/widget/SearchEditText;->N(Ljava/lang/String;)V

    iget-object v0, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    goto :goto_0
.end method

.method public getFilteredItems()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/SearchEditText;->C0:Ljava/util/List;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    :try_start_0
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public setDataProvider(Lcarbon/widget/SearchEditText$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcarbon/widget/SearchEditText$c<",
            "TType;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->B0:Lcarbon/widget/SearchEditText$c;

    return-void
.end method

.method public setOnFilterListener(Lcarbon/widget/SearchEditText$b;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/SearchEditText;->y0:Lcarbon/widget/SearchEditText$b;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-virtual {p0}, Lcarbon/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcarbon/widget/SearchEditText;->z0:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcarbon/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
