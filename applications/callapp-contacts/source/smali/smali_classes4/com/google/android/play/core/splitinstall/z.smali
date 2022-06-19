.class public final Lcom/google/android/play/core/splitinstall/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/play/core/splitinstall/ab;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/ab;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/z;->a:Lcom/google/android/play/core/splitinstall/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/q;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/splitinstall/q;-><init>([B)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/am;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/q;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitinstall/am;-><init>(Landroid/content/Context;)V

    .line 1000
    iput-object v2, v1, Lcom/google/android/play/core/splitinstall/q;->a:Lcom/google/android/play/core/splitinstall/am;

    .line 2000
    iget-object p0, v1, Lcom/google/android/play/core/splitinstall/q;->a:Lcom/google/android/play/core/splitinstall/am;

    const-class v2, Lcom/google/android/play/core/splitinstall/am;

    invoke-static {p0, v2}, Lcom/google/android/play/core/internal/ah;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance p0, Lcom/google/android/play/core/splitinstall/r;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/q;->a:Lcom/google/android/play/core/splitinstall/am;

    invoke-direct {p0, v1}, Lcom/google/android/play/core/splitinstall/r;-><init>(Lcom/google/android/play/core/splitinstall/am;)V

    sput-object p0, Lcom/google/android/play/core/splitinstall/z;->a:Lcom/google/android/play/core/splitinstall/ab;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/z;->a:Lcom/google/android/play/core/splitinstall/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/play/core/splitinstall/v;)Lcom/google/android/play/core/splitinstall/w;
    .locals 7

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "splits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "module"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "name"

    invoke-static {v0, p0}, Lcom/google/android/play/core/splitinstall/z;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "key"

    invoke-static {v3, p0}, Lcom/google/android/play/core/splitinstall/z;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "split"

    invoke-static {v4, p0}, Lcom/google/android/play/core/splitinstall/z;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 3000
    iget-object v5, p1, Lcom/google/android/play/core/splitinstall/v;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/google/android/play/core/splitinstall/v;->a:Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v5, p1, Lcom/google/android/play/core/splitinstall/v;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_6
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/z;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/v;->a()Lcom/google/android/play/core/splitinstall/w;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_4
    const-string p1, "SplitInstall"

    const-string v0, "Error while parsing splits.xml"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
