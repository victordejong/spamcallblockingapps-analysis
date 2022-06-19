.class public final enum Lorg/mistergroup/shouldianswer/model/ai$a;
.super Ljava/lang/Enum;
.source "UserSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/ai$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/ai$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/ai$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/ai$a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/model/ai$a;

.field public static final d:Lorg/mistergroup/shouldianswer/model/ai$a$a;

.field private static final synthetic e:[Lorg/mistergroup/shouldianswer/model/ai$a;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/ai$a;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$a;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    .line 16
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->a:Lorg/mistergroup/shouldianswer/model/ai$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$a;

    const/4 v2, 0x1

    const-string v3, "LIGHT"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->b:Lorg/mistergroup/shouldianswer/model/ai$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$a;

    const/4 v2, 0x2

    const-string v3, "DARK"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->c:Lorg/mistergroup/shouldianswer/model/ai$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->e:[Lorg/mistergroup/shouldianswer/model/ai$a;

    new-instance v0, Lorg/mistergroup/shouldianswer/model/ai$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai$a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->d:Lorg/mistergroup/shouldianswer/model/ai$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mistergroup/shouldianswer/model/ai$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/ai$a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/ai$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/ai$a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->e:[Lorg/mistergroup/shouldianswer/model/ai$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/ai$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/ai$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/ai$a;->f:I

    return v0
.end method
