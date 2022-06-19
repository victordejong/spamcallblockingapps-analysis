.class public final enum Landroidx/lifecycle/j$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/j$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/j$b;

.field public static final enum CREATED:Landroidx/lifecycle/j$b;

.field public static final enum DESTROYED:Landroidx/lifecycle/j$b;

.field public static final enum INITIALIZED:Landroidx/lifecycle/j$b;

.field public static final enum RESUMED:Landroidx/lifecycle/j$b;

.field public static final enum STARTED:Landroidx/lifecycle/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 287
    new-instance v0, Landroidx/lifecycle/j$b;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    .line 294
    new-instance v1, Landroidx/lifecycle/j$b;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/j$b;->INITIALIZED:Landroidx/lifecycle/j$b;

    .line 304
    new-instance v3, Landroidx/lifecycle/j$b;

    const-string v5, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/j$b;->CREATED:Landroidx/lifecycle/j$b;

    .line 314
    new-instance v5, Landroidx/lifecycle/j$b;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    .line 320
    new-instance v7, Landroidx/lifecycle/j$b;

    const-string v9, "RESUMED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/lifecycle/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/lifecycle/j$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 280
    sput-object v9, Landroidx/lifecycle/j$b;->$VALUES:[Landroidx/lifecycle/j$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/j$b;
    .locals 1

    .line 280
    const-class v0, Landroidx/lifecycle/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/j$b;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/j$b;
    .locals 1

    .line 280
    sget-object v0, Landroidx/lifecycle/j$b;->$VALUES:[Landroidx/lifecycle/j$b;

    invoke-virtual {v0}, [Landroidx/lifecycle/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/j$b;

    return-object v0
.end method


# virtual methods
.method public final isAtLeast(Landroidx/lifecycle/j$b;)Z
    .locals 0

    .line 329
    invoke-virtual {p0, p1}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
