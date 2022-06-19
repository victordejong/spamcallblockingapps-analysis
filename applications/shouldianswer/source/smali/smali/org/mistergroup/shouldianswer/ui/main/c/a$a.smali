.class public final enum Lorg/mistergroup/shouldianswer/ui/main/c/a$a;
.super Ljava/lang/Enum;
.source "LogItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/ui/main/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

.field private static final synthetic d:[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    const/4 v2, 0x0

    const-string v3, "NUMBER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    const/4 v2, 0x1

    const-string v3, "HEADER"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    const/4 v2, 0x2

    const-string v3, "FILTERS"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->d:[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/ui/main/c/a$a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->d:[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    return-object v0
.end method
