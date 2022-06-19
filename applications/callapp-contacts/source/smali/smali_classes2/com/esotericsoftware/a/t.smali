.class public final Lcom/esotericsoftware/a/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/esotericsoftware/a/t;

.field public static final b:Lcom/esotericsoftware/a/t;

.field public static final c:Lcom/esotericsoftware/a/t;

.field public static final d:Lcom/esotericsoftware/a/t;

.field public static final e:Lcom/esotericsoftware/a/t;

.field public static final f:Lcom/esotericsoftware/a/t;

.field public static final g:Lcom/esotericsoftware/a/t;

.field public static final h:Lcom/esotericsoftware/a/t;

.field public static final i:Lcom/esotericsoftware/a/t;


# instance fields
.field public final j:I

.field private final k:[C

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x56050000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->a:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const v1, 0x5a000501

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->b:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x2

    const v3, 0x43000601

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->c:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x3

    const v3, 0x42000501

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->d:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x4

    const v3, 0x53000701

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->e:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x5

    const v3, 0x49000001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->f:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x6

    const v3, 0x46020201

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->g:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x7

    const v3, 0x4a010102    # 2113600.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->h:Lcom/esotericsoftware/a/t;

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/16 v1, 0x8

    const v3, 0x44030302

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    sput-object v0, Lcom/esotericsoftware/a/t;->i:Lcom/esotericsoftware/a/t;

    return-void
.end method

.method private constructor <init>(I[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/a/t;->j:I

    iput-object p2, p0, Lcom/esotericsoftware/a/t;->k:[C

    iput p3, p0, Lcom/esotericsoftware/a/t;->l:I

    iput p4, p0, Lcom/esotericsoftware/a/t;->m:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/esotericsoftware/a/t;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/esotericsoftware/a/t;->f:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/esotericsoftware/a/t;->a:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/esotericsoftware/a/t;->b:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/esotericsoftware/a/t;->d:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/esotericsoftware/a/t;->c:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/esotericsoftware/a/t;->e:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/esotericsoftware/a/t;->i:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/esotericsoftware/a/t;->g:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_7
    sget-object p0, Lcom/esotericsoftware/a/t;->h:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_8
    invoke-static {p0}, Lcom/esotericsoftware/a/t;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/String;)Lcom/esotericsoftware/a/t;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/esotericsoftware/a/t;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/esotericsoftware/a/t;->a([CI)Lcom/esotericsoftware/a/t;

    move-result-object p0

    return-object p0
.end method

.method private static a([CI)Lcom/esotericsoftware/a/t;
    .locals 7

    aget-char v0, p0, p1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3b

    const/16 v2, 0x4c

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/16 v4, 0x53

    if-eq v0, v4, :cond_7

    const/16 v4, 0x56

    if-eq v0, v4, :cond_6

    const/16 v4, 0x49

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/16 v1, 0xb

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/esotericsoftware/a/t;->i:Lcom/esotericsoftware/a/t;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/esotericsoftware/a/t;->c:Lcom/esotericsoftware/a/t;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/esotericsoftware/a/t;->d:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int v5, p1, v0

    aget-char v6, p0, v5

    if-ne v6, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v4, p0, v5

    if-ne v4, v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/esotericsoftware/a/t;

    const/16 v2, 0x9

    add-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    return-object v1

    :cond_3
    sget-object p0, Lcom/esotericsoftware/a/t;->b:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_4
    sget-object p0, Lcom/esotericsoftware/a/t;->h:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_5
    sget-object p0, Lcom/esotericsoftware/a/t;->f:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_6
    sget-object p0, Lcom/esotericsoftware/a/t;->a:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_7
    sget-object p0, Lcom/esotericsoftware/a/t;->e:Lcom/esotericsoftware/a/t;

    return-object p0

    :cond_8
    const/4 v0, 0x1

    :goto_2
    add-int v2, p1, v0

    aget-char v2, p0, v2

    if-eq v2, v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    new-instance v1, Lcom/esotericsoftware/a/t;

    const/16 v2, 0xa

    add-int/2addr p1, v3

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    return-object v1

    :cond_a
    sget-object p0, Lcom/esotericsoftware/a/t;->g:Lcom/esotericsoftware/a/t;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/t;->k:[C

    if-nez v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/t;->l:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x18

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/a/t;->j:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/esotericsoftware/a/t;->k:[C

    iget v1, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v2, p0, Lcom/esotericsoftware/a/t;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    iget v1, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v2, p0, Lcom/esotericsoftware/a/t;->m:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V
    .locals 4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x49

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x56

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const/16 p1, 0x5a

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x42

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x43

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const/16 p1, 0x53

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const/16 p1, 0x44

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x46

    goto :goto_1

    :cond_7
    const/16 p1, 0x4a

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_a

    const/16 v2, 0x2f

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/esotericsoftware/a/t;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    new-instance v0, Lcom/esotericsoftware/a/t;

    const/4 v1, 0x0

    aget-char v2, p0, v1

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    array-length v3, p0

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/esotericsoftware/a/t;-><init>(I[CII)V

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/StringBuffer;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/esotericsoftware/a/t;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/esotericsoftware/a/t;->a([CI)Lcom/esotericsoftware/a/t;

    move-result-object p0

    return-object p0
.end method

.method private d()I
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/a/t;->k:[C

    iget v2, p0, Lcom/esotericsoftware/a/t;->l:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static d(Ljava/lang/String;)[Lcom/esotericsoftware/a/t;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    aget-char v2, p0, v2

    const/16 v5, 0x29

    if-eq v2, v5, :cond_3

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_1

    :goto_1
    add-int/lit8 v2, v4, 0x1

    aget-char v4, p0, v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    const/16 v5, 0x5b

    if-eq v2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    new-array v2, v3, [Lcom/esotericsoftware/a/t;

    const/4 v3, 0x0

    :goto_2
    aget-char v4, p0, v1

    if-eq v4, v5, :cond_5

    invoke-static {p0, v1}, Lcom/esotericsoftware/a/t;->a([CI)Lcom/esotericsoftware/a/t;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v4, v2, v3

    iget v4, v4, Lcom/esotericsoftware/a/t;->m:I

    aget-object v6, v2, v3

    iget v6, v6, Lcom/esotericsoftware/a/t;->j:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    const/4 v6, 0x2

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v2
.end method

.method public static e(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    const/16 v5, 0x4a

    const/16 v6, 0x44

    if-ne v1, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/4 v1, 0x2

    shl-int/2addr v2, v1

    const/16 v3, 0x56

    if-ne p0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-eq p0, v6, :cond_2

    if-ne p0, v5, :cond_3

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_1
    or-int p0, v2, v0

    return p0

    :cond_4
    const/16 v4, 0x4c

    if-ne v1, v4, :cond_6

    :goto_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_9

    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-eq v3, v6, :cond_8

    if-ne v3, v5, :cond_0

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_9
    if-eq v1, v6, :cond_b

    if-ne v1, v5, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x2

    :goto_5
    move v1, v3

    goto :goto_0
.end method

.method private e()Lcom/esotericsoftware/a/t;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/a/t;->k:[C

    iget v1, p0, Lcom/esotericsoftware/a/t;->l:I

    invoke-direct {p0}, Lcom/esotericsoftware/a/t;->d()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/esotericsoftware/a/t;->a([CI)Lcom/esotericsoftware/a/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/a/t;->j:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/esotericsoftware/a/t;->k:[C

    iget v2, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v3, p0, Lcom/esotericsoftware/a/t;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcom/esotericsoftware/a/t;->e()Lcom/esotericsoftware/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/esotericsoftware/a/t;->d()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "double"

    return-object v0

    :pswitch_3
    const-string v0, "long"

    return-object v0

    :pswitch_4
    const-string v0, "float"

    return-object v0

    :pswitch_5
    const-string v0, "int"

    return-object v0

    :pswitch_6
    const-string v0, "short"

    return-object v0

    :pswitch_7
    const-string v0, "byte"

    return-object v0

    :pswitch_8
    const-string v0, "char"

    return-object v0

    :pswitch_9
    const-string v0, "boolean"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "void"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/esotericsoftware/a/t;->k:[C

    iget v2, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v3, p0, Lcom/esotericsoftware/a/t;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/a/t;->a(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/a/t;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/esotericsoftware/a/t;

    iget v1, p0, Lcom/esotericsoftware/a/t;->j:I

    iget v3, p1, Lcom/esotericsoftware/a/t;->j:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/16 v3, 0x9

    if-lt v1, v3, :cond_5

    iget v1, p0, Lcom/esotericsoftware/a/t;->m:I

    iget v3, p1, Lcom/esotericsoftware/a/t;->m:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v4, p1, Lcom/esotericsoftware/a/t;->l:I

    add-int/2addr v1, v3

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v5, p0, Lcom/esotericsoftware/a/t;->k:[C

    aget-char v5, v5, v3

    iget-object v6, p1, Lcom/esotericsoftware/a/t;->k:[C

    aget-char v6, v6, v4

    if-eq v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/esotericsoftware/a/t;->j:I

    mul-int/lit8 v1, v0, 0xd

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/esotericsoftware/a/t;->l:I

    iget v2, p0, Lcom/esotericsoftware/a/t;->m:I

    add-int/2addr v2, v0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/esotericsoftware/a/t;->k:[C

    aget-char v3, v3, v0

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/esotericsoftware/a/t;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
