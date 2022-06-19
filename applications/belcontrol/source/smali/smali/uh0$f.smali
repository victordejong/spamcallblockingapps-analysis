.class public final enum Luh0$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luh0$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Luh0$f;

.field public static final enum b:Luh0$f;

.field public static final enum c:Luh0$f;

.field public static final enum d:Luh0$f;

.field public static final enum f:Luh0$f;

.field public static final enum g:Luh0$f;

.field public static final enum h:Luh0$f;

.field public static final enum j:Luh0$f;

.field public static final enum k:Luh0$f;

.field public static final enum l:Luh0$f;

.field public static final synthetic m:[Luh0$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Luh0$f;

    const-string v1, "all"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luh0$f;->a:Luh0$f;

    new-instance v1, Luh0$f;

    const-string v3, "aural"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luh0$f;->b:Luh0$f;

    new-instance v3, Luh0$f;

    const-string v5, "braille"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luh0$f;->c:Luh0$f;

    new-instance v5, Luh0$f;

    const-string v7, "embossed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luh0$f;->d:Luh0$f;

    new-instance v7, Luh0$f;

    const-string v9, "handheld"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luh0$f;->f:Luh0$f;

    new-instance v9, Luh0$f;

    const-string v11, "print"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Luh0$f;->g:Luh0$f;

    new-instance v11, Luh0$f;

    const-string v13, "projection"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v11, Luh0$f;->h:Luh0$f;

    new-instance v13, Luh0$f;

    const-string v15, "screen"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v13, Luh0$f;->j:Luh0$f;

    new-instance v15, Luh0$f;

    const-string v14, "tty"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v15, Luh0$f;->k:Luh0$f;

    new-instance v14, Luh0$f;

    const-string v12, "tv"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Luh0$f;-><init>(Ljava/lang/String;I)V

    sput-object v14, Luh0$f;->l:Luh0$f;

    const/16 v12, 0xa

    new-array v12, v12, [Luh0$f;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Luh0$f;->m:[Luh0$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luh0$f;
    .locals 1

    const-class v0, Luh0$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luh0$f;

    return-object p0
.end method

.method public static values()[Luh0$f;
    .locals 1

    sget-object v0, Luh0$f;->m:[Luh0$f;

    invoke-virtual {v0}, [Luh0$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luh0$f;

    return-object v0
.end method
