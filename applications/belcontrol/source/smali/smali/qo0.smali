.class public final enum Lqo0;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ldm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqo0;",
        ">;",
        "Ldm0;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum b:Lqo0;

.field public static final synthetic c:[Lqo0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lqo0;

    const-string v1, "LIKE_DIALOG"

    const/4 v2, 0x0

    const v3, 0x133529d

    invoke-direct {v0, v1, v2, v3}, Lqo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lqo0;->b:Lqo0;

    const/4 v1, 0x1

    new-array v1, v1, [Lqo0;

    aput-object v0, v1, v2

    sput-object v1, Lqo0;->c:[Lqo0;

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

    iput p3, p0, Lqo0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqo0;
    .locals 1

    const-class v0, Lqo0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqo0;

    return-object p0
.end method

.method public static values()[Lqo0;
    .locals 1

    sget-object v0, Lqo0;->c:[Lqo0;

    invoke-virtual {v0}, [Lqo0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqo0;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lqo0;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.LIKE_DIALOG"

    return-object v0
.end method
