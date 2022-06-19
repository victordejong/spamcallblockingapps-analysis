.class public final enum Ly6$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly6$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly6$b;

.field public static final enum b:Ly6$b;

.field public static final enum c:Ly6$b;

.field public static final enum d:Ly6$b;

.field public static final enum f:Ly6$b;

.field public static final enum g:Ly6$b;

.field public static final enum h:Ly6$b;

.field public static final synthetic j:[Ly6$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Ly6$b;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly6$b;->a:Ly6$b;

    new-instance v1, Ly6$b;

    const-string v3, "FLOAT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly6$b;->b:Ly6$b;

    new-instance v3, Ly6$b;

    const-string v5, "COLOR_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly6$b;->c:Ly6$b;

    new-instance v5, Ly6$b;

    const-string v7, "COLOR_DRAWABLE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly6$b;->d:Ly6$b;

    new-instance v7, Ly6$b;

    const-string v9, "STRING_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ly6$b;->f:Ly6$b;

    new-instance v9, Ly6$b;

    const-string v11, "BOOLEAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ly6$b;->g:Ly6$b;

    new-instance v11, Ly6$b;

    const-string v13, "DIMENSION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ly6$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ly6$b;->h:Ly6$b;

    const/4 v13, 0x7

    new-array v13, v13, [Ly6$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ly6$b;->j:[Ly6$b;

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

.method public static valueOf(Ljava/lang/String;)Ly6$b;
    .locals 1

    const-class v0, Ly6$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly6$b;

    return-object p0
.end method

.method public static values()[Ly6$b;
    .locals 1

    sget-object v0, Ly6$b;->j:[Ly6$b;

    invoke-virtual {v0}, [Ly6$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly6$b;

    return-object v0
.end method
