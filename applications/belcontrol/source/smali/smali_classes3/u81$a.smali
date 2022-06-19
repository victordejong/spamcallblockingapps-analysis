.class public final enum Lu81$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu81$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu81$a;

.field public static final enum b:Lu81$a;

.field public static final synthetic c:[Lu81$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu81$a;

    const-string v1, "OVERRIDE_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu81$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu81$a;->a:Lu81$a;

    new-instance v1, Lu81$a;

    const-string v3, "OVERRIDE_USER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu81$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu81$a;->b:Lu81$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lu81$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lu81$a;->c:[Lu81$a;

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

.method public static valueOf(Ljava/lang/String;)Lu81$a;
    .locals 1

    const-class v0, Lu81$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu81$a;

    return-object p0
.end method

.method public static values()[Lu81$a;
    .locals 1

    sget-object v0, Lu81$a;->c:[Lu81$a;

    invoke-virtual {v0}, [Lu81$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu81$a;

    return-object v0
.end method
