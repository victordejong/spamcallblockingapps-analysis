.class public final enum Lx/d$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx/d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx/d$d;

.field public static final enum b:Lx/d$d;

.field public static final enum c:Lx/d$d;

.field public static final synthetic d:[Lx/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lx/d$d;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx/d$d;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v1, Lx/d$d;

    const-string v3, "SETUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx/d$d;->a:Lx/d$d;

    .line 3
    new-instance v3, Lx/d$d;

    const-string v5, "MOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx/d$d;->b:Lx/d$d;

    .line 4
    new-instance v5, Lx/d$d;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lx/d$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lx/d$d;->c:Lx/d$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lx/d$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lx/d$d;->d:[Lx/d$d;

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

.method public static valueOf(Ljava/lang/String;)Lx/d$d;
    .locals 1

    .line 1
    const-class v0, Lx/d$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx/d$d;

    return-object p0
.end method

.method public static values()[Lx/d$d;
    .locals 1

    .line 1
    sget-object v0, Lx/d$d;->d:[Lx/d$d;

    invoke-virtual {v0}, [Lx/d$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/d$d;

    return-object v0
.end method
