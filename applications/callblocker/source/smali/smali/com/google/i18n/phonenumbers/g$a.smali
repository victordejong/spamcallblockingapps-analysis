.class public final enum Lcom/google/i18n/phonenumbers/g$a;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/g$a;

.field public static final enum b:Lcom/google/i18n/phonenumbers/g$a;

.field public static final enum c:Lcom/google/i18n/phonenumbers/g$a;

.field public static final enum d:Lcom/google/i18n/phonenumbers/g$a;

.field private static final synthetic e:[Lcom/google/i18n/phonenumbers/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    new-instance v0, Lcom/google/i18n/phonenumbers/g$a;

    const-string/jumbo v1, "E164"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$a;->a:Lcom/google/i18n/phonenumbers/g$a;

    .line 396
    new-instance v0, Lcom/google/i18n/phonenumbers/g$a;

    const-string/jumbo v1, "INTERNATIONAL"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$a;->b:Lcom/google/i18n/phonenumbers/g$a;

    .line 397
    new-instance v0, Lcom/google/i18n/phonenumbers/g$a;

    const-string/jumbo v1, "NATIONAL"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$a;->c:Lcom/google/i18n/phonenumbers/g$a;

    .line 398
    new-instance v0, Lcom/google/i18n/phonenumbers/g$a;

    const-string/jumbo v1, "RFC3966"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$a;->d:Lcom/google/i18n/phonenumbers/g$a;

    .line 394
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/g$a;

    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->a:Lcom/google/i18n/phonenumbers/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->b:Lcom/google/i18n/phonenumbers/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->c:Lcom/google/i18n/phonenumbers/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/g$a;->d:Lcom/google/i18n/phonenumbers/g$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/g$a;->e:[Lcom/google/i18n/phonenumbers/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/g$a;
    .locals 1

    .prologue
    .line 394
    const-class v0, Lcom/google/i18n/phonenumbers/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/g$a;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/g$a;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/google/i18n/phonenumbers/g$a;->e:[Lcom/google/i18n/phonenumbers/g$a;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/g$a;

    return-object v0
.end method
