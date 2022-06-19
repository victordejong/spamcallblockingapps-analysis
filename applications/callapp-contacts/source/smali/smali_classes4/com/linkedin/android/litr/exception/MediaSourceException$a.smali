.class public final enum Lcom/linkedin/android/litr/exception/MediaSourceException$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/exception/MediaSourceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/android/litr/exception/MediaSourceException$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/android/litr/exception/MediaSourceException$a;

.field public static final enum DATA_SOURCE:Lcom/linkedin/android/litr/exception/MediaSourceException$a;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    const-string v1, "DATA_SOURCE"

    const/4 v2, 0x0

    const-string v3, "data source error"

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/android/litr/exception/MediaSourceException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->DATA_SOURCE:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    aput-object v0, v1, v2

    .line 30
    sput-object v1, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->$VALUES:[Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->text:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/linkedin/android/litr/exception/MediaSourceException$a;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/android/litr/exception/MediaSourceException$a;
    .locals 1

    .line 30
    const-class v0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/android/litr/exception/MediaSourceException$a;
    .locals 1

    .line 30
    sget-object v0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->$VALUES:[Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    invoke-virtual {v0}, [Lcom/linkedin/android/litr/exception/MediaSourceException$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    return-object v0
.end method
