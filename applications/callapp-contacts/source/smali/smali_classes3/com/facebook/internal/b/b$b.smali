.class public final enum Lcom/facebook/internal/b/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/b/b$b;

.field public static final enum Analysis:Lcom/facebook/internal/b/b$b;

.field public static final enum CrashReport:Lcom/facebook/internal/b/b$b;

.field public static final enum CrashShield:Lcom/facebook/internal/b/b$b;

.field public static final enum ThreadCheck:Lcom/facebook/internal/b/b$b;

.field public static final enum Unknown:Lcom/facebook/internal/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 36
    new-instance v0, Lcom/facebook/internal/b/b$b;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/b/b$b;->Unknown:Lcom/facebook/internal/b/b$b;

    .line 37
    new-instance v1, Lcom/facebook/internal/b/b$b;

    const-string v3, "Analysis"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/internal/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/internal/b/b$b;->Analysis:Lcom/facebook/internal/b/b$b;

    .line 38
    new-instance v3, Lcom/facebook/internal/b/b$b;

    const-string v5, "CrashReport"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/internal/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/internal/b/b$b;->CrashReport:Lcom/facebook/internal/b/b$b;

    .line 39
    new-instance v5, Lcom/facebook/internal/b/b$b;

    const-string v7, "CrashShield"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/internal/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/internal/b/b$b;->CrashShield:Lcom/facebook/internal/b/b$b;

    .line 40
    new-instance v7, Lcom/facebook/internal/b/b$b;

    const-string v9, "ThreadCheck"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/internal/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/internal/b/b$b;->ThreadCheck:Lcom/facebook/internal/b/b$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/internal/b/b$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 35
    sput-object v9, Lcom/facebook/internal/b/b$b;->$VALUES:[Lcom/facebook/internal/b/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/b/b$b;
    .locals 1

    .line 35
    const-class v0, Lcom/facebook/internal/b/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/b/b$b;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/b/b$b;
    .locals 1

    .line 35
    sget-object v0, Lcom/facebook/internal/b/b$b;->$VALUES:[Lcom/facebook/internal/b/b$b;

    invoke-virtual {v0}, [Lcom/facebook/internal/b/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/b/b$b;

    return-object v0
.end method


# virtual methods
.method public final getLogPrefix()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lcom/facebook/internal/b/b$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/internal/b/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "thread_check_log_"

    return-object v0

    :cond_1
    const-string v0, "shield_log_"

    return-object v0

    :cond_2
    const-string v0, "crash_log_"

    return-object v0

    :cond_3
    const-string v0, "analysis_log_"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 44
    sget-object v0, Lcom/facebook/internal/b/b$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/internal/b/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "ThreadCheck"

    return-object v0

    :cond_1
    const-string v0, "CrashShield"

    return-object v0

    :cond_2
    const-string v0, "CrashReport"

    return-object v0

    :cond_3
    const-string v0, "Analysis"

    return-object v0
.end method
