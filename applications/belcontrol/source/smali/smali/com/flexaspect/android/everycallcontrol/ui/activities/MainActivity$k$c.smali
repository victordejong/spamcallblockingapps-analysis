.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public static final enum j:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public static final enum k:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public static final enum l:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public static final enum m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

.field public static n:I

.field public static final synthetic o:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public f:Lw91$a;

.field public g:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const-string v1, "DIALOG_TYPE_CALLS_BLOCKED"

    const/4 v2, 0x0

    const v3, 0x7f1104c9

    const v4, 0x7f110055

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const-string v3, "DIALOG_TYPE_NUMBERS_DIALED"

    const/4 v4, 0x1

    const v5, 0x7f1104cb

    const v6, 0x7f110056

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->j:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const-string v5, "DIALOG_TYPE_MESSAGES_BLOCKED"

    const/4 v6, 0x2

    const v7, 0x7f1104ca

    const v8, 0x7f110057

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->k:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    sget-object v15, Lw91$a;->o:Lw91$a;

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    sget-object v9, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->c:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    aput-object v9, v8, v2

    sget-object v9, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->d:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    aput-object v9, v8, v4

    sget-object v17, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->f:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    aput-object v17, v8, v6

    const-string v10, "DIALOG_TYPE_FIRST_CALL_BLOCKED"

    const/4 v11, 0x3

    const v12, 0x7f1104c8

    const v13, 0x7f110055

    const/4 v14, -0x1

    move-object v9, v5

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;IIIILw91$a;[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)V

    sput-object v5, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->l:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    new-instance v8, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    sget-object v24, Lw91$a;->p:Lw91$a;

    new-array v9, v7, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    sget-object v10, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->j:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    aput-object v10, v9, v2

    sget-object v10, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->k:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    aput-object v10, v9, v4

    aput-object v17, v9, v6

    const-string v19, "DIALOG_TYPE_3RD_BLOCKED"

    const/16 v20, 0x4

    const v21, 0x7f1100ff

    const v22, 0x7f110062

    const/16 v23, -0x1

    move-object/from16 v18, v8

    move-object/from16 v25, v9

    invoke-direct/range {v18 .. v25}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;IIIILw91$a;[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)V

    sput-object v8, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->m:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    sput-object v9, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->o:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    sput v2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->n:I

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->n:I

    iget v3, v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->a:I

    or-int/2addr v3, v4

    sput v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->n:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    sget-object v6, Lw91$a;->o:Lw91$a;

    const/4 v0, 0x3

    new-array v7, v0, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->g:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    const/4 v1, 0x1

    aput-object v0, v7, v1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;->f:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    const/4 v1, 0x2

    aput-object v0, v7, v1

    const v5, 0x7f11045d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;-><init>(Ljava/lang/String;IIIILw91$a;[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;IIIILw91$a;[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lw91$a;",
            "[",
            "Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->a:I

    iput p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b:I

    iput p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->d:I

    iput p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->c:I

    iput-object p7, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->g:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    iput-object p6, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->f:Lw91$a;

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    sget v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->n:I

    return v0
.end method

.method public static synthetic b(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->a:I

    return p0
.end method

.method public static synthetic c(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->g:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$b;

    return-object p0
.end method

.method public static synthetic d(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->d:I

    return p0
.end method

.method public static synthetic e(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->b:I

    return p0
.end method

.method public static synthetic f(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)I
    .locals 0

    iget p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->c:I

    return p0
.end method

.method public static synthetic g(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;)Lw91$a;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->f:Lw91$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->o:[Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$c;

    return-object v0
.end method
