.class public final Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/RelativeLayout;

.field public final f:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field public final g:Landroid/view/View;

.field private final h:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->h:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p2, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->a:Landroid/widget/TextView;

    .line 50
    iput-object p3, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->b:Landroid/widget/ImageView;

    .line 51
    iput-object p4, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->c:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->d:Landroid/widget/TextView;

    .line 53
    iput-object p6, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->e:Landroid/widget/RelativeLayout;

    .line 54
    iput-object p7, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->f:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 55
    iput-object p8, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->g:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;
    .locals 10

    const v0, 0x7f0d0233

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a002b

    .line 1086
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0a07e0

    const v1, 0x7f0a06f7

    const v2, 0x7f0a0644

    const v4, 0x7f0a021c

    const v5, 0x7f0a00e6

    if-eqz v3, :cond_5

    .line 1092
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 1098
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 1104
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 1109
    move-object v7, p0

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1112
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    if-eqz v8, :cond_1

    .line 1118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1123
    new-instance p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;

    move-object v1, p0

    move-object v2, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;Landroid/view/View;)V

    return-object p0

    :cond_0
    const p1, 0x7f0a07e0

    goto :goto_0

    :cond_1
    const p1, 0x7f0a06f7

    goto :goto_0

    :cond_2
    const p1, 0x7f0a0644

    goto :goto_0

    :cond_3
    const p1, 0x7f0a021c

    goto :goto_0

    :cond_4
    const p1, 0x7f0a00e6

    .line 1126
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1127
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/databinding/NumberOfCallsItemBinding;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method
