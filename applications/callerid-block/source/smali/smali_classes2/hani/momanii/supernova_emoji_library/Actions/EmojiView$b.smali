.class Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;
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
.field final synthetic b:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;->b:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;->b:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->f(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lf/a/a/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$b;->b:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->f(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lf/a/a/e/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/a/a/e/a;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
