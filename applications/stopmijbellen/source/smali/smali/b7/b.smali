.class public final enum Lb7/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb7/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb7/b;

.field public static final synthetic c:[Lb7/b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb7/b;

    const-string v1, "PREROLL"

    const/4 v2, 0x0

    const-string v3, "preroll"

    invoke-direct {v0, v1, v2, v3}, Lb7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb7/b;->b:Lb7/b;

    new-instance v1, Lb7/b;

    const-string v3, "MIDROLL"

    const/4 v4, 0x1

    const-string v5, "midroll"

    invoke-direct {v1, v3, v4, v5}, Lb7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lb7/b;

    const-string v5, "POSTROLL"

    const/4 v6, 0x2

    const-string v7, "postroll"

    invoke-direct {v3, v5, v6, v7}, Lb7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lb7/b;

    const-string v7, "STANDALONE"

    const/4 v8, 0x3

    const-string v9, "standalone"

    invoke-direct {v5, v7, v8, v9}, Lb7/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x4

    new-array v7, v7, [Lb7/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lb7/b;->c:[Lb7/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb7/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb7/b;
    .locals 1

    const-class v0, Lb7/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb7/b;

    return-object p0
.end method

.method public static values()[Lb7/b;
    .locals 1

    sget-object v0, Lb7/b;->c:[Lb7/b;

    invoke-virtual {v0}, [Lb7/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb7/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb7/b;->a:Ljava/lang/String;

    return-object v0
.end method
