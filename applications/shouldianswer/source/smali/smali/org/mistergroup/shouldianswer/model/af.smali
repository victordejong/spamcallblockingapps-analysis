.class public final enum Lorg/mistergroup/shouldianswer/model/af;
.super Ljava/lang/Enum;
.source "ProtectionLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/af;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/af;

.field public static final enum c:Lorg/mistergroup/shouldianswer/model/af;

.field public static final enum d:Lorg/mistergroup/shouldianswer/model/af;

.field public static final e:Lorg/mistergroup/shouldianswer/model/af$a;

.field private static final synthetic f:[Lorg/mistergroup/shouldianswer/model/af;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/af;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    .line 4
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/af;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x1

    const-string v3, "NONE"

    .line 5
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/af;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x2

    const-string v3, "PASSIVE"

    .line 6
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/af;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x3

    const-string v3, "ACTIVE"

    .line 7
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/model/af;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/af;->f:[Lorg/mistergroup/shouldianswer/model/af;

    new-instance v0, Lorg/mistergroup/shouldianswer/model/af$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/af$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/af;->e:Lorg/mistergroup/shouldianswer/model/af$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mistergroup/shouldianswer/model/af;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/af;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/af;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/af;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->f:[Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/af;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/af;->g:I

    return v0
.end method
