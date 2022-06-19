.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->c:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 874
    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    check-cast p2, Lcom/twitter/sdk/android/core/models/User;

    .line 1877
    invoke-static {p1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    return v2

    .line 1887
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->a:Ljava/util/List;

    new-array v4, v0, [Lcom/twitter/sdk/android/core/models/User;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x2

    if-eqz v3, :cond_3

    const/4 v3, -0x2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1888
    :goto_0
    iget-object v5, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->a:Ljava/util/List;

    new-array v6, v0, [Lcom/twitter/sdk/android/core/models/User;

    aput-object p2, v6, v1

    invoke-static {v5, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 1889
    :goto_1
    iget-object v5, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->b:Ljava/util/List;

    new-array v6, v0, [Lcom/twitter/sdk/android/core/models/User;

    aput-object p1, v6, v1

    invoke-static {v5, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v3, v5

    .line 1890
    iget-object v5, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$11;->b:Ljava/util/List;

    new-array v6, v0, [Lcom/twitter/sdk/android/core/models/User;

    aput-object p2, v6, v1

    invoke-static {v5, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v1, -0x1

    :cond_6
    add-int/2addr v4, v1

    .line 1891
    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-nez v1, :cond_8

    .line 1893
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 1894
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    .line 1897
    :cond_7
    iget-object p2, p2, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 1898
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    :cond_8
    return v1
.end method
