.class public final enum Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phone/libphone/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum g:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

.field private static final synthetic h:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->d:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    .line 2
    new-instance v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    const-string v3, "INTERNATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->e:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    .line 3
    new-instance v3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    const-string v5, "NATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->f:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    .line 4
    new-instance v5, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    const-string v7, "RFC3966"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->g:Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->h:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    return-object p0
.end method

.method public static values()[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->h:[Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0}, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phone/libphone/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method
