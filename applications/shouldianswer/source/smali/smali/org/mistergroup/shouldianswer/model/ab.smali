.class public final Lorg/mistergroup/shouldianswer/model/ab;
.super Ljava/lang/Object;
.source "PersistentData.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/ab;

.field private static final b:[Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ab;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ab;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/ui/main/c/j;

    .line 6
    sput-object v0, Lorg/mistergroup/shouldianswer/model/ab;->b:[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 7
    sput-wide p1, Lorg/mistergroup/shouldianswer/model/ab;->c:J

    return-void
.end method

.method public final a()[Lorg/mistergroup/shouldianswer/ui/main/c/j;
    .locals 1

    .line 6
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ab;->b:[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 7
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/ab;->c:J

    return-wide v0
.end method
