.class Lhani/momanii/supernova_emoji_library/Helper/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhani/momanii/supernova_emoji_library/Helper/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhani/momanii/supernova_emoji_library/Helper/d;-><init>(Landroid/content/Context;[Lhani/momanii/supernova_emoji_library/emoji/Emojicon;Lhani/momanii/supernova_emoji_library/Helper/c;Lhani/momanii/supernova_emoji_library/Helper/a$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhani/momanii/supernova_emoji_library/Helper/d;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Helper/d;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/d$a;->a:Lhani/momanii/supernova_emoji_library/Helper/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/d$a;->a:Lhani/momanii/supernova_emoji_library/Helper/d;

    iget-object v0, v0, Lhani/momanii/supernova_emoji_library/Helper/a;->e:Lhani/momanii/supernova_emoji_library/Helper/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/a$b;->a(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    :cond_0
    return-void
.end method
