.class public final enum Lcom/telguarder/helpers/ui/DialogModel$DialogType;
.super Ljava/lang/Enum;
.source "DialogModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/DialogModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/helpers/ui/DialogModel$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/helpers/ui/DialogModel$DialogType;

.field public static final enum NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

.field public static final enum POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

.field public static final enum POSITIVE_NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    const-string v1, "POSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/helpers/ui/DialogModel$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    new-instance v1, Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    const-string v3, "NEGATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/helpers/ui/DialogModel$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    new-instance v3, Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    const-string v5, "POSITIVE_NEGATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/helpers/ui/DialogModel$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE_NEGATIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 44
    sput-object v5, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->$VALUES:[Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/helpers/ui/DialogModel$DialogType;
    .locals 1

    .line 44
    const-class v0, Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/helpers/ui/DialogModel$DialogType;
    .locals 1

    .line 44
    sget-object v0, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->$VALUES:[Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    invoke-virtual {v0}, [Lcom/telguarder/helpers/ui/DialogModel$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    return-object v0
.end method
