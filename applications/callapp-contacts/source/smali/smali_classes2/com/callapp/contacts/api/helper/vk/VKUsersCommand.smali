.class public final Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;
.super Lcom/vk/api/sdk/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;,
        Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/api/sdk/internal/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000c2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002\u000c\rB\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;",
        "Lcom/vk/api/sdk/internal/ApiCommand;",
        "",
        "Lcom/callapp/contacts/api/helper/vk/VKUser;",
        "uids",
        "",
        "([I)V",
        "USER_FIELDS",
        "",
        "onExecute",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "Companion",
        "ResponseApiParser",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;->a:Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;-><init>([IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const-string v0, "uids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/vk/api/sdk/internal/a;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;->c:[I

    const-string p1, "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about,screen_name"

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;-><init>([I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vk/api/sdk/g;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "manager"

    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3040
    iget-object v2, v0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;->c:[I

    array-length v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "uid,first_name,last_name,verified,blacklisted,bdate,city,country,home_town,photo_100,photo_max_orig,lists,has_mobile,contacts,site,education,status,connections,exports,about"

    const-string v4, "fields"

    const-string/jumbo v5, "users.get"

    if-eqz v2, :cond_1

    .line 3042
    new-instance v2, Lcom/vk/api/sdk/l$a;

    invoke-direct {v2}, Lcom/vk/api/sdk/l$a;-><init>()V

    .line 3043
    invoke-virtual {v2, v5}, Lcom/vk/api/sdk/l$a;->a(Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v2

    .line 3044
    invoke-virtual {v2, v4, v3}, Lcom/vk/api/sdk/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v2

    .line 4039
    iget-object v3, v1, Lcom/vk/api/sdk/g;->c:Lcom/vk/api/sdk/e;

    .line 4044
    iget-object v3, v3, Lcom/vk/api/sdk/e;->e:Ljava/lang/String;

    .line 3045
    invoke-virtual {v2, v3}, Lcom/vk/api/sdk/l$a;->b(Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v2

    .line 3046
    invoke-virtual {v2}, Lcom/vk/api/sdk/l$a;->a()Lcom/vk/api/sdk/l$a;

    move-result-object v2

    .line 3047
    invoke-virtual {v2}, Lcom/vk/api/sdk/l$a;->b()Lcom/vk/api/sdk/l;

    move-result-object v2

    .line 3048
    new-instance v3, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;

    invoke-direct {v3}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;-><init>()V

    check-cast v3, Lcom/vk/api/sdk/h;

    invoke-virtual {v1, v2, v3}, Lcom/vk/api/sdk/g;->a(Lcom/vk/api/sdk/l;Lcom/vk/api/sdk/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 3050
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3051
    iget-object v6, v0, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand;->c:[I

    invoke-static {v6}, Lkotlin/a/i;->a([I)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    const-string v7, "$this$chunked"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x384

    .line 4939
    invoke-static {v6, v7, v7}, Lkotlin/a/n;->a(Ljava/lang/Iterable;II)Ljava/util/List;

    move-result-object v6

    .line 3052
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3053
    new-instance v8, Lcom/vk/api/sdk/l$a;

    invoke-direct {v8}, Lcom/vk/api/sdk/l$a;-><init>()V

    .line 3054
    invoke-virtual {v8, v5}, Lcom/vk/api/sdk/l$a;->a(Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v8

    .line 3055
    move-object v9, v7

    check-cast v9, Ljava/lang/Iterable;

    const-string v7, ","

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v9 .. v16}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "user_ids"

    invoke-virtual {v8, v9, v7}, Lcom/vk/api/sdk/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v7

    .line 3056
    invoke-virtual {v7, v4, v3}, Lcom/vk/api/sdk/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v7

    .line 5039
    iget-object v8, v1, Lcom/vk/api/sdk/g;->c:Lcom/vk/api/sdk/e;

    .line 5044
    iget-object v8, v8, Lcom/vk/api/sdk/e;->e:Ljava/lang/String;

    .line 3057
    invoke-virtual {v7, v8}, Lcom/vk/api/sdk/l$a;->b(Ljava/lang/String;)Lcom/vk/api/sdk/l$a;

    move-result-object v7

    .line 3058
    invoke-virtual {v7}, Lcom/vk/api/sdk/l$a;->a()Lcom/vk/api/sdk/l$a;

    move-result-object v7

    .line 3059
    invoke-virtual {v7}, Lcom/vk/api/sdk/l$a;->b()Lcom/vk/api/sdk/l;

    move-result-object v7

    .line 3060
    new-instance v8, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;

    invoke-direct {v8}, Lcom/callapp/contacts/api/helper/vk/VKUsersCommand$ResponseApiParser;-><init>()V

    check-cast v8, Lcom/vk/api/sdk/h;

    invoke-virtual {v1, v7, v8}, Lcom/vk/api/sdk/g;->a(Lcom/vk/api/sdk/l;Lcom/vk/api/sdk/h;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3062
    :cond_2
    check-cast v2, Ljava/util/List;

    return-object v2
.end method
