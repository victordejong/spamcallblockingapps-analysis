.class public final Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/m/a;


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->h:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p2, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->a:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p3, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->b:Landroid/widget/TextView;

    .line 51
    iput-object p4, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->c:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->d:Landroid/widget/ImageView;

    .line 53
    iput-object p6, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->e:Landroid/view/View;

    .line 54
    iput-object p7, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->f:Landroid/widget/TextView;

    .line 55
    iput-object p8, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->g:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;
    .locals 11

    const v0, 0x7f0d0078

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a02d7

    .line 1086
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0901

    const v1, 0x7f0a0855

    const v2, 0x7f0a07e0

    const v4, 0x7f0a0752

    const v5, 0x7f0a0645

    const v6, 0x7f0a043e

    if-eqz v3, :cond_6

    .line 1092
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 1098
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 1104
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 1110
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1116
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_1

    .line 1122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 1127
    new-instance v0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object v1, v0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    return-object v0

    :cond_0
    const p1, 0x7f0a0901

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0855

    goto :goto_0

    :cond_2
    const p1, 0x7f0a07e0

    goto :goto_0

    :cond_3
    const p1, 0x7f0a0752

    goto :goto_0

    :cond_4
    const p1, 0x7f0a0645

    goto :goto_0

    :cond_5
    const p1, 0x7f0a043e

    .line 1130
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1131
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
    invoke-virtual {p0}, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/databinding/CallappPlusItemGraphBinding;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method
