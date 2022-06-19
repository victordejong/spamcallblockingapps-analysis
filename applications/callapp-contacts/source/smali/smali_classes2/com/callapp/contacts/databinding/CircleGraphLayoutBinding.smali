.class public final Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;
    .locals 2

    const v0, 0x7f0d0098

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "rootView"

    .line 1052
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1055
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 1057
    new-instance p1, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;

    invoke-direct {p1, p0, p0}, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CircleGraphLayoutBinding;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
