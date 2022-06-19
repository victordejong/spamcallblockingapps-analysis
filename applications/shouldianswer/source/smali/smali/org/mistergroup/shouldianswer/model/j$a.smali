.class public final enum Lorg/mistergroup/shouldianswer/model/j$a;
.super Ljava/lang/Enum;
.source "CallLogs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/j$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/j$a;

.field private static final synthetic c:[Lorg/mistergroup/shouldianswer/model/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/j$a;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/j$a;

    const/4 v2, 0x0

    const-string v3, "NEW"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/j$a;->a:Lorg/mistergroup/shouldianswer/model/j$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/j$a;

    const/4 v2, 0x1

    const-string v3, "DELETE"

    invoke-direct {v1, v3, v2}, Lorg/mistergroup/shouldianswer/model/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/j$a;->b:Lorg/mistergroup/shouldianswer/model/j$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/j$a;->c:[Lorg/mistergroup/shouldianswer/model/j$a;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/j$a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/j$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/j$a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/j$a;->c:[Lorg/mistergroup/shouldianswer/model/j$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/j$a;

    return-object v0
.end method
