.class public final Lcom/explorestack/iab/vast/processor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/explorestack/iab/vast/tags/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/explorestack/iab/vast/VastRequest;

.field private d:Lcom/explorestack/iab/vast/processor/VastMediaPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/VastRequest;",
            "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/explorestack/iab/vast/processor/a;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;I)V

    return-void
.end method

.method constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/VastRequest;",
            "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/explorestack/iab/vast/processor/a;->e:I

    .line 70
    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/a;->c:Lcom/explorestack/iab/vast/VastRequest;

    .line 71
    iput-object p2, p0, Lcom/explorestack/iab/vast/processor/a;->d:Lcom/explorestack/iab/vast/processor/VastMediaPicker;

    .line 72
    iput p3, p0, Lcom/explorestack/iab/vast/processor/a;->a:I

    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/tags/a;Lcom/explorestack/iab/vast/tags/q;Lcom/explorestack/iab/vast/processor/c;)Lcom/explorestack/iab/vast/processor/b;
    .locals 6

    .line 96
    new-instance v0, Lcom/explorestack/iab/vast/processor/b;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/b;-><init>()V

    const/4 v1, 0x0

    .line 2034
    :goto_0
    iget-object v2, p2, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    .line 97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x12f

    if-ge v1, v2, :cond_8

    .line 3034
    iget-object v2, p2, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    .line 98
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/c;

    if-eqz v2, :cond_7

    .line 4033
    iget-object v4, v2, Lcom/explorestack/iab/vast/tags/c;->a:Lcom/explorestack/iab/vast/tags/a;

    if-eqz v4, :cond_7

    .line 5033
    iget-object v2, v2, Lcom/explorestack/iab/vast/tags/c;->a:Lcom/explorestack/iab/vast/tags/a;

    .line 102
    instance-of v4, v2, Lcom/explorestack/iab/vast/tags/j;

    if-eqz v4, :cond_2

    .line 103
    move-object v3, v2

    check-cast v3, Lcom/explorestack/iab/vast/tags/j;

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/tags/j;)Lcom/explorestack/iab/vast/processor/b;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/b;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 6023
    :cond_0
    iget-object v4, v3, Lcom/explorestack/iab/vast/processor/b;->a:Ljava/util/List;

    .line 107
    invoke-direct {p0, v4}, Lcom/explorestack/iab/vast/processor/a;->a(Ljava/util/List;)V

    if-eqz p1, :cond_1

    .line 6047
    iget-boolean v4, v3, Lcom/explorestack/iab/vast/processor/b;->d:Z

    if-eqz v4, :cond_6

    .line 7027
    iget v3, v3, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 110
    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    goto :goto_2

    .line 8027
    :cond_1
    iget v3, v3, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 8031
    iput v3, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    goto :goto_2

    .line 116
    :cond_2
    instance-of v4, v2, Lcom/explorestack/iab/vast/tags/t;

    if-eqz v4, :cond_6

    .line 8044
    iget-boolean v4, p3, Lcom/explorestack/iab/vast/processor/c;->a:Z

    if-eqz v4, :cond_6

    .line 117
    move-object v4, v2

    check-cast v4, Lcom/explorestack/iab/vast/tags/t;

    invoke-direct {p0, v4}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/tags/t;)Lcom/explorestack/iab/vast/processor/b;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/explorestack/iab/vast/processor/b;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    .line 9023
    :cond_3
    iget-object v5, v4, Lcom/explorestack/iab/vast/processor/b;->a:Ljava/util/List;

    .line 121
    invoke-direct {p0, v5}, Lcom/explorestack/iab/vast/processor/a;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 9047
    iget-boolean v5, v4, Lcom/explorestack/iab/vast/processor/b;->d:Z

    if-eqz v5, :cond_4

    .line 10027
    iget v3, v4, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 124
    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    goto :goto_1

    .line 10031
    :cond_5
    iput v3, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    :goto_1
    if-nez v1, :cond_6

    .line 10052
    iget-boolean v3, p3, Lcom/explorestack/iab/vast/processor/c;->c:Z

    if-nez v3, :cond_6

    return-object v0

    .line 137
    :cond_6
    :goto_2
    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/tags/a;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11027
    :cond_8
    iget p2, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_9

    if-eqz p1, :cond_9

    .line 141
    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    :cond_9
    return-object v0
.end method

.method private a(Lcom/explorestack/iab/vast/tags/j;)Lcom/explorestack/iab/vast/processor/b;
    .locals 12

    .line 148
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/explorestack/iab/vast/processor/b;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/b;-><init>()V

    .line 150
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/processor/a;->b(Lcom/explorestack/iab/vast/tags/j;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x65

    .line 152
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    goto/16 :goto_2

    .line 153
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/16 v1, 0x193

    .line 154
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    goto/16 :goto_2

    .line 156
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    const/4 v5, 0x0

    .line 160
    iget-object v6, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 161
    iget-object v6, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/explorestack/iab/vast/tags/a;

    if-eqz v7, :cond_2

    .line 11045
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/a;->c:Ljava/util/List;

    if-eqz v8, :cond_3

    .line 12045
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/a;->c:Ljava/util/List;

    .line 166
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13029
    :cond_3
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 14029
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    .line 169
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/explorestack/iab/vast/tags/h;

    if-eqz v9, :cond_4

    .line 14034
    iget-object v9, v9, Lcom/explorestack/iab/vast/tags/h;->a:Lcom/explorestack/iab/vast/tags/g;

    .line 174
    instance-of v10, v9, Lcom/explorestack/iab/vast/tags/k;

    if-eqz v10, :cond_4

    .line 175
    check-cast v9, Lcom/explorestack/iab/vast/tags/k;

    .line 14098
    iget-object v10, v9, Lcom/explorestack/iab/vast/tags/k;->b:Lcom/explorestack/iab/vast/tags/s;

    if-eqz v10, :cond_5

    .line 15044
    iget-object v11, v10, Lcom/explorestack/iab/vast/tags/s;->b:Ljava/util/List;

    if-eqz v11, :cond_5

    .line 16044
    iget-object v10, v10, Lcom/explorestack/iab/vast/tags/s;->b:Ljava/util/List;

    .line 178
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16114
    :cond_5
    iget-object v9, v9, Lcom/explorestack/iab/vast/tags/k;->d:Ljava/util/EnumMap;

    .line 180
    invoke-static {v4, v9}, Lcom/explorestack/iab/vast/processor/a;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    if-nez v5, :cond_2

    .line 17037
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/a;->b:Ljava/util/List;

    if-eqz v8, :cond_2

    .line 18037
    iget-object v7, v7, Lcom/explorestack/iab/vast/tags/a;->b:Ljava/util/List;

    .line 186
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/explorestack/iab/vast/tags/i;

    .line 187
    instance-of v9, v8, Lcom/explorestack/iab/vast/tags/d;

    if-eqz v9, :cond_7

    .line 188
    move-object v5, v8

    check-cast v5, Lcom/explorestack/iab/vast/tags/d;

    goto :goto_0

    .line 196
    :cond_8
    new-instance v6, Lcom/explorestack/iab/vast/processor/VastAd;

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/explorestack/iab/vast/tags/k;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-direct {v6, v7, v1}, Lcom/explorestack/iab/vast/processor/VastAd;-><init>(Lcom/explorestack/iab/vast/tags/k;Lcom/explorestack/iab/vast/tags/MediaFileTag;)V

    .line 197
    invoke-virtual {v6, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->setImpressionUrlList(Ljava/util/ArrayList;)V

    .line 198
    invoke-direct {p0}, Lcom/explorestack/iab/vast/processor/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/explorestack/iab/vast/processor/VastAd;->setErrorUrlList(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v6, v3}, Lcom/explorestack/iab/vast/processor/VastAd;->setClickTrackingUrlList(Ljava/util/ArrayList;)V

    .line 200
    invoke-virtual {v6, v4}, Lcom/explorestack/iab/vast/processor/VastAd;->setTrackingEventListMap(Ljava/util/EnumMap;)V

    .line 201
    invoke-static {p1}, Lcom/explorestack/iab/vast/processor/a;->b(Lcom/explorestack/iab/vast/tags/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/explorestack/iab/vast/processor/VastAd;->setCompanionTagList(Ljava/util/ArrayList;)V

    .line 202
    invoke-virtual {v6, v5}, Lcom/explorestack/iab/vast/processor/VastAd;->setAppodealExtension(Lcom/explorestack/iab/vast/tags/d;)V

    const/4 p1, 0x0

    .line 19031
    iput p1, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 19039
    iput-object v6, v0, Lcom/explorestack/iab/vast/processor/b;->b:Lcom/explorestack/iab/vast/processor/VastAd;

    :goto_2
    return-object v0
.end method

.method private a(Lcom/explorestack/iab/vast/tags/t;)Lcom/explorestack/iab/vast/processor/b;
    .locals 11

    .line 213
    new-instance v0, Lcom/explorestack/iab/vast/processor/b;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/b;-><init>()V

    .line 19297
    iget v1, p0, Lcom/explorestack/iab/vast/processor/a;->e:I

    iget v2, p0, Lcom/explorestack/iab/vast/processor/a;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "VastProcessor"

    if-eqz v2, :cond_1

    .line 215
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/explorestack/iab/vast/processor/a;->a:I

    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "VAST wrapping exceeded max limit of %d"

    .line 215
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    .line 220
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    return-object v0

    :cond_1
    add-int/2addr v1, v4

    .line 224
    iput v1, p0, Lcom/explorestack/iab/vast/processor/a;->e:I

    .line 225
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20043
    iget-object v1, p1, Lcom/explorestack/iab/vast/tags/t;->e:Ljava/lang/String;

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x12d

    if-eqz v1, :cond_2

    const-string v1, "VASTAdTagURI is null or empty"

    .line 228
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    return-object v0

    .line 233
    :cond_2
    new-instance v1, Lcom/explorestack/iab/vast/processor/c;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/vast/processor/c;-><init>(Lcom/explorestack/iab/vast/tags/r;)V

    const/4 v6, 0x0

    .line 236
    :try_start_0
    new-instance v7, Ljava/net/URL;

    .line 21043
    iget-object v8, p1, Lcom/explorestack/iab/vast/tags/t;->e:Ljava/lang/String;

    .line 236
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 238
    move-object v8, v7

    check-cast v8, Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    const/16 v10, 0x12f

    if-eq v8, v9, :cond_4

    const/16 v1, 0xcc

    if-eq v8, v1, :cond_3

    .line 266
    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    return-object v0

    :cond_3
    const-string v1, "Wrapper response code: 204"

    .line 262
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p1, v10}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V

    return-object v0

    .line 242
    :cond_4
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 243
    invoke-static {v6}, Lcom/explorestack/iab/vast/tags/p;->a(Ljava/io/InputStream;)Lcom/explorestack/iab/vast/tags/q;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v1, "Invalid Vast"

    .line 245
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    .line 246
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    .line 288
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v0

    .line 249
    :cond_6
    :try_start_2
    invoke-virtual {v7}, Lcom/explorestack/iab/vast/tags/q;->d()Z

    move-result v8

    if-nez v8, :cond_8

    const-string v1, "Vast has no ad"

    .line 250
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1, v10}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_7

    .line 288
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-object v0

    .line 22034
    :cond_8
    :try_start_4
    iget-object v8, v7, Lcom/explorestack/iab/vast/tags/q;->a:Ljava/util/List;

    .line 254
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_a

    .line 22048
    iget-boolean v4, v1, Lcom/explorestack/iab/vast/processor/c;->b:Z

    if-nez v4, :cond_a

    const/16 v1, 0x12c

    .line 255
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_9

    .line 288
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    return-object v0

    .line 258
    :cond_a
    :try_start_6
    invoke-direct {p0, p1, v7, v1}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/tags/a;Lcom/explorestack/iab/vast/tags/q;Lcom/explorestack/iab/vast/processor/c;)Lcom/explorestack/iab/vast/processor/b;

    move-result-object v1

    .line 22051
    iput-boolean v3, v1, Lcom/explorestack/iab/vast/processor/b;->d:Z
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_b

    .line 288
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_4
    move-exception v1

    .line 282
    :try_start_8
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x64

    .line 283
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_c

    .line 288
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    .line 278
    :try_start_a
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v6, :cond_d

    .line 288
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    return-object v0

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_7

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    .line 274
    :goto_7
    :try_start_c
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v6, :cond_e

    .line 288
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_8

    :catch_c
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-object v0

    :catch_d
    move-exception v1

    .line 270
    :try_start_e
    invoke-static {v5, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/vast/processor/b;->a(Lcom/explorestack/iab/vast/tags/a;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_f

    .line 288
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_9

    :catch_e
    move-exception p1

    .line 291
    invoke-static {v5, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    return-object v0

    :goto_a
    if-eqz v6, :cond_10

    .line 288
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_b

    :catch_f
    move-exception v0

    .line 291
    invoke-static {v5, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :cond_10
    :goto_b
    throw p1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/a;

    if-eqz v2, :cond_1

    .line 24056
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 25056
    iget-object v2, v2, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    .line 335
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private a(Lcom/explorestack/iab/vast/tags/a;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/a;->c:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 371
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/TrackingEvent;

    .line 376
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Lcom/explorestack/iab/vast/tags/j;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/tags/j;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/k;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26029
    iget-object p1, p1, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    .line 343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/tags/h;

    if-eqz v1, :cond_0

    .line 26034
    iget-object v1, v1, Lcom/explorestack/iab/vast/tags/h;->a:Lcom/explorestack/iab/vast/tags/g;

    .line 348
    instance-of v2, v1, Lcom/explorestack/iab/vast/tags/k;

    if-eqz v2, :cond_0

    .line 349
    check-cast v1, Lcom/explorestack/iab/vast/tags/k;

    .line 26090
    iget-object v2, v1, Lcom/explorestack/iab/vast/tags/k;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 351
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    .line 353
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return-object v1

    .line 362
    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/processor/a;->d:Lcom/explorestack/iab/vast/processor/VastMediaPicker;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/processor/VastMediaPicker;->pickVideo(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    return-object p1

    .line 366
    :cond_4
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static b(Lcom/explorestack/iab/vast/tags/a;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/tags/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/f;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23029
    iget-object p0, p0, Lcom/explorestack/iab/vast/tags/a;->a:Ljava/util/List;

    .line 313
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/tags/h;

    if-eqz v1, :cond_0

    .line 23034
    iget-object v1, v1, Lcom/explorestack/iab/vast/tags/h;->a:Lcom/explorestack/iab/vast/tags/g;

    .line 318
    instance-of v2, v1, Lcom/explorestack/iab/vast/tags/e;

    if-eqz v2, :cond_0

    .line 319
    check-cast v1, Lcom/explorestack/iab/vast/tags/e;

    .line 23036
    iget-object v2, v1, Lcom/explorestack/iab/vast/tags/e;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 24036
    iget-object v1, v1, Lcom/explorestack/iab/vast/tags/e;->a:Ljava/util/List;

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/explorestack/iab/vast/processor/b;
    .locals 2

    const-string v0, "VastProcessor"

    const-string v1, "process"

    .line 77
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/explorestack/iab/vast/processor/b;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/b;-><init>()V

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/p;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/tags/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/q;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    new-instance v1, Lcom/explorestack/iab/vast/processor/c;

    invoke-direct {v1}, Lcom/explorestack/iab/vast/processor/c;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/tags/a;Lcom/explorestack/iab/vast/tags/q;Lcom/explorestack/iab/vast/processor/c;)Lcom/explorestack/iab/vast/processor/b;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/16 p1, 0x65

    .line 2031
    iput p1, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    return-object v0

    :catch_0
    const/16 p1, 0x64

    .line 1031
    iput p1, v0, Lcom/explorestack/iab/vast/processor/b;->c:I

    return-object v0
.end method
