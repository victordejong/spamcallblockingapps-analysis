.class public final enum Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;
.super Ljava/lang/Enum;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/rateAndFeedback/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

.field public static final enum FEEDBACK:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

.field public static final enum INCORRECT_INFORMATION:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

.field public static final enum MISSING_ENTRY:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    const-string v1, "INCORRECT_INFORMATION"

    const/4 v2, 0x0

    const-string v3, "incorrect_information"

    invoke-direct {v0, v1, v2, v3}, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->INCORRECT_INFORMATION:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    .line 33
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    const-string v3, "MISSING_ENTRY"

    const/4 v4, 0x1

    const-string v5, "missing_entry"

    invoke-direct {v1, v3, v4, v5}, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->MISSING_ENTRY:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    .line 34
    new-instance v3, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    const-string v5, "FEEDBACK"

    const/4 v6, 0x2

    const-string v7, "feedback"

    invoke-direct {v3, v5, v6, v7}, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->FEEDBACK:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 31
    sput-object v5, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->$VALUES:[Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;
    .locals 1

    .line 31
    const-class v0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;
    .locals 1

    .line 31
    sget-object v0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->$VALUES:[Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    invoke-virtual {v0}, [Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
