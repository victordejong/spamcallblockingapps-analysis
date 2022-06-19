.class abstract enum Lorg/jsoup/c/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/c/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/c/c;

.field public static final enum AfterAfterBody:Lorg/jsoup/c/c;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/c/c;

.field public static final enum AfterBody:Lorg/jsoup/c/c;

.field public static final enum AfterFrameset:Lorg/jsoup/c/c;

.field public static final enum AfterHead:Lorg/jsoup/c/c;

.field public static final enum BeforeHead:Lorg/jsoup/c/c;

.field public static final enum BeforeHtml:Lorg/jsoup/c/c;

.field public static final enum ForeignContent:Lorg/jsoup/c/c;

.field public static final enum InBody:Lorg/jsoup/c/c;

.field public static final enum InCaption:Lorg/jsoup/c/c;

.field public static final enum InCell:Lorg/jsoup/c/c;

.field public static final enum InColumnGroup:Lorg/jsoup/c/c;

.field public static final enum InFrameset:Lorg/jsoup/c/c;

.field public static final enum InHead:Lorg/jsoup/c/c;

.field public static final enum InHeadNoscript:Lorg/jsoup/c/c;

.field public static final enum InRow:Lorg/jsoup/c/c;

.field public static final enum InSelect:Lorg/jsoup/c/c;

.field public static final enum InSelectInTable:Lorg/jsoup/c/c;

.field public static final enum InTable:Lorg/jsoup/c/c;

.field public static final enum InTableBody:Lorg/jsoup/c/c;

.field public static final enum InTableText:Lorg/jsoup/c/c;

.field public static final enum Initial:Lorg/jsoup/c/c;

.field public static final enum Text:Lorg/jsoup/c/c;

.field private static final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 20
    new-instance v0, Lorg/jsoup/c/c$1;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/c/c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/c/c;->Initial:Lorg/jsoup/c/c;

    .line 45
    new-instance v1, Lorg/jsoup/c/c$12;

    const-string v3, "BeforeHtml"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jsoup/c/c$12;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jsoup/c/c;->BeforeHtml:Lorg/jsoup/c/c;

    .line 74
    new-instance v3, Lorg/jsoup/c/c$18;

    const-string v5, "BeforeHead"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jsoup/c/c$18;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jsoup/c/c;->BeforeHead:Lorg/jsoup/c/c;

    .line 102
    new-instance v5, Lorg/jsoup/c/c$19;

    const-string v7, "InHead"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jsoup/c/c$19;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jsoup/c/c;->InHead:Lorg/jsoup/c/c;

    .line 174
    new-instance v7, Lorg/jsoup/c/c$20;

    const-string v9, "InHeadNoscript"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jsoup/c/c$20;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jsoup/c/c;->InHeadNoscript:Lorg/jsoup/c/c;

    .line 203
    new-instance v9, Lorg/jsoup/c/c$21;

    const-string v11, "AfterHead"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jsoup/c/c$21;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jsoup/c/c;->AfterHead:Lorg/jsoup/c/c;

    .line 254
    new-instance v11, Lorg/jsoup/c/c$22;

    const-string v13, "InBody"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jsoup/c/c$22;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jsoup/c/c;->InBody:Lorg/jsoup/c/c;

    .line 872
    new-instance v13, Lorg/jsoup/c/c$23;

    const-string v15, "Text"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jsoup/c/c$23;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jsoup/c/c;->Text:Lorg/jsoup/c/c;

    .line 891
    new-instance v15, Lorg/jsoup/c/c$24;

    const-string v14, "InTable"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jsoup/c/c$24;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jsoup/c/c;->InTable:Lorg/jsoup/c/c;

    .line 990
    new-instance v14, Lorg/jsoup/c/c$2;

    const-string v12, "InTableText"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jsoup/c/c$2;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jsoup/c/c;->InTableText:Lorg/jsoup/c/c;

    .line 1024
    new-instance v12, Lorg/jsoup/c/c$3;

    const-string v10, "InCaption"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jsoup/c/c$3;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jsoup/c/c;->InCaption:Lorg/jsoup/c/c;

    .line 1057
    new-instance v10, Lorg/jsoup/c/c$4;

    const-string v8, "InColumnGroup"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jsoup/c/c$4;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jsoup/c/c;->InColumnGroup:Lorg/jsoup/c/c;

    .line 1113
    new-instance v8, Lorg/jsoup/c/c$5;

    const-string v6, "InTableBody"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jsoup/c/c$5;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jsoup/c/c;->InTableBody:Lorg/jsoup/c/c;

    .line 1175
    new-instance v6, Lorg/jsoup/c/c$6;

    const-string v4, "InRow"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jsoup/c/c$6;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/c/c;->InRow:Lorg/jsoup/c/c;

    .line 1238
    new-instance v4, Lorg/jsoup/c/c$7;

    const-string v2, "InCell"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jsoup/c/c$7;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/c/c;->InCell:Lorg/jsoup/c/c;

    .line 1294
    new-instance v2, Lorg/jsoup/c/c$8;

    const-string v6, "InSelect"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jsoup/c/c$8;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/c/c;->InSelect:Lorg/jsoup/c/c;

    .line 1388
    new-instance v6, Lorg/jsoup/c/c$9;

    const-string v4, "InSelectInTable"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jsoup/c/c$9;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/c/c;->InSelectInTable:Lorg/jsoup/c/c;

    .line 1406
    new-instance v4, Lorg/jsoup/c/c$10;

    const-string v2, "AfterBody"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/jsoup/c/c$10;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/c/c;->AfterBody:Lorg/jsoup/c/c;

    .line 1434
    new-instance v2, Lorg/jsoup/c/c$11;

    const-string v6, "InFrameset"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lorg/jsoup/c/c$11;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/c/c;->InFrameset:Lorg/jsoup/c/c;

    .line 1482
    new-instance v6, Lorg/jsoup/c/c$13;

    const-string v4, "AfterFrameset"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lorg/jsoup/c/c$13;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/c/c;->AfterFrameset:Lorg/jsoup/c/c;

    .line 1506
    new-instance v4, Lorg/jsoup/c/c$14;

    const-string v2, "AfterAfterBody"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lorg/jsoup/c/c$14;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jsoup/c/c;->AfterAfterBody:Lorg/jsoup/c/c;

    .line 1530
    new-instance v2, Lorg/jsoup/c/c$15;

    const-string v6, "AfterAfterFrameset"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lorg/jsoup/c/c$15;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jsoup/c/c;->AfterAfterFrameset:Lorg/jsoup/c/c;

    .line 1547
    new-instance v6, Lorg/jsoup/c/c$16;

    const-string v4, "ForeignContent"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lorg/jsoup/c/c$16;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jsoup/c/c;->ForeignContent:Lorg/jsoup/c/c;

    const/16 v2, 0x17

    new-array v2, v2, [Lorg/jsoup/c/c;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    .line 19
    sput-object v2, Lorg/jsoup/c/c;->$VALUES:[Lorg/jsoup/c/c;

    const-string v0, "\u0000"

    .line 1554
    sput-object v0, Lorg/jsoup/c/c;->nullString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/c/i;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lorg/jsoup/c/c;->isWhitespace(Lorg/jsoup/c/i;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lorg/jsoup/c/c;->handleRcData(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lorg/jsoup/c/c;->handleRawtext(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lorg/jsoup/c/c;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    .line 19
    invoke-static {p0}, Lorg/jsoup/c/c;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static handleRawtext(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V
    .locals 2

    .line 1578
    iget-object v0, p1, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v1, Lorg/jsoup/c/l;->Rawtext:Lorg/jsoup/c/l;

    .line 5124
    iput-object v1, v0, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    .line 1579
    invoke-virtual {p1}, Lorg/jsoup/c/b;->b()V

    .line 1580
    sget-object v0, Lorg/jsoup/c/c;->Text:Lorg/jsoup/c/c;

    .line 5145
    iput-object v0, p1, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1581
    invoke-virtual {p1, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    return-void
.end method

.method private static handleRcData(Lorg/jsoup/c/i$g;Lorg/jsoup/c/b;)V
    .locals 2

    .line 1571
    iget-object v0, p1, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v1, Lorg/jsoup/c/l;->Rcdata:Lorg/jsoup/c/l;

    .line 4124
    iput-object v1, v0, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    .line 1572
    invoke-virtual {p1}, Lorg/jsoup/c/b;->b()V

    .line 1573
    sget-object v0, Lorg/jsoup/c/c;->Text:Lorg/jsoup/c/c;

    .line 4145
    iput-object v0, p1, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    .line 1574
    invoke-virtual {p1, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    return-void
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 0

    .line 1567
    invoke-static {p0}, Lorg/jsoup/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isWhitespace(Lorg/jsoup/c/i;)Z
    .locals 1

    .line 1559
    invoke-virtual {p0}, Lorg/jsoup/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    check-cast p0, Lorg/jsoup/c/i$b;

    .line 3331
    iget-object p0, p0, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 1561
    invoke-static {p0}, Lorg/jsoup/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/c/c;
    .locals 1

    .line 19
    const-class v0, Lorg/jsoup/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/c/c;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/c/c;
    .locals 1

    .line 19
    sget-object v0, Lorg/jsoup/c/c;->$VALUES:[Lorg/jsoup/c/c;

    invoke-virtual {v0}, [Lorg/jsoup/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/c/c;

    return-object v0
.end method


# virtual methods
.method abstract process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
.end method
