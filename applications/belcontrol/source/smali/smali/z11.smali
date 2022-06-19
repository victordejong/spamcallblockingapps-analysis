.class public final enum Lz11;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz11;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lz11;

.field public static final enum c:Lz11;

.field public static final enum d:Lz11;

.field public static final enum f:Lz11;

.field public static final synthetic g:[Lz11;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lz11;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lz11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz11;->b:Lz11;

    new-instance v1, Lz11;

    const-string v3, "IGNORE"

    const/4 v4, 0x1

    const v5, 0x7f0a0504

    invoke-direct {v1, v3, v4, v5}, Lz11;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lz11;->c:Lz11;

    new-instance v3, Lz11;

    const-string v5, "PICKUP_HANGUP"

    const/4 v6, 0x2

    const v7, 0x7f0a0500

    invoke-direct {v3, v5, v6, v7}, Lz11;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lz11;->d:Lz11;

    new-instance v5, Lz11;

    const-string v7, "VOICE_MAIL"

    const/4 v8, 0x3

    const v9, 0x7f0a0509

    invoke-direct {v5, v7, v8, v9}, Lz11;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lz11;->f:Lz11;

    const/4 v7, 0x4

    new-array v7, v7, [Lz11;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lz11;->g:[Lz11;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lz11;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz11;
    .locals 1

    const-class v0, Lz11;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz11;

    return-object p0
.end method

.method public static values()[Lz11;
    .locals 1

    sget-object v0, Lz11;->g:[Lz11;

    invoke-virtual {v0}, [Lz11;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz11;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lz11;->a:I

    return v0
.end method
