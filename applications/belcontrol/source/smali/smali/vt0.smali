.class public final enum Lvt0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvt0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lvt0;

.field public static final enum f:Lvt0;

.field public static final enum g:Lvt0;

.field public static final enum h:Lvt0;

.field public static final enum j:Lvt0;

.field public static final enum k:Lvt0;

.field public static final enum l:Lvt0;

.field public static final enum m:Lvt0;

.field public static final enum n:Lvt0;

.field public static final enum o:Lvt0;

.field public static final enum p:Lvt0;

.field public static final enum q:Lvt0;

.field public static final enum r:Lvt0;

.field public static s:[Lvt0;

.field public static final synthetic t:[Lvt0;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v6, Lvt0;

    invoke-static {}, Lq71$f;->d()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int/2addr v0, v7

    :goto_0
    move v5, v0

    const-string v1, "MORE_PURCHASE"

    const/4 v2, 0x0

    const v3, 0x7f080277

    const v4, 0x7f1105b4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lvt0;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lvt0;->d:Lvt0;

    new-instance v0, Lvt0;

    const/4 v10, 0x1

    const v11, 0x7f0801c9

    const v12, 0x7f110523

    invoke-static {}, Lq71$f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int/2addr v1, v7

    :goto_1
    move v13, v1

    const-string v9, "MY_CREDITS"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lvt0;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lvt0;->f:Lvt0;

    new-instance v1, Lvt0;

    const v2, 0x7f080271

    const v3, 0x7f11049a

    const-string v4, "MORE_DND"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v5, v2, v3}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lvt0;->g:Lvt0;

    new-instance v2, Lvt0;

    const v3, 0x7f080275

    const v4, 0x7f1104a6

    const-string v8, "SMS_MMS"

    const/4 v9, 0x3

    invoke-direct {v2, v8, v9, v3, v4}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lvt0;->h:Lvt0;

    new-instance v3, Lvt0;

    const/4 v12, 0x4

    const v13, 0x7f080242

    const v14, 0x7f110495

    invoke-static {}, Lfa1;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_2

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    add-int/2addr v4, v7

    :goto_2
    move v15, v4

    const-string v11, "MORE_CCH"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lvt0;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lvt0;->j:Lvt0;

    new-instance v4, Lvt0;

    const v8, 0x7f080276

    const v10, 0x7f11020a

    const-string v11, "MORE_REPORT_SPAM"

    const/4 v12, 0x5

    invoke-direct {v4, v11, v12, v8, v10}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lvt0;->k:Lvt0;

    new-instance v8, Lvt0;

    const v10, 0x7f080270

    const v11, 0x7f110494

    const-string v13, "MORE_BACKUP"

    const/4 v14, 0x6

    invoke-direct {v8, v13, v14, v10, v11}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lvt0;->l:Lvt0;

    new-instance v10, Lvt0;

    const v11, 0x7f080278

    const v13, 0x7f11049b

    const-string v15, "MORE_HELP"

    const/4 v14, 0x7

    invoke-direct {v10, v15, v14, v11, v13}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lvt0;->m:Lvt0;

    new-instance v11, Lvt0;

    const v13, 0x7f080274

    const v15, 0x7f1104a5

    const-string v14, "MORE_SHARE"

    const/16 v12, 0x8

    invoke-direct {v11, v14, v12, v13, v15}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lvt0;->n:Lvt0;

    new-instance v13, Lvt0;

    const v14, 0x7f080272

    const v15, 0x7f1104a2

    const-string v12, "RATE_US"

    const/16 v9, 0x9

    invoke-direct {v13, v12, v9, v14, v15}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lvt0;->o:Lvt0;

    new-instance v12, Lvt0;

    const v14, 0x7f08026f

    const v15, 0x7f110670

    const-string v9, "ABOUT"

    const/16 v5, 0xa

    invoke-direct {v12, v9, v5, v14, v15}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lvt0;->p:Lvt0;

    new-instance v9, Lvt0;

    const v14, 0x7f110423

    const-string v15, "MORE_LOGOUT"

    const/16 v5, 0xb

    invoke-direct {v9, v15, v5, v14}, Lvt0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lvt0;->q:Lvt0;

    new-instance v14, Lvt0;

    const v15, 0x106000d

    const v5, 0x7f110671

    const-string v7, "MORE_TOS"

    move-object/from16 v16, v9

    const/16 v9, 0xc

    invoke-direct {v14, v7, v9, v15, v5}, Lvt0;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lvt0;->r:Lvt0;

    const/16 v5, 0xd

    new-array v5, v5, [Lvt0;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    const/4 v0, 0x6

    aput-object v8, v5, v0

    const/4 v0, 0x7

    aput-object v10, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v12, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    aput-object v14, v5, v9

    sput-object v5, Lvt0;->t:[Lvt0;

    const/4 v0, 0x0

    sput-object v0, Lvt0;->s:[Lvt0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const v3, 0x106000d

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lvt0;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lvt0;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lvt0;->b:I

    iput p4, p0, Lvt0;->a:I

    iput p5, p0, Lvt0;->c:I

    return-void
.end method

.method public static b()[Lvt0;
    .locals 7

    sget-object v0, Lvt0;->s:[Lvt0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lvt0;->values()[Lvt0;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget v5, v4, Lvt0;->c:I

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v6, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lvt0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvt0;

    sput-object v0, Lvt0;->s:[Lvt0;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lvt0;
    .locals 1

    const-class v0, Lvt0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvt0;

    return-object p0
.end method

.method public static values()[Lvt0;
    .locals 1

    sget-object v0, Lvt0;->t:[Lvt0;

    invoke-virtual {v0}, [Lvt0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvt0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lvt0;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Llm1;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lvt0;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
