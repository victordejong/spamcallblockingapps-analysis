.class public final enum Lcarbon/widget/ProgressBar$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcarbon/widget/ProgressBar$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcarbon/widget/ProgressBar$a;

.field public static final enum b:Lcarbon/widget/ProgressBar$a;

.field public static final enum c:Lcarbon/widget/ProgressBar$a;

.field public static final enum d:Lcarbon/widget/ProgressBar$a;

.field public static final enum f:Lcarbon/widget/ProgressBar$a;

.field public static final synthetic g:[Lcarbon/widget/ProgressBar$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcarbon/widget/ProgressBar$a;

    const-string v1, "BarDeterminate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcarbon/widget/ProgressBar$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcarbon/widget/ProgressBar$a;->a:Lcarbon/widget/ProgressBar$a;

    new-instance v1, Lcarbon/widget/ProgressBar$a;

    const-string v3, "BarIndeterminate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcarbon/widget/ProgressBar$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcarbon/widget/ProgressBar$a;->b:Lcarbon/widget/ProgressBar$a;

    new-instance v3, Lcarbon/widget/ProgressBar$a;

    const-string v5, "BarQuery"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcarbon/widget/ProgressBar$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcarbon/widget/ProgressBar$a;->c:Lcarbon/widget/ProgressBar$a;

    new-instance v5, Lcarbon/widget/ProgressBar$a;

    const-string v7, "CircularDeterminate"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcarbon/widget/ProgressBar$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcarbon/widget/ProgressBar$a;->d:Lcarbon/widget/ProgressBar$a;

    new-instance v7, Lcarbon/widget/ProgressBar$a;

    const-string v9, "CircularIndeterminate"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcarbon/widget/ProgressBar$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcarbon/widget/ProgressBar$a;->f:Lcarbon/widget/ProgressBar$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcarbon/widget/ProgressBar$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcarbon/widget/ProgressBar$a;->g:[Lcarbon/widget/ProgressBar$a;

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

.method public static valueOf(Ljava/lang/String;)Lcarbon/widget/ProgressBar$a;
    .locals 1

    const-class v0, Lcarbon/widget/ProgressBar$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcarbon/widget/ProgressBar$a;

    return-object p0
.end method

.method public static values()[Lcarbon/widget/ProgressBar$a;
    .locals 1

    sget-object v0, Lcarbon/widget/ProgressBar$a;->g:[Lcarbon/widget/ProgressBar$a;

    invoke-virtual {v0}, [Lcarbon/widget/ProgressBar$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcarbon/widget/ProgressBar$a;

    return-object v0
.end method
