.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 89
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 90
    :goto_0
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->b:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-eq v1, v4, :cond_5

    .line 92
    sget-object v4, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$30;->a:[I

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 102
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 104
    :catch_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/a/t;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid bitset value type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/t;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->i()Z

    move-result v5

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->m()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-eqz v5, :cond_4

    .line 112
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/BitSet;)V

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/util/BitSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 123
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 124
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    .line 125
    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->a(J)Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    return-void
.end method

.method public final synthetic b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$12;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
