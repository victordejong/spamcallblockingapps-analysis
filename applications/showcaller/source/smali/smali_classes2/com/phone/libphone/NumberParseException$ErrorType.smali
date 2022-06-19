.class public final enum Lcom/phone/libphone/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phone/libphone/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phone/libphone/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/phone/libphone/NumberParseException$ErrorType;

.field public static final enum e:Lcom/phone/libphone/NumberParseException$ErrorType;

.field public static final enum f:Lcom/phone/libphone/NumberParseException$ErrorType;

.field public static final enum g:Lcom/phone/libphone/NumberParseException$ErrorType;

.field public static final enum h:Lcom/phone/libphone/NumberParseException$ErrorType;

.field private static final synthetic i:[Lcom/phone/libphone/NumberParseException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/phone/libphone/NumberParseException$ErrorType;

    const-string v1, "INVALID_COUNTRY_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phone/libphone/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phone/libphone/NumberParseException$ErrorType;->d:Lcom/phone/libphone/NumberParseException$ErrorType;

    .line 2
    new-instance v1, Lcom/phone/libphone/NumberParseException$ErrorType;

    const-string v3, "NOT_A_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/phone/libphone/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/phone/libphone/NumberParseException$ErrorType;->e:Lcom/phone/libphone/NumberParseException$ErrorType;

    .line 3
    new-instance v3, Lcom/phone/libphone/NumberParseException$ErrorType;

    const-string v5, "TOO_SHORT_AFTER_IDD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/phone/libphone/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/phone/libphone/NumberParseException$ErrorType;->f:Lcom/phone/libphone/NumberParseException$ErrorType;

    .line 4
    new-instance v5, Lcom/phone/libphone/NumberParseException$ErrorType;

    const-string v7, "TOO_SHORT_NSN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/phone/libphone/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/phone/libphone/NumberParseException$ErrorType;->g:Lcom/phone/libphone/NumberParseException$ErrorType;

    .line 5
    new-instance v7, Lcom/phone/libphone/NumberParseException$ErrorType;

    const-string v9, "TOO_LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/phone/libphone/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/phone/libphone/NumberParseException$ErrorType;->h:Lcom/phone/libphone/NumberParseException$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/phone/libphone/NumberParseException$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/phone/libphone/NumberParseException$ErrorType;->i:[Lcom/phone/libphone/NumberParseException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phone/libphone/NumberParseException$ErrorType;
    .locals 1

    .line 1
    const-class v0, Lcom/phone/libphone/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phone/libphone/NumberParseException$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/phone/libphone/NumberParseException$ErrorType;
    .locals 1

    .line 1
    sget-object v0, Lcom/phone/libphone/NumberParseException$ErrorType;->i:[Lcom/phone/libphone/NumberParseException$ErrorType;

    invoke-virtual {v0}, [Lcom/phone/libphone/NumberParseException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phone/libphone/NumberParseException$ErrorType;

    return-object v0
.end method
