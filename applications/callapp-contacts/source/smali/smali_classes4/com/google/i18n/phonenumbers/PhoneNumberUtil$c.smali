.class public final enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

.field public static final enum E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

.field public static final enum INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

.field public static final enum NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

.field public static final enum RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 446
    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    .line 447
    new-instance v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    const-string v3, "INTERNATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    .line 448
    new-instance v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    const-string v5, "NATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    .line 449
    new-instance v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    const-string v7, "RFC3966"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 445
    sput-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->$VALUES:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;
    .locals 1

    .line 445
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;
    .locals 1

    .line 445
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->$VALUES:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$c;

    return-object v0
.end method
