.class Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->h(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;I)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;->c:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    iput p2, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;->c:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-static {p1}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->e(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$a;->b:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
