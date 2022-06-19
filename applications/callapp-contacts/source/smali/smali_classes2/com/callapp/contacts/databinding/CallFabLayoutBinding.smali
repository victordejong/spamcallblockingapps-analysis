.class public final Lcom/callapp/contacts/databinding/CallFabLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->f:Landroid/widget/FrameLayout;

    .line 40
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->a:Landroid/widget/FrameLayout;

    .line 41
    iput-object p3, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->b:Landroid/widget/ImageView;

    .line 42
    iput-object p4, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->c:Landroid/widget/FrameLayout;

    .line 43
    iput-object p5, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->d:Landroid/view/View;

    .line 44
    iput-object p6, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallFabLayoutBinding;
    .locals 8

    const v0, 0x7f0d0070

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a00af

    .line 1075
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    const v0, 0x7f0a047f

    const v1, 0x7f0a03d3

    const v2, 0x7f0a01a4

    const v4, 0x7f0a019f

    if-eqz v3, :cond_4

    .line 1081
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    .line 1087
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    .line 1093
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1099
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 1104
    new-instance v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    return-object v0

    :cond_0
    const p1, 0x7f0a047f

    goto :goto_0

    :cond_1
    const p1, 0x7f0a03d3

    goto :goto_0

    :cond_2
    const p1, 0x7f0a01a4

    goto :goto_0

    :cond_3
    const p1, 0x7f0a019f

    .line 1107
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1108
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

    .line 17
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method
