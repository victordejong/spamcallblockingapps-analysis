.class public final Landroidx/constraintlayout/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/b$b;,
        Landroidx/constraintlayout/widget/b$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/c;

.field b:I

.field c:I

.field d:Landroidx/constraintlayout/widget/d;

.field private final e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->f:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->d:Landroidx/constraintlayout/widget/d;

    .line 49
    iput-object p2, p0, Landroidx/constraintlayout/widget/b;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 10

    const-string v0, "id"

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 286
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const/4 v1, 0x0

    .line 292
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    if-eqz v2, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_6

    .line 300
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "Variant"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v5, "layoutDescription"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_2
    const-string v5, "StateSet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v5, "ConstraintSet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_2

    goto/16 :goto_6

    .line 1347
    :cond_2
    new-instance v2, Landroidx/constraintlayout/widget/c;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 1348
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_a

    .line 1350
    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1351
    invoke-interface {p2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 1354
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x2f

    .line 1355
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_3
    const/4 v5, -0x1

    :goto_4
    if-ne v5, v9, :cond_5

    if-eqz v4, :cond_4

    .line 1360
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 1361
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    :cond_4
    const-string v3, "ConstraintLayoutStates"

    const-string v4, "error in parsing id"

    .line 1363
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_5
    :goto_5
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1370
    iget-object v3, p0, Landroidx/constraintlayout/widget/b;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 311
    :cond_7
    new-instance v2, Landroidx/constraintlayout/widget/b$b;

    invoke-direct {v2, p1, p2}, Landroidx/constraintlayout/widget/b$b;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v1, :cond_a

    .line 1171
    iget-object v3, v1, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 307
    :cond_8
    new-instance v1, Landroidx/constraintlayout/widget/b$a;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/b$a;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 308
    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->f:Landroid/util/SparseArray;

    iget v3, v1, Landroidx/constraintlayout/widget/b$a;->a:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 297
    :cond_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 294
    :cond_a
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_b
    return-void

    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 340
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(IFF)V
    .locals 4

    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/b;->b:I

    const/4 v1, -0x1

    if-ne v0, p1, :cond_6

    if-ne p1, v1, :cond_0

    .line 76
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b$a;

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/b$a;

    .line 81
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p1, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/constraintlayout/widget/b;->c:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/b$b;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/b$b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/b$a;->a(FF)I

    move-result p2

    .line 87
    iget p3, p0, Landroidx/constraintlayout/widget/b;->c:I

    if-ne p3, p2, :cond_2

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    .line 91
    iget-object p3, p0, Landroidx/constraintlayout/widget/b;->a:Landroidx/constraintlayout/widget/c;

    goto :goto_1

    :cond_3
    iget-object p3, p1, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/b$b;

    iget-object p3, p3, Landroidx/constraintlayout/widget/b$b;->f:Landroidx/constraintlayout/widget/c;

    :goto_1
    if-eq p2, v1, :cond_4

    .line 93
    iget-object p1, p1, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 98
    :cond_5
    iput p2, p0, Landroidx/constraintlayout/widget/b;->c:I

    .line 102
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .line 108
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/widget/b;->b:I

    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/b$a;

    .line 110
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/b$a;->a(FF)I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 111
    iget-object v3, v0, Landroidx/constraintlayout/widget/b$a;->d:Landroidx/constraintlayout/widget/c;

    goto :goto_2

    :cond_7
    iget-object v3, v0, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/b$b;

    iget-object v3, v3, Landroidx/constraintlayout/widget/b$b;->f:Landroidx/constraintlayout/widget/c;

    :goto_2
    if-eq v2, v1, :cond_8

    .line 113
    iget-object v0, v0, Landroidx/constraintlayout/widget/b$a;->b:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_8
    if-nez v3, :cond_9

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NO Constraint set found ! id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void

    .line 120
    :cond_9
    iput v2, p0, Landroidx/constraintlayout/widget/b;->c:I

    .line 124
    iget-object p1, p0, Landroidx/constraintlayout/widget/b;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
