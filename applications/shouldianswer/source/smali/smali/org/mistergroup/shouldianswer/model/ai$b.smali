.class public final enum Lorg/mistergroup/shouldianswer/model/ai$b;
.super Ljava/lang/Enum;
.source "UserSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/ai$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/ai$b;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/ai$b;

.field public static final enum c:Lorg/mistergroup/shouldianswer/model/ai$b;

.field private static final synthetic d:[Lorg/mistergroup/shouldianswer/model/ai$b;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/ai$b;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$b;

    const/4 v2, 0x0

    const-string v3, "DISALLOW"

    .line 304
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$b;->a:Lorg/mistergroup/shouldianswer/model/ai$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$b;

    const/4 v2, 0x1

    const-string v3, "REJECT"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$b;->b:Lorg/mistergroup/shouldianswer/model/ai$b;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/ai$b;

    const/4 v2, 0x2

    const-string v3, "PICK_AND_HANG"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/ai$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/ai$b;->c:Lorg/mistergroup/shouldianswer/model/ai$b;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai$b;->d:[Lorg/mistergroup/shouldianswer/model/ai$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mistergroup/shouldianswer/model/ai$b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/ai$b;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/ai$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/ai$b;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/ai$b;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$b;->d:[Lorg/mistergroup/shouldianswer/model/ai$b;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/ai$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/ai$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 303
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/ai$b;->e:I

    return v0
.end method
