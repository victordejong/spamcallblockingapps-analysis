.class public Lcom/callapp/contacts/widget/SlideMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder;,
        Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;,
        Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;,
        Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;,
        Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/recyclerview/widget/RecyclerView$v;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

.field private c:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroidx/lifecycle/j;

.field private k:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private l:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

.field private m:Landroid/widget/ImageView;

.field private n:Z

.field private o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/FrameLayout;

.field private t:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;Landroidx/lifecycle/j;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;",
            ">;",
            "Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;",
            "Landroidx/lifecycle/j;",
            "Z)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    .line 98
    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    .line 99
    iput-object p3, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j:Landroidx/lifecycle/j;

    .line 100
    iput-boolean p4, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->s:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->p:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroidx/constraintlayout/widget/ConstraintLayout;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->l:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/widget/ProfilePictureView;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->g:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->k:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->q:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->r:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->t:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroidx/lifecycle/j;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j:Landroidx/lifecycle/j;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->k:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->l:Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    return-object p0
.end method

.method static synthetic j(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->m:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 289
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 290
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    const v2, 0x7f0601ec

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->h:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditIconColor()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 295
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleColor()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getEditCircleStrokeColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 297
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->e:Landroid/widget/TextView;

    const v0, 0x7f0601cc

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 301
    :cond_1
    new-instance p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    .line 321
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 261
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->c:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/widget/ProfilePictureView;Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemIndexById(I)I
    .locals 2

    const/4 v0, 0x0

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->getClickId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    if-eqz p1, :cond_0

    .line 277
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getMenuItem(I)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;

    .line 164
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b()V

    return-void

    .line 168
    :cond_0
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const v3, 0x7f0601cc

    if-ne v0, v1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->p:Landroid/widget/LinearLayout;

    const p2, 0x7f060026

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->q:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->q:Landroid/widget/TextView;

    const p2, 0x7f120665

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$3;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->t:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f0805d0

    const v0, 0x7f0601d8

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f060113

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 183
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 184
    :goto_0
    iget-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->r:Landroid/widget/ImageView;

    const v0, 0x7f0800cf

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->r:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getButtonColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->s:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$4;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$4;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 203
    :cond_2
    check-cast p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    .line 204
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 205
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0600f3

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 206
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_3
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    .line 210
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->c(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_4
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v0, :cond_a

    .line 214
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1270
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->t(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    if-eqz v2, :cond_9

    .line 215
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_a

    .line 220
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 221
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v1

    if-eq v1, v6, :cond_8

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v1

    if-ne v1, v5, :cond_7

    goto :goto_2

    .line 225
    :cond_7
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v1

    if-ne v1, v7, :cond_a

    const v1, 0x7f06008a

    .line 226
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 227
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_3

    :cond_8
    :goto_2
    const v1, 0x7f06001b

    .line 223
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 224
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_3

    .line 231
    :cond_9
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->a(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_a
    :goto_3
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    if-ne v0, v7, :cond_b

    .line 236
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 238
    :cond_b
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 241
    :goto_4
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 243
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f080588

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 244
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->m:Landroid/widget/ImageView;

    .line 247
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->f(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 249
    :cond_c
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    if-eq v0, v6, :cond_f

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    if-ne v0, v5, :cond_d

    goto :goto_5

    .line 253
    :cond_d
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result p2

    if-ne p2, v7, :cond_e

    .line 254
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f1300ea

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 255
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    return-void

    .line 250
    :cond_f
    :goto_5
    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->g(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;->g(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemData;)I

    move-result v3

    .line 251
    :cond_10
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->d(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;->e(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f0601ec

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const/4 v2, 0x6

    if-eq p2, v2, :cond_1

    const/4 v2, 0x7

    if-eq p2, v2, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0275

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0278

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0279

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    new-instance p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuThemeViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;)V

    return-object p2

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0277

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0276

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02a2

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f060026

    .line 134
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    :goto_0
    new-instance p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Lcom/callapp/contacts/widget/SlideMenuAdapter$1;)V

    .line 148
    new-instance v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/widget/SlideMenuAdapter$2;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuListItemViewsHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 114
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0d0273

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a078c

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f0600f2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "en"

    invoke-static {p2, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const p2, 0x7f0a0170

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f060088

    .line 118
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    new-instance v1, Lcom/callapp/contacts/widget/SlideMenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$1;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_5
    new-instance p2, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object v1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j:Landroidx/lifecycle/j;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Landroidx/lifecycle/j;Lcom/callapp/contacts/widget/SlideMenuAdapter$1;)V

    return-object p2
.end method
