.class public final enum Lz00$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz00$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz00$c;

.field public static final enum b:Lz00$c;

.field public static final enum c:Lz00$c;

.field public static final synthetic d:[Lz00$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lz00$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz00$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz00$c;->a:Lz00$c;

    new-instance v1, Lz00$c;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz00$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz00$c;->b:Lz00$c;

    new-instance v3, Lz00$c;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz00$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz00$c;->c:Lz00$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lz00$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lz00$c;->d:[Lz00$c;

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

.method public static valueOf(Ljava/lang/String;)Lz00$c;
    .locals 1

    const-class v0, Lz00$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz00$c;

    return-object p0
.end method

.method public static values()[Lz00$c;
    .locals 1

    sget-object v0, Lz00$c;->d:[Lz00$c;

    invoke-virtual {v0}, [Lz00$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz00$c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lz00$c;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lz00$c;->a:Lz00$c;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls7;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lz00$c;->c:Lz00$c;

    return-object p1

    :cond_1
    sget-object p1, Lz00$c;->b:Lz00$c;

    return-object p1
.end method
