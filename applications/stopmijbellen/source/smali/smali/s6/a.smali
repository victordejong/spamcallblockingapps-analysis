.class public abstract enum Ls6/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ls6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls6/a;",
        ">;",
        "Ls6/b;"
    }
.end annotation


# static fields
.field public static final enum a:Ls6/a;

.field public static final synthetic b:[Ls6/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ls6/a$a;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls6/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls6/a;->a:Ls6/a;

    .line 2
    new-instance v1, Ls6/a$b;

    const-string v3, "UPPER_CAMEL_CASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls6/a$b;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Ls6/a$c;

    const-string v5, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls6/a$c;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v5, Ls6/a$d;

    const-string v7, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls6/a$d;-><init>(Ljava/lang/String;I)V

    .line 5
    new-instance v7, Ls6/a$e;

    const-string v9, "LOWER_CASE_WITH_DASHES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls6/a$e;-><init>(Ljava/lang/String;I)V

    .line 6
    new-instance v9, Ls6/a$f;

    const-string v11, "LOWER_CASE_WITH_DOTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls6/a$f;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x6

    new-array v11, v11, [Ls6/a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Ls6/a;->b:[Ls6/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls6/a;
    .locals 1

    .line 1
    const-class v0, Ls6/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls6/a;

    return-object p0
.end method

.method public static values()[Ls6/a;
    .locals 1

    .line 1
    sget-object v0, Ls6/a;->b:[Ls6/a;

    invoke-virtual {v0}, [Ls6/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls6/a;

    return-object v0
.end method
