.class public final enum Landroidx/g/b/c$c;
.super Ljava/lang/Enum;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/g/b/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/g/b/c$c;

.field public static final enum b:Landroidx/g/b/c$c;

.field public static final enum c:Landroidx/g/b/c$c;

.field private static final synthetic d:[Landroidx/g/b/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Landroidx/g/b/c$c;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Landroidx/g/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/g/b/c$c;->a:Landroidx/g/b/c$c;

    .line 107
    new-instance v0, Landroidx/g/b/c$c;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Landroidx/g/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/g/b/c$c;->b:Landroidx/g/b/c$c;

    .line 111
    new-instance v0, Landroidx/g/b/c$c;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Landroidx/g/b/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/g/b/c$c;->c:Landroidx/g/b/c$c;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/g/b/c$c;

    sget-object v1, Landroidx/g/b/c$c;->a:Landroidx/g/b/c$c;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/g/b/c$c;->b:Landroidx/g/b/c$c;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/g/b/c$c;->c:Landroidx/g/b/c$c;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/g/b/c$c;->d:[Landroidx/g/b/c$c;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/g/b/c$c;
    .locals 1

    .prologue
    .line 99
    const-class v0, Landroidx/g/b/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/g/b/c$c;

    return-object v0
.end method

.method public static values()[Landroidx/g/b/c$c;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Landroidx/g/b/c$c;->d:[Landroidx/g/b/c$c;

    invoke-virtual {v0}, [Landroidx/g/b/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/g/b/c$c;

    return-object v0
.end method
