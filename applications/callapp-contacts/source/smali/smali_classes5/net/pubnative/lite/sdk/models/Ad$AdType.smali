.class public final enum Lnet/pubnative/lite/sdk/models/Ad$AdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/models/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/Ad$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/Ad$AdType;

.field public static final enum HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

.field public static final enum VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;

    const-string v1, "HTML"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/models/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->HTML:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    new-instance v1, Lnet/pubnative/lite/sdk/models/Ad$AdType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/pubnative/lite/sdk/models/Ad$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/Ad$AdType;->VIDEO:Lnet/pubnative/lite/sdk/models/Ad$AdType;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/pubnative/lite/sdk/models/Ad$AdType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 88
    sput-object v3, Lnet/pubnative/lite/sdk/models/Ad$AdType;->$VALUES:[Lnet/pubnative/lite/sdk/models/Ad$AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/Ad$AdType;
    .locals 1

    .line 88
    const-class v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/Ad$AdType;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/Ad$AdType;
    .locals 1

    .line 88
    sget-object v0, Lnet/pubnative/lite/sdk/models/Ad$AdType;->$VALUES:[Lnet/pubnative/lite/sdk/models/Ad$AdType;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/Ad$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/Ad$AdType;

    return-object v0
.end method
