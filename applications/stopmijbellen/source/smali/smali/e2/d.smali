.class public final enum Le2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le2/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le2/d;

.field public static final enum b:Le2/d;

.field public static final enum c:Le2/d;

.field public static final synthetic d:[Le2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le2/d;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le2/d;->a:Le2/d;

    .line 2
    new-instance v1, Le2/d;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le2/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le2/d;->b:Le2/d;

    .line 3
    new-instance v3, Le2/d;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le2/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le2/d;->c:Le2/d;

    const/4 v5, 0x3

    new-array v5, v5, [Le2/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le2/d;->d:[Le2/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le2/d;
    .locals 1

    .line 1
    const-class v0, Le2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le2/d;

    return-object p0
.end method

.method public static values()[Le2/d;
    .locals 1

    .line 1
    sget-object v0, Le2/d;->d:[Le2/d;

    invoke-virtual {v0}, [Le2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le2/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x800005

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid gravity constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    const v0, 0x800003

    return v0
.end method

.method public b()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method
