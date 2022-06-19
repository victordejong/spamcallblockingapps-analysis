.class public final enum Lorg/mistergroup/shouldianswer/model/a;
.super Ljava/lang/Enum;
.source "AlertsType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/model/a;

.field public static final enum d:Lorg/mistergroup/shouldianswer/model/a;

.field public static final e:Lorg/mistergroup/shouldianswer/model/a$a;

.field private static final synthetic f:[Lorg/mistergroup/shouldianswer/model/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/a;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/a;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/a;

    const/4 v2, 0x1

    const-string v3, "IN_CALL_SCREEN"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/a;

    const/4 v2, 0x2

    const-string v3, "POPUP"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/a;

    const/4 v2, 0x3

    const-string v3, "NOTIFICATION"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/a;->d:Lorg/mistergroup/shouldianswer/model/a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/a;->f:[Lorg/mistergroup/shouldianswer/model/a;

    new-instance v0, Lorg/mistergroup/shouldianswer/model/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/a;->e:Lorg/mistergroup/shouldianswer/model/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->f:[Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/a;

    return-object v0
.end method
