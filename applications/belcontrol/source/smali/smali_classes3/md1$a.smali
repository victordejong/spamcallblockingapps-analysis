.class public final enum Lmd1$a;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmd1$a;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum c:Lmd1$a;

.field public static final enum d:Lmd1$a;

.field public static final enum f:Lmd1$a;

.field public static final enum g:Lmd1$a;

.field public static final enum h:Lmd1$a;

.field public static final synthetic j:[Lmd1$a;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lmd1$a;

    const-string v1, "FLAG_NTENABLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lmd1$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lmd1$a;->c:Lmd1$a;

    new-instance v1, Lmd1$a;

    const-string v4, "FLAG_NTTYPE_NOTIFICATION"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5, v2}, Lmd1$a;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lmd1$a;->d:Lmd1$a;

    new-instance v4, Lmd1$a;

    const-string v6, "FLAG_NTTYPE_ALERT"

    invoke-direct {v4, v6, v5, v5, v3}, Lmd1$a;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lmd1$a;->f:Lmd1$a;

    new-instance v6, Lmd1$a;

    const-string v7, "FLAG_NTMOMENT_APP_OPEN"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v6, v7, v8, v9, v2}, Lmd1$a;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lmd1$a;->g:Lmd1$a;

    new-instance v7, Lmd1$a;

    const-string v10, "FLAG_NTMOMENT_IMMEDIATELY"

    invoke-direct {v7, v10, v9, v9, v3}, Lmd1$a;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lmd1$a;->h:Lmd1$a;

    const/4 v10, 0x5

    new-array v10, v10, [Lmd1$a;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v8

    aput-object v7, v10, v9

    sput-object v10, Lmd1$a;->j:[Lmd1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmd1$a;->a:I

    iput p4, p0, Lmd1$a;->b:I

    return-void
.end method

.method public static a(I)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lmd1$a;",
            ">;"
        }
    .end annotation

    const-class v0, Lmd1$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {}, Lmd1$a;->values()[Lmd1$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget v5, v4, Lmd1$a;->a:I

    and-int v6, p0, v5

    if-ne v6, v5, :cond_0

    iget v5, v4, Lmd1$a;->b:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v5, v4, Lmd1$a;->a:I

    and-int/2addr v5, p0

    if-nez v5, :cond_1

    iget v5, v4, Lmd1$a;->b:I

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmd1$a;
    .locals 1

    const-class v0, Lmd1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmd1$a;

    return-object p0
.end method

.method public static values()[Lmd1$a;
    .locals 1

    sget-object v0, Lmd1$a;->j:[Lmd1$a;

    invoke-virtual {v0}, [Lmd1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmd1$a;

    return-object v0
.end method
