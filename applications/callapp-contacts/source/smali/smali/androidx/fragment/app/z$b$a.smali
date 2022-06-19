.class final enum Landroidx/fragment/app/z$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/z$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/z$b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/z$b$a;

.field public static final enum ADDING:Landroidx/fragment/app/z$b$a;

.field public static final enum NONE:Landroidx/fragment/app/z$b$a;

.field public static final enum REMOVING:Landroidx/fragment/app/z$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 485
    new-instance v0, Landroidx/fragment/app/z$b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/z$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/z$b$a;->NONE:Landroidx/fragment/app/z$b$a;

    .line 489
    new-instance v1, Landroidx/fragment/app/z$b$a;

    const-string v3, "ADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/fragment/app/z$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    .line 493
    new-instance v3, Landroidx/fragment/app/z$b$a;

    const-string v5, "REMOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/fragment/app/z$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/fragment/app/z$b$a;->REMOVING:Landroidx/fragment/app/z$b$a;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/fragment/app/z$b$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 481
    sput-object v5, Landroidx/fragment/app/z$b$a;->$VALUES:[Landroidx/fragment/app/z$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/z$b$a;
    .locals 1

    .line 481
    const-class v0, Landroidx/fragment/app/z$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/z$b$a;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/z$b$a;
    .locals 1

    .line 481
    sget-object v0, Landroidx/fragment/app/z$b$a;->$VALUES:[Landroidx/fragment/app/z$b$a;

    invoke-virtual {v0}, [Landroidx/fragment/app/z$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/z$b$a;

    return-object v0
.end method
