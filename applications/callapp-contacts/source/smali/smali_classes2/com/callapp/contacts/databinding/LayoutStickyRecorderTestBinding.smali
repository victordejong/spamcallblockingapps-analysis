.class public final Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->e:Landroid/view/View;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    iput-object p3, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->b:Landroid/widget/TextView;

    .line 39
    iput-object p4, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->c:Landroid/widget/ImageView;

    .line 40
    iput-object p5, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->d:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;
    .locals 7

    const v0, 0x7f0d01c1

    .line 55
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p0, 0x7f0a0889

    .line 1066
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0891

    const v1, 0x7f0a088b

    const v2, 0x7f0a088a

    if-eqz v3, :cond_3

    .line 1072
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1078
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1089
    new-instance p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    const p0, 0x7f0a0891

    goto :goto_0

    :cond_1
    const p0, 0x7f0a088b

    goto :goto_0

    :cond_2
    const p0, 0x7f0a088a

    .line 1092
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1093
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->e:Landroid/view/View;

    return-object v0
.end method
