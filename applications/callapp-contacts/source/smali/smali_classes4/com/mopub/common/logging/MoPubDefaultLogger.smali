.class public Lcom/mopub/common/logging/MoPubDefaultLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLogger;


# static fields
.field static a:I = 0xc00


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    new-array p4, v1, [Ljava/lang/String;

    goto :goto_1

    .line 1059
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/mopub/common/logging/MoPubDefaultLogger;->a:I

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 1060
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 1062
    sget v5, Lcom/mopub/common/logging/MoPubDefaultLogger;->a:I

    mul-int v6, v4, v5

    add-int/lit8 v7, v4, 0x1

    mul-int v5, v5, v7

    .line 1063
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1062
    invoke-virtual {p4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, v7

    goto :goto_0

    :cond_1
    move-object p4, v3

    .line 43
    :goto_1
    array-length v2, p4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, p4, v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-nez p3, :cond_2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object p2, v5, v1

    aput-object v4, v5, v6

    const-string v4, "[%s][%s] %s"

    .line 45
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v0

    aput-object p2, v7, v1

    aput-object p3, v7, v6

    aput-object v4, v7, v5

    const-string v4, "[%s][%s][%s] %s"

    .line 48
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
