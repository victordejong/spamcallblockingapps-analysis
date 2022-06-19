.class public final enum Lcom/google/android/datatransport/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/datatransport/d;

.field public static final enum DEFAULT:Lcom/google/android/datatransport/d;

.field public static final enum HIGHEST:Lcom/google/android/datatransport/d;

.field public static final enum VERY_LOW:Lcom/google/android/datatransport/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/google/android/datatransport/d;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/d;->DEFAULT:Lcom/google/android/datatransport/d;

    .line 22
    new-instance v1, Lcom/google/android/datatransport/d;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/datatransport/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/datatransport/d;->VERY_LOW:Lcom/google/android/datatransport/d;

    .line 25
    new-instance v3, Lcom/google/android/datatransport/d;

    const-string v5, "HIGHEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/datatransport/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/datatransport/d;->HIGHEST:Lcom/google/android/datatransport/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/datatransport/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 17
    sput-object v5, Lcom/google/android/datatransport/d;->$VALUES:[Lcom/google/android/datatransport/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/d;
    .locals 1

    .line 17
    const-class v0, Lcom/google/android/datatransport/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/d;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/d;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/datatransport/d;->$VALUES:[Lcom/google/android/datatransport/d;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/d;

    return-object v0
.end method
