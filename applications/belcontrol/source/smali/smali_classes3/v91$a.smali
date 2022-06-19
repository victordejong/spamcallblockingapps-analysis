.class public final enum Lv91$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv91$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lv91$a;

.field public static final enum d:Lv91$a;

.field public static final enum f:Lv91$a;

.field public static final synthetic g:[Lv91$a;


# instance fields
.field public a:I

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lv91;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lv91$a;

    const-class v1, Lr91;

    const-string v2, "EVERYCALLER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lv91$a;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lv91$a;->c:Lv91$a;

    new-instance v1, Lv91$a;

    const-class v2, Ls91;

    const-string v4, "FACEBOOK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lv91$a;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Lv91$a;->d:Lv91$a;

    new-instance v2, Lv91$a;

    const-class v4, Lt91;

    const-string v6, "GOOGLE"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v2, v6, v7, v8, v4}, Lv91$a;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v2, Lv91$a;->f:Lv91$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lv91$a;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lv91$a;->g:[Lv91$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lv91;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lv91$a;->a:I

    iput-object p4, p0, Lv91$a;->b:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic a(Lv91$a;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lv91$a;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lv91$a;
    .locals 1

    const-class v0, Lv91$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv91$a;

    return-object p0
.end method

.method public static values()[Lv91$a;
    .locals 1

    sget-object v0, Lv91$a;->g:[Lv91$a;

    invoke-virtual {v0}, [Lv91$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv91$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lv91$a;->a:I

    return v0
.end method
