.class public final enum Lv81$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv81$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lv81$a;

.field public static final enum b:Lv81$a;

.field public static final enum c:Lv81$a;

.field public static final synthetic d:[Lv81$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lv81$a;

    const-string v1, "NEED_SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv81$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv81$a;->a:Lv81$a;

    new-instance v1, Lv81$a;

    const-string v3, "SENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lv81$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lv81$a;->b:Lv81$a;

    new-instance v3, Lv81$a;

    const-string v5, "SENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lv81$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lv81$a;->c:Lv81$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lv81$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lv81$a;->d:[Lv81$a;

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

.method public static valueOf(Ljava/lang/String;)Lv81$a;
    .locals 1

    const-class v0, Lv81$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv81$a;

    return-object p0
.end method

.method public static values()[Lv81$a;
    .locals 1

    sget-object v0, Lv81$a;->d:[Lv81$a;

    invoke-virtual {v0}, [Lv81$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv81$a;

    return-object v0
.end method
