.class public final enum Lcom/criteo/publisher/i/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/i/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/criteo/publisher/i/a;

.field public static final enum c:Lcom/criteo/publisher/i/a;

.field public static final enum d:Lcom/criteo/publisher/i/a;

.field public static final enum e:Lcom/criteo/publisher/i/a;

.field public static final enum f:Lcom/criteo/publisher/i/a;

.field public static final enum g:Lcom/criteo/publisher/i/a;

.field public static final enum h:Lcom/criteo/publisher/i/a;

.field public static final enum i:Lcom/criteo/publisher/i/a;

.field private static final synthetic j:[Lcom/criteo/publisher/i/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/criteo/publisher/i/a;

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "FALLBACK"

    const/4 v3, 0x0

    const/16 v4, 0xeb

    .line 21
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->b:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "STANDALONE"

    const/4 v3, 0x1

    const/16 v4, 0x127

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->c:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "IN_HOUSE"

    const/4 v3, 0x2

    const/16 v4, 0x128

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->d:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "MOPUB_MEDIATION"

    const/4 v3, 0x3

    const/16 v4, 0x129

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->e:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "ADMOB_MEDIATION"

    const/4 v3, 0x4

    const/16 v4, 0x12a

    .line 28
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->f:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "MOPUB_APP_BIDDING"

    const/4 v3, 0x5

    const/16 v4, 0x12b

    .line 31
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->g:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "GAM_APP_BIDDING"

    const/4 v3, 0x6

    const/16 v4, 0x12c

    .line 32
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->h:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/criteo/publisher/i/a;

    const-string v2, "CUSTOM_APP_BIDDING"

    const/4 v3, 0x7

    const/16 v4, 0x12d

    .line 33
    invoke-direct {v1, v2, v3, v4}, Lcom/criteo/publisher/i/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/criteo/publisher/i/a;->i:Lcom/criteo/publisher/i/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/criteo/publisher/i/a;->j:[Lcom/criteo/publisher/i/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/criteo/publisher/i/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/i/a;
    .locals 1

    const-class v0, Lcom/criteo/publisher/i/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/i/a;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/i/a;
    .locals 1

    sget-object v0, Lcom/criteo/publisher/i/a;->j:[Lcom/criteo/publisher/i/a;

    invoke-virtual {v0}, [Lcom/criteo/publisher/i/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/i/a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/criteo/publisher/i/a;->a:I

    return v0
.end method
