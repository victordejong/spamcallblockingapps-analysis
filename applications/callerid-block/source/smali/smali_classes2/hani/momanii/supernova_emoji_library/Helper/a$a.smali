.class Lhani/momanii/supernova_emoji_library/Helper/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Helper/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhani/momanii/supernova_emoji_library/Helper/a;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhani/momanii/supernova_emoji_library/Helper/a;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Helper/a;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/a$a;->a:Lhani/momanii/supernova_emoji_library/Helper/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 2

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/a$a;->a:Lhani/momanii/supernova_emoji_library/Helper/a;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Helper/a;->a(Lhani/momanii/supernova_emoji_library/Helper/a;)Lhani/momanii/supernova_emoji_library/Helper/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/a$a;->a:Lhani/momanii/supernova_emoji_library/Helper/a;

    invoke-static {v0}, Lhani/momanii/supernova_emoji_library/Helper/a;->a(Lhani/momanii/supernova_emoji_library/Helper/a;)Lhani/momanii/supernova_emoji_library/Helper/c;

    move-result-object v0

    iget-object v1, p0, Lhani/momanii/supernova_emoji_library/Helper/a$a;->a:Lhani/momanii/supernova_emoji_library/Helper/a;

    iget-object v1, v1, Lhani/momanii/supernova_emoji_library/Helper/a;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lhani/momanii/supernova_emoji_library/Helper/c;->d(Landroid/content/Context;Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    :cond_0
    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/a$a;->a:Lhani/momanii/supernova_emoji_library/Helper/a;

    iget-object v0, v0, Lhani/momanii/supernova_emoji_library/Helper/a;->e:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/a$b;->a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    :cond_1
    return-void
.end method
