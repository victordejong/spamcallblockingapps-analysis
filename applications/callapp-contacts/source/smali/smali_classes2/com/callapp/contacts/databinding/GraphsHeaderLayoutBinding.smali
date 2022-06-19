.class public final Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->f:Landroid/widget/LinearLayout;

    .line 42
    iput-object p2, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->a:Landroid/widget/LinearLayout;

    .line 43
    iput-object p3, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->b:Landroid/widget/ImageView;

    .line 44
    iput-object p4, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->c:Landroid/view/View;

    .line 45
    iput-object p5, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->d:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->e:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;
    .locals 8

    .line 76
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    const v0, 0x7f0a04c3

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    const v1, 0x7f0a08ec

    const v4, 0x7f0a08aa

    const v5, 0x7f0a07e1

    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 91
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 102
    new-instance p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    move-object v0, p0

    move-object v1, v2

    move-object v4, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    const v0, 0x7f0a08ec

    goto :goto_0

    :cond_1
    const v0, 0x7f0a08aa

    goto :goto_0

    :cond_2
    const v0, 0x7f0a07e1

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method
