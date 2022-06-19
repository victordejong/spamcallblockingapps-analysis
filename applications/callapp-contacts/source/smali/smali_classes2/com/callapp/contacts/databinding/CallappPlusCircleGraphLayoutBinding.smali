.class public final Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroid/view/View;

.field private final d:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->d:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iput-object p3, p0, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object p4, p0, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->c:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;
    .locals 3

    const v0, 0x7f0d0076

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0197

    .line 1067
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0333

    const v2, 0x7f0a0198

    if-eqz v0, :cond_2

    .line 1073
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1084
    new-instance v1, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-object v1

    :cond_0
    const p1, 0x7f0a0333

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0198

    .line 1087
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1088
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
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallappPlusCircleGraphLayoutBinding;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method
