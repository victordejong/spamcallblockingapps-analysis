.class public final enum Lvo0;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ldm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvo0;",
        ">;",
        "Ldm0;"
    }
.end annotation


# static fields
.field public static final enum b:Lvo0;

.field public static final synthetic c:[Lvo0;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lvo0;

    const-string v1, "OG_ACTION_DIALOG"

    const/4 v2, 0x0

    const v3, 0x1332b3a

    invoke-direct {v0, v1, v2, v3}, Lvo0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvo0;->b:Lvo0;

    const/4 v1, 0x1

    new-array v1, v1, [Lvo0;

    aput-object v0, v1, v2

    sput-object v1, Lvo0;->c:[Lvo0;

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

    iput p3, p0, Lvo0;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvo0;
    .locals 1

    const-class v0, Lvo0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvo0;

    return-object p0
.end method

.method public static values()[Lvo0;
    .locals 1

    sget-object v0, Lvo0;->c:[Lvo0;

    invoke-virtual {v0}, [Lvo0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvo0;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lvo0;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    return-object v0
.end method
