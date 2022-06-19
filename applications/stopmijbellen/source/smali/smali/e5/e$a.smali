.class public final enum Le5/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le5/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le5/e$a;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le5/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic c:[Le5/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le5/e$a;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v1, Le5/e$a;

    const-string v3, "X86_64"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Le5/e$a;

    const-string v5, "ARM_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v5, Le5/e$a;

    const-string v7, "PPC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v7, Le5/e$a;

    const-string v9, "PPC64"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Le5/e$a;

    const-string v11, "ARMV6"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 7
    new-instance v11, Le5/e$a;

    const-string v13, "ARMV7"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 8
    new-instance v13, Le5/e$a;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Le5/e$a;->a:Le5/e$a;

    .line 9
    new-instance v15, Le5/e$a;

    const-string v14, "ARMV7S"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    .line 10
    new-instance v14, Le5/e$a;

    const-string v12, "ARM64"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Le5/e$a;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0xa

    new-array v12, v12, [Le5/e$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v2, 0x5

    aput-object v9, v12, v2

    const/4 v2, 0x6

    aput-object v11, v12, v2

    const/4 v2, 0x7

    aput-object v13, v12, v2

    const/16 v2, 0x8

    aput-object v15, v12, v2

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Le5/e$a;->c:[Le5/e$a;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Le5/e$a;->b:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    .line 13
    invoke-virtual {v2, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "armeabi"

    .line 14
    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arm64-v8a"

    .line 15
    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x86"

    .line 16
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le5/e$a;
    .locals 1

    .line 1
    const-class v0, Le5/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le5/e$a;

    return-object p0
.end method

.method public static values()[Le5/e$a;
    .locals 1

    .line 1
    sget-object v0, Le5/e$a;->c:[Le5/e$a;

    invoke-virtual {v0}, [Le5/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le5/e$a;

    return-object v0
.end method
