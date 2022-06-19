.class public final enum Lkm0$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkm0$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lkm0$d;

.field public static final enum c:Lkm0$d;

.field public static final enum d:Lkm0$d;

.field public static final enum f:Lkm0$d;

.field public static final enum g:Lkm0$d;

.field public static final enum h:Lkm0$d;

.field public static final enum j:Lkm0$d;

.field public static final enum k:Lkm0$d;

.field public static final enum l:Lkm0$d;

.field public static final enum m:Lkm0$d;

.field public static final enum n:Lkm0$d;

.field public static final enum o:Lkm0$d;

.field public static final enum p:Lkm0$d;

.field public static final enum q:Lkm0$d;

.field public static final enum r:Lkm0$d;

.field public static final enum s:Lkm0$d;

.field public static final synthetic t:[Lkm0$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lkm0$d;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkm0$d;->b:Lkm0$d;

    new-instance v1, Lkm0$d;

    const-string v3, "Core"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkm0$d;->c:Lkm0$d;

    new-instance v3, Lkm0$d;

    const-string v5, "AppEvents"

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    invoke-direct {v3, v5, v6, v7}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkm0$d;->d:Lkm0$d;

    new-instance v5, Lkm0$d;

    const-string v7, "CodelessEvents"

    const/4 v8, 0x3

    const v9, 0x10100

    invoke-direct {v5, v7, v8, v9}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lkm0$d;->f:Lkm0$d;

    new-instance v7, Lkm0$d;

    const-string v9, "RestrictiveDataFiltering"

    const/4 v10, 0x4

    const v11, 0x10200

    invoke-direct {v7, v9, v10, v11}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lkm0$d;->g:Lkm0$d;

    new-instance v9, Lkm0$d;

    const-string v11, "AAM"

    const/4 v12, 0x5

    const v13, 0x10300

    invoke-direct {v9, v11, v12, v13}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lkm0$d;->h:Lkm0$d;

    new-instance v11, Lkm0$d;

    const-string v13, "PrivacyProtection"

    const/4 v14, 0x6

    const v15, 0x10400

    invoke-direct {v11, v13, v14, v15}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lkm0$d;->j:Lkm0$d;

    new-instance v13, Lkm0$d;

    const-string v15, "SuggestedEvents"

    const/4 v14, 0x7

    const v12, 0x10401

    invoke-direct {v13, v15, v14, v12}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lkm0$d;->k:Lkm0$d;

    new-instance v12, Lkm0$d;

    const-string v15, "PIIFiltering"

    const/16 v14, 0x8

    const v10, 0x10402

    invoke-direct {v12, v15, v14, v10}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lkm0$d;->l:Lkm0$d;

    new-instance v10, Lkm0$d;

    const-string v15, "EventDeactivation"

    const/16 v14, 0x9

    const v8, 0x10500

    invoke-direct {v10, v15, v14, v8}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lkm0$d;->m:Lkm0$d;

    new-instance v8, Lkm0$d;

    const-string v15, "Instrument"

    const/16 v14, 0xa

    const/high16 v6, 0x20000

    invoke-direct {v8, v15, v14, v6}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lkm0$d;->n:Lkm0$d;

    new-instance v6, Lkm0$d;

    const-string v15, "CrashReport"

    const/16 v14, 0xb

    const v4, 0x20100

    invoke-direct {v6, v15, v14, v4}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lkm0$d;->o:Lkm0$d;

    new-instance v4, Lkm0$d;

    const-string v15, "ErrorReport"

    const/16 v14, 0xc

    const v2, 0x20200

    invoke-direct {v4, v15, v14, v2}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lkm0$d;->p:Lkm0$d;

    new-instance v2, Lkm0$d;

    const-string v15, "Login"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/high16 v4, 0x1000000

    invoke-direct {v2, v15, v14, v4}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkm0$d;->q:Lkm0$d;

    new-instance v4, Lkm0$d;

    const-string v15, "Share"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/high16 v2, 0x2000000

    invoke-direct {v4, v15, v14, v2}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lkm0$d;->r:Lkm0$d;

    new-instance v2, Lkm0$d;

    const-string v15, "Places"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/high16 v4, 0x3000000

    invoke-direct {v2, v15, v14, v4}, Lkm0$d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lkm0$d;->s:Lkm0$d;

    const/16 v4, 0x10

    new-array v4, v4, [Lkm0$d;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lkm0$d;->t:[Lkm0$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkm0$d;->a:I

    return-void
.end method

.method public static a(I)Lkm0$d;
    .locals 5

    invoke-static {}, Lkm0$d;->values()[Lkm0$d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lkm0$d;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lkm0$d;->b:Lkm0$d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkm0$d;
    .locals 1

    const-class v0, Lkm0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkm0$d;

    return-object p0
.end method

.method public static values()[Lkm0$d;
    .locals 1

    sget-object v0, Lkm0$d;->t:[Lkm0$d;

    invoke-virtual {v0}, [Lkm0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkm0$d;

    return-object v0
.end method


# virtual methods
.method public b()Lkm0$d;
    .locals 2

    iget v0, p0, Lkm0$d;->a:I

    and-int/lit16 v1, v0, 0xff

    if-lez v1, :cond_0

    and-int/lit16 v0, v0, -0x100

    :goto_0
    invoke-static {v0}, Lkm0$d;->a(I)Lkm0$d;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0xff00

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    const/high16 v1, -0x10000

    :goto_1
    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-lez v1, :cond_2

    const/high16 v1, -0x1000000

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lkm0$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "PlacesKit"

    goto :goto_0

    :pswitch_1
    const-string v0, "ShareKit"

    goto :goto_0

    :pswitch_2
    const-string v0, "LoginKit"

    goto :goto_0

    :pswitch_3
    const-string v0, "CodelessEvents"

    goto :goto_0

    :pswitch_4
    const-string v0, "AppEvents"

    goto :goto_0

    :pswitch_5
    const-string v0, "CoreKit"

    goto :goto_0

    :pswitch_6
    const-string v0, "EventDeactivation"

    goto :goto_0

    :pswitch_7
    const-string v0, "PIIFiltering"

    goto :goto_0

    :pswitch_8
    const-string v0, "SuggestedEvents"

    goto :goto_0

    :pswitch_9
    const-string v0, "PrivacyProtection"

    goto :goto_0

    :pswitch_a
    const-string v0, "AAM"

    goto :goto_0

    :pswitch_b
    const-string v0, "ErrorReport"

    goto :goto_0

    :pswitch_c
    const-string v0, "CrashReport"

    goto :goto_0

    :pswitch_d
    const-string v0, "Instrument"

    goto :goto_0

    :pswitch_e
    const-string v0, "RestrictiveDataFiltering"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
