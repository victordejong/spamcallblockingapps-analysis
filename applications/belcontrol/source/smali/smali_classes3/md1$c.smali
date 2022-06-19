.class public final enum Lmd1$c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmd1$c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum d:Lmd1$c;

.field public static final enum f:Lmd1$c;

.field public static final enum g:Lmd1$c;

.field public static final enum h:Lmd1$c;

.field public static final enum j:Lmd1$c;

.field public static final enum k:Lmd1$c;

.field public static final enum l:Lmd1$c;

.field public static final synthetic m:[Lmd1$c;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lmd1$c;

    const-string v1, "PUSH_NOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lmd1$c;->d:Lmd1$c;

    new-instance v1, Lmd1$c;

    const-string v3, "PUSH_NOTIFICATION"

    const/4 v4, 0x1

    const/16 v5, 0x2710

    const/16 v6, 0x2af8

    invoke-direct {v1, v3, v4, v5, v6}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lmd1$c;->f:Lmd1$c;

    new-instance v3, Lmd1$c;

    const-string v5, "PUSH_INFO_REQUEST"

    const/4 v6, 0x2

    const/16 v7, 0x2af9

    invoke-direct {v3, v5, v6, v7, v7}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lmd1$c;->g:Lmd1$c;

    new-instance v5, Lmd1$c;

    const-string v7, "PUSH_SCREEN_DISPLAY_REQUEST"

    const/4 v8, 0x3

    const/16 v9, 0x2afa

    invoke-direct {v5, v7, v8, v9, v9}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lmd1$c;->h:Lmd1$c;

    new-instance v7, Lmd1$c;

    const-string v9, "PUSH_DEVICE_TO_SYNCHRONIZE_REQUEST"

    const/4 v10, 0x4

    const/16 v11, 0x2afb

    invoke-direct {v7, v9, v10, v11, v11}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lmd1$c;->j:Lmd1$c;

    new-instance v9, Lmd1$c;

    const-string v11, "PUSH_DEVICE_TO_SENT_PURCHASE_TOKEN_REQUEST"

    const/4 v12, 0x5

    const/16 v13, 0x2afc

    invoke-direct {v9, v11, v12, v13, v13}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lmd1$c;->k:Lmd1$c;

    new-instance v11, Lmd1$c;

    const-string v13, "PUSH_DEVICE_TO_SYNCHRONIZE_COMMUNITY"

    const/4 v14, 0x6

    const/16 v15, 0x2afd

    invoke-direct {v11, v13, v14, v15, v15}, Lmd1$c;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lmd1$c;->l:Lmd1$c;

    const/4 v13, 0x7

    new-array v13, v13, [Lmd1$c;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lmd1$c;->m:[Lmd1$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmd1$c;->a:I

    iput p4, p0, Lmd1$c;->b:I

    return-void
.end method

.method public static b(I)Lmd1$c;
    .locals 5

    invoke-static {}, Lmd1$c;->values()[Lmd1$c;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lmd1$c;->a:I

    if-gt v4, p0, :cond_0

    iget v4, v3, Lmd1$c;->b:I

    if-lt v4, p0, :cond_0

    iput p0, v3, Lmd1$c;->c:I

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lmd1$c;->d:Lmd1$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmd1$c;
    .locals 1

    const-class v0, Lmd1$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmd1$c;

    return-object p0
.end method

.method public static values()[Lmd1$c;
    .locals 1

    sget-object v0, Lmd1$c;->m:[Lmd1$c;

    invoke-virtual {v0}, [Lmd1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmd1$c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmd1$c;->c:I

    return v0
.end method
