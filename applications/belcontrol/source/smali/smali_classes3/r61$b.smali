.class public final enum Lr61$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr61$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr61$b;

.field public static final enum c:Lr61$b;

.field public static final enum d:Lr61$b;

.field public static final enum f:Lr61$b;

.field public static final synthetic g:[Lr61$b;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lr61$b;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lr61$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr61$b;->b:Lr61$b;

    new-instance v1, Lr61$b;

    const-string v4, "REGISTER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lr61$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr61$b;->c:Lr61$b;

    new-instance v4, Lr61$b;

    const-string v6, "PASSWORD_RECOVERY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lr61$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lr61$b;->d:Lr61$b;

    new-instance v6, Lr61$b;

    const-string v8, "REASSIGN"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lr61$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lr61$b;->f:Lr61$b;

    new-array v8, v9, [Lr61$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lr61$b;->g:[Lr61$b;

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

    iput p3, p0, Lr61$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr61$b;
    .locals 1

    const-class v0, Lr61$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr61$b;

    return-object p0
.end method

.method public static values()[Lr61$b;
    .locals 1

    sget-object v0, Lr61$b;->g:[Lr61$b;

    invoke-virtual {v0}, [Lr61$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr61$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lr61$b;->a:I

    return v0
.end method
