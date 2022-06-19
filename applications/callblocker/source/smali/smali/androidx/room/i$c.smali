.class public final enum Landroidx/room/i$c;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/room/i$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/room/i$c;

.field public static final enum b:Landroidx/room/i$c;

.field public static final enum c:Landroidx/room/i$c;

.field private static final synthetic d:[Landroidx/room/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    new-instance v0, Landroidx/room/i$c;

    const-string/jumbo v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Landroidx/room/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/i$c;->a:Landroidx/room/i$c;

    .line 498
    new-instance v0, Landroidx/room/i$c;

    const-string/jumbo v1, "TRUNCATE"

    invoke-direct {v0, v1, v3}, Landroidx/room/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/i$c;->b:Landroidx/room/i$c;

    .line 503
    new-instance v0, Landroidx/room/i$c;

    const-string/jumbo v1, "WRITE_AHEAD_LOGGING"

    invoke-direct {v0, v1, v4}, Landroidx/room/i$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/room/i$c;->c:Landroidx/room/i$c;

    .line 484
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/room/i$c;

    sget-object v1, Landroidx/room/i$c;->a:Landroidx/room/i$c;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/room/i$c;->b:Landroidx/room/i$c;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/room/i$c;->c:Landroidx/room/i$c;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/room/i$c;->d:[Landroidx/room/i$c;

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
    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/app/ActivityManager;)Z
    .locals 2

    .prologue
    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 529
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/room/i$c;
    .locals 1

    .prologue
    .line 484
    const-class v0, Landroidx/room/i$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/room/i$c;

    return-object v0
.end method

.method public static values()[Landroidx/room/i$c;
    .locals 1

    .prologue
    .line 484
    sget-object v0, Landroidx/room/i$c;->d:[Landroidx/room/i$c;

    invoke-virtual {v0}, [Landroidx/room/i$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/i$c;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Landroidx/room/i$c;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 512
    sget-object v0, Landroidx/room/i$c;->a:Landroidx/room/i$c;

    if-eq p0, v0, :cond_0

    .line 522
    :goto_0
    return-object p0

    .line 515
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 516
    const-string/jumbo v0, "activity"

    .line 517
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 518
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/room/i$c;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    sget-object p0, Landroidx/room/i$c;->c:Landroidx/room/i$c;

    goto :goto_0

    .line 522
    :cond_1
    sget-object p0, Landroidx/room/i$c;->b:Landroidx/room/i$c;

    goto :goto_0
.end method
