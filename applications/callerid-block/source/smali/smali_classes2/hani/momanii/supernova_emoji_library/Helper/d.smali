.class public Lhani/momanii/supernova_emoji_library/Helper/d;
.super Lhani/momanii/supernova_emoji_library/Helper/a;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Helper/c;


# instance fields
.field private f:Lf/a/a/d/a;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->g:Z

    iput-boolean p5, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->g:Z

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    move-result-object p1

    new-instance p2, Lf/a/a/d/a;

    iget-object p3, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean p4, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->g:Z

    invoke-direct {p2, p3, p1, p4}, Lf/a/a/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->f:Lf/a/a/d/a;

    new-instance p1, Lhani/momanii/supernova_emoji_library/Helper/d$a;

    invoke-direct {p1, p0}, Lhani/momanii/supernova_emoji_library/Helper/d$a;-><init>(Lhani/momanii/supernova_emoji_library/Helper/d;)V

    invoke-virtual {p2, p1}, Lf/a/a/d/a;->a(Lhani/momanii/supernova_emoji_library/Helper/a$b;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    sget p2, Lf/a/a/a;->Emoji_GridView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iget-object p2, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->f:Lf/a/a/d/a;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->f:Lf/a/a/d/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 0

    invoke-static {p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->getInstance(Landroid/content/Context;)Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->push(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/d;->f:Lf/a/a/d/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
