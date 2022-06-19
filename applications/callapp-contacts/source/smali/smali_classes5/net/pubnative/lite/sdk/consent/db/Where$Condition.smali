.class public final enum Lnet/pubnative/lite/sdk/consent/db/Where$Condition;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/consent/db/Where$Condition;",
        ">;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$Condition;",
        "",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "(Ljava/lang/String;I)V",
        "getArgs",
        "",
        "",
        "()[Ljava/lang/String;",
        "getStatementString",
        "And",
        "Or",
        "Between",
        "Larger",
        "Smaller",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

.field public static final enum And:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

.field public static final enum Between:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

.field public static final enum Larger:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

.field public static final enum Or:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

.field public static final enum Smaller:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    const-string v2, "And"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->And:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    const-string v2, "Or"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Or:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    const-string v2, "Between"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Between:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    const-string v2, "Larger"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Larger:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    aput-object v1, v0, v3

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    const-string v2, "Smaller"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Smaller:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    aput-object v1, v0, v3

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->$VALUES:[Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where$Condition;
    .locals 1

    const-class v0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/consent/db/Where$Condition;
    .locals 1

    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->$VALUES:[Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    return-object v0
.end method


# virtual methods
.method public final getArgs()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatementString()Ljava/lang/String;
    .locals 2

    .line 389
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where$Condition$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "OR"

    return-object v0

    :cond_1
    const-string v0, "AND"

    return-object v0
.end method
