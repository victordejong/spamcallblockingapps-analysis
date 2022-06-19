.class public Lhani/momanii/supernova_emoji_library/Actions/EmojiView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;
.implements Lhani/momanii/supernova_emoji_library/Helper/c;


# instance fields
.field private b:Z

.field private c:Landroidx/viewpager/widget/ViewPager;

.field private d:I

.field private e:[Landroid/view/View;

.field private f:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

.field private g:Lhani/momanii/supernova_emoji_library/Helper/a$b;

.field private h:Lf/a/a/e/a;

.field private i:Lhani/momanii/supernova_emoji_library/Helper/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->d:I

    new-instance v0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;

    invoke-direct {v0, p0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;-><init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V

    iput-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    invoke-direct {p0, p1}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    const/4 p2, -0x1

    iput p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->d:I

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;-><init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    invoke-direct {p0, p1}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    const/4 p2, -0x1

    iput p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->d:I

    new-instance p2, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;

    invoke-direct {p2, p0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;-><init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    invoke-direct {p0, p1}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic f(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lf/a/a/e/a;
    .locals 0

    iget-object p0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h:Lf/a/a/e/a;

    return-object p0
.end method

.method static synthetic g(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lhani/momanii/supernova_emoji_library/Helper/a$b;
    .locals 0

    iget-object p0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->g:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    return-object p0
.end method

.method private h(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v6, p0

    sget v0, Lf/a/a/b;->emojicons:I

    move-object/from16 v13, p1

    invoke-static {v13, v0, v6}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    sget v0, Lf/a/a/a;->emojis_pager:I

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    sget v0, Lf/a/a/a;->emojis_tab:I

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    iget-object v0, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance v5, Lf/a/a/d/b;

    const/16 v4, 0x8

    new-array v3, v4, [Lhani/momanii/supernova_emoji_library/Helper/a;

    new-instance v0, Lhani/momanii/supernova_emoji_library/Helper/d;

    iget-object v11, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v12, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lhani/momanii/supernova_emoji_library/Helper/d;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/4 v7, 0x0

    aput-object v0, v3, v7

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/e;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v9, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v10, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v11, v3

    move-object/from16 v3, p0

    const/16 v12, 0x8

    move-object v4, v9

    move-object v9, v5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/4 v10, 0x1

    aput-object v8, v11, v10

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/d;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/16 v16, 0x2

    aput-object v8, v11, v16

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/c;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/16 v17, 0x3

    aput-object v8, v11, v17

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/f;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/16 v18, 0x4

    aput-object v8, v11, v18

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/a;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/16 v19, 0x5

    aput-object v8, v11, v19

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/b;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/16 v20, 0x6

    aput-object v8, v11, v20

    new-instance v8, Lhani/momanii/supernova_emoji_library/Helper/a;

    sget-object v2, Lhani/momanii/supernova_emoji_library/emoji/g;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iget-object v4, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->i:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    iget-boolean v5, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->b:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/4 v0, 0x7

    aput-object v8, v11, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Lf/a/a/d/b;-><init>(Ljava/util/List;)V

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    new-array v1, v12, [Landroid/view/View;

    iput-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_0_recents:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_1_people:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_2_nature:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_3_food:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v17

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_4_sport:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v18

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_5_cars:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v19

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_6_elec:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v20

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    sget v2, Lf/a/a/a;->emojis_tab_7_sym:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    new-instance v2, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;

    invoke-direct {v2, v6, v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;-><init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "#E6EBEF"

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const-string v1, "#DCE1E2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string v1, "#495C66"

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    check-cast v3, Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget v2, Lf/a/a/a;->emojis_backspace:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;

    invoke-direct {v1, v6}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;-><init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    move-result-object v0

    iput-object v0, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->f:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    invoke-virtual {v0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->getRecentPage()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->f:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    if-nez v10, :cond_3

    invoke-virtual {v6, v10}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c(I)V

    goto :goto_3

    :cond_3
    iget-object v0, v6, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v10, v7}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 3

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->d:I

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->f:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    invoke-virtual {v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->setRecentPage(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/content/Context;Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->c:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    check-cast v0, Lf/a/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/a/a/d/b;->u()Lhani/momanii/supernova_emoji_library/Helper/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lhani/momanii/supernova_emoji_library/Helper/d;->d(Landroid/content/Context;Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    :cond_0
    return-void
.end method

.method public setOnEmojiKeyboardDelete(Lf/a/a/e/a;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h:Lf/a/a/e/a;

    return-void
.end method

.method public setOnEmojiconClickedListener(Lhani/momanii/supernova_emoji_library/Helper/a$b;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->g:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    return-void
.end method
