.class public final enum Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;
.super Ljava/lang/Enum;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

.field public static final enum b:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

.field public static final enum c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

.field public static final enum d:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

.field private static final synthetic e:[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    .line 34
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    const/4 v2, 0x1

    const-string v3, "NATURAL"

    invoke-direct {v0, v3, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    .line 35
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    const/4 v3, 0x2

    const-string v4, "STICKY"

    invoke-direct {v0, v4, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    .line 36
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    const/4 v4, 0x3

    const-string v5, "TRAILING"

    invoke-direct {v0, v5, v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->d:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    .line 32
    sget-object v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    aput-object v5, v0, v1

    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->b:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->c:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->d:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->e:[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;
    .locals 1

    .line 32
    const-class v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    return-object p0
.end method

.method public static values()[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;
    .locals 1

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->e:[Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    invoke-virtual {v0}, [Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$a;

    return-object v0
.end method
