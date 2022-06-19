.class final enum Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PAGE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

.field public static final enum DISCOUNT:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

.field public static final enum REGULAR:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->REGULAR:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    .line 37
    new-instance v1, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    const-string v4, "DISCOUNT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->DISCOUNT:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    new-array v4, v5, [Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 35
    sput-object v4, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->$VALUES:[Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;
    .locals 1

    .line 35
    const-class v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->$VALUES:[Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    return-object v0
.end method
