.class public final enum Lorg/mistergroup/shouldianswer/model/k;
.super Ljava/lang/Enum;
.source "CallType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/model/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum b:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum c:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum d:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum e:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum f:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum g:Lorg/mistergroup/shouldianswer/model/k;

.field public static final enum h:Lorg/mistergroup/shouldianswer/model/k;

.field public static final i:Lorg/mistergroup/shouldianswer/model/k$a;

.field private static final synthetic j:[Lorg/mistergroup/shouldianswer/model/k;


# instance fields
.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/k;

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "INCOMING"

    .line 14
    invoke-direct {v1, v4, v3, v2}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->a:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v3

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x2

    const-string v5, "OUTGOING"

    .line 15
    invoke-direct {v1, v5, v2, v4}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v2, 0x3

    const-string v5, "MISSED"

    .line 16
    invoke-direct {v1, v5, v4, v2}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->c:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v4

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x4

    const-string v5, "VOICEMAIL"

    .line 17
    invoke-direct {v1, v5, v2, v4}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->d:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v2, 0x5

    const-string v5, "REJECTED"

    .line 19
    invoke-direct {v1, v5, v4, v2}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->e:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v4

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v4, 0x6

    const-string v5, "BLOCKED"

    .line 21
    invoke-direct {v1, v5, v2, v4}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->f:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v2

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const/4 v2, 0x7

    const-string v5, "ANSWERED_EXTERNALLY"

    .line 23
    invoke-direct {v1, v5, v4, v2}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->g:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v4

    new-instance v1, Lorg/mistergroup/shouldianswer/model/k;

    const-string v4, "UNKNOWN"

    .line 24
    invoke-direct {v1, v4, v2, v3}, Lorg/mistergroup/shouldianswer/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/k;->j:[Lorg/mistergroup/shouldianswer/model/k;

    new-instance v0, Lorg/mistergroup/shouldianswer/model/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/model/k$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/mistergroup/shouldianswer/model/k;->k:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    const-class v0, Lorg/mistergroup/shouldianswer/model/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/model/k;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/model/k;
    .locals 1

    sget-object v0, Lorg/mistergroup/shouldianswer/model/k;->j:[Lorg/mistergroup/shouldianswer/model/k;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/model/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/model/k;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/mistergroup/shouldianswer/model/k;->k:I

    return v0
.end method
