.class Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Helper/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhani/momanii/supernova_emoji_library/Actions/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;->a:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;->a:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->g(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lhani/momanii/supernova_emoji_library/Helper/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/EmojiView$c;->a:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->g(Lhani/momanii/supernova_emoji_library/Actions/EmojiView;)Lhani/momanii/supernova_emoji_library/Helper/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/a$b;->a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    :cond_1
    return-void
.end method
