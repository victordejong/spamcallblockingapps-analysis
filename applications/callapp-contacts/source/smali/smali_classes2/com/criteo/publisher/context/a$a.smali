.class public final enum Lcom/criteo/publisher/context/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/context/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/context/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/criteo/publisher/context/a$a;

.field public static final enum c:Lcom/criteo/publisher/context/a$a;

.field public static final enum d:Lcom/criteo/publisher/context/a$a;

.field public static final enum e:Lcom/criteo/publisher/context/a$a;

.field public static final enum f:Lcom/criteo/publisher/context/a$a;

.field public static final enum g:Lcom/criteo/publisher/context/a$a;

.field public static final enum h:Lcom/criteo/publisher/context/a$a;

.field private static final synthetic i:[Lcom/criteo/publisher/context/a$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/criteo/publisher/context/a$a;

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "WIRED"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 154
    invoke-direct {v2, v3, v4, v5}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->b:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v4

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "WIFI"

    const/4 v4, 0x2

    .line 155
    invoke-direct {v2, v3, v5, v4}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->c:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v5

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "CELLULAR_UNKNOWN"

    const/4 v5, 0x3

    .line 156
    invoke-direct {v2, v3, v4, v5}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->d:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v4

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "CELLULAR_2G"

    const/4 v4, 0x4

    .line 157
    invoke-direct {v2, v3, v5, v4}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->e:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v5

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "CELLULAR_3G"

    const/4 v5, 0x5

    .line 158
    invoke-direct {v2, v3, v4, v5}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->f:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v4

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "CELLULAR_4G"

    const/4 v4, 0x6

    .line 159
    invoke-direct {v2, v3, v5, v4}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->g:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v5

    new-instance v2, Lcom/criteo/publisher/context/a$a;

    const-string v3, "CELLULAR_5G"

    .line 160
    invoke-direct {v2, v3, v4, v0}, Lcom/criteo/publisher/context/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/criteo/publisher/context/a$a;->h:Lcom/criteo/publisher/context/a$a;

    aput-object v2, v1, v4

    sput-object v1, Lcom/criteo/publisher/context/a$a;->i:[Lcom/criteo/publisher/context/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/criteo/publisher/context/a$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/context/a$a;
    .locals 1

    const-class v0, Lcom/criteo/publisher/context/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/context/a$a;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/context/a$a;
    .locals 1

    sget-object v0, Lcom/criteo/publisher/context/a$a;->i:[Lcom/criteo/publisher/context/a$a;

    invoke-virtual {v0}, [Lcom/criteo/publisher/context/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/context/a$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/criteo/publisher/context/a$a;->a:I

    return v0
.end method
