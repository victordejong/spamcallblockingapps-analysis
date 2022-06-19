.class public final Lhani/momanii/supernova_emoji_library/Helper/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Landroid/util/SparseIntArray;

.field private static final b:Landroid/util/SparseIntArray;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x405

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lhani/momanii/supernova_emoji_library/Helper/b;->a:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x1d7

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lhani/momanii/supernova_emoji_library/Helper/b;->b:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhani/momanii/supernova_emoji_library/Helper/b;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lhani/momanii/supernova_emoji_library/Helper/b;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/text/Spannable;IIIIIZ)V
    .locals 8

    if-eqz p7, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p7

    sub-int v0, p7, p5

    if-ltz p6, :cond_2

    if-lt p6, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p6, p5

    goto :goto_1

    :cond_2
    :goto_0
    move p6, p7

    :goto_1
    const-class v0, Lhani/momanii/supernova_emoji_library/Helper/e;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p7, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [Lhani/momanii/supernova_emoji_library/Helper/e;

    const/4 v0, 0x0

    :goto_2
    array-length v2, p7

    if-ge v0, v2, :cond_3

    aget-object v2, p7, v0

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge p5, p6, :cond_11

    invoke-interface {p1, p5}, Landroid/text/Spannable;->charAt(I)C

    move-result p7

    invoke-static {p7}, Lhani/momanii/supernova_emoji_library/Helper/b;->e(C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p7}, Lhani/momanii/supernova_emoji_library/Helper/b;->d(C)I

    move-result p7

    if-nez p7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 p7, 0x0

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez p7, :cond_f

    invoke-static {p1, p5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    const/16 v3, 0xff

    if-le v0, v3, :cond_6

    invoke-static {p0, v0}, Lhani/momanii/supernova_emoji_library/Helper/b;->c(Landroid/content/Context;I)I

    move-result p7

    :cond_6
    add-int v3, p5, v2

    if-ge v3, p6, :cond_e

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const v5, 0xfe0f

    const/16 v6, 0x20e3

    if-ne v4, v5, :cond_8

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v3, v0

    if-ge v3, p6, :cond_7

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v6, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    add-int/lit8 v2, v2, 0x0

    :cond_7
    move v0, v2

    goto/16 :goto_9

    :cond_8
    if-ne v4, v6, :cond_9

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    add-int/lit8 v0, v2, 0x0

    goto/16 :goto_9

    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "emoji_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lhani/momanii/supernova_emoji_library/Helper/b;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lhani/momanii/supernova_emoji_library/Helper/b;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_a
    sget-object v4, Lhani/momanii/supernova_emoji_library/Helper/b;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v4, v0, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v5, Lhani/momanii/supernova_emoji_library/Helper/b;->c:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    sget-object v5, Lhani/momanii/supernova_emoji_library/Helper/b;->d:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move v0, v4

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_d

    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    move p7, v0

    :goto_8
    add-int v0, v2, v3

    goto :goto_9

    :cond_e
    move v4, p7

    move v0, v2

    goto :goto_a

    :cond_f
    :goto_9
    move v4, p7

    :goto_a
    if-lez v4, :cond_10

    new-instance p7, Lhani/momanii/supernova_emoji_library/Helper/e;

    move-object v2, p7

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lhani/momanii/supernova_emoji_library/Helper/e;-><init>(Landroid/content/Context;IIII)V

    add-int v2, p5, v0

    const/16 v3, 0x21

    invoke-interface {p1, p7, p5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    add-int/2addr p5, v0

    goto/16 :goto_3

    :cond_11
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/text/Spannable;IIIZ)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lhani/momanii/supernova_emoji_library/Helper/b;->a(Landroid/content/Context;Landroid/text/Spannable;IIIIIZ)V

    return-void
.end method

.method private static c(Landroid/content/Context;I)I
    .locals 0

    sget-object p0, Lhani/momanii/supernova_emoji_library/Helper/b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method private static d(C)I
    .locals 1

    sget-object v0, Lhani/momanii/supernova_emoji_library/Helper/b;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method private static e(C)Z
    .locals 1

    shr-int/lit8 p0, p0, 0xc

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
