.class public final enum Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostCallDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_10_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_12_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_20_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_2_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_30_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

.field public static final enum AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;


# instance fields
.field public final duration:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 93
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v1, "AFTER_2_SEC"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_2_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 94
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v4, "AFTER_5_SEC"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 95
    new-instance v4, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v7, "AFTER_10_SEC"

    const/16 v8, 0xa

    invoke-direct {v4, v7, v3, v8}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_10_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 96
    new-instance v7, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v8, "AFTER_12_SEC"

    const/4 v9, 0x3

    const/16 v10, 0xc

    invoke-direct {v7, v8, v9, v10}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_12_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 97
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v10, "AFTER_20_SEC"

    const/4 v11, 0x4

    const/16 v12, 0x14

    invoke-direct {v8, v10, v11, v12}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_20_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    .line 98
    new-instance v10, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const-string v12, "AFTER_30_SEC"

    const/16 v13, 0x1e

    invoke-direct {v10, v12, v6, v13}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_30_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v3

    aput-object v7, v12, v9

    aput-object v8, v12, v11

    aput-object v10, v12, v6

    .line 92
    sput-object v12, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->duration:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;
    .locals 1

    .line 92
    const-class v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;
    .locals 1

    .line 92
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    return-object v0
.end method
