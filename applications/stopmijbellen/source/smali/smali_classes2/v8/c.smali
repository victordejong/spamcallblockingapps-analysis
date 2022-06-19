.class public final enum Lv8/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv8/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lv8/c;

.field public static final enum b:Lv8/c;

.field public static final enum c:Lv8/c;

.field public static final enum d:Lv8/c;

.field public static final synthetic e:[Lv8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lv8/c;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv8/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv8/c;->a:Lv8/c;

    .line 2
    new-instance v1, Lv8/c;

    const-string v3, "REAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv8/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv8/c;->b:Lv8/c;

    .line 3
    new-instance v3, Lv8/c;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv8/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv8/c;->c:Lv8/c;

    .line 4
    new-instance v5, Lv8/c;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lv8/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lv8/c;->d:Lv8/c;

    const/4 v7, 0x4

    new-array v7, v7, [Lv8/c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lv8/c;->e:[Lv8/c;

    .line 6
    new-instance v0, Lv8/c$a;

    invoke-direct {v0}, Lv8/c$a;-><init>()V

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

.method public static valueOf(Ljava/lang/String;)Lv8/c;
    .locals 1

    .line 1
    const-class v0, Lv8/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv8/c;

    return-object p0
.end method

.method public static values()[Lv8/c;
    .locals 1

    .line 1
    sget-object v0, Lv8/c;->e:[Lv8/c;

    invoke-virtual {v0}, [Lv8/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv8/c;

    return-object v0
.end method
