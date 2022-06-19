.class public Lhani/momanii/supernova_emoji_library/Helper/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhani/momanii/supernova_emoji_library/Helper/a$b;
    }
.end annotation


# instance fields
.field public b:Landroid/view/View;

.field private c:Lhani/momanii/supernova_emoji_library/Helper/c;

.field private d:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

.field protected e:Lhani/momanii/supernova_emoji_library/Helper/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lf/a/a/b;->emojicon_grid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    iput-object p4, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->e:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    invoke-direct {p0, p3}, Lhani/momanii/supernova_emoji_library/Helper/a;->b(Lhani/momanii/supernova_emoji_library/Helper/c;)V

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    sget p3, Lf/a/a/a;->Emoji_GridView:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    if-nez p2, :cond_0

    sget-object p2, Lhani/momanii/supernova_emoji_library/emoji/e;->a:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->d:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    array-length p2, p2

    new-array p2, p2, [Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    iput-object p2, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->d:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    :goto_0
    new-instance p2, Lf/a/a/d/a;

    iget-object p3, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->d:[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-direct {p2, p3, p4, p5}, Lf/a/a/d/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Z)V

    new-instance p3, Lhani/momanii/supernova_emoji_library/Helper/a$a;

    invoke-direct {p3, p0}, Lhani/momanii/supernova_emoji_library/Helper/a$a;-><init>(Lhani/momanii/supernova_emoji_library/Helper/a;)V

    invoke-virtual {p2, p3}, Lf/a/a/d/a;->a(Lhani/momanii/supernova_emoji_library/Helper/a$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lhani/momanii/supernova_emoji_library/Helper/a;)Lhani/momanii/supernova_emoji_library/Helper/c;
    .locals 0

    iget-object p0, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->c:Lhani/momanii/supernova_emoji_library/Helper/c;

    return-object p0
.end method

.method private b(Lhani/momanii/supernova_emoji_library/Helper/c;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a;->c:Lhani/momanii/supernova_emoji_library/Helper/c;

    return-void
.end method
