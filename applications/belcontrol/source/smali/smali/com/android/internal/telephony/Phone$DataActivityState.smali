.class public final enum Lcom/android/internal/telephony/Phone$DataActivityState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Phone$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$DataActivityState;

.field public static final enum DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

.field public static final enum DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

.field public static final enum DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

.field public static final enum DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

.field public static final enum NONE:Lcom/android/internal/telephony/Phone$DataActivityState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/internal/telephony/Phone$DataActivityState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    new-instance v1, Lcom/android/internal/telephony/Phone$DataActivityState;

    const-string v3, "DATAIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    new-instance v3, Lcom/android/internal/telephony/Phone$DataActivityState;

    const-string v5, "DATAOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    new-instance v5, Lcom/android/internal/telephony/Phone$DataActivityState;

    const-string v7, "DATAINANDOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    new-instance v7, Lcom/android/internal/telephony/Phone$DataActivityState;

    const-string v9, "DORMANT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/telephony/Phone$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/internal/telephony/Phone$DataActivityState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/internal/telephony/Phone$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/Phone$DataActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/Phone$DataActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/Phone$DataActivityState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$DataActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method
