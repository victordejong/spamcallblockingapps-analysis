.class public Lf/a/a/d/a;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/d/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lhani/momanii/supernova_emoji_library/emoji/Emojicon;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field c:Lhani/momanii/supernova_emoji_library/Helper/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lhani/momanii/supernova_emoji_library/emoji/Emojicon;",
            ">;Z)V"
        }
    .end annotation

    sget v0, Lf/a/a/b;->emojicon_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/a/d/a;->b:Z

    iput-boolean p3, p0, Lf/a/a/d/a;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Z)V
    .locals 1

    sget v0, Lf/a/a/b;->emojicon_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/a/d/a;->b:Z

    iput-boolean p3, p0, Lf/a/a/d/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lhani/momanii/supernova_emoji_library/Helper/a$b;)V
    .locals 0

    iput-object p1, p0, Lf/a/a/d/a;->c:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lf/a/a/b;->emojicon_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lf/a/a/d/a$b;

    invoke-direct {p3, p0}, Lf/a/a/d/a$b;-><init>(Lf/a/a/d/a;)V

    sget v0, Lf/a/a/a;->emojicon_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;

    iput-object v0, p3, Lf/a/a/d/a$b;->a:Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;

    iget-boolean v1, p0, Lf/a/a/d/a;->b:Z

    invoke-virtual {v0, v1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;->setUseSystemDefault(Z)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/d/a$b;

    iget-object v1, v0, Lf/a/a/d/a$b;->a:Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;

    invoke-virtual {p3}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v0, Lf/a/a/d/a$b;->a:Lhani/momanii/supernova_emoji_library/Helper/EmojiconTextView;

    new-instance v0, Lf/a/a/d/a$a;

    invoke-direct {v0, p0, p1}, Lf/a/a/d/a$a;-><init>(Lf/a/a/d/a;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
