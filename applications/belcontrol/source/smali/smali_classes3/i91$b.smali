.class public final enum Li91$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li91$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Li91$b;

.field public static final enum c:Li91$b;

.field public static final enum d:Li91$b;

.field public static final enum f:Li91$b;

.field public static final enum g:Li91$b;

.field public static final synthetic h:[Li91$b;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Li91$b;

    sget v1, Li61;->mask_full:I

    const-string v2, "FULL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Li91$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li91$b;->b:Li91$b;

    new-instance v1, Li91$b;

    sget v2, Li61;->mask_partial:I

    const-string v4, "PARTIAL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Li91$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Li91$b;->c:Li91$b;

    new-instance v2, Li91$b;

    sget v4, Li61;->mask_area:I

    const-string v6, "AREA_CODE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Li91$b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li91$b;->d:Li91$b;

    new-instance v4, Li91$b;

    sget v6, Li61;->mask_country:I

    const-string v8, "WHOLE_COUNTRY"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Li91$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Li91$b;->f:Li91$b;

    new-instance v6, Li91$b;

    sget v8, Li61;->mask_arbitrary:I

    const-string v10, "ARBITRARY"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Li91$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Li91$b;->g:Li91$b;

    const/4 v8, 0x5

    new-array v8, v8, [Li91$b;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Li91$b;->h:[Li91$b;

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

    iput p3, p0, Li91$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li91$b;
    .locals 1

    const-class v0, Li91$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li91$b;

    return-object p0
.end method

.method public static values()[Li91$b;
    .locals 1

    sget-object v0, Li91$b;->h:[Li91$b;

    invoke-virtual {v0}, [Li91$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li91$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Li91$b;->a:I

    return v0
.end method
