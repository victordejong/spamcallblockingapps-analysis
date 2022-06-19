.class public Lk9/b;
.super Lk9/a;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk9/b$a;

    invoke-direct {v0}, Lk9/b$a;-><init>()V

    sput-object v0, Lk9/b;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk9/a;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x7f100000

    .line 2
    iput p1, p0, Lk9/b;->c:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lk9/b;->d:Ljava/lang/String;

    .line 4
    iput p2, p0, Lk9/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lk9/a;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x7f100000

    .line 6
    iput p1, p0, Lk9/b;->c:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lk9/b;->d:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lk9/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lj9/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lk9/b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lk9/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lc4/e;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lk9/b;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lk9/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lk9/b;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    .line 7
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 8
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 10
    new-instance v1, Lj9/a;

    invoke-direct {v1}, Lj9/a;-><init>()V

    .line 11
    invoke-virtual {p0, v2, v1}, Lk9/b;->b(Lorg/xmlpull/v1/XmlPullParser;Lj9/a;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    .line 13
    :cond_2
    new-instance v0, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    const-string v1, "Changelog.xml not found"

    invoke-direct {v0, v1}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 14
    throw v0

    :catch_1
    move-exception v0

    .line 15
    throw v0
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;Lj9/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "changelog"

    .line 1
    invoke-interface {v1, v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "bulletedList"

    .line 2
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    .line 3
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v9, v2, Lj9/a;->b:Z

    .line 5
    iput-boolean v9, v0, Lk9/a;->b:Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iput-boolean v8, v2, Lj9/a;->b:Z

    .line 7
    iput-boolean v8, v0, Lk9/a;->b:Z

    .line 8
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x3

    if-eq v6, v10, :cond_10

    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "changelogversion"

    .line 11
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 12
    invoke-interface {v1, v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "versionName"

    .line 13
    invoke-interface {v1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "versionCode"

    .line 14
    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 15
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v11, "XmlParser"

    const-string v12, "Error while parsing versionCode.It must be a numeric value. Check you file."

    .line 16
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const-string v12, "changeDate"

    .line 17
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_e

    .line 18
    new-instance v13, Lj9/d;

    invoke-direct {v13}, Lj9/d;-><init>()V

    .line 19
    iput-object v6, v13, Lj9/c;->b:Ljava/lang/String;

    .line 20
    iput-object v12, v13, Lj9/c;->d:Ljava/lang/String;

    .line 21
    iget-object v12, v2, Lj9/a;->a:Ljava/util/LinkedList;

    if-nez v12, :cond_4

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    iput-object v12, v2, Lj9/a;->a:Ljava/util/LinkedList;

    .line 22
    :cond_4
    iget-object v12, v2, Lj9/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v12, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v10, :cond_f

    .line 24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    if-eq v12, v4, :cond_5

    goto/16 :goto_7

    .line 25
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 26
    sget-object v13, Lk9/b;->e:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 27
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 28
    new-instance v13, Lj9/c;

    invoke-direct {v13}, Lj9/c;-><init>()V

    .line 29
    iput-object v6, v13, Lj9/c;->b:Ljava/lang/String;

    .line 30
    iput v11, v13, Lj9/c;->c:I

    const-string v14, "changeTextTitle"

    .line 31
    invoke-interface {v1, v3, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 33
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 34
    iput-boolean v8, v13, Lj9/c;->e:Z

    goto :goto_4

    .line 35
    :cond_6
    iput-boolean v9, v13, Lj9/c;->e:Z

    goto :goto_4

    .line 36
    :cond_7
    iget-boolean v14, v0, Lk9/a;->b:Z

    .line 37
    iput-boolean v14, v13, Lj9/c;->e:Z

    .line 38
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_b

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    const-string v15, "\\["

    const-string v3, "<"

    .line 40
    invoke-virtual {v14, v15, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "\\]"

    const-string v15, ">"

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, v13, Lj9/c;->f:Ljava/lang/String;

    const-string v3, "changelogbug"

    .line 42
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const-string v3, "changelogimprovement"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    .line 43
    :goto_5
    iput v3, v13, Lj9/c;->g:I

    .line 44
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_6

    .line 45
    :cond_a
    new-instance v1, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    const-string v2, "ChangeLogText required in changeLogText node"

    invoke-direct {v1, v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_b
    :goto_6
    iget-object v3, v2, Lj9/a;->a:Ljava/util/LinkedList;

    if-nez v3, :cond_c

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lj9/a;->a:Ljava/util/LinkedList;

    .line 47
    :cond_c
    iget-object v3, v2, Lj9/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 48
    :cond_e
    new-instance v1, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    const-string v2, "VersionName required in changeLogVersion node"

    invoke-direct {v1, v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    return-void
.end method
