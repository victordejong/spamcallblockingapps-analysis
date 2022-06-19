.class public final enum Lorg/mistergroup/shouldianswer/ui/main/c/j$a;
.super Ljava/lang/Enum;
.source "LogsDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/ui/main/c/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field public static final enum d:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field public static final enum e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field public static final f:Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;

.field private static final synthetic g:[Lorg/mistergroup/shouldianswer/ui/main/c/j$a;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v2, 0x0

    const-string v3, "NONE"

    .line 27
    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v2, 0x1

    const-string v3, "ALL"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v2, 0x2

    const-string v3, "FAMILIAR"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v2, 0x3

    const-string v3, "UNFAMILIAR"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->d:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 v2, 0x4

    const-string v3, "BLOCKED"

    invoke-direct {v1, v3, v2, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->g:[Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->f:Lorg/mistergroup/shouldianswer/ui/main/c/j$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/ui/main/c/j$a;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/ui/main/c/j$a;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->g:[Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->h:I

    return v0
.end method
