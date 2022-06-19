.class public final enum Lcom/google/i18n/phonenumbers/g$b;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/g$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum b:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum c:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum d:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum e:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum f:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum g:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum h:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum i:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum j:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum k:Lcom/google/i18n/phonenumbers/g$b;

.field public static final enum l:Lcom/google/i18n/phonenumbers/g$b;

.field private static final synthetic m:[Lcom/google/i18n/phonenumbers/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "FIXED_LINE"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->a:Lcom/google/i18n/phonenumbers/g$b;

    .line 406
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->b:Lcom/google/i18n/phonenumbers/g$b;

    .line 409
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "FIXED_LINE_OR_MOBILE"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->c:Lcom/google/i18n/phonenumbers/g$b;

    .line 411
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "TOLL_FREE"

    invoke-direct {v0, v1, v6}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->d:Lcom/google/i18n/phonenumbers/g$b;

    .line 412
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "PREMIUM_RATE"

    invoke-direct {v0, v1, v7}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->e:Lcom/google/i18n/phonenumbers/g$b;

    .line 416
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "SHARED_COST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->f:Lcom/google/i18n/phonenumbers/g$b;

    .line 418
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "VOIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->g:Lcom/google/i18n/phonenumbers/g$b;

    .line 422
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "PERSONAL_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->h:Lcom/google/i18n/phonenumbers/g$b;

    .line 423
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "PAGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->i:Lcom/google/i18n/phonenumbers/g$b;

    .line 426
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "UAN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->j:Lcom/google/i18n/phonenumbers/g$b;

    .line 428
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "VOICEMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->k:Lcom/google/i18n/phonenumbers/g$b;

    .line 431
    new-instance v0, Lcom/google/i18n/phonenumbers/g$b;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->l:Lcom/google/i18n/phonenumbers/g$b;

    .line 404
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/g$b;

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->a:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->b:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->c:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->d:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/i18n/phonenumbers/g$b;->e:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->f:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->g:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->h:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->i:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->j:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->k:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/i18n/phonenumbers/g$b;->l:Lcom/google/i18n/phonenumbers/g$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/i18n/phonenumbers/g$b;->m:[Lcom/google/i18n/phonenumbers/g$b;

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
    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/g$b;
    .locals 1

    .prologue
    .line 404
    const-class v0, Lcom/google/i18n/phonenumbers/g$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/g$b;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/g$b;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/google/i18n/phonenumbers/g$b;->m:[Lcom/google/i18n/phonenumbers/g$b;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/g$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/g$b;

    return-object v0
.end method
