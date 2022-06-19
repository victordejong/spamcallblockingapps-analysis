.class public final Lcom/facebook/internal/g;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.java"


# static fields
.field private static g:Lcom/facebook/internal/g;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/internal/g;->a:Ljava/util/Map;

    .line 74
    iput-object p2, p0, Lcom/facebook/internal/g;->b:Ljava/util/Map;

    .line 75
    iput-object p3, p0, Lcom/facebook/internal/g;->c:Ljava/util/Map;

    .line 76
    iput-object p4, p0, Lcom/facebook/internal/g;->d:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/facebook/internal/g;->e:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/facebook/internal/g;->f:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/internal/g;
    .locals 2

    .prologue
    .line 138
    const-class v1, Lcom/facebook/internal/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/internal/g;->g:Lcom/facebook/internal/g;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/facebook/internal/g;->b()Lcom/facebook/internal/g;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/g;->g:Lcom/facebook/internal/g;

    .line 141
    :cond_0
    sget-object v0, Lcom/facebook/internal/g;->g:Lcom/facebook/internal/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/json/JSONArray;)Lcom/facebook/internal/g;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 201
    if-nez p0, :cond_0

    .line 231
    :goto_0
    return-object v7

    .line 211
    :cond_0
    const/4 v0, 0x0

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v1, v7

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 212
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 213
    if-nez v8, :cond_2

    .line 211
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_2
    const-string/jumbo v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    if-eqz v9, :cond_1

    .line 220
    const-string/jumbo v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 221
    const-string/jumbo v1, "recovery_message"

    invoke-virtual {v8, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v8}, Lcom/facebook/internal/g;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 223
    :cond_3
    const-string/jumbo v10, "transient"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 224
    const-string/jumbo v2, "recovery_message"

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v8}, Lcom/facebook/internal/g;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    .line 226
    :cond_4
    const-string/jumbo v10, "login_recoverable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 227
    const-string/jumbo v3, "recovery_message"

    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    invoke-static {v8}, Lcom/facebook/internal/g;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    .line 231
    :cond_5
    new-instance v0, Lcom/facebook/internal/g;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/g;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 169
    const-string/jumbo v0, "items"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 170
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-object v4

    .line 174
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 175
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 176
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 177
    if-nez v2, :cond_2

    .line 175
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 181
    if-eqz v7, :cond_1

    .line 185
    const-string/jumbo v3, "subcodes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 186
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 187
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v2, v1

    .line 188
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 189
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 190
    if-eqz v9, :cond_3

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object v2, v3

    .line 195
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 197
    goto :goto_0

    :cond_6
    move-object v2, v4

    goto :goto_4
.end method

.method private static b()Lcom/facebook/internal/g;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 145
    new-instance v2, Lcom/facebook/internal/g$1;

    invoke-direct {v2}, Lcom/facebook/internal/g$1;-><init>()V

    .line 153
    new-instance v3, Lcom/facebook/internal/g$2;

    invoke-direct {v3}, Lcom/facebook/internal/g$2;-><init>()V

    .line 159
    new-instance v0, Lcom/facebook/internal/g;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/g;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(IIZ)Lcom/facebook/i$a;
    .locals 2

    .prologue
    .line 110
    if-eqz p3, :cond_0

    .line 111
    sget-object v0, Lcom/facebook/i$a;->c:Lcom/facebook/i$a;

    .line 134
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/g;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/internal/g;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/facebook/internal/g;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 116
    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    sget-object v0, Lcom/facebook/i$a;->b:Lcom/facebook/i$a;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/g;->c:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/internal/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/facebook/internal/g;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 123
    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    sget-object v0, Lcom/facebook/i$a;->a:Lcom/facebook/i$a;

    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/g;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/internal/g;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/facebook/internal/g;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 130
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    :cond_5
    sget-object v0, Lcom/facebook/i$a;->c:Lcom/facebook/i$a;

    goto/16 :goto_0

    .line 134
    :cond_6
    sget-object v0, Lcom/facebook/i$a;->b:Lcom/facebook/i$a;

    goto/16 :goto_0
.end method

.method public a(Lcom/facebook/i$a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/internal/g$3;->a:[I

    invoke-virtual {p1}, Lcom/facebook/i$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/internal/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/internal/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/internal/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
