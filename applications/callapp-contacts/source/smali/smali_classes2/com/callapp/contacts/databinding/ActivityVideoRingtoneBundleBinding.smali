.class public final Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/ScrollView;

.field public final i:Landroid/widget/FrameLayout;

.field private final j:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->j:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->a:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p3, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->b:Landroid/widget/TextView;

    .line 61
    iput-object p4, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p5, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->d:Landroid/widget/LinearLayout;

    .line 63
    iput-object p6, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->e:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->f:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->g:Landroid/widget/LinearLayout;

    .line 66
    iput-object p9, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->h:Landroid/widget/ScrollView;

    .line 67
    iput-object p10, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->i:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;
    .locals 14

    const v0, 0x7f0d004b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1084
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a017d

    .line 1098
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0aa6

    const v2, 0x7f0a07a3

    const v3, 0x7f0a0396

    const v5, 0x7f0a0395

    const v6, 0x7f0a0394

    const v7, 0x7f0a02a2

    const v8, 0x7f0a017e

    if-eqz v4, :cond_7

    .line 1104
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1110
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_5

    .line 1116
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 1122
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 1128
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    .line 1133
    move-object v11, p0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1136
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ScrollView;

    if-eqz v12, :cond_1

    .line 1142
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    .line 1147
    new-instance p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;

    move-object v2, p0

    move-object v3, v11

    move-object v5, v0

    move-object v6, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/FrameLayout;)V

    return-object p0

    :cond_0
    const v0, 0x7f0a0aa6

    goto :goto_0

    :cond_1
    const v0, 0x7f0a07a3

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0396

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0395

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0394

    goto :goto_0

    :cond_5
    const v0, 0x7f0a02a2

    goto :goto_0

    :cond_6
    const v0, 0x7f0a017e

    .line 1151
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1152
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

    .line 21
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/databinding/ActivityVideoRingtoneBundleBinding;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method
