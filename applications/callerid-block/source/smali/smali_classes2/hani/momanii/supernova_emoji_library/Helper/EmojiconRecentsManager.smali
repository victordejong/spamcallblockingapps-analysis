.class public Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lhani/momanii/supernova_emoji_library/emoji/Emojicon;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->k()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;
    .locals 2

    sget-object v0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->c:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    if-nez v0, :cond_1

    sget-object v0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->c:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    if-nez v1, :cond_0

    new-instance v1, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    invoke-direct {v1, p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->c:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->c:Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;

    return-object p0
.end method

.method private j()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->mContext:Landroid/content/Context;

    const-string v1, "emojicon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 3

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent_emojis"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "~"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->add(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-virtual {p0, p1, p2}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->add(ILhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    return-void
.end method

.method public add(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-virtual {p0, p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->add(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)Z

    move-result p1

    return p1
.end method

.method public getRecentPage()I
    .locals 3

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recent_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public push(Lhani/momanii/supernova_emoji_library/emoji/Emojicon;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->add(ILhani/momanii/supernova_emoji_library/emoji/Emojicon;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public saveRecents()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;

    invoke-virtual {v3}, Lhani/momanii/supernova_emoji_library/emoji/Emojicon;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x7e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->j()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recent_emojis"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setRecentPage(I)V
    .locals 2

    invoke-direct {p0}, Lhani/momanii/supernova_emoji_library/Helper/EmojiconRecentsManager;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recent_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
